import pwn
from functools import reduce
from math import gcd


p = 171687271187362402858253153317226779412519708415758861260173615154794651529095285554559087769129718750696204276854381696836947720354758929262422945910586370154930700427498878225153794722572909742395687687136063410003254320613429926120729809300639276228416026933793038009939497928563523775713932771366072739767

# r = pwn.remote("chall.lac.tf", 31179)
r = pwn.process(["python3", "server.py"])

r.recvuntil(b"s: ")
ss = eval(r.recvline(keepends=False))
r.recvuntil(b"s: ")
alphas = eval(r.recvline(keepends=False))
r.recvuntil(b"l: ")
target1 = eval(r.recvline(keepends=False))

r.send(b"2\n2\n2\n")

r.recvuntil(b"was ")
ts = eval(r.recvline(keepends=False))

r.recvuntil(b"l: ")
target2 = eval(r.recvline(keepends=False))

print(ss)
print(alphas)
print(target1)
print(ts)
print(target2)

# c = reduce(int.__mul__, [pow(ss[i], target1[i], p) for i in range(1, 8)]) % p
# b = (ts - target1[0]) % (p - 1)

# h = c
# f = (pow(c, target2[0], p) * reduce(int.__mul__, [pow(ss[i], target1[i] * b, p) for i in range(1, 8)])) % p
# fa = (pow(c, target2[0], p) * reduce(int.__mul__, [pow(ss[i], target1[i] * b, p) for i in range(1, 8)])) % p


c = reduce(int.__mul__, [pow(ss[i], target1[i], p) for i in range(0, 7)]) % p
print(gcd(p - 1, target1[7]))
print(target2[7] % 2)
ss.append(pow(pow(ss[0], ts, p) * pow(c, -1, p), pow(target1[7], -1, p - 1), p))

c = reduce(int.__mul__, [pow(alphas[i], target1[i], p) for i in range(0, 7)]) % p
alphas.append(pow(pow(alphas[0], ts, p) * pow(c, -1, p), pow(target1[7], -1, p - 1), p))

h = ss[0]
f = reduce(int.__mul__, [pow(ss[i], target2[i], p) for i in range(0, 8)]) % p
fa = reduce(int.__mul__, [pow(alphas[i], target2[i], p) for i in range(0, 8)]) % p

r.send(f"{f}\n{h}\n{fa}\n".encode())
r.interactive()
