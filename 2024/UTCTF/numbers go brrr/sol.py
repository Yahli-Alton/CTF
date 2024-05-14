import pwn
import time


p = pwn.process(["python3", "main.py"])

seed = int(time.time() * 1000) % (10 ** 6)
def get_random_number():
    global seed 
    seed = int(str(seed * seed).zfill(12)[3:9])
    return seed

print(seed)
print(p.recvline())
