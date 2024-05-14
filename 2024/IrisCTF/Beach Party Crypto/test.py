#!/usr/bin/env pypy3
import secrets
import signal
import hashlib

def tropical_pow(x, y, op):
    if 1 == y:
        return x
    exp = bin(y)
    value = x
 
    for i in range(3, len(exp)):
        value = op(value, value)
        if(exp[i:i+1]=='1'):
            value = op(value, x)
    return value

def pair_add(*a):
    return (max(c[0] for c in a), max(c[1] for c in a))

pair_add_semi = lambda a,b,c: pair_add(a, b)

def pair_mul(a, b):
    return (max(a[0] + b[0], a[1] + b[1]), max(a[0] + b[1], a[1] + b[0]))

def pair_mul_semi(a, b, c):
    return (max(c + a[0] + b[0], c + a[1] + b[1]), max(c + a[0] + b[1], c + a[1] + b[0]))

def semi_factory(c):
    def pair_mul_mat(a, b):
        zb = list(zip(*b))
        return [[pair_add(*[pair_mul_semi(x, y, c) for x, y in zip(row, col)]) for col in zb] for row in a]
    return pair_mul_mat
def pair_mul_mat(a, b):
    zb = list(zip(*b))
    return [[pair_add(*[pair_mul(x, y) for x, y in zip(row, col)]) for col in zb] for row in a]

DIMENSION = 30
LB = -(10**6)
UB =  (10**6)
p = secrets.randbelow(-LB + UB) + LB
q = secrets.randbelow(-LB + UB) + LB
c = secrets.randbelow(-LB + UB) + LB
d = secrets.randbelow(-LB + UB) + LB

X = []
Y = []
for i in range(DIMENSION):
    X_ = []
    Y_ = []
    for j in range(DIMENSION):
        X_.append((secrets.randbelow(-LB + UB) + LB, secrets.randbelow(-LB + UB) + LB))
        Y_.append((secrets.randbelow(-LB + UB) + LB, secrets.randbelow(-LB + UB) + LB))
    X.append(X_)
    Y.append(Y_)

# print(pair_mul_mat(X, pair_mul_mat(X, pair_mul_mat(X, X))) == pair_mul_mat(pair_mul_mat(X, X), pair_mul_mat(X, X)))
# print(semi_factory(c)(X, Y) == [[(b[0] + c, b[1] + c) for b in a]for a in pair_mul_mat(X, Y)] == pair_mul_mat([[(b[0] + c, b[1] + c) for b in a]for a in X], Y) == pair_mul_mat(X, [[(b[0] + c, b[1] + c) for b in a]for a in Y]))
a = (secrets.randbelow(-LB + UB) + LB, secrets.randbelow(-LB + UB) + LB)
b = (secrets.randbelow(-LB + UB) + LB, secrets.randbelow(-LB + UB) + LB)
c = (secrets.randbelow(-LB + UB) + LB, secrets.randbelow(-LB + UB) + LB)
print(pair_mul(b, a) == pair_mul(a, b))
print(pair_mul(pair_mul(a, b), c) == pair_mul(a, pair_mul(b, c)))
