#include <stdio.h>
#include <math.h>

double quadratic_formula_double(double a, double b, double c){
  if(b*b-4*a*c < 0) return 0;
  if(b>0){
    return (-b - sqrt(b*b-4*a*c))/(2*a);
  }
  else {
    return (-b + sqrt(b*b-4*a*c))/(2*a);
  }
}


double trans (double p, double len){
  double x = 0.0;
  if((x - len * (x/len)) < len){ x = fmod(p,len); }
  else { x = len - fmod( p , len); }
  return x;
}


double collision_time(double x1_x,double x1_y, double x2_x, double x2_y, double v1_x, double v1_y, double v2_x, double v2_y, double r ){
	double a = (v2_x-v1_x)*(v2_x-v1_x) + (v2_y-v1_y)*(v2_y-v1_y);
  double b = 2*(v2_x-v1_x)*(x2_x-x1_x) + 2*(v2_y-v1_y)*(x2_y-x1_y);
  double c = (x2_x-x1_x)*(x2_x-x1_x) + (x2_y-x1_y)*(x2_y-x1_y) - 4*r*r;

  double time = 0.0;

  double one_solution = quadratic_formula_double(a,b,c);
  if (one_solution != 0){
    double another_solution = c/(a*one_solution);
    if(another_solution >= 0 && one_solution >= 0){
      if(another_solution > one_solution) {time = one_solution;}
      else {time = another_solution;}
      }
    else if (another_solution < 0 && one_solution < 0){ printf("no collision\n");}
    else if (one_solution < 0) {time =  another_solution;}
    else if (another_solution < 0) {time = one_solution;}
  }
  else { printf("no collision\n"); }

	return time;
}





int main(){
	int N = 3; //how many times collisions occur
	double ve = 3.0;//vertical length
	double la = 4.0;//lateral length
  double x1_x = 0.122345234;
  double x1_y = 1.23452352;
  double x2_x = 3.2352445;
  double x2_y = 4.35636;
	double x3_x = 3.0;
	double x3_y = 4.0;
  double v1_x = 2.434124;
  double v1_y = 2.435352;
  double v2_x = 2.324352;
  double v2_y = 2.356434;
	double v3_x = 2.0;
	double v3_y = 1.0;
  double r = sqrt(2);
	double m1 = 1.0;
  double m2 = 2.0;
	double m3 = 3.0;
  double e = 0.7;

	for(int i = 0; i < N; i++){
		double time1 = collision_time(x1_x,x1_y,x2_x,x2_y,v1_x,v1_y,v2_x,v2_y,r);
		double time2 = collision_time(x1_x,x1_y,x3_x,x3_y,v1_x,v1_y,v3_x,v3_y,r);
		double time3 = collision_time(x2_x,x2_y,x3_x,x3_y,v2_x,v2_y,v3_x,v3_y,r);
		double time = 0.0;
		if(time1 > time2) {
			if(time2 > time3){
				time = time3;
			}else{
				time = time2;
			}
		}
		else {
			if(time1 > time3){
        time = time3;
      }else{
        time = time1;
      }
		}


		x1_x = trans(x1_x + time * v1_x,ve);
  	x1_y = trans(x1_y + time * v1_y,la);
  	x2_x = trans(x2_x + time * v2_x,ve);
  	x2_y = trans(x2_y + time * v2_y,la);
		x3_x = trans(x3_x + time * v3_x,ve);
		x3_y = trans(x3_y + time * v3_y,la);

		if(time1 > time2) {
      if(time2 > time3){
				v2_x = (-v2_x + v3_x)*(1+e) / (m2/m3 + 1) + v2_x;
        v2_y = (-v2_y + v3_y)*(1+e) / (m2/m3 + 1) + v2_y;
        v3_x = (-v3_x + v2_x)*(1+e) / (m3/m2 + 1) + v3_x;
        v3_y = (-v3_y + v2_y)*(1+e) / (m3/m2 + 1) + v3_y;
      }else{
				v1_x = (-v1_x + v3_x)*(1+e) / (m1/m3 + 1) + v1_x;
        v1_y = (-v1_y + v3_y)*(1+e) / (m1/m3 + 1) + v1_y;
        v3_x = (-v3_x + v1_x)*(1+e) / (m3/m1 + 1) + v3_x;
        v3_y = (-v3_y + v1_y)*(1+e) / (m3/m1 + 1) + v3_y;
      }
    }
    else {
      if(time1 > time3){
				v2_x = (-v2_x + v3_x)*(1+e) / (m2/m3 + 1) + v2_x;
        v2_y = (-v2_y + v3_y)*(1+e) / (m2/m3 + 1) + v2_y;
        v3_x = (-v3_x + v2_x)*(1+e) / (m3/m2 + 1) + v3_x;
        v3_y = (-v3_y + v2_y)*(1+e) / (m3/m2 + 1) + v3_y;
      }else{
				v1_x = (-v1_x + v2_x)*(1+e) / (m1/m2 + 1) + v1_x;
  			v1_y = (-v1_y + v2_y)*(1+e) / (m1/m2 + 1) + v1_y;
  			v2_x = (-v2_x + v1_x)*(1+e) / (m2/m1 + 1) + v2_x;
  			v2_y = (-v2_y + v1_y)*(1+e) / (m2/m1 + 1) + v2_y;
      }
    }


  printf("x1_x = %lf\n",x1_x);
  printf("x1_y = %lf\n",x1_y);
  printf("x2_x = %lf\n",x2_x);
  printf("x2_y = %lf\n",x2_y);
	printf("x3_x = %lf\n",x3_x);
  printf("x3_y = %lf\n",x3_y);
	}
  return 0;
}
