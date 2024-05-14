#!/usr/local/bin/python
# from flag import flag
from math import gcd
from random import randint
flag = "flag"

x = randint(0, 2 ** 128 - 1)
for i in range(16):
    try:
        n, m = map(int, input("n m: ").split())
        assert m > 0
        print(gcd(x + n, m))
    except:
        print("bad input. you *die*")
        exit(0)
if int(input("x: ")) == x:
    print(flag)
else:
    print("get better lol")
