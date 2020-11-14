#include <iostream>
#include <string>
#include <math.h>
using namespace std;
void fpu(unsigned int code, int pc, unsigned int* reg, float* freg){
	//switch using last 6 digits
	switch (code & 0b111111){
		int rt,ft,fs,fd;
		case 0b000101 :
			//exec ABS.S code
    	fs = (int)((code >> 11) & 0b11111);
    	fd = (int)((code >> 6) & 0b11111);
    	if(freg[fs]<0){freg[fd] = -freg[fs];}
    	else{freg[fd] = freg[fs];}
			break;
		case 0b000000 :
      switch ((code >> 21) & 0b11111){
        case 0b10000 :
			    //exec ADD.S code
    	    ft = (int)((code >> 16) & 0b11111);
    	    fs = (int)((code >> 11) & 0b11111);
    	    fd = (int)((code >> 6) & 0b11111);
    	    freg[fd] = freg[ft] + freg[fs];
			    break;
        case 0b00000 :
          //exec mfc1
          rt = (int)((code >> 16) & 0b11111);
          fs = (int)((code >> 11) & 0b11111);
          //cout << "round(mfc1) " << freg[fs] << "-> " << round(freg[fs]) << endl;
          reg[rt] = (unsigned int) round(freg[fs]);
          break;
        case 0b00100 :
          //exec mtc1
          rt = (int)((code >> 16) & 0b11111);
          fs = (int)((code >> 11) & 0b11111);
          //cout << "mtc " << (int) reg[rt] << "-> " << (float)((int)reg[rt]) << endl;
          freg[fs] = (float)((int)reg[rt]);
          break;
        }
      break;
    case 0b000011 :
      //exec div.s
      ft = (int)((code >> 16) & 0b11111);
      fs = (int)((code >> 11) & 0b11111);
      fd = (int)((code >> 6) & 0b11111);
      //cout << "div " << freg[fs] << "/" << freg[ft] << "=" <<  freg[fs] / freg[ft] << endl;
      freg[fd] = freg[fs] / freg[ft];
      break;
    case 0b001111 :
      //exec floor 
      fs = (int)((code >> 11) & 0b11111);
      fd = (int)((code >> 6) & 0b11111);
      //cout << "floor " << freg[fs] << "-> " << floor(freg[fs]) << endl;
      freg[fd] = floor(freg[fs]);
      break;
		case 0b000111 :
			//exec NEG.S code
    	fs = (int)((code >> 11) & 0b11111);
    	fd = (int)((code >> 6) & 0b11111);
    	freg[fd] = -freg[fs];
			break;
		case 0b000010 :
			//exec MUL.S code
    	ft = (int)((code >> 16) & 0b11111);
    	fs = (int)((code >> 11) & 0b11111);
    	fd = (int)((code >> 6) & 0b11111);
    	freg[fd] = freg[fs] * freg[ft];
			break;
    case 0b000100 :
      //exec sqrt code
      fs = (int)((code >> 11) & 0b11111);
      fd = (int)((code >> 6) & 0b11111);
      //cout << "sqrt " << freg[fs] << "-> " << sqrtf(freg[fs]) << endl;
      freg[fd] = sqrtf(freg[fs]);
      break;
		case 0b000001 :
			//exec SUB.S code
    	ft = (int)((code >> 16) & 0b11111);
    	fs = (int)((code >> 11) & 0b11111);
    	fd = (int)((code >> 6) & 0b11111);
    	freg[fd] = freg[fs] - freg[ft];
			break;
		case 0b001001 :
      // exec mov.s code
			fs = (int)((code >> 21) & 0b11111);
    	ft = (int)((code >> 16) & 0b11111);
    	freg[ft] = freg[fs];
			break;
	}
}
