from numpy import convolve
from fractions import Fraction
from Crypto.Util.number import long_to_bytes

p = 137

with open("journal.txt") as file:
    journal = []
    file.readline()
    file.readline()

    while (line:=file.readline()) != "\n":
        journal.append(int(line[line.index("= ") + 2: -1]))

print(journal)
# for i in range(101, 133):
#     journal.append(0)
# assert len(journal) == 133

polys = []

for i in range(len(journal)):
    polys.append([Fraction(1)])
    for j in range(len(journal)):
        if i == j:
            continue
        polys[i] = convolve(polys[i], [Fraction(-j, i - j), Fraction(1, i - j)])

def calc(poly, x):
    s = Fraction(0)
    for i, val in enumerate(poly):
        s += val * x ** Fraction(i)
    return s

def polysum(a, b):
    c = [0] * max(len(a), len(b))

    for i, val in enumerate(a):
        c[i] += val
    
    for i, val in enumerate(b):
        c[i] += val
    
    return c

poly = []
for i in range(len(journal)):
    poly = polysum(poly, polys[i] * journal[i])

print(poly)

for i in range(140):
    # print(i, calc(poly, Fraction(i)) % p)
    print(chr(int(calc(poly, Fraction(i)) % p)), end="")
    assert calc(poly, i).denominator == 1
