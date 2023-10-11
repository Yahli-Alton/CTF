import math
import hashlib
p = 9739

def add(P, Q):
  assert P != Q
  x1, y1 = P
  x2, y2 = Q
  lamda = (y2 - y1) * pow(x2 - x1, -1, p)
  x3 = (lamda ** 2 - x1 - x2) % p 
  y3 = (lamda * (x1 - x3) - y1) % p
  return (x3, y3)

def double(P):
  x, y = P
  lamda = (3 * x ** 2 + 497) * pow(2 * y, -1, p)
  x3 = (lamda ** 2 - x - x) % p 
  y3 = (lamda * (x - x3) - y) % p
  return (x3, y3)

def multiply(P, n):
  if n == 0:
    return (0, 0)
  elif n == 1:
    return P
  elif n % 2 == 0:
    return double(multiply(P, n // 2))
  else:
    return add(P, double(multiply(P, n // 2)))

# print(add((5274, 2841), (8669, 740)))
# print(multiply((5274, 2841)))
P = (493, 5564)
Q = (1539, 4742)
R = (4403,5202)
# print(add(add(double(P), Q), R))
X = (5323, 5438)
# print(multiply(X, 1337))
P = (2339, 2213)
# print(multiply(P, 7863))
Q = (815, 3190)
# print(hashlib.sha1(str(multiply(Q, 1829)[0]).encode('ascii')).hexdigest())
Q = (4726, 6287)
# print(multiply(Q, 6534))
G = (9, 50704503617428518986059648981952147839281459527133775556705577961521090568188)
print(multiply(G, int("1337c0decafe", 16)))