import pwn


m = ""

for i in range(0, 617 - 26, 26):
    m += "1\n" "." * i + "abcdefghijklmnopqrstuvwxyz" + "." * (617 - i - 26) + "\n"

m += "1\n" + "." * (617 - (617 % 26)) + "abcdefghijklmnopqrstuvwxyz"[: 617 % 26] + "\n"

p = pwn.process(["python3", "shuffler.py"])

p.send(m.encode())
permutation = [None] * 617
p.interactive()
for i in range(0, 617 - 26, 26):
    print(i)
    p.recvuntil(b"go: ")
    ret = p.recvline(keepends=False)
    for j in range(26):
        permutation[ret.index(chr(ord("a") + j).encode())] = i + j

p.recvuntil(b"go: ")
ret = p.recvline(keepends=False)
for j in range(617 % 26):
    permutation[ret.index(chr(ord("a") + j).encode())] = 617 - (617 % 26) + j

print(permutation)
