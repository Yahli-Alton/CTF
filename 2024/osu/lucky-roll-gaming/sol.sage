from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad

p = 4420073644184861649599
a = 1144993629389611207194
b = 3504184699413397958941
out = [39, 47, 95, 1, 77, 89, 77, 70, 99, 23, 44, 38, 87, 34, 99, 42, 10, 67, 24, 3, 2, 80, 26, 87, 91, 86, 1, 71, 59, 97, 69, 31, 17, 91, 73, 78, 43, 18, 15, 46, 22, 68, 98, 60, 98, 17, 53, 13, 6, 13, 19, 50, 73, 44, 7, 44, 3, 5, 80, 26, 10, 55, 27, 47, 72, 80, 53, 2, 40, 64, 55, 6]
cypher = "34daaa9f7773d7ea4d5f96ef3dab1bbf5584ecec9f0542bbee0c92130721d925f40b175e50587196874e14332460257b"

a_lst = [pow(a, i, p) for i in range(len(out) + 1)]
b_lst = [b * sum(a_lst[j] for j in range(i)) for i in range(len(out) + 1)]

def get_roll():
    global seed
    seed = lcg(seed, a, b, p)
    return seed % 100

def lcg(s, a, b, p):
    return (a * s + b) % p

# for i in range(len(out)):
#     print(get_roll() == ((a_lst[i + 1] * seed_ + b_lst[i + 1]) % p) % 100)

# s_i = a_i * s + b_i
# out_i + x_i * 100 = a_i+1 * s + b_i+1
# x_i = (a_i+1 * s + b_i+1 - out_i) * 100^-1
# x_i = a_i+1 * 100^-1 * s + (b_i+1 - out_i) * 100^-1

mat = [
    [0] + [(b_lst[i + 1] - out[i]) * pow(100, -1, p) for i in range(len(out))] + [p // 10],
    [1] + [a_lst[i + 1] * pow(100, -1, p) for i in range(len(out))] + [0]
]

for i in range(len(out)):
    mat.append([0] * (i + 1) + [p] + [0] * (len(out) - i))

mat = matrix(ZZ, mat)
print(mat)
lll = mat.LLL()
print(lll)

seed = -lll[0][0]
seed_ = -lll[0][0]

for i in range(len(out)):
    assert lll[0][1 + i] < p // 100
    assert -lll[0][1 + i] == (a_lst[i + 1] * pow(100, -1, p) * seed_ + (b_lst[i + 1] - out[i]) * pow(100, -1, p)) % p
    assert -lll[0][1 + i] * 100 + out[i] == (a_lst[i + 1] * seed_ + b_lst[i + 1]) % p
    # assert int(-lll[0][1 + i] * 100 + out[i]) % 100 == get_roll()
    # assert out[i] == get_roll()

out = []
for _ in range(72):
    out.append(get_roll())
print(f"{out = }")

key = bytes([get_roll() for _ in range(16)])
iv = bytes([get_roll() for _ in range(16)])
cipher = AES.new(key, AES.MODE_CBC, iv)
print(unpad(cipher.decrypt(bytes.fromhex(cypher)), 16))
