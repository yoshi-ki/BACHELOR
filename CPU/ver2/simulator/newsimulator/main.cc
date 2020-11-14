#include <iostream>
#include <string>
#include <fstream>
#include <sstream>
#include <utility>
#include <queue>
#include <vector>
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
  reg[26] = 10000;



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
      if (one_assemble_instruction.size() == 0) {line_num++; break;}
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
    if(one_assemble_instruction.size() == 0) break;
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
      string one_machine_code = assemble(instruction_set[0],0,0);
      writing_file << one_machine_code << endl;
      for(int i = 0; i < data_num; i++){
        writing_file << decimal_to_binary(inst_mem[i],32) << endl;
      }
		  for(int i=1; i<line_num - data_num; i++){
			  string one_machine_code = assemble(instruction_set[i],0,data_num*2+i);
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
    else if (strcmp(argv[2], "-a2")== 0){
      ofstream writing_file;
      writing_file.open("machine_code_comment.txt");
      // write jump to machine_code.txt
      string one_machine_code = assemble(instruction_set[0],1,0);
      writing_file << one_machine_code << endl;
      for(int i = 0; i < data_num; i++){
        writing_file << decimal_to_binary(inst_mem[i],32) << "  \\\\ " << "immediate" << endl;
      }
      for(int i=1; i<line_num - data_num; i++){
        string one_machine_code = assemble(instruction_set[i],1,data_num*2+i);
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
  string one_machine_code = assemble(instruction_set[0],0,0);
  writing_file << one_machine_code << endl;
  for(int i = 0; i < data_num; i++){
    writing_file << decimal_to_binary(inst_mem[i],32) << endl;
  }
  for(int i=1; i<line_num - data_num; i++){
    string one_machine_code = assemble(instruction_set[i],0,data_num*2+i);
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


//code for analysis
int* howmany_label;
howmany_label = (int *)malloc( array_num * sizeof(int));
memset(howmany_label , 0 , array_num * sizeof(int) );


  
// --- code for -l option --- 
if(argc==4){
  if(strcmp(argv[2], "-l")==0){
    int block = atoi(argv[3]);
    int end_flag = 0;
    long long inst_sum = 0;
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
          exec_normal_code(one_instruction,pc,reg,freg,&now,mem,inst_mem,
            howmany_label,label_list,array_num);
          break;
      }
      inst_sum = inst_sum + 1;
    }
    if (end_flag == 1) { cout << "not reached this row" << endl; }
    else {
      //初めのブロック場所をinit_blockという変数に保管しておく
      int init_block = block;
    while(1){
      cout << "---------------------------" << endl;
      cout << "position is " << block << endl; 
      cout << inst_sum << " instructions were executed" << endl;
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
            exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
              howmany_label,label_list,array_num);
            break;
        cout << "" << endl;
        }
        inst_sum++;
        block++;
        continue;
      }
      else if (option == 'l') {
        //pcの値はnowではなくblockを更新することで管理されていることに注意
        //まず一行実行
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
            exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
              howmany_label,label_list,array_num);
            break;
        cout << "" << endl;
        }
        inst_sum++;
        block++;
        //その後にその行にくるまで実行
        while(1)
        {
          if(block == init_block) break;
          if(block == instr_num) {cout << "cannot reach this row again" << endl; break;}
          unsigned int one_instruction = inst_mem[block];
          if(one_instruction == 0) {end_flag = 1; break;}
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
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
                howmany_label,label_list,array_num);
              break;
          }
          inst_sum++;
          block++;
        }
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
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,howmany_label,label_list,array_num);
              break;
          }
          inst_sum++;
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
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
                howmany_label,label_list,array_num);
              break;
          }
          inst_sum++;
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
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
                howmany_label,label_list,array_num);
              break;
          }
          inst_sum++;
          block++;
        }
        continue;
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
}
// ---  code for -l option ---


