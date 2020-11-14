#include<utility>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include "operation.h"
using namespace std;
void create_execute_file(string* execute_instruction, pair<string,int>* label_list, int line_num,int array_num,int data_num){
	string filename = "execute.txt";
	ofstream writing_file;
	writing_file.open(filename);
  writing_file << "j" << " " << data_num+1 << endl;
	for(int i=data_num+1; i < line_num; i++){
		string jump;
		istringstream s(execute_instruction[i]);
		s >> jump;
		if(jump == "j") {
			string jump_to;
			s >> jump_to;
			int jump_to_num = find_value_from_pair(label_list,jump_to,array_num);
			writing_file << jump << " " << jump_to_num << endl;
		}
		else if(jump == "jal"){
			string jump_to;
			s >> jump_to;
			int jump_to_num = find_value_from_pair(label_list,jump_to,array_num);
			writing_file << jump << " " << jump_to_num << endl;
		}
		else if(jump == "beq"){
			string rs, rt;
			string jump_to;
			s >> rs >> rt >> jump_to;
			int jump_to_num = find_value_from_pair(label_list,jump_to,array_num) - i;
			writing_file << jump << " " << rs << " " << rt << " " << jump_to_num << endl;
		}
		else if(jump == "bne"){
			string rs, rt;
      string jump_to;
      s >> rs >> rt >> jump_to;
      int jump_to_num = find_value_from_pair(label_list,jump_to,array_num) - i;
    	writing_file << jump << " " << rs << " " << rt << " " << jump_to_num << endl;
		}
		else if(jump == "bl"){
      string rs, rt;
      string jump_to;
      s >> rs >> rt >> jump_to;
      int jump_to_num = find_value_from_pair(label_list,jump_to,array_num) - i;
      writing_file << jump << " " << rs << " " << rt << " " << jump_to_num << endl;
    }
    else if(jump == "ble"){
      string rs, rt;
      string jump_to;
      s >> rs >> rt >> jump_to;
      int jump_to_num = find_value_from_pair(label_list,jump_to,array_num) - i;
      writing_file << jump << " " << rs << " " << rt << " " << jump_to_num << endl;
    }
		else if(jump == "bg"){
      string rs, rt;
      string jump_to;
      s >> rs >> rt >> jump_to;
      int jump_to_num = find_value_from_pair(label_list,jump_to,array_num) - i;
      writing_file << jump << " " << rs << " " << rt << " " << jump_to_num << endl;
    }
    else if(jump == "bge"){
      string rs, rt;
      string jump_to;
      s >> rs >> rt >> jump_to;
      int jump_to_num = find_value_from_pair(label_list,jump_to,array_num) - i;
      writing_file << jump << " " << rs << " " << rt << " " << jump_to_num << endl;
    }
		else if(jump == "fbne"){
      string fs, ft;
      string jump_to;
      s >> fs >> ft >> jump_to;
      int jump_to_num = find_value_from_pair(label_list,jump_to,array_num) - i;
      writing_file << jump << " " << fs << " " << ft << " " << jump_to_num << endl;
    }
		else if(jump == "fbg"){
      string fs, ft;
      string jump_to;
      s >> fs >> ft >> jump_to;
      int jump_to_num = find_value_from_pair(label_list,jump_to,array_num) - i;
      writing_file << jump << " " << fs << " " << ft << " " << jump_to_num << endl;
    }
    else if(jump == "fbge"){
      string fs, ft;
      string jump_to;
      s >> fs >> ft >> jump_to;
      int jump_to_num = find_value_from_pair(label_list,jump_to,array_num) - i;
      writing_file << jump << " " << fs << " " << ft << " " << jump_to_num << endl;
    }
    else if(jump == "ilw"){
      string base, rt;
      string jump_to;
      s >> base >> rt >> jump_to;
      int jump_to_num = find_value_from_pair(label_list,jump_to,array_num);
      // 0 is impossible if label is not included in label_list
      if(jump_to_num == 0) {
        writing_file << jump << " " << base << " " << rt << " " << jump_to << endl;
      } else {
        writing_file << jump << " " << base << " " << rt << " " << jump_to_num << endl;
      }
    }
    else if(jump == "ilw.s"){
      string base, ft;
      string jump_to;
      s >> base >> ft >> jump_to;
      int jump_to_num = find_value_from_pair(label_list,jump_to,array_num);
      // 0 is impossible if label is not included in label_list
      if(jump_to_num == 0) {
        writing_file << jump << " " << base << " " << ft << " " << jump_to << endl;
      } else {
        writing_file << jump << " " << base << " " << ft << " " << jump_to_num << endl;
      }
    }
    else if(jump == "addi"){
      string rt, rd;
      string jump_to;
      s >> rt >> rd >> jump_to;
      int jump_to_num = find_value_from_pair(label_list,jump_to,array_num);
      // 0 is impossible if label is not included in label_list
      if(jump_to_num == 0) {
        writing_file << jump << " " << rt << " " << rd << " " << jump_to << endl;
      } else {
        writing_file << jump << " " << rt << " " << rd << " " << jump_to_num << endl;
      }
    }
		else{
			writing_file << execute_instruction[i] << endl;
		}
	}
	writing_file.close();
	return ;
}
