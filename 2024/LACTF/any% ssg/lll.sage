m = 1 << 52
c = 4164880461924199
a = 2760624790958533
n = 16

mat = []
mat.append([(c * sum(pow(a, j, m) for j in range(i)) - m * 19 // 20) % m for i in range(n)] + [m // 29])
mat.append([pow(a, i, m) for i in range(n)] + [0])

for i in range(1, n):
    mat.append([0] * i + [m] + [0] * (n - i))

mat = Matrix(ZZ, mat)
print(mat)
print()
mat2 = mat.LLL()
print(mat2)
# print()
# print(mat2[0][0])
# print(mat2[0][0] + m * 19 // 20)
# print(m * 9 // 10)
# print(m)


def next_long():
    global seed
    m = 1 << 52
    c = 4164880461924199
    a = 2760624790958533
    seed = (a *seed+ c) % m
    return seed

def prev_long():
    global seed
    m = 1 << 52
    c = 4164880461924199
    a = 2760624790958533
    seed = ((seed - c) * pow(a, -1, m)) % m
    return seed

seed = mat2[1][0] + m * 19 // 20

print(seed)

# for i in range(1, n):
#     # print(m // 10)
#     # print((next_long() - m * 19 // 20))
#     print(m * 9 // 10)
#     print(next_long())
#     print(m)
#     print()

# next_long()
# print(prev_long())

i = 3473400794307473

for _ in range(26):
    prev_long()

prev_long()

seed = seed

for _ in range(26 + n):
    print()
    print(m)
    print(next_long())
    print(m * 9 // 10)

print()
print()
print(seed_)
print(seed_ ^^ i)

# 2632423956345130