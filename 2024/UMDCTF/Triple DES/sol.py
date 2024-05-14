import pwn


p = pwn.remote("challs.umdctf.io", 32333)
# p = pwn.process(["python3", "tripledes.py"])

p.recvuntil(b": ")
flag = bytes.fromhex(p.recvline(keepends=False).decode())

def check(enc):
    p.sendline(enc.hex())
    p.recvuntil(b"!")
    p.recvline()
    return p.recvline().startswith(b"yes")

def check_mult(encs):
    for enc in encs:
        p.sendline(enc.hex())
    
    reses = []
    for _ in range(len(encs)):
        p.recvuntil(b"!")
        p.recvline()
        reses.append(p.recvline().startswith(b"yes"))
    return reses

plains = []

print(len(flag) // 8 - 3)

for block in range(len(flag) // 8 - 3):
    plains.insert(0, [])
    for j in range(8):
        encs = []

        start_iv = list(flag[-8 * (block + 4):-8 * (block + 3)])

        for i in range(j):
            start_iv[-(i + 1)] ^= plains[0][-(i + 1)] ^ (j + 1)

        for i in range(256):
            new_iv = start_iv.copy()
            new_iv[-(j + 1)] ^= i
            new_iv = bytes(new_iv)
            if block == 0:
                encs.append(new_iv + flag[-8 * (block + 3):])
            else:
                encs.append(new_iv + flag[-8 * (block + 3):-8 * block])

        a = check_mult(encs)
        print(a)

        for i, opt in list(enumerate(a))[::-1]:
            if opt:
                plains[0].insert(0, i ^ (j + 1))
                break
        else:
            assert False
        
        print(plains[0], j)

joined = []
for plain in plains:
    joined += plain

print(bytes(joined))
