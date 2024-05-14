import pwn
import math
from Crypto.Random.random import shuffle


class BitOfShuffling:
    def __init__(self, key_length):
        self.perm = [x for x in range(key_length)]
        shuffle(self.perm)

    def shuffle_int(self, input_int: int):
        shuffled_int = 0
        for x in range(len(self.perm)):
            shuffled_int |= ((input_int >> x) & 1) << self.perm[x]
        return shuffled_int

    def shuffle_bytes(self, input_bytes):
        return self.shuffle_int(int.from_bytes(input_bytes, 'big'))

# p = pwn.process(["python3", "saas.py"])
p = pwn.remote("shuffling-as-a-service.ctf.umasscybersec.org", 1337)

p.recvuntil(b"g: ")
p.recvline()
flag = int.from_bytes(bytes.fromhex(p.recvline(keepends=False).decode()), "big")

tests = []

for i in range(10):
    test = 0
    for _ in range(1024 // (2 ** (i + 1))):
        for j in range(2 ** i):
            test <<= 1
            test += 1
        for j in range(2 ** i):
            test <<= 1
    tests.append(test)
    p.sendline(hex(test)[2:].encode())

reses = []

for _ in range(10):
    p.recvuntil(b":")
    reses.append(int.from_bytes(bytes.fromhex(p.recvline(keepends=False).decode()), "big"))

perm = []

for i in range(1024):
    bit = 1 << i
    mask = (1 << 1024) - 1

    for test, res in zip(tests, reses):
        if test & bit == 0:
            mask &= ~res
        else:
            mask &= res

    # print(bin(bit))
    # print(bin(mask))

    assert abs(math.log2(mask) - round(math.log2(mask))) < 0.0001
    perm.append(round(math.log2(mask)))

print(perm)

inv_perm = [None] * 1024

for i in range(1024):
    inv_perm[perm[i]] = i

deshuffler = BitOfShuffling(1024)
deshuffler.perm = inv_perm
print(deshuffler.shuffle_int(flag).to_bytes(128, "big"))
