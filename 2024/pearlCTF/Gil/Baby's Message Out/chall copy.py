#!/usr/bin/env python3
from Crypto.Util.number import getPrime, isPrime, bytes_to_long
from flag import FLAG
from math import log
import sys

n = pow(10, 5)
sys.setrecursionlimit(n)

def nextPrime(p, count=0):
    if isPrime(p):
        print(count)
        return p
    else:
        count += 1
        return nextPrime(p + 61, count)

p = getPrime(256)
q = nextPrime(nextPrime(17*p + 1) + 3) # p
# q = p + k1 * 61 + 3 + k2 * 61
r = nextPrime(29*p*q) # p^2
# r = p * q * 29 + k3 * 61
s = nextPrime(q*r + p) # p^3
t = nextPrime(r*s*q) # p^6

n = p*q*r*s*t
e = 65537
m = bytes_to_long(FLAG.encode())
c = pow(m, e, n)
print(f"c: {c}")
print(f"n: {n}")
