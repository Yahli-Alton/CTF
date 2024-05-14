from Crypto.Util.number import isPrime

def mul(l):
    res = 1
    for num in l:
        res *= num
    return res

with open("5-80.txt", "r") as file:
    data = file.read()

data = "{" + data.replace("\n\n", ",\n") + "}"
d = eval(data)

for primes in d.values():
    number = mul(primes)
    print(number.bit_length())
