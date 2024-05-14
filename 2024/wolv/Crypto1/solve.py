import time
import random
import sys


correct = [189, 24, 103, 164, 36, 233, 227, 172, 244, 213, 61, 62, 84, 124, 242, 100, 22, 94, 108, 230, 24, 190, 23, 228, 24]
time_cycle = 188
flag = []

for i in range(len(correct)):
    random.seed(i+time_cycle)
    flag.append(correct[i] ^ random.getrandbits(8))
print("".join([chr(x) for x in flag])) # Output: CTF{r4nd0m_1s_n0t_4lw4ys_r4nd0m}