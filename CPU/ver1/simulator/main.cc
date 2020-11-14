#include <iostream>
#include <string>
#include <fstream>
#include <sstream>
#include <utility>
#include "exec.h"
#include "assembler.h"
#include "label_solver.h"
#include "operation.h"
#include "stdlib.h"
#include "create_execute_file.h"
#include "string.h"
#include "math.h"
using namespace std;

//file stream for IN and OUT instructions
//get input from "input.txt" and output to "output.txt"
//FILE *fout;

int main(int argc, char**argv){
	string filename = argv[1];
	
	ifstream reading_file;
	reading_file.open(filename,ios::in);
	string one_assemble_instruction;
 
 
  unsigned int* reg; // register
  reg = (unsigned int *)malloc(32 * sizeof(unsigned int));
  memset(reg, 0, 32 * sizeof(unsigned int));
  float* freg; // float register
  freg = (float *)malloc(32 * sizeof(float));
  memset(freg, 0, 32 * sizeof(float));
  
  reg[0] = 0;
  reg[27] = 10000;



  //main memory
  unsigned int * mem;
  mem = (unsigned int *)malloc(8e+8 * sizeof(unsigned int));
  memset(mem , 1 , 8e+8 * sizeof(unsigned int) );

  unsigned int* inst_mem; //instruction memory
  inst_mem = (unsigned int *)malloc(65536 * sizeof(unsigned int));
  memset(inst_mem , 0 , 65536 * sizeof(unsigned int) );
	
  int clock = 0;
	int pc = 0;

  pair<string,int>* label_list;
  label_list = (pair<string,int>*)malloc(66536 * sizeof(pair<string,int>));
  memset(label_list,0,66536*sizeof(pair<string,int>));
    
  string* execute_instruction;
  execute_instruction = (string *)malloc(66536 * sizeof(string));
  memset(execute_instruction, 0, (66536 * sizeof(string)));

	//label解決をまず行う
	int line_num = 0; //line number 
	int array_num = 0; //represents where to save label information
  int data_num = 0;  //represents how many floating immediates are written in data_section
  int flag = 0; // flag knows we are in text_section or data_section
	do{
		getline(reading_file,one_assemble_instruction);
    if(flag==0){
      string label_name;
      istringstream s(one_assemble_instruction);
      s >> label_name;
      if(label_name == "#text_section"){flag++;}
      else if(label_name[0] != '#'){
        // remember label info in the data section
        string colon;
        s >> colon;
        string data_code;
        getline(reading_file,data_code);
        string lon, number;
        istringstream s1(data_code);
        s1 >> lon >> number;
        inst_mem[data_num] = StringToUInt0x(number);
        label_list[array_num].first = label_name;
        label_list[array_num].second = line_num;
        line_num++;
        array_num++;
        data_num++;
      }
    } else {
      // solve label in the text_section
      label_solver(one_assemble_instruction,label_list,&line_num,&array_num,execute_instruction);
    }
	}while(!reading_file.eof());
  reading_file.close();


// --- create "execute.txt" --- 
  //since jump instruction is added, label information should be incremented
  //using label_list, create new file named execute.txt, the label-solved code
  //jump instruction is added at the first row
  for(int i = 0; i < array_num; i++){
    label_list[i].second = label_list[i].second + 1;
  }
	create_execute_file(execute_instruction,label_list,line_num,array_num,data_num);
// ---   end     ---



	ifstream reading_file1; // file stream for reading execute.txt, the label-solved code
	reading_file1.open("execute.txt",ios::in);
	//この部分に命令をまず入れる。1つのstringが1assebly命令に対応。
	//string instruction_set [65536];
  string * instruction_set;
  instruction_set = (string*)malloc(66536 * sizeof(string));
  memset(instruction_set, 0, 66536 * sizeof(string));
	int inst_num = 0;
	do
  {
    getline(reading_file1, one_assemble_instruction);
    instruction_set[inst_num] = one_assemble_instruction;
		inst_num = inst_num + 1;
	}while(!reading_file1.eof());
  reading_file1.close();


	// create machine code file
  if(argc==3){
	  if(strcmp(argv[2], "-a")== 0){
		  ofstream writing_file;
		  writing_file.open("machine_code.txt");
      // write jump to machine_code.txt
      string one_machine_code = assemble(instruction_set[0],1);
      writing_file << one_machine_code << endl;
      for(int i = 0; i < data_num; i++){
        writing_file << decimal_to_binary(inst_mem[i],32) << "  \\\\ " << "immediate" << endl;
      }
		  for(int i=1; i<line_num - data_num; i++){
			  string one_machine_code = assemble(instruction_set[i],1);
			  writing_file << one_machine_code << endl;
		  }	
	  writing_file.close();
    free(mem);
    free(inst_mem);
    free(label_list);
    free(execute_instruction);
    free(instruction_set);
    free(reg);
    free(freg);
	  return 0;
	  }
  }



	//it is for executing simulator
	ofstream writing_file;
  writing_file.open("machine_code.txt");
  // write jump to machine_code.txt
  string one_machine_code = assemble(instruction_set[0],0);
  writing_file << one_machine_code << endl;
  for(int i = 0; i < data_num; i++){
    writing_file << decimal_to_binary(inst_mem[i],32) << endl;
  }
  for(int i=1; i<line_num - data_num; i++){
    string one_machine_code = assemble(instruction_set[i],0);
    writing_file << one_machine_code << endl;
  }
  writing_file.close();


  //it is for -label option 
  //create file that includes label information 
  if(argc==3){
    if(strcmp(argv[2], "-label")== 0){
      ofstream writing_file1;
      writing_file1.open("label_info.txt");
      cout << array_num << endl;
      for(int i=0; i<array_num; i++){
        writing_file1 << label_list[i].first << " " << label_list[i].second << endl;
      }
    writing_file1.close();
    free(mem);
    free(inst_mem);
    free(label_list);
    free(execute_instruction);
    free(instruction_set);
    free(reg);
    free(freg);
    return 0;
    }
  }



  // --- using machine_code, create inst_mem ---
  ifstream reading_file2; // file stream for machine_code.txt
  reading_file2.open("machine_code.txt",ios::in);
  int instr_num = 0;
  string inst;
  do
  {
    getline(reading_file2, inst);
    if((int)inst[0] == 0) continue;
    inst_mem[instr_num] = StringToUInt(inst);
    instr_num = instr_num + 1;
  }while(!reading_file2.eof());
  reading_file2.close();



//file stream creation
ifstream fin;
ofstream fout;
fin.open("input.txt",ios::in);
fout.open("result.bin",ios::out);
/*
if ((fout = fopen("result.bin", "w")) == NULL) {
  perror("output file open error");
  exit(1);
}
*/


  
// --- code for -l option --- 
if(argc==4){
  if(strcmp(argv[2], "-l")==0){
    int block = atoi(argv[3]);
    int end_flag = 0;
    for(int now = 0; now < instr_num; now++)
    {
      if(now == block) break;
      unsigned int one_instruction = inst_mem[now];
      if(one_instruction == 0) {end_flag = 1; break;}
      switch(one_instruction >> 26){
        case 0b000000 :
        //最初のopecodeがspecialつまり000000だった場合
          exec_special_code(one_instruction,pc,&now,reg,freg,&fin,&fout);
          break;
        case 0b010001 :
          //code for fpu
          exec_fpu_code(one_instruction,pc,reg,freg);
          break;
        default :
          //最初の6文字で命令の判別が可能な場合
          exec_normal_code(one_instruction,pc,reg,freg,&now,mem,inst_mem);
          break;
      }
    }
    if (end_flag == 1) { cout << "not reached this row" << endl; }
    else {
    while(1){
      cout << "---------------------------" << endl;
      cout << "position is " << block; 
      for(int i = 0; i<32; i++){
        if (i%5 == 0) { cout << "" << endl; }
        cout << "r" << i << " = " << reg[i] << "  ";
      }
      cout << "" << endl;
      for(int i = 0; i<32; i++){
        if (i%3 == 0) { cout << "" << endl; }
        cout << "f" << i << " = " << freg[i] << "  ";
      }
      char option;
      cin >> option;
      if(option == 'e') break;
      else if(option == 'c') {
        unsigned int one_instruction = inst_mem[block];
        if(one_instruction == 0) break;
        if((block-data_num)>=0) {
          cout << instruction_set[(block-data_num)] << " ";
        }
        switch(one_instruction >> 26){
          case 0b000000 :
          //最初のopecodeがspecialつまり000000だった場合
            exec_special_code(one_instruction,pc,&block,reg,freg,&fin,&fout);
            break;
          case 0b010001 :
            //code for fpu
            exec_fpu_code(one_instruction,pc,reg,freg);
            break;
          default :
            //最初の6文字で命令の判別が可能な場合
            exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem);
            break;
        cout << "" << endl;
        }
        block++;
        continue;
      }
      else if (option == '1') {
        for (int i = 0; i < 10; i++){
          unsigned int one_instruction = inst_mem[block];
          if(one_instruction == 0) break;
          switch(one_instruction >> 26){
            case 0b000000 :
            //最初のopecodeがspecialつまり000000だった場合
              exec_special_code(one_instruction,pc,&block,reg,freg,&fin,&fout);
              break;
            case 0b010001 :
              //code for fpu
              exec_fpu_code(one_instruction,pc,reg,freg);
              break;
            default :
              //最初の6文字で命令の判別が可能な場合
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem);
              break;
          }
          block++;
        }
        continue;
      }
      else if (option == '2') {
        for (int i = 0; i < 100; i++){
          unsigned int one_instruction = inst_mem[block];
          if(one_instruction == 0) break;
          switch(one_instruction >> 26){
            case 0b000000 :
            //最初のopecodeがspecialつまり000000だった場合
              exec_special_code(one_instruction,pc,&block,reg,freg,&fin,&fout);
              break;
            case 0b010001 :
              //code for fpu
              exec_fpu_code(one_instruction,pc,reg,freg);
              break;
            default :
              //最初の6文字で命令の判別が可能な場合
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem);
              break;
          }
          block++;
        }
        continue;
      }
      else if (option == '3') {
        for (int i = 0; i < 1000; i++){
          unsigned int one_instruction = inst_mem[block];
          if(one_instruction == 0) break;
          switch(one_instruction >> 26){
            case 0b000000 :
            //最初のopecodeがspecialつまり000000だった場合
              exec_special_code(one_instruction,pc,&block,reg,freg,&fin,&fout);
              break;
            case 0b010001 :
              //code for fpu
              exec_fpu_code(one_instruction,pc,reg,freg);
              break;
            default :
              //最初の6文字で命令の判別が可能な場合
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem);
              break;
          }
          block++;
        }
        continue;
      }
    }
  }
  }
  fin.close();
  fout.close();
  free(mem);
  free(inst_mem);
  free(label_list);
  free(execute_instruction);
  free(instruction_set);
  free(reg);
  free(freg);

  return 0;
}
// ---  code for -l option ---



