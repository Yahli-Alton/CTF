import pwn
from functools import reduce

primes = [2,      3,      5,      7,     11,     13,     17,     19,     23,     29,
    31,     37,     41,     43,     47,     53,     59,     61,     67,     71,
    73,     79,     83,     89,     97,    101,    103,    107,    109,    113,
   127,    131,    137,    139,    149,    151,    157,    163,    167,    173,
   179,    181,    191,    193,    197,    199,    211,    223,    227,    229,
   233,    239,    241,    251,    257,    263,    269,    271,    277,    281,
   283,    293,    307,    311,    313,    317,    331,    337,    347,    349,
   353,    359,    367,    373,    379,    383,    389,    397,    401,    409,
   419,    421,    431,    433,    439,    443,    449,    457,    461,    463,
   467,    479,    487,    491,    499,    503,    509,    521,    523,    541,
   547,    557,    563,    569,    571,    577,    587,    593,    599,    601,
   607,    613,    617]

def chinese_remainder(m, a):
    sum = 0
    prod = reduce(lambda acc, b: acc*b, m)
    for n_i, a_i in zip(m, a):
        p = prod // n_i
        sum += a_i * mul_inv(p, n_i) * p
    return sum % prod
 
def mul_inv(a, b):
    b0 = b
    x0, x1 = 0, 1
    if b == 1: return 1
    while a > 1:
        q = a // b
        a, b = b, a%b
        x0, x1 = x1 - q * x0, x0
    if x1 < 0: x1 += b0
    return x1
 
 
p = pwn.process(["python3", "shuffler.py"])

permutation = [None] * 617
p.interactive()
for i in range(0, 617):
    mods = []
    rems = []
    
    for prime in primes:
        if prime <= i:
            continue
    
        p.send(b"1\n" + b"." * i + "x" + "." * (prime - i - 1))

        p.recvuntil(b"go: ")
        ret = p.recvline(keepends=False)
        
        for j in range(26):
            permutation[ret.index(chr(ord("a") + j).encode())] = i + j

p.recvuntil(b"go: ")
ret = p.recvline(keepends=False)
for j in range(617 % 26):
    permutation[ret.index(chr(ord("a") + j).encode())] = 617 - (617 % 26) + j

print(permutation)
