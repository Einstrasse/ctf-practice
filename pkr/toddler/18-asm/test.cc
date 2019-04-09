#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define FNAME "this_is_pwnable.kr_flag_file_please_read_this_file.sorry_the_file_name_is_very_loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo0000000000000000000000000ooooooooooooooooooooooo000000000000o0o0o0o0o0o0ong"
char buf[1024];
int main() {
	int fd = open(FNAME, 0, 0);
	// __asm__ volatile {
	// 	mov $0x0, %edx
	// 	mov $0x0, %esi
	// 	mov $0xDEADBEEF, %edi
	// 	mov $0x0, %eax
	// 	callq <__libc_open>

	// 	mov $0x400,%edx
	// 	mov $0xbuf,%esi
	// 	mov %eax,%edi
	// 	callq <__libc_read>
	// 	mov $0x1,%edi
	// 	call <__libc_write>
	// }

	__asm__ volatile (
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