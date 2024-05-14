import random
from Crypto.Util.number import bytes_to_long
from itertools import product
import multiprocessing

def try_secrets(first):
    for i, secret in enumerate(product("abcdefghijklmnopqrstuvwxyz" + "abcdefghijklmnopqrstuvwxyz".upper(), repeat=4)):
        secret = bytes(first + "".join(secret), "utf-8")
        arr = [600848253359, 617370603129, 506919465064, 218995773533, 831016169202, 501743312177, 15915022145, 902217876313, 16106924577, 339484425400, 372255158657, 612977795139, 755932592051, 188931588244, 266379866558, 661628157071, 428027838199, 929094803770, 917715204448, 103431741147, 549163664804, 398306592361, 442876575930, 641158284784, 492384131229, 524027495955, 232203211652, 213223394430, 322608432478, 721091079509, 518513918024, 397397503488, 62846154328, 725196249396, 443022485079, 547194537747, 348150826751, 522851553238, 421636467374, 12712949979]
        k = bytes_to_long(secret)
        if i % 100000 == 0:
            print(i)
        s = 0
        for i in range(40):
            if k&1:
                s+=arr[i]
            k >>= 1
        if 7929089016814 == s:
            print(secret)
            return secret

pool = multiprocessing.Pool(processes=52)
ret = pool.map(try_secrets, list("abcdefghijklmnopqrstuvwxyz" + "abcdefghijklmnopqrstuvwxyz".upper()))
pool.close()
pool.terminate()

print(ret)
