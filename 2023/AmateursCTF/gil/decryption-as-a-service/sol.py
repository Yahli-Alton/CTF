import pwn
import math
from Crypto.Util.number import *


while True:
    try:
        # p = pwn.process(["python3", "decryption-as-a-service.py"])
        p = pwn.remote("chal.amt.rs", 1417)

        # N_ = int(p.recvline(keepends=False).decode()) # TODO: remove

        p.recvuntil(b"= ")
        flag = int(p.recvline(keepends=False).decode())

        divisors = []

        for _ in range(2):
            a, b, c, d = [getPrime(600) for _ in range(4)]
            p.send(str(a * b).encode() + b"\n")
            p.send(str(c * d).encode() + b"\n")
            p.send(str(a * c).encode() + b"\n")
            p.send(str(b * d).encode() + b"\n")

            p.recvuntil(b"? ")
            e = int(p.recvline(keepends=False).decode(), 16)
            p.recvuntil(b"? ")
            f = int(p.recvline(keepends=False).decode(), 16)
            p.recvuntil(b"? ")
            g = int(p.recvline(keepends=False).decode(), 16)
            p.recvuntil(b"? ")
            h = int(p.recvline(keepends=False).decode(), 16)

            # assert (e * f - g * h) % N_ == 0 # TODO: remove
            divisors.append(e * f - g * h)

        # print(divisors)

        N = math.gcd(divisors[0], divisors[1])

        # assert N_ == N # TODO: remove
        assert flag % 2 == 0

        p.send(str(N - 2).encode() + b"\n")
        p.send(str(flag // 2).encode() + b"\n")

        p.recvuntil(b"? ")
        a = int(p.recvline(keepends=False).decode(), 16)
        p.recvuntil(b"? ")
        b = int(p.recvline(keepends=False).decode(), 16)

        print(long_to_bytes((a * b) % N))
        print(long_to_bytes((-a * b) % N))
    except Exception:
        pass
