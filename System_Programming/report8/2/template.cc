#include <toshokan/friend/export.h>
#include <toshokan/friend/offload.h>
#include "shared.h"

int64_t SHARED_SYMBOL(sync_flag);
uint64_t SHARED_SYMBOL(test_value);

int cnt = 0;
//ローカル環境でprintfデバッグしたいときは，
//以下の行とhakase.ccの7行目をコメントアウトしてください
int (*EXPORTED_SYMBOL(printf))(const char *format, ...);
//
//<printfの使い方>
//OFFLOAD_FUNC(printf,args...);
//のようにOFFLOAD_FUNC経由で呼び出します


uint64_t get_phys_addr(uint64_t k, void *virt_addr){
  //!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  //add codes here
  uint64_t* pml4t = (uint64_t *) ((*(uint64_t *)(k * 512UL * 1024 * 1024 * 1024 + k * 1024UL * 1024 * 1024 + k * 2UL * 1024 * 1024 + k * 4UL * 1024 + k * sizeof(uint64_t))) & (~0xFFF));
  uint64_t* pdpt = (uint64_t *) ((*(pml4t + (((uint64_t) virt_addr) >> 39) % 512)) & (~0xFFF));
  uint64_t* pd = (uint64_t *) ((*(pdpt + (((uint64_t) virt_addr) >> 30) % 512)) & (~0xFFF));
  uint64_t* pt = (uint64_t *) ((*(pd + (((uint64_t) virt_addr) >> 21) % 512)) & (~0xFFF));
  uint64_t* phy = (uint64_t *) ((*(pt + (((uint64_t) virt_addr) >> 12) % 512)) & (~0xFFF));
  OFFLOAD_FUNC(printf,"%p\n",pml4t);
  OFFLOAD_FUNC(printf,"%p\n",pdpt);
  OFFLOAD_FUNC(printf,"%p\n",pd);
  OFFLOAD_FUNC(printf,"%p\n",pt);
  
  return ((uint64_t) phy) + ((uint64_t) virt_addr) % 4096;
  //!!!!!!!!!!!!!!!!!!!!!!!!!!!
}

struct Page {
  uint64_t entry[512];
} __attribute__((aligned(4096)));

Page pml4t;
Page pdpt;
Page pd;
Page pt;

void friend_main() {
  static const size_t k256TB = 256UL * 1024 * 1024 * 1024 * 1024;
  static const size_t k512GB = 512UL * 1024 * 1024 * 1024;
  static const size_t k1GB = 1024UL * 1024 * 1024;
  static const size_t k2MB = 2UL * 1024 * 1024;
  static const size_t k4KB = 4UL * 1024;

  static const size_t kDeployPhysAddrStart = 0x40000000UL;
  static const size_t kDeployPhysAddrEnd = 0x60000000UL;


  //printf sample
  //OFFLOAD_FUNC(printf, "hello\n");

  // コア0以外は即座に終了する
  if(__sync_fetch_and_add(&cnt, 1) != 0 ){
    __sync_fetch_and_add(&SHARED_SYMBOL(sync_flag), 1);
    return;
  }


  // pml4tのインデックスk=0x10でpml4t自身をさすようなページの構造をつくる
  pml4t.entry[(kDeployPhysAddrStart % k256TB) / k512GB] =
      (size_t)(&pdpt) | (1 << 0) | (1 << 1) |(1 << 2);
  pdpt.entry[(kDeployPhysAddrStart % k512GB) / k1GB] =
      (size_t)(&pd) | (1 << 0) | (1 << 1) |(1 << 2);

  pml4t.entry[0xFF - 1] = (size_t)(&pml4t) | (1 << 0) | (1 << 1) |(1 << 2);
//0xff-1

  for (int i = 0; i < 512; i++) {
    pd.entry[i] = pt.entry[i] = 0;
  }
  for (size_t addr = kDeployPhysAddrStart; addr < kDeployPhysAddrEnd; addr += k2MB) {
    pd.entry[(addr % k1GB) / k2MB] = addr | (1 << 0) | (1 << 1) | (1 << 2) | (1 << 7);
  }

  for (size_t addr = kDeployPhysAddrStart; addr < kDeployPhysAddrEnd; addr += k2MB) {
    pd.entry[(addr % k1GB) / k2MB] = addr | (1 << 0) | (1 << 1) | (1 << 2) | (1 << 7);
  }
  pd.entry[(kDeployPhysAddrStart % k1GB) / k2MB] =  
      (size_t)(&pt) | (1 << 0) | (1 << 1) |(1 << 2);

  for (size_t addr = kDeployPhysAddrStart; addr < kDeployPhysAddrStart+k2MB; addr += k4KB) {
    pt.entry[(addr % k2MB) / k4KB] = addr | (1 << 0) | (1 << 1) | (1 << 2);
  }

  
  asm volatile("movq %0, %%cr3"::"r"((uint64_t)&pml4t ));

  //get_phys_addr 呼び出し
  SHARED_SYMBOL(test_value) = get_phys_addr(0xff-1,(void*)0x40000000UL);
	//0xff -1
  __sync_fetch_and_add(&SHARED_SYMBOL(sync_flag), 1);
}
