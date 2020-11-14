#include <iostream>
#include "operation.h"
#include "alu.h"
#include "fpu.h"
#include "count_label.h"
using namespace std;
void exec_special_code(unsigned int code, int pc, int* now, unsigned int* reg, float* freg, ifstream* fin, ofstream* fout){
	//最初が000000の命令はaluで実行
	alu(code,pc,now,reg,freg,fin,fout);
}
void exec_fpu_code(unsigned int code, int pc, unsigned int* reg, float* freg){
	fpu(code,pc,reg,freg);
}
union hoge{
  unsigned int i;
  float f;
} x;
void exec_normal_code(unsigned int code, int pc, unsigned int* reg, float* freg, int* now, unsigned int* mem, unsigned int* inst_mem,int* howmany_label, pair<string,int>* label_list,int array_num){
  switch(code >> 26){
		int rt,rs,ft,base,fs,rd,sa,immediate;
		case 0b001000 :
			//ADDI命令の実行
			rs = (int)((code >> 21) & 0b11111);
			rt = (int)((code >> 16) & 0b11111);
			//immediateは場合分けが必要
			if((code>>15)&0b1){
				immediate = (int)(code&0b111111111111111) - power(2,15);
			}else{
				immediate = (int)(code&0b1111111111111111);
			}
			reg[rt] = (unsigned int)((int)reg[rs] + immediate);
			break;
		case 0b000100 :
    	//BEQ命令の実行
      rs = (int)((code >> 21) & 0b11111);
			rt = (int)((code >> 16) & 0b11111);
			//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
			if((code>>15)&0b1){
				if((int)reg[rs] == (int)reg[rt]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
			}else{
				if((int)reg[rs] == (int)reg[rt]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
			}
			break;
		case 0b000110 :
			//execute bg
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
    	//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    	if((code>>15)&0b1){
     		if((int)reg[rs] > (int)reg[rt]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
    	}else{
      	if((int)reg[rs] > (int)reg[rt]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
    	}
			break;
    case 0b001001 :
      //execute bge
      rs = (int)((code >> 21) & 0b11111);
      rt = (int)((code >> 16) & 0b11111);
      //*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
      if((code>>15)&0b1){
        if((int)reg[rs] >= (int)reg[rt]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
      }else{
        if((int)reg[rs] >= (int)reg[rt]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
      }
      break;
		case 0b000001 :
			//execute bl
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
    	//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    	if((code>>15)&0b1){
    	  if((int)reg[rs] < (int)reg[rt]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
   	 	}else{
   	    if((int)reg[rs] < (int)reg[rt]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
   	 	}
			break;
    case 0b001011 :
      //execute ble
      rs = (int)((code >> 21) & 0b11111);
      rt = (int)((code >> 16) & 0b11111);
      //*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
      if((code>>15)&0b1){
        if((int)reg[rs] <= (int)reg[rt]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
      }else{
        if((int)reg[rs] <= (int)reg[rt]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
      }
      break;
		case 0b000101 :
			//execute bne
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
    	//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    	if((code>>15)&0b1){
    	  if((int)reg[rs] != (int)reg[rt]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
    	}else{
    	  if((int)reg[rs] != (int)reg[rt]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
    	}
			break;
		case 0b000111 :
    	//execute fbg
    	fs = (int)((code >> 21) & 0b11111);
    	ft = (int)((code >> 16) & 0b11111);
    	//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    	if((code>>15)&0b1){
    	  if(freg[fs] > freg[ft]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
    	}else{
   	  	if(freg[fs] > freg[ft]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
    	}
			break;
    case 0b001110 :
      //execute fbge
      fs = (int)((code >> 21) & 0b11111);
      ft = (int)((code >> 16) & 0b11111);
      //*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
      if((code>>15)&0b1){
        if(freg[fs] >= freg[ft]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
      }else{
        if(freg[fs] >= freg[ft]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
      }
      break;
		case 0b000011 :
			//execute fbne
			fs = (int)((code >> 21) & 0b11111);
			ft = (int)((code >> 16) & 0b11111);
			//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    	if((code>>15)&0b1){
    	  if(freg[fs] != freg[ft]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
    	}else{
     	 if(freg[fs] != freg[ft]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
    	}
			break;
    case 0b101111 :
      //execute ilw
      base = (int)((code >> 21) & 0b11111);
      rt = (int)((code >> 16) & 0b11111);
      if((code>>15)&0b1){
        reg[rt] = inst_mem[(int)reg[base] + (int)(code&0b111111111111111) - power(2,15)];
      }else{
        reg[rt] = inst_mem[(int)reg[base] + (int)(code&0b1111111111111111)];
      }
      break;
    case 0b100111 :
      //exec ilw.s instruction
      base = (int)((code >> 21) & 0b11111);
      ft = (int)((code >> 16) & 0b11111);
      if((code>>15)&0b1){
        x.i = inst_mem[(int)reg[base] + (int)(code&0b111111111111111) - power(2,15)];
        freg[ft] = x.f;
      }else{
        x.i = inst_mem[(int)reg[base] + (int)(code&0b1111111111111111)];
        freg[ft] = x.f;
      }
      break;
    case 0b110111 :
      //exec isw instruction
      base = (int)((code >> 21) & 0b11111);
      rt = (int)((code >> 16) & 0b11111);
      if((code>>15)&0b1){
        inst_mem[(int)reg[base] + (int)(code&0b111111111111111) - power(2,15)] = reg[rt];
      }else{
        inst_mem[(int)reg[base] + (int)(code&0b1111111111111111)] = reg[rt];
      }
      break;
    case 0b111011 :
      //exec isw.s instruction
      base = (int)((code >> 21) & 0b11111);
      ft = (int)((code >> 16) & 0b11111);
      if((code>>15)&0b1){
        x.f = freg[ft];
        inst_mem[(int)reg[base] + (int)(code&0b111111111111111) - power(2,15)] = x.i;
      }else{
        x.f = freg[ft];
        inst_mem[(int)reg[base] + (int)(code&0b1111111111111111)] = x.i;
      }
      break;
		case 0b000010 :
			//JUMP命令の実行
			//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
			*now = (int)(code&0b11111111111111111111111111) - 1;
			break;
		case 0b011000 :
    	//execute jal
			reg[28] = *now;
    	//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    	*now = (int)(code&0b11111111111111111111111111) - 1;
      //label_infoという配列の中は関数呼び出しなので、
      //その情報をどんどん数えていく
      count_label(*now+1,howmany_label,label_list,array_num);
			break;
    case 0b111000 :
      //execute jalr
      rs = (int)((code >> 21) & 0b11111);
      reg[28] = *now;
      *now = reg[rs] - 1;
      break;
		case 0b100011 :
			//execute lw instruction
			base = (int)((code >> 21) & 0b11111);
			rt = (int)((code >> 16) & 0b11111);
			if((code>>15)&0b1){
	      reg[rt] = mem[(int)reg[base] + (int)(code&0b111111111111111) - power(2,15)];
	    }else{
        //cout << mem[(int)reg[base] + (int)(code&0b1111111111111111)] << endl;
	      reg[rt] = mem[(int)reg[base] + (int)(code&0b1111111111111111)];
	    }
			break;
		case 0b100100 :
			//exec lw.s instruction
			base = (int)((code >> 21) & 0b11111);
	    ft = (int)((code >> 16) & 0b11111);
			if((code>>15)&0b1){
        x.i = mem[(int)reg[base] + (int)(code&0b111111111111111) - power(2,15)];
	      freg[ft] = x.f;
	    }else{
        x.i = mem[(int)reg[base] + (int)(code&0b1111111111111111)];
	      freg[ft] = x.f;
	    }
			break;
		case 0b111111 :
			//execute sll instruction
			rt = (int)((code >> 16) & 0b11111);
			rd = (int)((code >> 11) & 0b11111);
			sa = (int)((code >> 6) & 0b11111);
      /*cout << "sll" << endl;
      cout << reg[rt] << endl;
      cout << reg[sa] << endl;
      cout << ((reg[rt]) << reg[sa]) << endl;*/
      reg[rd] = (reg[rt]) << reg[sa];
			break;
    case 0b111110 :
      //execute slli instruction
      rs = (int)((code >> 21) & 0b11111);
      rt = (int)((code >> 16) & 0b11111);
      if((code>>15)&0b1){
        immediate = (int)(code&0b111111111111111) - power(2,15);
        reg[rt] = (reg[rs]) >> (-immediate);
      }else{
        immediate = (int)(code&0b1111111111111111);
        reg[rt] = (reg[rs]) << immediate;
      }
      break;
		case 0b101011 :
			//execute sw instruction
	    base = (int)((code >> 21) & 0b11111);
	    rt = (int)((code >> 16) & 0b11111);
	    if((code>>15)&0b1){
	      mem[(int)reg[base] + (int)(code&0b111111111111111) - power(2,15)] = reg[rt];
	    }else{
	      mem[(int)reg[base] + (int)(code&0b1111111111111111)] = reg[rt];
	    }
			break;
		case 0b101100 :
	    //execute sw.s instruction
	    base = (int)((code >> 21) & 0b11111);
	    ft = (int)((code >> 16) & 0b11111);
	    if((code>>15)&0b1){
        x.f = freg[ft];
	      mem[(int)reg[base] + (int)(code&0b111111111111111) - power(2,15)] = x.i;
	    }else{
        x.f = freg[ft];
	      mem[(int)reg[base] + (int)(code&0b1111111111111111)] = x.i;
	    }
			break;
	}
//	cout << code << endl;
}
