from random import randint

length = 16
total = 0
i = 0

while True:
    a = randint(0, 2 ** (length * 8))
    b = randint(0, 2 ** (length * 8))
    total += (a + b) / (a ^ b)
    i += 1
    print(total / i)
