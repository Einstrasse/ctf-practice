main: main.c
	gcc -o main main.c -std=c99 -Wall -g -m32 -z execstack 
	objdump -D main > code.asm

clean:
	rm main
	rm code.asm