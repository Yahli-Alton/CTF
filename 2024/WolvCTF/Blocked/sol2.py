import pwn
from Crypto.Util.strxor import strxor


p = pwn.remote("blocked2.wolvctf.io", 1337)


p.recvuntil(b":\n")
m = bytes.fromhex(p.recvline(keepends=False).decode())
decoded = m[:16]
m = m[16:-16]

while m:
    a = m[:16]
    m = m[16:]
    b = decoded[-16:]

    p.sendline(b.hex().encode())
    p.recvuntil(b"> ")
    new = bytes.fromhex(p.recvline(keepends=False).decode())[32:]

    decoded += strxor(a, new)
print(decoded[16:].decode())
