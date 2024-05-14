from sage.all import *
import hashlib
from Crypto.Cipher import AES
# from flag import flag
p = 2**302 + 307
k = 140
n = 10
alpha = 3

GFp = GF(p)
def pad(m):
    return m + (16-(len(m)%16))*bytes([16-(len(m)%16)])
def keygen():
    E = random_matrix(GFp , n , n)
    while E.rank() != n:
        E = random_matrix(GFp , n , n)
    Alist = []

    E_1 = E**(-1)
    for i in range(k):
        A = E_1 * Dlist[i] *E
        Alist.append(A)
    return Alist , Dlist , E

Dlist = load("Dlist.sobj")

Alist , Dlist , E= keygen()
Asumlist = []
for i in range(k):
    tempsum = 0
    for x in range(n):
        for y in range(n):
            tempsum += int(Alist[i][x,y])
    Asumlist.append(tempsum)

print(Asumlist)
print(Dlist[0])

# key = hashlib.sha256(str(Asumlist).encode()).digest()
# aes = AES.new(key = key , mode = AES.MODE_ECB)
# flagc = aes.encrypt(pad(flag))
# print(flagc)

#b'\x83\x1a)LB\xa6\xfb\xacS\xfa\xd03Q\x83c\xcd\xe6K\xbeI\xfc\x90_\xde=`nM&z\xca\x81\xcf\xdd\xde\x0c\x1b\xf8[C\xdc%\x97\xb2\xa4\xb4\xf6T'