import pwn


# p = pwn.process(["python3", "pprngc.py"])
p = pwn.remote("chall.lac.tf", 31173)

p.recvuntil(b"is: ")
f_seed = int(p.recvline(keepends=False))
seed = 0

for i in range(16):
    p.send(b"3\n" + bin(f_seed)[2:][::-1].encode() + b"\n" + str(1 << i).encode() + b"\n")
    print(p.recvuntil(b"that? "))
    bit = int(p.recvline(keepends=False))
    seed |= bit << i

p.send(b"4\n" + str(seed).encode() + b"\n")
p.interactive()
