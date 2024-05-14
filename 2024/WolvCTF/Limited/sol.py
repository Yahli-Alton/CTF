import random
import time as t

correct = [192, 123, 40, 205, 152, 229, 188, 64, 42, 166, 126, 125, 13, 187, 91]
seconds = 1703980800
start = b"wctf{"

while True:
    if seconds % 10000 == 0:
        print(seconds)
        # print(t.gmtime(seconds))

    flag = [None] * 3
    time = seconds
    for i in range(3):
        # Totally not right now
        random.seed(i+time)
        flag[i] = correct[i] ^ random.getrandbits(8)
        time += random.randint(1, 60)
    
    flag = bytes(flag)
    # print(flag)
    if flag == start[:3]:
        print(seconds)
        flag = [None] * len(correct)
        time = seconds

        for i in range(len(correct)):
            # Totally not right now
            random.seed(i+time)
            flag[i] = correct[i] ^ random.getrandbits(8)
            time += random.randint(1, 60)
        
        print(bytes(flag))
    
    seconds += 1
