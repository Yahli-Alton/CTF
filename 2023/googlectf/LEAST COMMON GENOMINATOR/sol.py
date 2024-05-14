from egcd import egcd
from Crypto.PublicKey import RSA
from Crypto.Util.number import bytes_to_long, isPrime, long_to_bytes


x = [
    2166771675595184069339107365908377157701164485820981409993925279512199123418374034275465590004848135946671454084220731645099286746251308323653144363063385,
    6729272950467625456298454678219613090467254824679318993052294587570153424935267364971827277137521929202783621553421958533761123653824135472378133765236115,
    2230396903302352921484704122705539403201050490164649102182798059926343096511158288867301614648471516723052092761312105117735046752506523136197227936190287,
    4578847787736143756850823407168519112175260092601476810539830792656568747136604250146858111418705054138266193348169239751046779010474924367072989895377792,
    7578332979479086546637469036948482551151240099803812235949997147892871097982293017256475189504447955147399405791875395450814297264039908361472603256921612,
    2550420443270381003007873520763042837493244197616666667768397146110589301602119884836605418664463550865399026934848289084292975494312467018767881691302197
]

a = [i - j for i, j in zip(x[1:-1], x)]
b = [i - j for i, j in zip(x[2:], x[1:])]
assert len(a) == len(b) == 4

assert egcd(*a)[0] == 1
k = egcd(*a)[1:]

m = sum(k_ * b_ for k_, b_ in zip(k, b))
c = x[1] - m * x[0]

divisors = [i - c - j * m for i, j in zip(x[1:], x)]

p = egcd(*divisors)[0]

print(m, c, p)

with open("public.pem", "rb") as file:
    key = RSA.import_key(file.read())
n, e = key.n, key.e

class LCG:
    lcg_m = m
    lcg_c = c
    lcg_n = p

    def __init__(self, lcg_s):
        self.state = lcg_s

    def next(self):
        self.state = (self.state * self.lcg_m + self.lcg_c) % self.lcg_n
        return self.state

seed = 211286818345627549183608678726370412218029639873054513839005340650674982169404937862395980568550063504804783328450267566224937880641772833325018028629959635
lcg = LCG(seed)

primes_n = 1
primes_arr = []
while True:
    for i in range(8):
        while True:
            prime_candidate = lcg.next()
            if not isPrime(prime_candidate):
                continue
            elif prime_candidate.bit_length() != 512:
                continue
            else:
                primes_n *= prime_candidate
                primes_arr.append(prime_candidate)
                break
    
    # Check bit length
    if primes_n.bit_length() > 4096:
        print("bit length", primes_n.bit_length())
        primes_arr.clear()
        primes_n = 1
        continue
    else:
        break

new_n = 1
for j in primes_arr:
    new_n *= j

new_e = 65537

assert new_n == n and new_e == e

phi = 1
for k in primes_arr:
    phi *= (k - 1)

# Calculate private key 'd'
d = pow(e, -1, phi)

with open ("flag.txt", "rb") as flag_file:
    flag = int.from_bytes(flag_file.read(), "little")

print(long_to_bytes(pow(flag, d, n)))
