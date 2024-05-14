import pwn


flag = bytes.fromhex("d697937950b3090d56828170609a3b23f836e3cc0ed631cb9ce08c4b9785f5f3db5dee5f44adaad3630303062b61d5fa")
iv = bytes.fromhex("2652b7ae08b281594c488cf2e6daee43")

flag = iv + flag

p = pwn.remote("challs.umdctf.io", 32345)

def check(iv, block):
    p.sendline((iv + block).hex())
    p.recvuntil(b":")
    p.recvline()
    return p.recvline().startswith(b"valid")

def check_mult(ivs, blocks):
    for iv, block in zip(ivs, blocks):
        p.sendline((iv + block).hex())
    
    reses = []
    for _ in range(len(ivs)):
        p.recvuntil(b":")
        p.recvline()
        reses.append(p.recvline().startswith(b"valid"))
    return reses

plains = []

for block in range(3):
    plains.insert(0, [])
    for j in range(16):
        ivs = []
        blocks = []

        start_iv = list(flag[-16 * (block + 2):-16 * (block + 1)])

        for i in range(j):
            start_iv[-(i + 1)] ^= plains[0][-(i + 1)] ^ (j + 1)

        for i in range(256):
            new_iv = start_iv.copy()
            new_iv[-(j + 1)] ^= i
            new_iv = bytes(new_iv)
            ivs.append(new_iv)
            if block == 0:
                blocks.append(flag[-16:])
            else:
                blocks.append(flag[-16 * (block + 1): -16 * block])

        a = check_mult(ivs, blocks)
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
