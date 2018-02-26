#!/bin/python
import os
import subprocess
import sys

PATH="/home/guest/"

def intro():
	print "::: wellcome to psh ::"
	
def usage():
	print "::: r [file] -> read file "
	print "::: s [conf] -> set configuration "
	print "::: p [ip] -> ping test(for check reverse connect) "
	print "::: l [dir] -> list file "
	print "::: c -> clear "
	print "::: e -> exit "
	print "::: h -> help "
	
def readfile(v1):
	v1 = os.path.basename(v1)
	fileName = PATH+v1
	try :
		print fileName
		os.system("cat %s| more " % fileName)
	except :
		pass

def pingtest(v1):
	try:
		subprocess.call(['ping',"-c3",v1])
	except :
		pass

def dirlist(v1):
	try :
		subprocess.call(['ls','-al',v1])
	except :
		pass

def exit():
	sys.exit(1)


def setConfig(v1):
	fileName = "config"
	try :
		with open(PATH+fileName,"a") as fp : fp.write(v1+"\n")
		fp.close()
	except :
		pass	

def helpfunc():
	usage()

def clear():
	os.system("rm -rf /home/guest/* ")

def main():
	intro()
	usage()
	clear()

	while True :
		cmd = raw_input("psh>")
		if(cmd==""): pass
		else:
			if(cmd[0]=='r'): readfile(cmd[2::])
			if(cmd[0]=='p'): pingtest(cmd[2::])
			if(cmd[0]=='s'): setConfig(cmd[2::])
			if(cmd[0]=='l'): dirlist(cmd[2::])
			if(cmd[0]=='c'): clear()
			if(cmd[0]=='e'): exit()
			if(cmd[0]=='h'): helpfunc()


if __name__ == "__main__":
	main()
