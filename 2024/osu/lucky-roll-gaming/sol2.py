from Crypto.Util.number import getPrime # https://pypi.org/project/pycryptodome/
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad
from random import randrange
from math import floor
import z3

def lcg(s, a, b, p):
    return (a * s + b) % p

p = 4420073644184861649599
a = 1144993629389611207194
b = 3504184699413397958941
out = [39, 47, 95, 1, 77, 89, 77, 70, 99, 23, 44, 38, 87, 34, 99, 42, 10, 67, 24, 3, 2, 80, 26, 87, 91, 86, 1, 71, 59, 97, 69, 31, 17, 91, 73, 78, 43, 18, 15, 46, 22, 68, 98, 60, 98, 17, 53, 13, 6, 13, 19, 50, 73, 44, 7, 44, 3, 5, 80, 26, 10, 55, 27, 47, 72, 80, 53, 2, 40, 64, 55, 6]

seed = z3.Int("x")

def get_roll():
    global seed
    seed = lcg(seed, a, b, p)
    return seed % 100

requirements = []
for i in range(floor(72.7)):
    requirements.append(out[i] == get_roll())

print(requirements)
z3.solve(*requirements)
