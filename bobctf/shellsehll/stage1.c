/*
This is nyannyan shllcode challenge.
Give me shellcode without \x00 and encoded by base64

1 stage
read string from cat.nyan in /home/nyanshell/ and write as stdout
*/
#include <stdio.h>
#include <string.h>

char *shellcode = "Your Code";

int main(void)
{
(*(void(*)()) shellcode)();
return 0;
}
