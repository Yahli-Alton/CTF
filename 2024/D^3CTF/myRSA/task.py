from random import randint
from gmpy2 import *
from Crypto.Util.number import *
from secret import flag


class LFSR:
    def __init__(self, seed, length):
        self.mask = 0b10000100100100100100100100100100100100100100100100100100100100100100100100100100100100110
        self.length = length
        self.lengthmask = 2**self.length - 1
        self.state = seed

    def next(self):
        i = self.state & self.mask

        self.state = (self.state << 1) & self.lengthmask
        lastbit = 0
        while i != 0:
            lastbit ^= i & 1
            i = i >> 1
        self.state ^= lastbit
        return lastbit


seed = randint(0, 2**89)
lfsr = LFSR(seed, 89)


def get_bits(n):
    s = ""
    for _ in range(n):
        s += str(lfsr.next())
    return s


bits = 256
a = [get_bits(bits) for _ in range(8)]
b = [get_bits(bits) for _ in range(8)]

p1 = next_prime(int(b[1], 2))
q1 = next_prime(int(b[0] + "".join(a[2:]), 2))

p2 = next_prime(int(a[1], 2))
q2 = next_prime(int(a[0] + "".join(b[2:]), 2))

N1 = p1 * q1
N2 = p2 * q2

e = 65537
m = bytes_to_long(flag)
c = pow(m, e, N2)

print(f"{N1 = }")
print(f"{N2 = }")
print(f"{c = }")


# N1 = 11195108435418195710792588075406654238662413452040893604269481198631380853864777816171135346615239847585274781942826320773907414919521767450698159152141823148113043170072260905000812966959448737906045653134710039763987977024660093279241536270954380974093998238962759705207561900626656220185252467266349413165950122829268464816965028949121220409917771866453266522778041491886000765870296070557269360794230165147639201703312790976341766891628037850902489808393224528144341687117276366107884626925409318998153959791998809250576701129098030933612584038842347204032289231076557168670724255156010233010888918002630018693299
# N2 = 15100254697650550107773880032815145863356657719287915742500114525591753087962467826081728465512892164117836132237310655696249972190691781679185814089899954980129273157108546566607320409558512492474972517904901612694329245705071789171594962844907667870548108438624866788136327638175865250706483350097727472981522495023856155253124778291684107340441685908190131143526592231859940556416271923298043631447630144435617140894108480182678930181019645093766210388896642127572162172851596331016756329494450522133805279328640942549500999876562756779916153474958590607156569686953857510763692124165713467629066731049974996526071
# c = 4814924495615599863001719377787452659409530421473568305028025012566126400664362465878829645297418472853978736123334486954531551369698267539790007454131291197238666548347098462574649698959650399163371262093116196849478966536838813625531493756454672767925688817717023571267320336512019086040845336203876733170680765788230657626290346741730982737645243576591521512217549028162039336681342312618225110504010746912604698079363106352791499951364510694837846064947033912634697178711135807010770985698854383359436879061864935030256963597840531276583023488437671584864430423908673190679945703404235633491522955548722332086120
