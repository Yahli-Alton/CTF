#!/usr/local/bin/python
# from flag import flag
from math import gcd
from random import randint
# from Crypto.Util.number import getRandomInteger
flag = "cool flag"

for i in range(10):
    # x = getRandomInteger(2048)
    x = randint(0,  2 ** 2048 - 1)
    for i in range(1412):
        try:
            n, m = map(int, input("n m: ").split())
            assert m > 0
            print(gcd(x + n, m))
        except:
            print("bad input. you *die*")
            exit(0)
    if int(input("x: ")) != x:
        print("get better lol")
        exit(0)

print(flag)
