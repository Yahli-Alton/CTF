from Crypto.Util.number import *
import z3

def gen_prime(nbit):
	while True:
		a = 0
		for i in range(nbit, nbit>>1, -1):
			a += getRandomRange(0, 2) * 2 ** i
		b = getRandomNBitInteger(nbit>>3)
		if isPrime(a + b):
			return a, b

nbit = 512
a, b = gen_prime(nbit)
c, d = gen_prime(nbit)

p, q = a + b, c + d

n = p * q

print(b * d)
print(n % (1 << (nbit >> 2)))

print((a * c) >> ((nbit >> 3) * 9 + 10)) # +10 for overflow
print(n >> ((nbit >> 3) * 9 + 10)) # +10 for overflow

print(((a * d + c * b) >> ((nbit >> 3) * 4)) % (1 << ((nbit >> 3) * 4)))
print((n >> ((nbit >> 3) * 4)) % (1 << ((nbit >> 3) * 4)))

print((a * c + a * d + c * b) >> ((nbit >> 3) * 4))
print(n >> ((nbit >> 3) * 4))
del a, b, c, d

# a = z3.Int("a")
# b = z3.Int("b") << (nbit >> 1)

# c = z3.Int("c")
# d = z3.Int("d") << (nbit >> 1)

# z3.solve(
# 	b * d == n % (1 << (nbit >> 2)),
# 	(a * c) >> ((nbit >> 3) * 9 + 10) == n >> ((nbit >> 3) * 9 + 10),
# 	((a * d + c * b) >> ((nbit >> 3) * 4)) % (1 << ((nbit >> 3) * 4)) == (n >> ((nbit >> 3) * 4)) % (1 << ((nbit >> 3) * 4)),
# 	(a * c + a * d + c * b) >> ((nbit >> 3) * 4) == n >> ((nbit >> 3) * 4)
# )

a = z3.Int("a")
b = z3.Int("b") * 2 ** (nbit / 2 ** 1)

c = z3.Int("c")
d = z3.Int("d") * 2 ** (nbit / 2 ** 1)

z3.solve(
	b * d == n % (1 * 2 ** (nbit / 2 ** 2)),
	(a * c) / 2 ** ((nbit / 2 ** 3) * 9 + 10) == n / 2 ** ((nbit / 2 ** 3) * 9 + 10),
	((a * d + c * b) / 2 ** ((nbit / 2 ** 3) * 4)) % (1 * 2 ** ((nbit / 2 ** 3) * 4)) == (n / 2 ** ((nbit / 2 ** 3) * 4)) % (1 * 2 ** ((nbit / 2 ** 3) * 4)),
	(a * c + a * d + c * b) / 2 ** ((nbit / 2 ** 3) * 4) == n / 2 ** ((nbit / 2 ** 3) * 4)
)
