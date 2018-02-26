#!/usr/bin/env python

import sha
import sys
import random
import string

RANDOM_STRING_LEN = 10
INTERATION_CNT = 20000000
def rand_string(N):
	return ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(N))
rt = {}
for i in range(0, INTERATION_CNT):
	ss = rand_string(RANDOM_STRING_LEN)
	dg = sha.new(ss).hexdigest()
	if rt.get(dg) == None:
		rt[dg] = ss
	elif ss != rt[dg]:
		print "Found!('"  + ss + "', '" + rt[dg] + "'')"
		sys.exit()

# print rt
# print sha.new(str(1)).hexdigest()