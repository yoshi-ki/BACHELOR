#include <stdio.h>
#include <math.h>

double quadratic_formula_float(float a, float b, float c){
  if(b*b-4*a*c < 0) return 0;
  if(b>0){
    return (-b - sqrtf(b*b-4*a*c))/(2*a);
  }
  else {
    return (-b + sqrtf(b*b-4*a*c))/(2*a);
  }
}


double quadratic_formula_double(double a, double b, double c){
	if(b*b-4*a*c < 0) return 0;
	if(b>0){
		return (-b - sqrt(b*b-4*a*c))/(2*a);
	}
	else {
		return (-b + sqrt(b*b-4*a*c))/(2*a);
	}
}



int main(){
  float x1_x = 0.1223452f;
  float x1_y = 1.2345235f;
  float x2_x = 3.2352445f;
  float x2_y = 4.35636f;
  float v1_x = 2.434124f;
  float v1_y = 2.435352f;
  float v2_x = 2.324352f;
  float v2_y = 2.356434f;
  float r = sqrtf(2);

  float a = (v2_x-v1_x)*(v2_x-v1_x) + (v2_y-v1_y)*(v2_y-v1_y);
  float b = 2*(v2_x-v1_x)*(x2_x-x1_x) + 2*(v2_y-v1_y)*(x2_y-x1_y);
  float c = (x2_x-x1_x)*(x2_x-x1_x) + (x2_y-x1_y)*(x2_y-x1_y) - 4*r*r;

  float one_solution = quadratic_formula_double(a,b,c);
  if (one_solution != 0){
    float another_solution = c/(a*one_solution);
    if(another_solution >= 0 && one_solution >= 0){
      if(another_solution > one_solution) {printf("%lf",one_solution);}
      else {printf("%16f",another_solution);}
      }
    else if (another_solution < 0 && one_solution < 0){ printf("no collision");}
    else if (one_solution < 0) {printf("%16f", another_solution);}
    else if (another_solution < 0) {printf("%16f", one_solution);}
  }
  else { printf("no collision"); }

  return 0;
}


/*
int main(){
	double x1_x = 0.122345234;
	double x1_y = 1.23452352;
	double x2_x = 3.2352445;
  double x2_y = 4.35636;
	double v1_x = 24200.434124;
	double v1_y = 24200.435352;
	double v2_x = 2.324352;
	double v2_y = 2.356434;
	double r = sqrt(2);

	double a = (v2_x-v1_x)*(v2_x-v1_x) + (v2_y-v1_y)*(v2_y-v1_y);
	double b = 2*(v2_x-v1_x)*(x2_x-x1_x) + 2*(v2_y-v1_y)*(x2_y-x1_y);
	double c = (x2_x-x1_x)*(x2_x-x1_x) + (x2_y-x1_y)*(x2_y-x1_y) - 4*r*r;
	
	printf("%lf\n",a);
	printf("%lf\n",b);
	printf("%lf\n",c);

	double one_solution = quadratic_formula_double(a,b,c);
	if (one_solution != 0){
		double another_solution = c/(a*one_solution);
		if(another_solution >= 0 && one_solution >= 0){
			if(another_solution > one_solution) {printf("%lf",one_solution);}
			else {printf("%16lf",another_solution);}
			}
		else if (another_solution < 0 && one_solution < 0){ printf("no collision");}
		else if (one_solution < 0) {printf("%16lf", another_solution);}
		else if (another_solution < 0) {printf("%16lf", one_solution);}
	}
	else { printf("no collision"); }

	return 0;
}

*/
