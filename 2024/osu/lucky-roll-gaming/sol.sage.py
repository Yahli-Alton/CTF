

# This file was *autogenerated* from the file sol.sage
from sage.all_cmdline import *   # import sage library

_sage_const_4420073644184861649599 = Integer(4420073644184861649599); _sage_const_1144993629389611207194 = Integer(1144993629389611207194); _sage_const_3504184699413397958941 = Integer(3504184699413397958941); _sage_const_39 = Integer(39); _sage_const_47 = Integer(47); _sage_const_95 = Integer(95); _sage_const_1 = Integer(1); _sage_const_77 = Integer(77); _sage_const_89 = Integer(89); _sage_const_70 = Integer(70); _sage_const_99 = Integer(99); _sage_const_23 = Integer(23); _sage_const_44 = Integer(44); _sage_const_38 = Integer(38); _sage_const_87 = Integer(87); _sage_const_34 = Integer(34); _sage_const_42 = Integer(42); _sage_const_10 = Integer(10); _sage_const_67 = Integer(67); _sage_const_24 = Integer(24); _sage_const_3 = Integer(3); _sage_const_2 = Integer(2); _sage_const_80 = Integer(80); _sage_const_26 = Integer(26); _sage_const_91 = Integer(91); _sage_const_86 = Integer(86); _sage_const_71 = Integer(71); _sage_const_59 = Integer(59); _sage_const_97 = Integer(97); _sage_const_69 = Integer(69); _sage_const_31 = Integer(31); _sage_const_17 = Integer(17); _sage_const_73 = Integer(73); _sage_const_78 = Integer(78); _sage_const_43 = Integer(43); _sage_const_18 = Integer(18); _sage_const_15 = Integer(15); _sage_const_46 = Integer(46); _sage_const_22 = Integer(22); _sage_const_68 = Integer(68); _sage_const_98 = Integer(98); _sage_const_60 = Integer(60); _sage_const_53 = Integer(53); _sage_const_13 = Integer(13); _sage_const_6 = Integer(6); _sage_const_19 = Integer(19); _sage_const_50 = Integer(50); _sage_const_7 = Integer(7); _sage_const_5 = Integer(5); _sage_const_55 = Integer(55); _sage_const_27 = Integer(27); _sage_const_72 = Integer(72); _sage_const_40 = Integer(40); _sage_const_64 = Integer(64); _sage_const_100 = Integer(100); _sage_const_0 = Integer(0); _sage_const_16 = Integer(16)
from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad

p = _sage_const_4420073644184861649599 
a = _sage_const_1144993629389611207194 
b = _sage_const_3504184699413397958941 
out = [_sage_const_39 , _sage_const_47 , _sage_const_95 , _sage_const_1 , _sage_const_77 , _sage_const_89 , _sage_const_77 , _sage_const_70 , _sage_const_99 , _sage_const_23 , _sage_const_44 , _sage_const_38 , _sage_const_87 , _sage_const_34 , _sage_const_99 , _sage_const_42 , _sage_const_10 , _sage_const_67 , _sage_const_24 , _sage_const_3 , _sage_const_2 , _sage_const_80 , _sage_const_26 , _sage_const_87 , _sage_const_91 , _sage_const_86 , _sage_const_1 , _sage_const_71 , _sage_const_59 , _sage_const_97 , _sage_const_69 , _sage_const_31 , _sage_const_17 , _sage_const_91 , _sage_const_73 , _sage_const_78 , _sage_const_43 , _sage_const_18 , _sage_const_15 , _sage_const_46 , _sage_const_22 , _sage_const_68 , _sage_const_98 , _sage_const_60 , _sage_const_98 , _sage_const_17 , _sage_const_53 , _sage_const_13 , _sage_const_6 , _sage_const_13 , _sage_const_19 , _sage_const_50 , _sage_const_73 , _sage_const_44 , _sage_const_7 , _sage_const_44 , _sage_const_3 , _sage_const_5 , _sage_const_80 , _sage_const_26 , _sage_const_10 , _sage_const_55 , _sage_const_27 , _sage_const_47 , _sage_const_72 , _sage_const_80 , _sage_const_53 , _sage_const_2 , _sage_const_40 , _sage_const_64 , _sage_const_55 , _sage_const_6 ]
cypher = "34daaa9f7773d7ea4d5f96ef3dab1bbf5584ecec9f0542bbee0c92130721d925f40b175e50587196874e14332460257b"

a_lst = [pow(a, i, p) for i in range(len(out) + _sage_const_1 )]
b_lst = [b * sum(a_lst[j] for j in range(i)) for i in range(len(out) + _sage_const_1 )]

def get_roll():
    global seed
    seed = lcg(seed, a, b, p)
    return seed % _sage_const_100 

def lcg(s, a, b, p):
    return (a * s + b) % p

# for i in range(len(out)):
#     print(get_roll() == ((a_lst[i + 1] * seed_ + b_lst[i + 1]) % p) % 100)

# s_i = a_i * s + b_i
# out_i + x_i * 100 = a_i+1 * s + b_i+1
# x_i = (a_i+1 * s + b_i+1 - out_i) * 100^-1
# x_i = a_i+1 * 100^-1 * s + (b_i+1 - out_i) * 100^-1

mat = [
    [_sage_const_0 ] + [(b_lst[i + _sage_const_1 ] - out[i]) * pow(_sage_const_100 , -_sage_const_1 , p) for i in range(len(out))] + [p // _sage_const_10 ],
    [_sage_const_1 ] + [a_lst[i + _sage_const_1 ] * pow(_sage_const_100 , -_sage_const_1 , p) for i in range(len(out))] + [_sage_const_0 ]
]

for i in range(len(out)):
    mat.append([_sage_const_0 ] * (i + _sage_const_1 ) + [p] + [_sage_const_0 ] * (len(out) - i))

mat = matrix(ZZ, mat)
print(mat)
lll = mat.LLL()
print(lll)

seed = -lll[_sage_const_0 ][_sage_const_0 ]
seed_ = -lll[_sage_const_0 ][_sage_const_0 ]

for i in range(len(out)):
    assert lll[_sage_const_0 ][_sage_const_1  + i] < p // _sage_const_100 
    assert -lll[_sage_const_0 ][_sage_const_1  + i] == (a_lst[i + _sage_const_1 ] * pow(_sage_const_100 , -_sage_const_1 , p) * seed_ + (b_lst[i + _sage_const_1 ] - out[i]) * pow(_sage_const_100 , -_sage_const_1 , p)) % p
    assert -lll[_sage_const_0 ][_sage_const_1  + i] * _sage_const_100  + out[i] == (a_lst[i + _sage_const_1 ] * seed_ + b_lst[i + _sage_const_1 ]) % p
    # assert int(-lll[0][1 + i] * 100 + out[i]) % 100 == get_roll()
    # assert out[i] == get_roll()

out = []
for _ in range(_sage_const_72 ):
    out.append(get_roll())
print(f"{out = }")

key = bytes([get_roll() for _ in range(_sage_const_16 )])
iv = bytes([get_roll() for _ in range(_sage_const_16 )])
cipher = AES.new(key, AES.MODE_CBC, iv)
print(unpad(cipher.decrypt(bytes.fromhex(cypher)), _sage_const_16 ))

