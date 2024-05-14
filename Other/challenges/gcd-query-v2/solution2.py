from subprocess import Popen, PIPE
import math
import time


# process = Popen(["python3", "main.py"], stdout=PIPE, stdin=PIPE)
process = Popen(["nc", "amt.rs", "31693"], stdout=PIPE, stdin=PIPE)

factorial = math.factorial(2 ** 10)

x = 1
total = 0

requests = 0

while requests != 16:
    # print(process.stdout.read(5).decode("utf-8"), end="")
    process.stdout.read(5)
    process.stdin.write(f"{total} {factorial * x}\n".encode("utf-8"))
    # print(f"{total} {factorial * x}\n", end="")
    process.stdin.flush()
    result = process.stdout.readline()
    # print(result.decode("utf-8"), end="")
    result = int(result.decode("utf-8")[:-1])
    
    x = result
    total += x

    requests += 1

# print(process.stdout.read(3).decode("utf-8"), end="")
process.stdout.read(3)
process.stdin.write((str(2 * x - total) + "\n").encode("utf-8"))
process.stdin.flush()

print(process.stdout.readline().decode("utf-8"))
