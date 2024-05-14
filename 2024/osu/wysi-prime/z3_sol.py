import z3


p = z3.BitVec("p", 3)
q = z3.BitVec("q", 3)
# p = 0b110 # 772
# q = 0b101 # 727
length = 3

requirements = []
n = 561244

for j in range(1, len(str(n)) + 1):
    # requirements.append((sum((2 + (5 * ((p >> i) & 1))) * 10 ** i for i in range(min(length, j))) * sum((2 + (5 * ((q >> i) & 1))) * 10 ** i for i in range(min(3, j)))) % (10 ** j) == n % (10 ** j))
    # requirements.append((sum((2 + (5 * ((p >> i) & 1))) * 10 ** i for i in range(j)) * sum((2 + (5 * ((q >> i) & 1))) * 10 ** i for i in range(j))) % (10 ** j))
    # requirements.append((sum((2 + (5 * ((p >> i) & 1))) * 10 ** i for i in range(min(3, j))) * sum((2 + (5 * ((q >> i) & 1))) * 10 ** i for i in range(min(3, j)))))
    requirements.append((sum((2 + (5 * ((p >> i) & 1))) * 10 ** i for i in range(min(3, j))) * sum((2 + (5 * ((q >> i) & 1))) * 10 ** i for i in range(min(3, j)))) % (10 ** j) == n % (10 ** j))

print(requirements)

z3.solve(requirements)
