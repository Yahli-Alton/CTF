from sage.all import *

m = 150094635296999121
length = 16

for a in range(0, m, m // 10):
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
    