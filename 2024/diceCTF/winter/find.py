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

header = bytes.fromhex("0000402054918d671610fc65c9acb5ddb46d30e1c25194daa00d050000000000000000005a0058b0c79451ff7883a5804af798ba2c55bb62533e46b7396edffa1e6fc4622d8c3b63aef908178c0f23c1")
m1 = sha256(header).digest()
print(m1.hex())
hash1 = Wots.hash(m1, 1)

p = 1
for a in hash1:
    p *= 1 - a / 256

print(1 / p)

m2 = 0
while True:
    if m2 % 100000 == 0:
        print(m2)
    m2 += 1
    m2_bytes = m2.to_bytes(m2.bit_length(), "big")
    hash2 = Wots.hash(m2_bytes, 1)
    for a, b in zip(hash1, hash2):
        if a > b:
            break
    else:
        print(m2_bytes.hex())
