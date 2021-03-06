#!/usr/bin/env python

from pwn import *
import sys

proc = remote("pwnable.kr", 9007)

print proc.recvuntil("sec... -")

N, C = 1, 1
def parseInput():
	global N
	global C
	proc.recvuntil("N=")
	N = proc.recvuntil(" ")
	proc.recvuntil("C=")
	C = proc.recvuntil("\n")

	N = int(N)
	C = int(C)
	print "N = %d / C = %d" % (N, C)

def query(start, end):
	global proc
	nums = [str(i) for i in range(start, end)]
	queries = " ".join(nums) + "\n"
	proc.send(queries)
	ret = proc.recvuntil("\n")
	try:
		ret = int(ret)
	except e:
		print "invalid T.T"
		print ret
		sys.exit()
	else:
		return ret

def solve(N, C):
	left = 0
	right = N
	mid = N / 2
	NumQueries = 0
	while left < mid:
		expected = (mid - left) * 10 
		NumQueries = NumQueries + 1
		res = query(left, mid)
		if expected == res:
			left = mid
		else:
			right = mid
		mid = (left + right) / 2
	while NumQueries < C:
		query(0, 1)
		NumQueries = NumQueries + 1
	return str(left)

for i in range(0, 100):
	parseInput()
	ans = solve(N, C)
	print "ans = %s" % ans
	proc.send(ans + "\n")
	print proc.recvuntil(")")

proc.interactive()

# flag = b1NaRy_S34rch1nG_1s_3asy_p3asy