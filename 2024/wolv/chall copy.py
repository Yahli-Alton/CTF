from Crypto.Random import random, get_random_bytes

BLOCK_SIZE = 16

with(open('./eWolverine.bmp', 'rb')) as f:
    wolverine = f.read()
with(open('./eFlag.bmp', 'rb')) as f:
    flag = f.read()

w = open('Combined.bmp', 'wb')

w.write(wolverine[:55])

for i in range(55, len(wolverine), BLOCK_SIZE):
    w.write(bytes(a^b for a, b in zip(wolverine[i:i+BLOCK_SIZE], flag[i:i+BLOCK_SIZE])))
