# #!/usr/bin/env python3
# from Crypto.Util.number import getPrime, isPrime, bytes_to_long
# from flag import FLAG
# from math import log
# import sys

# n = pow(10, 5)
# sys.setrecursionlimit(n)

# def nextPrime(p, count=0):
#     if isPrime(p):
#         print(count)
#         return p
#     else:
#         count += 1
#         return nextPrime(p + 61, count)

# for _ in range(100):
#     nextPrime(getPrime(256) + 3)

l = [
87,
135,
49,
93,
99,
273,
257,
95,
49,
5,
309,
25,
93,
51,
189,
15,
145,
71,
61,
83,
3,
499,
21,
77,
459,
201,
147,
47,
27,
245,
323,
405,
111,
209,
3,
95,
93,
389,
263,
555,
63,
273,
117,
103,
549,
29,
181,
9,
33,
225,
15,
27,
339,
135,
21,
83,
183,
47,
101,
43,
49,
341]

from math import gcd

print(gcd(*l))

