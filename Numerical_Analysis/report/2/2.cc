#include <iostream>
#include "math.h"
using namespace std;
#define g 9.80619920

double f (double x, double y, double z, double r, double w){
	return z - sqrt(r*r - (w-sqrt(x*x+y*y))*(w-sqrt(x*x+y*y))) - cos(w);
}

int main(){
	double x0 = 2.02;
	double y0 = 3.04;
	double z0 = 5.1;
	
	double r = 0.4;

	double a = sqrt(x0*x0+y0*y0) - r;
	double b = sqrt(x0*x0+y0*y0) + r;
	while(1){
		if(abs(b-a) < 0.01){
			break;
		}
		double w = (3-sqrt(5)/2);
		double c = a + (b-a) * w;
		double d = a + (b-a) * (1-w);
		
		if(f(x0,y0,z0,r,c) < f(x0,y0,z0,r,d)) {
			b = d;	
		}
		else {
			a = c;
		}
	}

	double w0 = a;
	double z = cos(w0);
	double t = sqrt(2*(z0-z)/g);
	printf("collision time = %lf(s)",t);

	return 0;
}
