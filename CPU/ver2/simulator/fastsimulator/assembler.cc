#include <iostream>
#include <string>
#include <sstream>
#include <bitset>
#include <utility>
#include "operation.h"
using namespace std;

bool intreg_check(string rs){
  if(rs[0] == '%' && rs[1] == 'r') {return true;}
  else {return false;}
}

bool floatreg_check(string fs){
  if(fs[0] == '%' && fs[1] == 'f') {return true;}
  else {return false;}
}

bool immediate_check(string immediate){
  if(immediate[0] != '%') { return true;}
  else {return false;}
}


//option 0 is for execute, 1 is for core
string assemble (string line, int option, int line_num){
	string return_code;
	string opcode;
	istringstream s(line);
	s >> opcode;
	//branch for every instructions
	if (opcode == "abs.s"){
    string fs,fd;
    s >> fs >> fd;
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< fd << endl;
    }
    if (!floatreg_check(fd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< fd << endl;
    }
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
    return_code = "0100011000000000" + fs_s + fd_s + "000101";
  }
	else if (opcode == "add") {
		string rd, rs, rt;
		s >> rs >> rt >> rd;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
    if (!intreg_check(rd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
		string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
		return_code =  "000000" + rs_s + rt_s + rd_s + "00000" + "100000";
	}
	else if (opcode == "addi"){
		string rs, rt, immediate;
		s >> rs >> rt >> immediate;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< immediate << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< immediate << endl;
    }
    if (!immediate_check(immediate)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< immediate << endl;
    }
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
		//immediateはマイナスの場合の場合分けが必要
		int immediate_int = atoi(immediate.c_str());
		string immediate_s;
		if(immediate_int < 0){
			immediate_int = immediate_int + power(2,15);
			immediate_s = "1" + decimal_to_binary(immediate_int, 15);
		}else{
			immediate_s = "0" + decimal_to_binary(immediate_int, 15);
		}
		return_code = "001000" + rs_s + rt_s + immediate_s;
	}
	else if (opcode == "add.s"){
		string ft,fs,fd;
		s >> ft >> fs >> fd;
    if (!floatreg_check(ft)){
      cout << "something wrong with the instruction " << opcode << endl; 
      cout << "line number is near " << line_num << endl; 
      cout << opcode <<" "<< ft <<" "<< fs <<" "<< fd << endl;
    }
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< ft <<" "<< fs <<" "<< fd << endl;
    }
    if (!floatreg_check(fd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< ft <<" "<< fs <<" "<< fd << endl;
    }
		string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
		string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
		string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
		return_code = "01000110000" + ft_s + fs_s + fd_s + "000000";
	}
	else if (opcode == "beq"){
		string rs,rt;
		string offset;
		s >> rs >> rt >> offset;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
		int offset_int = atoi(offset.c_str());
		string offset_s;
		if(offset_int < 0){
			offset_int = offset_int + power(2,15);
			offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
		}else{	
			offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
		}
		return_code = "000100" + rs_s + rt_s + offset_s;
	}
	else if (opcode == "bg"){
    string rs,rt;
    string offset;
    s >> rs >> rt >> offset;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "000110" + rs_s + rt_s + offset_s;
  }
  else if (opcode == "bge"){
    string rs,rt;
    string offset;
    s >> rs >> rt >> offset;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "001001" + rs_s + rt_s + offset_s;
  }
	else if (opcode == "bl"){
    string rs,rt;
    string offset;
    s >> rs >> rt >> offset;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "000001" + rs_s + rt_s + offset_s;
  }
  else if (opcode == "ble"){
    string rs,rt;
    string offset;
    s >> rs >> rt >> offset;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "001011" + rs_s + rt_s + offset_s;
  }
	else if (opcode == "bne"){
		string rs,rt;
    string offset;
    s >> rs >> rt >> offset;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< offset << endl;
    }
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "000101" + rs_s + rt_s + offset_s;
	}
	else if (opcode == "div"){
		string rs,rt,rd;
		s >> rs >> rt >> rd;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
    if (!intreg_check(rd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "011010";
	}
  else if (opcode == "div.s"){
    string ft,fs,fd;
    s >> ft >> fs >> fd;
    if (!floatreg_check(ft)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< ft <<" "<< fs <<" "<< fd << endl;
    }
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< ft <<" "<< fs <<" "<< fd << endl;
    }
    if (!floatreg_check(fd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< ft <<" "<< fs <<" "<< fd << endl;
    }
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
    return_code = "01000110000" + ft_s + fs_s + fd_s + "000011";
  }
	else if (opcode == "fbg"){
    string fs,ft;
    string offset;
    s >> fs >> ft >> offset;
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< ft <<" "<< offset << endl;
    }
    if (!floatreg_check(ft)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< ft <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< ft <<" "<< offset << endl;
    }
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "000111" + fs_s + ft_s + offset_s;
  }
  else if (opcode == "fbge"){
    string fs,ft;
    string offset;
    s >> fs >> ft >> offset;
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< ft <<" "<< offset << endl;
    }
    if (!floatreg_check(ft)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< ft <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< ft <<" "<< offset << endl;
    }
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "001110" + fs_s + ft_s + offset_s;
  }
	else if (opcode == "fbne"){
		string fs,ft;
    string offset;
    s >> fs >> ft >> offset;
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< ft <<" "<< offset << endl;
    }
    if (!floatreg_check(ft)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< ft <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< ft <<" "<< offset << endl;
    }
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "000011" + fs_s + ft_s + offset_s;
	}
  else if (opcode == "fin"){
    string fs;
    s >> fs;
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs << endl;
    }
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    return_code = "000000" + fs_s + "000000000000000111010";
  }
	else if (opcode == "floor.w.s"){
		string fs,fd;
    s >> fs >> fd;
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< fd << endl;
    }
    if (!floatreg_check(fd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" " << fd << endl;
    }
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
    return_code = "0100011000000000" + fs_s + fd_s + "001111";
	}
  else if (opcode == "ilw"){
    string base;
    string rt;
    string offset;
    s >> base >> rt >> offset;
    if (!intreg_check(base)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< rt <<" "<< offset << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< rt <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< rt <<" "<< offset << endl;
    }
    string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "101111" + base_s + rt_s + offset_s;
  }
  else if (opcode == "ilw.s"){
    string base;
    string ft;
    string offset;
    s >> base >> ft >> offset;
    if (!intreg_check(base)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< ft <<" "<< offset << endl;
    }
    if (!floatreg_check(ft)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< ft <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< ft <<" "<< offset << endl;
    }
    string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "100111" + base_s + ft_s + offset_s;
  }
  else if (opcode == "isw"){
    string base;
    string rt;
    string offset;
    s >> base >> rt >> offset;
    if (!intreg_check(base)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< rt <<" "<< offset << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< rt <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< rt <<" "<< offset << endl;
    }
    string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "110111" + base_s + rt_s + offset_s;
  }
  else if (opcode == "isw.s"){
    string base;
    string ft;
    string offset;
    s >> base >> ft >> offset;
    if (!intreg_check(base)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< ft <<" "<< offset << endl;
    }
    if (!floatreg_check(ft)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< ft <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< ft <<" "<< offset << endl;
    }
    string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "111011" + base_s + ft_s + offset_s;
  }
  else if (opcode == "in"){
    string rs;
    s >> rs;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs << endl;
    }
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    return_code = "000000" + rs_s + "000000000000000101010";
  }
	else if (opcode == "j"){
    string instr_index;
    s >> instr_index;
    string instr_index_s = decimal_to_binary(atoi(instr_index.c_str()),26);
    return_code = "000010" + instr_index_s;
  }
	else if (opcode == "jr"){
		string rs;
		s >> rs;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs << endl;
    }
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		return_code = "000000" + rs_s + "000000000000000001000";
	}
	else if (opcode == "jal"){
		string instr_index;
		s >> instr_index;
		string instr_index_s = decimal_to_binary(atoi(instr_index.c_str()),26);
    return_code = "011000" + instr_index_s;
  }
  else if (opcode == "jalr"){
    string rs;
    s >> rs;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs << endl;
    }
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    return_code = "111000" + rs_s + "000000000000000000000";
  }
	else if (opcode == "lw") {
		string base;
		string rt;
		string offset;
		s >> base >> rt >> offset;
    if (!intreg_check(base)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< rt <<" "<< offset << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< rt <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< rt <<" "<< offset << endl;
    }
		string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
		int offset_int = atoi(offset.c_str());
    string offset_s;
		if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
		return_code = "100011" + base_s + rt_s + offset_s;
	}
	else if (opcode == "lw.s"){
		string base;
    string ft;
    string offset;
    s >> base >> ft >> offset;
    if (!intreg_check(base)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< ft <<" "<< offset << endl;
    }
    if (!floatreg_check(ft)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< ft <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< ft <<" "<< offset << endl; 
    }
    string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
		return_code = "100100" + base_s + ft_s + offset_s;
	}
	else if (opcode == "mfc1"){
		string rt,fs;
		s >> rt >> fs;
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rt <<" "<< fs << endl;
    }
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rt <<" "<< fs << endl;
    }
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
		string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
		return_code = "01000100000" + rt_s + fs_s + "00000000000";
	}
	else if (opcode == "mtc1"){
    string rt,fs;
		s >> rt >> fs;
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rt <<" "<< fs << endl;
    }
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rt <<" "<< fs << endl;
    }
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    return_code = "01000100100" + rt_s + fs_s + "00000000000";
  }
	else if (opcode == "mod"){
		string rs,rt,rd;
		s >> rs >> rt >> rd;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
    if (!intreg_check(rd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "011011";
	}
	else if (opcode == "mov"){
		string rs,rt;
		s >> rs >> rt;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt << endl;
    }
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
		return_code = "000000" + rs_s + rt_s + "0000000000001001";
	}
	else if (opcode == "mov.s"){
		string rs,rt;
		s >> rs >> rt;
    if (!floatreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt << endl;
    }
    if (!floatreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt << endl;
    }
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    return_code = "010001" + rs_s + rt_s + "0000000000001001";
	}
	else if (opcode == "mul"){
		string rs,rt,rd;
		s >> rs >> rt >> rd;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
    if (!intreg_check(rd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "011001";
	}
	else if (opcode == "mul.s"){
		string ft,fs,fd;
    s >> ft >> fs >> fd;
    if (!floatreg_check(ft)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< ft <<" "<< fs <<" "<< fd << endl;
    }
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< ft <<" "<< fs <<" "<< fd << endl;
    }
    if (!floatreg_check(fd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< ft <<" "<< fs <<" "<< fd << endl;
    }
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
    return_code = "01000110000" + ft_s + fs_s + fd_s + "000010";
	}
	else if (opcode == "neg.s"){
		string fs,fd;
		s >> fs >> fd;
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< fd << endl;
    }
    if (!floatreg_check(fd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< fd << endl;
    }
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
		return_code = "0100011000000000" + fs_s + fd_s + "000111";
	}
  else if (opcode == "out"){
    string rs;
    s >> rs;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs << endl;
    }
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    return_code = "000000" + rs_s + "000000000000000010101";
  }
	else if (opcode == "ret"){
		return_code = "00000000000000000000000000000000";
	}
	else if (opcode == "retl"){
		return_code = "00000000000000000000000001111111";
	}
	else if (opcode == "sqrt.s"){
		string fs,fd;
		s >> fs >> fd;
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< fd << endl;
    }
    if (!floatreg_check(fd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< fs <<" "<< fd << endl;
    }
		string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
		return_code = "0100011000000000" + fs_s + fd_s + "000100";
	}
	else if (opcode == "sll"){
		string rt,rd,sa;
		s >> rt >> rd >> sa;
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rt <<" "<< rd <<" "<< sa << endl;
    }
    if (!intreg_check(rd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rt <<" "<< rd <<" "<< sa << endl;
    }
    if (!intreg_check(sa)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rt <<" "<< rd <<" "<< sa << endl;
    }
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		string sa_s = decimal_to_binary(atoi(sa.substr(2,sa.length()-2).c_str()),5);
		return_code = "11111100000" + rt_s + rd_s + sa_s + "000000";
	}
  else if (opcode == "slli"){
    string rs, rt, immediate;
    s >> rs >> rt >> immediate;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< immediate << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< immediate << endl;
    }
    if (!immediate_check(immediate)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< immediate << endl;
    }
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int immediate_int = atoi(immediate.c_str());
    
    string immediate_s;
    if(immediate_int < 0){
      immediate_int = immediate_int + power(2,15);
      immediate_s = "1" + decimal_to_binary(immediate_int, 15);
    }else{
      immediate_s = "0" + decimal_to_binary(immediate_int, 15);
    }
    return_code = "111110" + rs_s + rt_s + immediate_s;
  }
	else if (opcode == "sub"){
		string rs,rt,rd;
		s >> rs >> rt >> rd;
    if (!intreg_check(rs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
    if (!intreg_check(rd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< rs <<" "<< rt <<" "<< rd << endl;
    }
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
		string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "100010";
	}
	else if (opcode == "sub.s"){
		string ft,fs,fd;
    s >> ft >> fs >> fd;
    if (!floatreg_check(ft)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< ft <<" "<< fs <<" "<< fd << endl;
    }
    if (!floatreg_check(fs)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< ft <<" "<< fs <<" "<< fd << endl;
    }
    if (!floatreg_check(fd)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< ft <<" "<< fs <<" "<< fd << endl;
    }
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
    return_code = "01000110000" + ft_s + fs_s + fd_s + "000001";
	}
	else if (opcode == "sw"){
		string base;
    string rt;
    string offset;
    s >> base >> rt >> offset;
    if (!intreg_check(base)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< rt <<" "<< offset << endl;
    }
    if (!intreg_check(rt)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< rt <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< rt <<" "<< offset << endl;
    }
    string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "101011" + base_s + rt_s + offset_s;
	}
	else if (opcode == "sw.s"){
		string base;
    string ft;
    string offset;
    s >> base >> ft >> offset;
    if (!intreg_check(base)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< ft <<" "<< offset << endl;
    }
    if (!floatreg_check(ft)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< ft <<" "<< offset << endl;
    }
    if (!immediate_check(offset)){
      cout << "something wrong with the instruction " << opcode << endl;
      cout << "line number is near " << line_num << endl;
      cout << opcode <<" "<< base <<" "<< ft <<" "<< offset << endl;
    }
    string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
		return_code = "101100" + base_s + ft_s + offset_s;
	}
	else{
		//this area is for the label
		string colon;
		s >> colon;
    if (colon != ":") {cout << "unknown instruction : the function name is " << opcode << endl;}
	}
	if (option == 1) {
		return_code = return_code + "  \\\\ " + opcode;
	}
	return return_code;
}
