from Crypto.Util.number import getPrime, inverse
from output import *
# from secret import flag
from sage.all import *
from itertools import product
import string

mat = []
vec = []
# flag = flag.hex().encode()
flag_len = 74
for i, g in zip(range(flag_len - 20), k):
    assert len(g) == flag_len + 1
    # h = 0
    x, y, z = 0, 0, 0
    mat.append([])
    vec.append(0)
    for j in range(0, flag_len, 2):
        # a, b = flag[j], flag[j + 1]
        m, n = g[j], g[j + 1]
        # c, d = m * a, n * b
        # e, f = pow(inverse(c, p) + inverse(d, p), 2, p), (m ** 2 * inverse(c, p) * n ** 2 * inverse(d, p)) % p
        # h += e * inverse(f, p) % p
        mat[-1].append(pow(m, -3, p) * pow(n, -1, p))
        mat[-1].append(pow(n, -3, p) * pow(m, -1, p))
        vec[-1] += -2 * pow(m, -2, p) * pow(n, -2, p)
        # assert e * inverse(f, p) % p == (pow(m, -3, p) * pow(n, -1, p) * pow(a, -1, p) * b + 2 * pow(m, -2, p) * pow(n, -2, p) + pow(n, -3, p) * pow(m, -1, p) * pow(b, -1, p) * a) % p
    # assert g[-1] == h % p
    vec[-1] += g[-1]
    # assert sum(mat[-1][j] * pow(flag[j], -1, p) * flag[j + 1] + mat[-1][j + 1] * pow(flag[j + 1], -1, p) * flag[j] for j in range(0, len(flag), 2)) % p == vec[-1] % p

start = b"pearl{".hex().encode()
end = b"}".hex().encode()

for i in range(0, len(start), 2):
    mat.append([0] * i + [1] + [0] * (flag_len - i - 1))
    vec.append(pow(start[i], -1, p) * start[i + 1])

    mat.append([0] * (i + 1) + [1] + [0] * (flag_len - i - 2))
    vec.append(pow(start[i + 1], -1, p) * start[i])

for i in range(flag_len - len(end), flag_len, 2):
    mat.append([0] * i + [1] + [0] * (flag_len - i - 1))
    vec.append(pow(end[-flag_len + len(end) + i], -1, p) * end[-flag_len + len(end) + i + 1])

    mat.append([0] * (i + 1) + [1] + [0] * (flag_len - i - 2))
    vec.append(pow(end[-flag_len + len(end) + i + 1], -1, p) * end[-flag_len + len(end) + i])

F = GF(p)

mat_copy = [l.copy() for l in mat]
vec_copy = vec.copy()

basis = []

middle = b"\x00" * 6
mat = [l.copy() for l in mat_copy]
vec = vec_copy.copy()

for i in range(len(start), len(start) + len(middle)):
    mat.append([0] * i + [1] + [0] * (flag_len - i - 1))
    vec.append(middle[i - len(start)])

# vec += [0] * (flag_len - len(start) - len(middle))

A = matrix(F, mat)
b = vector(F, vec)

sol = A.solve_right(b)

# print(len(mat_copy))
# print(len(mat_copy[0]))

for i in range(6):
    middle = b"\x00" * i + b"\x01" + b"\x00" * (5 - i)
    mat = [l.copy() for l in mat_copy]
    vec = [0] * len(vec_copy)

    for j in range(len(start), len(start) + len(middle)):
        mat.append([0] * j + [1] + [0] * (flag_len - j - 1))
        vec.append(middle[j - len(start)])
    
    # vec += [0] * (flag_len - len(start) - len(middle))
    # print(i)

    A = matrix(F, mat)
    b = vector(F, vec)

    basis.append(A.solve_right(b))

# for middle in product(b"0123456789abcdef", repeat=6):
# for middle in product(string.ascii_letters + string.digits + string.punctuation, repeat=3):
#     for i in range(len(start), len(start) + len(middle), 2):
#         mat.append([0] * i + [1] + [0] * (flag_len - i - 1))
#         vec.append(pow(middle[i - len(start)], -1, p) * middle[i - len(start) + 1])

#         mat.append([0] * (i + 1) + [1] + [0] * (flag_len - i - 2))
#         vec.append(pow(middle[i - len(start) + 1], -1, p) * middle[i - len(start)])

#     matrix2 = np.array(mat)
#     vector2 = np.array(vec)
#     print(matrix2.shape)
#     print(vector2.shape)

# works if p % 3 == 2
def cuberoot(a, p):
    return pow(a, (2 * p) // 3, p)

for i, middle in enumerate(product(string.ascii_letters + string.digits + string.punctuation, repeat=3)):
    if i % 1000 == 0:
        print(i)
    middle = "".join(middle).encode().hex().encode()

    new_sol = copy(sol)

    for j in range(0, len(middle), 2):
        # sol_add.append(pow(middle[j], -1, p) * middle[j + 1])
        # sol_add.append(pow(middle[j + 1], -1, p) * middle[j])
        new_sol += basis[j] * (pow(middle[j], -1, p) * middle[j + 1])
        new_sol += basis[j + 1] * (pow(middle[j + 1], -1, p) * middle[j])

    assert len(new_sol) == flag_len
    # convert to flag and check if sol is good
    # for i in range(0, flag_len, 2):
    if all(pow(middle[i], -1, p) == middle[j + 1] for i in range(0, flag_len, 2)):
        print(new_sol)

