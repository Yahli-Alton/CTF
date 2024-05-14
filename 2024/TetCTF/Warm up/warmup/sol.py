import numpy


with open("xor.txt", "r") as file:
    xors = file.read().split("\n")[:-1]

needed = [0] * 21
needed[0] = 0xFFFFFF6F11B8034B
needed[1] = 0x673420DAF2
needed[2] = 0x45EB817F02C
needed[3] = 0xFFFFFE3099503945
needed[4] = 0x18F8DCE1227
needed[5] = 0x26050EA6875
needed[6] = 0x298599C4BF0
needed[7] = 0xFFFFF8A356CE9E58
needed[8] = 0xFFFFFED3C712CF36
needed[9] = 0xFFFFFE96846D630F
needed[10] = 0x58CB1CE3FF3
needed[11] = 0xFFFFFCCF182C2A63
needed[12] = 0xFFFFFE57FDF3F1DE
needed[13] = 0xFFFFFA603F35F962
needed[14] = 0xFFFFFF7884570B57
needed[15] = 0x4897C4D9C1
needed[16] = 0xFFFFFEB9355E5CB4
needed[17] = 0xDCEDF7D094
needed[18] = 0x3602E9CAC47
needed[19] = 0xFFFFFEE3667219D6
needed[20] = 0xFFFFFDC326C9B063

b = numpy.array(needed, dtype=numpy.uint64)

xor_table = [xors[i * 21: (i + 1) * 21] for i in range(21)]

A = numpy.array(xor_table, dtype=numpy.uint64)
assert b.shape == (21,)
assert A.shape == (21, 21)

sol = numpy.linalg.solve(A, b)
print(sol)

