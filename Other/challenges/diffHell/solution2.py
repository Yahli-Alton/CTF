import numpy
import hashlib

# p = 2188830312853
# p = 656613782743
p = 11

# G = numpy.array([[ 98997595995, 286628655675], [361440179973, 324830282344]])
# GB = numpy.array([[287334107620, 289295515866], [319964991231, 136493770719]])
# GA = numpy.array([[120471868475,  19967914604], [210948316402, 303356009864]])
# G = numpy.mod(numpy.array([
#     [ 485523751128, 286628655675],
#     [233646561513, 636723514703]
# ]), p)
# GA = numpy.mod(numpy.array([
#     [ 159387264529, 588644311937],
#     [513603820989, 306246218559]
# ]), p)
# GB = numpy.mod(numpy.array([
#     [493459219888, 108260919872],
#     [139363046903, 628788045943]
# ]), p)
G = numpy.array([
    [6, 4],
    [5, 3]
])
GA = numpy.array([
    [10, 10],
    [8, 10]
])
GB = numpy.array([
    [1, 9],
    [6, 8]
])

G_eigen_values, G_eigen_vectors = numpy.linalg.eig(G)
G_eigen_values = G_eigen_values
G_eigen_vectors = G_eigen_vectors
print(G_eigen_values)
print(G_eigen_vectors)
print()

GB_eigen_values, GB_eigen_vectors = numpy.linalg.eig(GA)
GB_eigen_values = GB_eigen_values
GB_eigen_vectors = GB_eigen_vectors
print(GB_eigen_values)
print(GB_eigen_vectors)
print()

# G_eigen_vectors^-1 * G * G_eigen_vectors = GB_eigen_vectors^-1 * GB * GB_eigen_vectors = B^-1 * G * B

B = GB_eigen_vectors * numpy.linalg.inv(G_eigen_vectors)
B = B
print(B)
super_secret_key = numpy.linalg.inv(B) * GA * B
super_secret_key = super_secret_key

m = hashlib.sha256()
m.update(f"{super_secret_key[0][1]}{super_secret_key[1][0]}{super_secret_key[1][1]}{super_secret_key[0][0]}".encode())
opt = m.digest()
# encMSG = [134, 233, 55, 86, 254, 28, 203, 80, 218, 165, 137, 20, 213, 210, 131, 174, 67, 96, 10, 174, 17, 47, 28, 103, 171, 100, 203, 23, 99, 61, 223, 124]
encMSG = [205, 250, 156, 174, 163, 27, 252, 221, 22, 196, 88, 39, 88, 182, 193, 41, 62]
print(opt)
print([fl^ot for fl,ot in zip(opt,encMSG)])
print(bytes([fl^ot for fl,ot in zip(opt,encMSG)]))
