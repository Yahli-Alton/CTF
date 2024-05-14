from Crypto.Util.number import long_to_bytes
import pwn
import math


# p = pwn.process(["python3", "server.py"])
p = pwn.remote("chall.lac.tf", 31171)


p.recvuntil(b"ct = ")
ct = int(p.recvline(keepends=False))
p.recvuntil(b"N = ")
N = int(p.recvline(keepends=False))
p.recvuntil(b"e = ")
e = int(p.recvline(keepends=False))


gcd = N

i = 0
while gcd.bit_length() > 1024:
    i += 1
    print(gcd.bit_length())
    possibilities = set()
    while len(possibilities) < 4:
        p.sendline(str(i * i).encode())
        p.recvuntil(b"? > ")
        possibilities.add(int(p.recvline(keepends=False)) + i)

    possibilities = list(filter(lambda x: math.gcd(x, gcd).bit_length() >= 1000, possibilities))
    print(possibilities)
    new_gcd = min(possibilities, key=lambda x: math.gcd(x, gcd))
    gcd = math.gcd(gcd, new_gcd)

print(gcd)
# print(p_)
# print(q)
# print(gcd % p_)
# print(gcd % q)

p0, q0 = gcd, N // gcd

print(long_to_bytes(pow(ct, pow(e, -1, (p0 - 1) * (q0 - 1)), N)))