// --- code for -l2 option ---
if(argc==5){
  if(strcmp(argv[2], "-l2")==0){
    //pre_num回実行を行なった後、初めてblock行目の実行を行うと停止する
    int block = atoi(argv[3]);
    int pre_num = atoi(argv[4]);
    int temp_now = 0;
    int end_flag = 0;
    long long inst_sum = 0;
    for(int now = 0; now < instr_num; now++)
    {
      if(inst_sum == pre_num) {temp_now = now; break;}
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
          exec_normal_code(one_instruction,pc,reg,freg,&now,mem,inst_mem,
            howmany_label,label_list,array_num);
          break;
      }
      inst_sum = inst_sum + 1;
    }
    for(int now = temp_now; now < instr_num; now++)
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
          exec_normal_code(one_instruction,pc,reg,freg,&now,mem,inst_mem,
            howmany_label,label_list,array_num);
          break;
      }
      inst_sum = inst_sum + 1;
    }
    if (end_flag == 1) { cout << "not reached this row" << endl; }
    else {
      //初めのブロック場所をinit_blockという変数に保管しておく
      int init_block = block;
    while(1){
      cout << "---------------------------" << endl;
      cout << "position is " << block << endl;
      cout << inst_sum << " instructions were executed" << endl;
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
            exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
              howmany_label,label_list,array_num);
            break;
        cout << "" << endl;
        }
        inst_sum++;
        block++;
        continue;
      }
      else if (option == 'l') {
        //pcの値はnowではなくblockを更新することで管理されていることに注意
        //まず一行実行
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
            exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
              howmany_label,label_list,array_num);
            break;
        cout << "" << endl;
        }
        inst_sum++;
        block++;
        //その後にその行にくるまで実行
        while(1)
        {
          if(block == init_block) break;
          if(block == instr_num) {cout << "cannot reach this row again" << endl; break;}
          unsigned int one_instruction = inst_mem[block];
          if(one_instruction == 0) {end_flag = 1; break;}
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
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
                howmany_label,label_list,array_num);
              break;
          }
          inst_sum++;
          block++;
        }
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
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,howmany_label,label_list,array_num);
              break;
          }
          inst_sum++;
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
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
                howmany_label,label_list,array_num);
              break;
          }
          inst_sum++;
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
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
                howmany_label,label_list,array_num);
              break;
          }
          inst_sum++;
          block++;
        }
        continue;
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
}
// ---  code for -l2 option ---



// --- code for -suml option ---
if(argc==4){
  if(strcmp(argv[2], "-suml")==0){
    int block = atoi(argv[3]);
    int end_flag = 0;
    long long inst_sum = 0;
    for(int now = 0; now < instr_num; now++)
    {
      if(inst_sum == block) {block = now; break;}
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
          exec_normal_code(one_instruction,pc,reg,freg,&now,mem,inst_mem,
            howmany_label,label_list,array_num);
          break;
      }
      inst_sum = inst_sum + 1;
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
            exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
              howmany_label,label_list,array_num);
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
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,howmany_label,label_list,array_num);
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
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
                howmany_label,label_list,array_num);
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
              exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem,
                howmany_label,label_list,array_num);
              break;
          }
          block++;
        }
        continue;
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
}
// ---  code for -suml option ---



unsigned int howmany_instructions = 0;

// --- code for -fast option

