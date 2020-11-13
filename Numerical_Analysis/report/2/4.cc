#include <iostream>
#include "math.h"
using namespace std;
#define g 9.80619920

double f_prime (double x, double y, double z, double R, double r, double theta, double t){
	return 2*theta*((x+y*tan(theta*t))/(cos(theta*t)*cos(theta*t)*(tan(theta*t)*tan(theta*t)+1)*sqrt((tan(theta*t)*tan(theta*t)+1))))*((tan(theta * t) * x - y)/sqrt(tan(theta*t)*tan(theta*t)+1)) - g*(z-g*t*t/2);
}

double f (double x, double y, double z, double R, double r, double theta, double t){
	return (((tan(theta * t) * x - y)/sqrt(tan(theta*t)*tan(theta*t)+1))*((tan(theta * t) * x - y)/sqrt(tan(theta*t)*tan(theta*t)+1))) + (z-(1/(2*g*t*t)))*(z-(1/(2*g*t*t))) - (R+r)*(R+r);
}

int main(){
	double x0 = 10;
	double y0 = 5;
	double z0 = 10;

	double R = 3;
	double r = 2;
	double theta = 3;
	double epsilon = 0.000001;

	double tk = sqrt(2*(z0)/g);
	double tk1 = 0;
	int t = 1;
	while(t<5){
		tk1 = tk-(f(x0,y0,z0,R,r,theta,tk)/f_prime(x0,y0,z0,R,r,theta,tk));
		if(abs(tk1-tk) < epsilon){
			break;
		}
		tk = tk1;
		t++;
	}

	printf("%lf\n",tk1);

	return 0;
}
