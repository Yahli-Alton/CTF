#!/usr/bin/env sage

from secret import params, flag

def ginv(f, g):
	d, u, v = xgcd(f, g) # d = u * f + v * g = gcd(f, g)
	return u.mod(g) # u * f = 1 mod g

def ircp(t):
	while True:
		f = R.random_element(degree = t) # random polynomial of degree t
		if f.is_irreducible(): # prime polynomial
			g = R.random_element(degree = 13 + 37 * t) # random polynomial of degree 13 + 37 * t
			u = ginv(f, g)
			if u != 0: # f |! g
				return f

def i2F(i, F): # return polynomial of F from the coefficient of i
	z, c = F.gen(), F.cardinality() # z = generator of F, c = cardinality of F
	l = log(c, 2)
	R.<z> = PolynomialRing(F)
	assert i < c
	coeffs = [int(_) for _ in list(bin(i)[2:].zfill(l))]
	poly = R(coeffs)
	return poly

def encode(msg, F, f):
	z = F.gen()
	R = PolynomialRing(F, 'x')
	S = R.quotient(f, 'x') # S = R / <f>
	e, epoly = 0, S(0)
	for i in msg:
		epoly += i2F(i, F)(z) * S('x') ** e
		e += 1
	return epoly

def encrypt(msg, F, f):
	_enc = encode(msg, F, f)
	_r = randint(1, len(msg))
	for _ in range(_r):
		_enc = _enc ** 2
	return _enc

m, t = params # ints
F = GF(2**m) # module field of 2^m elements
R = PolynomialRing(F, 'x') # polynomial ring over F
f = ircp(t)
enc = encrypt(flag, F, f)

print(f'f = {f}')
print(f'c = {enc}')