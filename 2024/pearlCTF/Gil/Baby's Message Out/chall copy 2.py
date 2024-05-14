#!/usr/bin/env python3
from Crypto.Util.number import getPrime, isPrime, bytes_to_long
from flag import FLAG
from math import log
import sys

n = pow(10, 5)
sys.setrecursionlimit(n)

def nextPrime(p):
    if isPrime(p):
        return p
    else:
        return nextPrime(p + 61)

p = getPrime(256)
q = nextPrime(nextPrime(17*p + 1) + 3) # 17 * p
r = nextPrime(29*p*q) # 493 * p^2
s = nextPrime(q*r + p) # 8381 * p^3 + p
t = nextPrime(r*s*q) # 70241161 * p^6 + 

n = p*q*r*s*t # 4933820698627921 * p^13
e = 65537
m = bytes_to_long(FLAG.encode())
c = pow(m, e, n)
print(f"p: {p}")
print(f"c: {c}")
print(f"n: {n}")
