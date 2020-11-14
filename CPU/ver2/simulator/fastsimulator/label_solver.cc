#include <iostream>
#include <string>
#include <fstream>
#include <sstream>
#include <utility>
using namespace std;
void label_solver(string one_assemble_instruction, pair<string,int>* label_list, int* line_num,int* array_num,string* execute_instruction){
  string label_name;
  string colon;
  istringstream s(one_assemble_instruction);
  s >> label_name >> colon;
  // text_section code
	if(label_name[0] != '#'){
	 // if comment is read, do nothing
	 if(colon == ":") {
	  //ここでは配列にlabel情報を代入する
	  label_list[*array_num].first = label_name;
	  label_list[*array_num].second= *line_num;
	  *array_num = *array_num + 1;
  }
  else {
    //+1 is because j in the initial position
	  execute_instruction[*(line_num)+1] = one_assemble_instruction;
	  *line_num = *line_num + 1;
  }
	}
}
