# Unicode shellcode

Write shellcode with unicode character.
Every even position byte should be null byte.

main.c and main ELF file is test binary for the unicode shellcode

test.py is unicode shellcode assembly code generator.

There was some problem, pwntools use intel grammar, gcc use at&t grammar.

There is no cool Assembly grammar converter, so I did some chores by my hand one by one.

When you execute the binary "main" you can get the x86 32bit shell!