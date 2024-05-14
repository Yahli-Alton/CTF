with open("xor.txt", "r") as file:
    xors = file.read().split("\n")[:-1]
    xors = [int(a) for a in xors]

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

F = Integers(18446744073709551616)
# F = GF(18446744073709551616)
# F = GF(101)

xor_table = [xors[i * 21: (i + 1) * 21] for i in range(21)]

print("generation")
b = vector(F, needed)
A = Matrix(F, xor_table)
print("solving")

# print(A.solve_right(b))

def right_kernel_mod_p_to_the_k(A, p=None, k=None):
    r"""
    Return the kernel of ``A`` modulo ``p^k``
    """
    if p is None or k is None:
        Z = A.base_ring()
        f = Z.cardinality().factor()
        if len(f) == 1:
            p, k = f[0]
        else:
            raise ValueError("either specify p and k or use matrix with " 
                             "base ring some p^k with p prime and k > 0")
    n = A.nrows()
    print("hi")
    W = (Zmod(p)^n).list()
    print("hi")
    K = A.change_ring(Zmod(p)).right_kernel().list()
    print("hi")
    for j in range(2, k + 1):
        print(j)
        R = Zmod(p^j)
        V = R^n
        B = A.change_ring(R)
        W = [p * V(v) for v in W]
        K = [V(x) for x in K]
        # candidates
        C = (u + v for u in K for v in W)
        K = [x for x in C if (B*x).is_zero()]
    return K

print(right_kernel_mod_p_to_the_k(A, 2, 64))
