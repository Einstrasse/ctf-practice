#include <bits/stdc++.h>
using namespace std;

#define NUM_CHAR 26
const char* caesar_str = "jhlzhyjpwolypzvulvmaolzptwslzahuktvzadpklsfruvdulujyfwapvualjoupxblz";

void caesar_decrypt(const char* cipher, int shift) {
	int len = strlen(cipher);

	for (int i=0; i < len; i++) {
		char ch = cipher[i] - 'a';
		printf("%c", (ch+shift) % NUM_CHAR + 'a');
	}
}
int main() {
	for (int i=1;i < NUM_CHAR; i++) {
		printf("shift[%2d] = ", i);
		caesar_decrypt(caesar_str, i);
		putchar('\n');
	}
	return 0;
}