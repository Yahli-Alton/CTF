from string import printable
from time import time
import random


with open("ciphertext", "r") as file:
    code = file.read()

flag_indexes = []
for i in range(len(code) // 64 // len(printable)):
    for j in range(len(printable)):
        if code[i * 64 * len(printable) + j * 64: i * 64 * len(printable) + j * 64 + 32] == code[i * 64 * len(printable) + j * 64 + 32: i * 64 * len(printable) + j * 64 + 64]:
            flag_indexes.append(j)
            break
    else:
        print("how is this possible", i)

print(flag_indexes)

t = int(time())

while True:
    t -= 1
    # Generate random bytes
    random.seed(t)
    rand_printable = [x for x in printable]
    random.shuffle(rand_printable)

    if "".join([rand_printable[flag_indexes[i]] for i in range(5)]) == "brck{":
        print(t)
        print("".join([rand_printable[flag_indexes[i]] for i in range(len(code) // 64 // len(printable))]))
        break
