
start:     file format elf32-i386


Disassembly of section .text:

08048060 <_start>:
 8048060:	54                   	push   %esp
 8048061:	68 9d 80 04 08       	push   $0x804809d    # stack prologue
 8048066:	31 c0                	xor    %eax,%eax     # eax = 0
 8048068:	31 db                	xor    %ebx,%ebx     # ebx = 0
 804806a:	31 c9                	xor    %ecx,%ecx     # ecx = 0
 804806c:	31 d2                	xor    %edx,%edx     # edx = 0
 804806e:	68 43 54 46 3a       	push   $0x3a465443
 8048073:	68 74 68 65 20       	push   $0x20656874
 8048078:	68 61 72 74 20       	push   $0x20747261
 804807d:	68 73 20 73 74       	push   $0x74732073
 8048082:	68 4c 65 74 27       	push   $0x2774654c
 # esp -> 16byte + exit_addr
 8048087:	89 e1                	mov    %esp,%ecx # ecx => string
 8048089:	b2 14                	mov    $0x14,%dl # edx => 20
 804808b:	b3 01                	mov    $0x1,%bl # ebx => 1
 804808d:	b0 04                	mov    $0x4,%al # eax => 4
 804808f:	cd 80                	int    $0x80
 # write(stdout, stack[esp], 20)
 
 8048091:	31 db                	xor    %ebx,%ebx # ebx = 0
 8048093:	b2 3c                	mov    $0x3c,%dl # edx => 60
 8048095:	b0 03                	mov    $0x3,%al # eax => 3
 8048097:	cd 80                	int    $0x80
 # read(stdin, stack[esp], 60)

 8048099:	83 c4 14             	add    $0x14,%esp # stack epilogue
 804809c:	c3                   	ret    

0804809d <_exit>:
 804809d:	5c                   	pop    %esp
 804809e:	31 c0                	xor    %eax,%eax
 80480a0:	40                   	inc    %eax
 80480a1:	cd 80                	int    $0x80
