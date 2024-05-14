import multiprocessing
import hashlib
from itertools import product, repeat
import subprocess
from Crypto.Util.number import *
from PohligHellman import PohligHellmanModP
from test import discrete_log

class LCG:
    def __init__(self):
        self.init()

    def next(self):
        out = self.s[0]
        self.s = self.s[1: ] + [(sum([i * j for (i, j) in zip(self.a, self.s)]) + self.b) % self.p]
        return out

    def init(self):
        while True:
            p = getPrime(2 * P_BITS)
            if p.bit_length() == 2 * P_BITS:
                self.p = p
                break
        self.b = getRandomRange(1, self.p)
        self.a = [getRandomRange(1, self.p) for _ in range(6)]
        self.s = [getRandomRange(1, self.p) for _ in range(6)]

class RSA:
    def __init__(self, l, p = 0, q = 0):
        self.l = l
        if not p:
            while True:
                p = getPrime(P_BITS)
                if p.bit_length() == P_BITS:
                    self.p = p
                    break
            while True:
                p = getPrime(P_BITS)
                if p.bit_length() == P_BITS:
                    self.q = p
                    break
        else:
            self.p = abs(p)
            self.q = abs(q)
        self.e = getPrime(E_BITS)
        self.check()

    def enc(self, m):
        return pow(m, self.e, self.n)

    def noisy_enc(self, m, r = 1):
        if r:
            self.refresh()
        return pow(m, self.e ^ self.l.next(), self.n)

    def dec(self, c):
        return pow(c, self.d, self.n)
        
    def check(self):
        assert self.p.bit_length() == P_BITS
        assert self.q.bit_length() == P_BITS
        self.n = self.p * self.q
        self.phi = (self.p - 1) * (self.q - 1)
        assert self.e.bit_length() >= E_BITS
        assert self.e < self.phi
        assert GCD(self.e, self.phi) == 1
        self.d = inverse(self.e, self.phi)
        assert self.d.bit_length() >= E_BITS
        for _ in range(20):
            x = self.l.next() % self.n
            assert self.dec(self.enc(x)) == x

    def refresh(self):
        self.e = (self.e ^ self.l.next()) % (2**E_BITS)

# p = subprocess.Popen("nc chall.ctf.0ops.sjtu.cn 32226".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)
p = subprocess.Popen("nc 127.0.0.1 32226".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)

def write(message):
    p.stdin.write(message)
    p.stdin.flush()
    # print(message.decode())

def readline():
    line = p.stdout.readline()
    print(line.decode())
    return line

def end():
    while True:
        c = p.stdout.read(1)
        print(c.decode(), end="")

# characters = "abcdefghijklmnopqrstuvwxyz" + "abcdefghijklmnopqrstuvwxyz".upper() + "0123456789"

# line = readline()
# end = line[line.index(b"+") + 2: line.index(b")")].decode()
# sha = line[line.index(b"=") + 3:-1].decode()

# def try_hashes(arg):
#     first, end, sha = arg
#     characters = "abcdefghijklmnopqrstuvwxyz" + "abcdefghijklmnopqrstuvwxyz".upper() + "0123456789"

#     for c2, c3, c4 in product(characters, repeat=3):
#         code = first + c2 + c3 + c4 + end
#         encoding = hashlib.sha256(code.encode()).hexdigest()
#         if encoding == sha:
#             return first + c2 + c3 + c4

# pool = multiprocessing.Pool(62)
# ret = pool.map(try_hashes, zip(characters, repeat(end, 62), repeat(sha, 62)))
# pool.close()
# pool.terminate()
# ret = list(filter(lambda x: x != None, ret))

# write(ret[0].encode() + b"\n")

P_BITS = 512
E_BITS = int(P_BITS * 2 * 0.292) + 30

carmichael1 = 7161011468521642911168867353529915551135608151658044505361256793979009384525154870670125763426409316408287726694230701167192270902100372592539056996625281
carmichael2 = 8519300900375372199257763847377587710337005835012573101309152369774525571717799033098981842330404160080107476943259405529476596731284225472555342845453761
primes1 = [128521, 12241, 6121, 514081, 3221, 43793, 34273, 17389, 37537, 591193, 5911921, 140761, 1313761, 1289, 2857, 109481, 14281, 2017, 5153, 47, 12853, 2143, 15121, 829, 61, 631, 17137, 6427, 9181, 1009, 1021, 49681, 103, 16561, 307, 394129, 919, 421, 4591]
primes2 = [2347, 11731, 168913, 541, 12421, 70381, 3061, 30241, 6211, 109, 147799, 97, 139, 757, 10711, 11, 19, 6257, 127, 4831, 13, 31, 379, 5521, 433, 37, 613, 281, 3361, 9521, 41, 113, 1429, 953, 461, 71, 73, 1657, 2381, 3571, 3673, 239, 1361, 7039, 84457, 2161, 98533, 1933, 409, 2521]


hex1 = hex(carmichael1)[2:].encode()
hex2 = hex(carmichael2)[2:].encode()
write(hex1 + b"\n" + hex2 + b"\n")

pt = 2 ** (P_BITS // 2 - 1)
pt_hex = hex(pt)[2:].encode()
write(pt_hex + b"\n")

readline()
e = int(readline())
n = int(readline())
p_ = int(readline())
a = eval(readline())
b = int(readline())
s = eval(readline())

line = b""
while not line.startswith(b"ct: "):
    line = readline()

ct = int(line[6:-1], 16)

lcg = LCG()
lcg.p = p_
lcg.a = a
lcg.b = b
lcg.s = s

alice = RSA(lcg)
bob = RSA(lcg, carmichael1, carmichael2)

alice.e = e
alice.n = n

# ct = bob.noisy_enc(half_ct) = half_ct ** (self.e ^ self.l.next()) % p * q
half_ct = alice.noisy_enc(pt)
# modified_e = PohligHellmanModP(ct, half_ct, carmichael1 * carmichael2) # self.e ^ self.l.next()
modified_e = discrete_log(half_ct, ct, primes1 + primes2) # self.e ^ self.l.next()
bob.refresh()
e = modified_e ^ lcg.next()
print(e)

end()
