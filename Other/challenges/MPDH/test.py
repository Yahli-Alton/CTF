from random import SystemRandom
from sympy.ntheory.generate import nextprime
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad, unpad
from Crypto.Hash import SHA256

flag = b"srdnlen{????????????????????????????????????????????????????????????????????????????????????}"

n = 32
q = nextprime(int(0x1337**7.331))
random = SystemRandom()


class MPDH:
    n = n
    q = q

    def __init__(self, G=None) -> None:
        if G is None:
            J = list(range(n))
            random.shuffle(J)
            self.G = [(j, random.randrange(1, q)) for j in J]
        else:
            self.G = list(G)

    def one(self) -> "list[tuple[int, int]]":
        return [(i, 1) for i in range(self.n)]
    
    def mul(self, P1, P2) -> "list[tuple[int, int]]":
        return [(j2, p1 * p2 % self.q) for j1, p1 in P1 for i, (j2, p2) in enumerate(P2) if i == j1]
    
    def pow(self, e: int) -> "list[tuple[int, int]]":
        if e == 0:
            return self.one()
        if e == 1:
            return self.G
        P = self.pow(e // 2)

        P = self.mul(P, P)
        if e & 1:
            P = self.mul(P, self.G)
        return P


mpdh1 = MPDH()
mpdh2 = MPDH()
# mpdh3 = MPDH()

# a = random.randrange(1, q - 1)
# A = mpdh.pow(2)

# print([x for x, y in mpdh.G])
# print([x for x, y in A])
# print([(x, y) for x in range(3) for y in range(3)])
# print([x for x, y in mpdh1.mul(mpdh1.mul(mpdh1.G, mpdh2.G), mpdh3.G)])
# print([x for x, y in mpdh1.mul(mpdh1.G, mpdh1.mul(mpdh2.G, mpdh3.G))])

start = [x for x, y in mpdh1.G]
i = 0
while start != [x for x, y in mpdh2.G]:
    i += 1
    mpdh2 = MPDH(mpdh2.mul(mpdh2.G, mpdh1.G))
    print([x for x, y in mpdh2.G])
