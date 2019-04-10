#include <stdio.h>

int main(){
	unsigned int random;
	random = rand();	// random value!

	printf("%u\n", random); //1804289383
	printf("%d\n", random ^ 0xdeadbeef); //-1255736440
	return 0;
	
}
