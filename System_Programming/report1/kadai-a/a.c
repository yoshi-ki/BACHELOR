#include <stdio.h>
#include "c.h"

const char *a = "Hello, C++ world!\n";

int mystrcmp();

int main(void)
{
	const char *s = hello_c();
	if (mystrcmp(s, a) < 0)
		printf("%s",s);
	else
		printf("%s",a);
}
