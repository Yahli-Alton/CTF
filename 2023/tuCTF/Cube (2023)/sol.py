import subprocess, math

p = subprocess.Popen(["nc", "chal.tuctf.com", "30009"], stdin=subprocess.PIPE, stdout=subprocess.PIPE)

def readuntil(start):
    total = b""
    line = b""
    while start not in line:
        line = readline()
        total += line
    return total

def readline():
    line = p.stdout.readline()
    # print(line.decode(), end="")
    return line

def write(message):
    p.stdin.write(message)
    p.stdin.flush()
    # print(message.decode(), end="")

def parse_room(room):
    room = "".join(filter(lambda x: x == " " or ord("0") <= ord(x) <= ord("9"), room))
    return list(map(int, filter(len, room.split(" "))))

def check_coprime(numbers):
    for i1, n1 in enumerate(numbers):
        for i2, n2 in enumerate(numbers):
            if i1 == i2:
                continue

            if math.gcd(n1, n2) != 1:
                return False
    
    return True

scan = b""
for x in range(6):
    for y in range(6):
        scan += b"F\nR\nL\n" * 6 + b"U\n"
    scan += b"R\nF\nL\n"

scan += b"F\n"

write(scan)
readuntil(b"Action")
room_numbers = [[[[] for _ in range(6)] for _ in range(6)] for _ in range(6)]

for x in range(6):
    for y in range(6):
        for z in range(6):
            room = readuntil(b"Action")
            numbers = parse_room(room.decode())
            room = readuntil(b"Action")
            readuntil(b"Action")
            numbers.append(parse_room(room.decode())[3])
            room_numbers[x][(y + 1) % 6][z].append(numbers[0])
            room_numbers[(x - 1) % 6][y][z].append(numbers[1])
            room_numbers[x][y][(z + 1) % 6].append(numbers[2])
            room_numbers[(x + 1) % 6][y][z].append(numbers[3])
            room_numbers[x][(y - 1) % 6][z].append(numbers[4])
            room_numbers[x][y][(z - 1) % 6].append(numbers[5])
        readuntil(b"Action")

    readuntil(b"Action")
    readuntil(b"Action")
    readuntil(b"Action")

toggle = b""
for x in range(6):
    for y in range(6):
        for z in range(6):
            if check_coprime(room_numbers[x][y][z]):
                print(x, y, z)
                toggle += b"C\n"
            toggle += b"F\n"
        toggle += b"U\n"
    toggle += b"R\nF\nL\n"

toggle += b"F\n"

write(toggle)

while True:
    print(readline().decode(), end="")
