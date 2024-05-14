

# This file was *autogenerated* from the file len.sage
from sage.all_cmdline import *   # import sage library

_sage_const_16 = Integer(16); _sage_const_0 = Integer(0); _sage_const_10000 = Integer(10000); _sage_const_1 = Integer(1); _sage_const_131 = Integer(131)
q = int("0xD2F8711CB5502C512ACEA59BE181A8FCF12F183B540D9A6998BF66370F9538F7E39FC507545DAD9AA2E71D3313F0B4408695A0A2C03A790662A9BD01650533C584C90779B73604FB8157F0AB7C9A82E724700E5937D9FF5FCF1EE3BE1EDD7E07B4C0F035A58CC2B9DB8B79F176F595C1B0E90B7957309B96106A50A01B78171599B41C8744BCB1C0E6A24F60AE8946D37F4D4BD8CF286A336E1022996B3BA3918E4D808627D0315BFE291AEB884CBE98BB620DAA735B0467F3287D158231D", _sage_const_16 )
count = _sage_const_0 

primes = Primes()[:_sage_const_10000 ]

while True:
    count += _sage_const_1 

    if prod(primes[count: count + _sage_const_131 ]) == q:
        print(count)

