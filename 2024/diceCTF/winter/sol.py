import pwn
from hashlib import sha256
import os


class Wots:
    def __init__(self, sk, vk):
        self.sk = sk
        self.vk = vk

    @classmethod
    def keygen(cls):
        sk = [os.urandom(32) for _ in range(32)]
        vk = [cls.hash(x, 256) for x in sk]
        return cls(sk, vk)

    @classmethod
    def hash(cls, x, n):
        for _ in range(n):
            x = sha256(x).digest()
        return x

    def sign(self, msg):
        m = self.hash(msg, 1)
        sig = b''.join([self.hash(x, 256 - n) for x, n in zip(self.sk, m)])
        return sig

    def verify(self, msg, sig):
        chunks = [sig[i:i+32] for i in range(0, len(sig), 32)]
        m = self.hash(msg, 1)
        vk = [self.hash(x, n) for x, n in zip(chunks, m)]
        return self.vk == vk


m1 = bytes.fromhex("f5b209498bfad650eb000b1917fc119b601e799c18c00b6e562e71300ed1cc93")
m2 = bytes.fromhex("00000000000000000000000000000000000000000001396ebf")

# p = pwn.process(["python3", "server.py"])
# wots = Wots.keygen()

# p.sendline(m2.hex().encode())
# p.recvuntil(b"re (hex): ")
# sig = p.recvline()[:-1]
print(m2.hex())
# sig = wots.sign(m2)
sig = bytes.fromhex(input())

m1_ = Wots.hash(m1, 1)
m2_ = Wots.hash(m2, 1)

chunks = [sig[i:i+32] for i in range(0, len(sig), 32)]
sig2 = b''.join([Wots.hash(x, (m - n)) for x, n, m in zip(chunks, m1_, m2_)])
print(m1.hex())

# print(wots.sign(m1) == sig2)
print(sig2.hex())
# p.sendline(m1.hex().encode())
# p.sendline(sig2.hex().encode())
# p.interactive()