if(argc==3){
  if(strcmp(argv[2], "-fast")==0){

union hoge{
  unsigned int i;
  float f;
} x;

union Convert{
  unsigned int i;
} convert;



int now = 0;
int rs,rt,rd,fs,ft,fd,base,immediate,sa;
vector<int> output_data;;
queue<float> input_data;;
while(!fin.eof()){
  float n;
  fin >> n;
  input_data.push(n);
}

while(1)
	{
    unsigned int code = inst_mem[now];
    switch(code >> 26){
			case 0b000000 :
				//最初のopecodeがspecialつまり000000だった場合
        switch (code & 0b111111) {
					case 0b100000 :
						//ADDの実行 rd = rs + rt
						rs = (int)((code >> 21) & 0b11111);
						rt = (int)((code >> 16) & 0b11111);
						rd = (int)((code >> 11) & 0b11111);
						reg[rd] = (unsigned int)((int)reg[rs] + (int)reg[rt]);
						break;
					case 0b011001 :
						//execute MUL
						rs = (int)((code >> 21) & 0b11111);
			    	rt = (int)((code >> 16) & 0b11111);
			    	rd = (int)((code >> 11) & 0b11111);
						reg[rd] = (unsigned int)((int)reg[rs] * (int)reg[rt]);
						break;
					case 0b011010 :
						//execute DIV
						rs = (int)((code >> 21) & 0b11111);
			    	rt = (int)((code >> 16) & 0b11111);
			    	rd = (int)((code >> 11) & 0b11111);
						reg[rd] = (unsigned int)((int)reg[rs] / (int)reg[rt]);
						break;
					case 0b011011 :
			      //execute DIVU
						rs = (int)((code >> 21) & 0b11111);
			    	rt = (int)((code >> 16) & 0b11111);
			    	rd = (int)((code >> 11) & 0b11111);
			    	reg[rd] = (unsigned int)((int)reg[rs] % (int)reg[rt]);
						break;
			    case 0b111010 :
			      //execute FIN
			      fs = (int)((code >> 21) & 0b11111);
            freg[fs] = input_data.front();
            input_data.pop();
			      break;
			    case 0b101010 :
			      //execute IN
			      rs = (int)((code >> 21) & 0b11111);
			      reg[rs] = (unsigned int)input_data.front();
            input_data.pop();
			      break;
			    case 0b001000 :
			      //execute jr
			      rs = (int)((code >> 21) & 0b11111);
			      now = (int)reg[rs] - 1;
			      break;
			    case 0b010101:
			      //execute OUT
			      rs = (int)((code >> 21) & 0b11111);
            output_data.push_back(reg[rs]);
			      break;
					case 0b100010 :
						//SUBの実行
						rs = (int)((code >> 21) & 0b11111);
			    	rt = (int)((code >> 16) & 0b11111);
			    	rd = (int)((code >> 11) & 0b11111);
						reg[rd] = (unsigned int)((int)reg[rs] - (int)reg[rt]);
						break;
					case 0b001001 :
						//execute mov
						rs = (int)((code >> 21) & 0b11111);
			    	rt = (int)((code >> 16) & 0b11111);
						reg[rt] = reg[rs];
						break;
					case 0b111111:
			    	//execute retl
			    	now = (int)reg[28];
						break;
          case 0b000000:
            //これで実行終了であることがわかる
            if(code == 0)  {
              //dataの出力
              for(int i:output_data){
                (fout).write((char *)&i,1);
              }
              cout << "number of executed instructions is " << howmany_instructions << endl;
              return 0;
            }
            break;
				}
        ++now;
				break;
			case 0b010001 :
				//code for fpu
				switch (code & 0b111111){
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
			          reg[rt] = (unsigned int) round(freg[fs]);
			          break;
			        case 0b00100 :
			          //exec mtc1
			          rt = (int)((code >> 16) & 0b11111);
			          fs = (int)((code >> 11) & 0b11111);
			          freg[fs] = (float)((int)reg[rt]);
			          break;
			        }
			      break;
			    case 0b000011 :
			      //exec div.s
			      ft = (int)((code >> 16) & 0b11111);
			      fs = (int)((code >> 11) & 0b11111);
			      fd = (int)((code >> 6) & 0b11111);
			      freg[fd] = freg[fs] / freg[ft];
			      break;
			    case 0b001111 :
			      //exec floor
			      fs = (int)((code >> 11) & 0b11111);
			      fd = (int)((code >> 6) & 0b11111);
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
        ++now;
				break;
			case 0b001000 :
				//ADDI命令の実行
				rs = (int)((code >> 21) & 0b11111);
				rt = (int)((code >> 16) & 0b11111);
        immediate = (short)(code&0b1111111111111111);
				reg[rt] = (unsigned int)((int)reg[rs] + immediate);
        ++now;
				break;
			case 0b000100 :
	    	//BEQ命令の実行
	      rs = (int)((code >> 21) & 0b11111);
				rt = (int)((code >> 16) & 0b11111);
        if((int)reg[rs] == (int)reg[rt]) { now = now + (short)(code&0b1111111111111111); }
        else{++now;}
				break;
			case 0b000110 :
				//execute bg
				rs = (int)((code >> 21) & 0b11111);
	    	rt = (int)((code >> 16) & 0b11111);
	    	if((int)reg[rs] > (int)reg[rt]) { now = now + (short)(code&0b1111111111111111); }
				else{++now;}
        break;
	    case 0b001001 :
	      //execute bge
	      rs = (int)((code >> 21) & 0b11111);
	      rt = (int)((code >> 16) & 0b11111);
	      if((int)reg[rs] >= (int)reg[rt]) { now = now + (short)(code&0b1111111111111111); }
	      else{now++;}
        break;
			case 0b000001 :
				//execute bl
				rs = (int)((code >> 21) & 0b11111);
	    	rt = (int)((code >> 16) & 0b11111);
	    	if((int)reg[rs] < (int)reg[rt]) { now = now + (short)(code&0b1111111111111111); }
				else{now++;}
        break;
	    case 0b001011 :
	      //execute ble
	      rs = (int)((code >> 21) & 0b11111);
	      rt = (int)((code >> 16) & 0b11111);
	      if((int)reg[rs] <= (int)reg[rt]) { now = now + (short)(code&0b1111111111111111); }
	      else{now++;}
        break;
			case 0b000101 :
				//execute bne
				rs = (int)((code >> 21) & 0b11111);
	    	rt = (int)((code >> 16) & 0b11111);
	    	if((int)reg[rs] != (int)reg[rt]) { now = now + (short)(code&0b1111111111111111); }
				else{now++;}
        break;
			case 0b000111 :
	    	//execute fbg
	    	fs = (int)((code >> 21) & 0b11111);
	    	ft = (int)((code >> 16) & 0b11111);
	    	if(freg[fs] > freg[ft]) { now = now + (short)(code&0b1111111111111111) ; }
				else{now++;}
        break;
	    case 0b001110 :
	      //execute fbge
	      fs = (int)((code >> 21) & 0b11111);
	      ft = (int)((code >> 16) & 0b11111);
	      if(freg[fs] >= freg[ft]) { now = now + (short)(code&0b1111111111111111); }
	      else{now++;}
        break;
			case 0b000011 :
				//execute fbne
				fs = (int)((code >> 21) & 0b11111);
				ft = (int)((code >> 16) & 0b11111);
	    	if(freg[fs] != freg[ft]) { now = now + (short)(code&0b1111111111111111); }
				else{now++;}
        break;
	    case 0b101111 :
	      //execute ilw
	      base = (int)((code >> 21) & 0b11111);
	      rt = (int)((code >> 16) & 0b11111);
	      reg[rt] = inst_mem[(int)reg[base] + (short)(code&0b1111111111111111)];
	      now++;
        break;
	    case 0b100111 :
	      //exec ilw.s instruction
	      base = (int)((code >> 21) & 0b11111);
	      ft = (int)((code >> 16) & 0b11111);
	      x.i = inst_mem[(int)reg[base] + (short)(code&0b1111111111111111)];
        freg[ft] = x.f;
        now++;
	      break;
	    case 0b110111 :
	      //exec isw instruction
	      base = (int)((code >> 21) & 0b11111);
	      rt = (int)((code >> 16) & 0b11111);
	      inst_mem[(int)reg[base] + (short)(code&0b1111111111111111)] = reg[rt];
	      now++;
        break;
	    case 0b111011 :
	      //exec isw.s instruction
	      base = (int)((code >> 21) & 0b11111);
	      ft = (int)((code >> 16) & 0b11111);
	      x.f = freg[ft];
        inst_mem[(int)reg[base] + (short)(code&0b1111111111111111)] = x.i;
	      now++;
        break;
			case 0b000010 :
				//JUMP命令の実行
				now = (int)(code&0b11111111111111111111111111);
				break;
			case 0b011000 :
	    	//execute jal
				reg[28] = now;
	    	now = (int)(code&0b11111111111111111111111111);
				break;
	    case 0b111000 :
	      //execute jalr
	      rs = (int)((code >> 21) & 0b11111);
	      reg[28] = now;
	      now = reg[rs];
	      break;
			case 0b100011 :
				//execute lw instruction
				base = (int)((code >> 21) & 0b11111);
				rt = (int)((code >> 16) & 0b11111);
				reg[rt] = mem[(int)reg[base] + (short)(code&0b1111111111111111)];
        now++;
				break;
			case 0b100100 :
				//exec lw.s instruction
				base = (int)((code >> 21) & 0b11111);
		    ft = (int)((code >> 16) & 0b11111);
				x.i = mem[(int)reg[base] + (short)(code&0b1111111111111111)];
        freg[ft] = x.f;
        now++;
				break;
			case 0b111111 :
				//execute sll instruction
				rt = (int)((code >> 16) & 0b11111);
				rd = (int)((code >> 11) & 0b11111);
				sa = (int)((code >> 6) & 0b11111);
	      reg[rd] = (reg[rt]) << reg[sa];
        now++;
				break;
	    case 0b111110 :
	      //execute slli instruction
	      rs = (int)((code >> 21) & 0b11111);
	      rt = (int)((code >> 16) & 0b11111);
	      immediate = (short)(code&0b1111111111111111);
        if (immediate >= 0){
	      reg[rt] = (reg[rs]) << immediate;
        }else{
          reg[rt] = (reg[rs]) >> (-immediate);
        }
        now++;
	      break;
			case 0b101011 :
				//execute sw instruction
		    base = (int)((code >> 21) & 0b11111);
		    rt = (int)((code >> 16) & 0b11111);
		    mem[(int)reg[base] + (short)(code&0b1111111111111111)] = reg[rt];
				now++;
        break;
			case 0b101100 :
		    //execute sw.s instruction
		    base = (int)((code >> 21) & 0b11111);
		    ft = (int)((code >> 16) & 0b11111);
		    x.f = freg[ft];
        mem[(int)reg[base] + (short)(code&0b1111111111111111)] = x.i;
				now++;
        break;
			}



    howmany_instructions++;
    /*
     * if(howmany_instructions % 10000000 == 0){
      cout << howmany_instructions << endl;
    }
    */

	}



	return 0;
  }
}

//---end fast option ---


if(argc==4){
  if(strcmp(argv[2], "-countl")==0){
    int block = atoi(argv[3]);
int caa = 0;
for(int now = 0; now < instr_num; now++)
	{

    if (now == block) caa++;

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
				exec_normal_code(one_instruction,pc,reg,freg,&now,mem,inst_mem,
            howmany_label,label_list,array_num);
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


  cout << "number of executed instructions is " << howmany_instructions << endl;
cout << "reach this line " <<caa << " times "<< endl;
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


}










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
				exec_normal_code(one_instruction,pc,reg,freg,&now,mem,inst_mem,
            howmany_label,label_list,array_num);
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

  //analytical information 
  for (int i = 0; i < array_num; i++){
    cout << label_list[i].first << " " << howmany_label[i] << endl;
  }

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

