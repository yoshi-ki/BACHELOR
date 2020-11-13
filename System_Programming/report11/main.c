#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "desc.h"
#include "init.h"
#include "mem.h"
#include "reg.h"
#include "util.h"

int main(int argc, char const *argv[]) {
  init_pci();
  init_dev();
  init_mem(1024 * 1024 * 2);

  void *memory_base_virt = get_virt_ptr();
  size_t memory_base_phys = get_phys_ptr();

  // initialize receive
  print_log("initialize receive");
  init_receive();
  // TODO: set receive descriptor ring base address and length
  write_reg_wrapper(RDBAH_OFFSET,memory_base_phys >> 32);
  write_reg_wrapper(RDBAL_OFFSET,memory_base_phys % (1024UL * 1024UL * 1024UL * 4UL));
  write_reg_wrapper(RDLEN_OFFSET, 128);
  
  // receive buffer size is set to 2KB in init_receive
  // TODO: allocate memory to each receive descriptors
  
  Rdesc memory = memory_base_virt;
  for (int i = 0; i < 8; i++){
	//RDT_OFFSET + 1;
    (memory[i]).addr = (phys_addr)(memory_base_phys+128) + i * 2048;
  }

  enable_receive();

  // initialize transmit
  print_log("initialize transmit");
  init_transmit();
  // TODO: set transmit descriptor ring base address and length
  write_reg_wrapper(TDBAH_OFFSET,((memory_base_phys+(1024UL*1024UL)) >> 32));
  write_reg_wrapper(TDBAL_OFFSET,(memory_base_phys+(1024UL*1024UL)) % (1024UL*1024UL*1024UL*4UL));
  write_reg_wrapper(TDLEN_OFFSET,128);


  // TODO: allocate memory to each transmit descriptors
  // this can be done on transmit
  Tdesc t_memory = memory_base_virt + (1024UL*1024UL);
  for(int i = 0; i < 8; i++){
	//TDT_OFFSET + 1;
	(t_memory[i]).addr = (phys_addr)((memory_base_phys+(1024UL*1024UL))+128) + i * 2048;
	(t_memory[i]).cmd = (1 << 0) | (1 << 1);
	(t_memory[i]).length = 100; 
  }

  enable_transmit();
  print_log("enable interrupts");
  enable_interrupts(0xFFFFFFFF);
  usleep(1000);

  // TODO: program data communicaton

  //read

//kadai c
  write_reg_wrapper(RDT_OFFSET,7);
  int rx_head_prev = read_reg_wrapper(RDH_OFFSET);
  while(1){
	int rx_head = read_reg_wrapper(RDH_OFFSET);
	
	if(rx_head != rx_head_prev){
	  Rdesc temp_memory = memory + (rx_head_prev) * 128;//sizeof(Rdesc);
	  unsigned char* p = ((unsigned char *)temp_memory)+128;
	  //Rdesc temp_memory = memory + rx_head_prev;
	  //unsigned char* p = (memory_base_virt+128) + ((rx_head)-1) * 2048;
	  for (int j = 0; j < 16; j++){
        printf("%x",p[j]);
      }
	  printf("\n");
	  printf("%d\n",rx_head);
	  printf("%d\n",rx_head_prev);
	  if(rx_head == 5){
		  write_reg_wrapper(RDT_OFFSET,0);
	  }
	  if(rx_head == 0){
          write_reg_wrapper(RDT_OFFSET,5);
      }
	  rx_head_prev = rx_head;
	}
  }

/*kadai A
  write_reg_wrapper(RDT_OFFSET,7);
  int rx_head_prev = read_reg_wrapper(RDH_OFFSET);
while(1){
    int rx_head = read_reg_wrapper(RDH_OFFSET);

    if(rx_head != rx_head_prev){
      Rdesc temp_memory = memory + rx_head_prev;
      unsigned char* p = (memory_base_virt+128) + ((rx_head)-1) * 2048;
      for (int j = 0; j < 16; j++){
        printf("%x",p[j]);
      }
      printf("\n");
      printf("%d\n",rx_head);
      printf("%d\n",rx_head_prev);
      rx_head_prev = rx_head;
    }
  }
*/

  //write
/*
  write_reg_wrapper(TDT_OFFSET,7);
  while(1){
	  int wx_head = read_reg_wrapper(TDH_OFFSET);
	  if(wx_head == 5){
		  write_reg_wrapper(TDT_OFFSET,0);
	  }
	  if(wx_head == 0){
		  write_reg_wrapper(TDT_OFFSET,5);
	  } 
  }
*/
  // wait until NIC send packet physically 
  sleep(2);
  return 0;
}