long long howmany_instructions = 0;
	
for(int now = 0; now < instr_num; now++)
	{
    //printf("%d\n",now);
    
		//cout << now << endl;
    /*
    if (now == 8190 && (int)reg[1] > 0){
      cout << reg[1] << endl;
      cout << howmany_instructions << endl;
    }
    */
    

    /*
    if (now == 2415) {cout << "---------------------------" << endl;
    for(int i = 0; i<32; i++){
      if (i%5 == 0) { cout << "" << endl; }
      cout << "r" << i << " = " << reg[i] << "  ";
    }
    cout << "" << endl;
    for(int i = 0; i<32; i++){
      if (i%3 == 0) { cout << "" << endl; }
      cout << "f" << i << " = " << freg[i] << "  ";
    }
    }
    */
    
    unsigned int one_instruction = inst_mem[now];
		if(one_instruction == 0)  {cout << "ret" << endl; break;}
    /*
    if(one_instruction == 1610613852){cout << "sin" << endl;freg[0] = sin(freg[0]);}
    else if (one_instruction == 1610613931){cout << "cos" << endl;freg[0] = cos(freg[0]);}
    else if (one_instruction == 1610614040){cout << "atan" << endl;freg[0] = atan(freg[0]);}
    else{
    */
		switch(one_instruction >> 26){
			case 0b000000 :
				//最初のopecodeがspecialつまり000000だった場合
				exec_special_code(one_instruction,pc,&now,reg,freg,&fin,&fout);
				break;
			case 0b010001 :
				//code for fpu
				exec_fpu_code(one_instruction,pc,reg,freg);
				break;
			default :
				//最初の6文字で命令の判別が可能な場合
				exec_normal_code(one_instruction,pc,reg,freg,&now,mem,inst_mem);
				break;
		}
    
    howmany_instructions++;
    if(howmany_instructions % 10000000 == 0){
      cout << howmany_instructions << endl;
     /*
      cout << "---------------------------" << endl;
    for(int i = 0; i<32; i++){
      if (i%5 == 0) { cout << "" << endl; }
      cout << "r" << i << " = " << reg[i] << "  ";
    }
    cout << "" << endl;
    for(int i = 0; i<32; i++){
      if (i%3 == 0) { cout << "" << endl; }
      cout << "f" << i << " = " << freg[i] << "  ";
    }
    */
    }
	}
  /*
  if (fclose(fout) == EOF) {
   		perror("close error");
   		exit(1);
 	}
  */

  cout << "---------------------------" << endl;
    for(int i = 0; i<32; i++){
      if (i%5 == 0) { cout << "" << endl; }
      cout << "r" << i << " = " << reg[i] << "  ";
    }
    cout << "" << endl;
    for(int i = 0; i<32; i++){
      if (i%3 == 0) { cout << "" << endl; }
      cout << "f" << i << " = " << freg[i] << "  ";
    }

/*
  for (int i = 50000; i < 1000732; i++) {
    cout << mem[i] << endl;
  }
*/

  cout << "number of executed instructions is " << howmany_instructions << endl;

  fin.close();
  fout.close();
  free(mem);
  free(inst_mem);
  free(label_list);
  free(execute_instruction);
  free(instruction_set);
  free(reg);
  free(freg);
  
	return 0;
}

