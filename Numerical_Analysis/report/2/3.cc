#include <iostream>
#include "math.h"
using namespace std;
#define g 9.80619920

double f (double x, double y, double z, double r, double w){
	return z - sqrt(r*r - (w-sqrt(x*x+y*y))*(w-sqrt(x*x+y*y))) - cos(w);
}

int main(){
	double x0 = 0.02;
	double y0 = 0;
	double z0 = 10000000;

	double r = 2;

	double a = sqrt(x0*x0+y0*y0) - r;
	double b = sqrt(x0*x0+y0*y0) + r;
	while(1){
		if(abs(b-a) < 0.01){
			break;
		}
		double w = (3-sqrt(5))/2;
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
	double t = sqrt(2*(z0-z-r)/g);
	printf("collision time = %lf(s)\n",t);

	double x;
	double y;
	if(sqrt(x0*x0+y0*y0) == 0){x = 0;y=0;}
	else{
		x = w0 * x0 / sqrt(x0*x0+y0*y0);
		y = w0 * y0 / sqrt(x0*x0+y0*y0);
	}

	printf("collision place = (%lf,%lf,%lf)\n",x,y,z);

	double vz0 = g * t;
	double vz_new = vz0 * cos(-2 * (atan(-sin(w0))));
	double vx_new = vz0 * sin(-2 * (atan(-sin(w0)))) * x0 / sqrt(x0*x0+y0*y0);
	double vy_new = vz0 * sin(-2 * (atan(-sin(w0)))) * y0 / sqrt(x0*x0+y0*y0);
	
	printf("new_v = (%lf,%lf,%lf)",vx_new,vy_new,vz_new);



	return 0;
}
