#include <stdio.h>

struct complex_number {
    double real;
    double imaginary;
};

struct complex_number complex_number_add(struct complex_number num1, struct complex_number num2){
  struct complex_number answer;
  answer.real = num1.real +  num2.real;
  answer.imaginary = num1.imaginary + num2.imaginary;
  return answer;
}

struct complex_number complex_number_multiply(struct complex_number num1, struct complex_number num2){
  struct complex_number answer;
  answer.real = num1.real * num2.real - num1.imaginary * num2.imaginary;
  answer.imaginary = num1.real * num2.imaginary + num1.imaginary * num2.real;
  return answer;
}

int main(void)
{
    struct complex_number a, b, c, d;
    scanf("%lf %lf", &a.real, &a.imaginary);
    scanf("%lf %lf", &b.real, &b.imaginary);

    c = complex_number_add(a,b);
    d = complex_number_multiply(a,b);

    printf("%f, %f\n", c.real, c.imaginary);
    printf("%f, %f\n", d.real, d.imaginary);

    return 0;
}
