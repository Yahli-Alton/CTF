from functools import reduce
def chinese_remainder(m, a):
    sum = 0
    prod = reduce(lambda acc, b: acc*b, m)
    for n_i, a_i in zip(m, a):
        p = prod // n_i
        sum += a_i * mul_inv(p, n_i) * p
    return sum % prod
 
 
 
def mul_inv(a, b):
    b0 = b
    x0, x1 = 0, 1
    if b == 1: return 1
    while a > 1:
        q = a // b
        a, b = b, a%b
        x0, x1 = x1 - q * x0, x0
    if x1 < 0: x1 += b0
    return x1

def i_root(num, root):
    i = num.bit_length() // root
    m = 1 << i
    while m ** root < num:
        m <<= 1
        i += 1
    while m ** root > num:
        m >>= 1
        i -= 1
    for k in range(i-1, -1, -1):
        x = m | (1 << k)
        if x ** root <= num:
            m = x
    return m

m1 = 28814184316334217874877098758375913129358410123425360949510934333064358171134
N1 = 90580124931221663746895206628792830976220059548711751126680652932078702444601

m2 = 10984056423691431720911233273024164592515062440862379092015499307305623694345
N2 = 66478837859828706989921414451534860153107727962597669415518508826974212482073

m3 = 53670597129996117023946495717565583884906063799229611280785341292082509127002
N3 = 56263365800782994708174202736336574747040710031052080762868878205876906940341

print(i_root(chinese_remainder([N1, N2, N3], [m1, m2, m3]), 3).to_bytes(100, "big"))

# if __name__ == '__main__':
#     m= [3,4,7]
#     a = [1,1,0]
#     print(chinese_remainder(m, a))