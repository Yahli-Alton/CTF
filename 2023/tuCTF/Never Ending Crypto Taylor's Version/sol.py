import subprocess

# nc chal.tuctf.com 30007
p = subprocess.Popen(["nc", "chal.tuctf.com", "30007"], stdin=subprocess.PIPE, stdout=subprocess.PIPE)

def readline():
    line = p.stdout.readline()
    print(line.decode(), end="")
    return line

def write(message):
    p.stdin.write(message)
    p.stdin.flush()
    print(message.decode(), end="")

def parse(letter):
    byte = 0
    while letter != b"":
        if letter.startswith(b"Swift"):
            byte += 1
            letter = letter[5:]
        else:
            letter = letter[6:]
        byte *= 2
    byte //= 2
    return byte

def parse_sentence(line):
    code = line.removesuffix(b"\n").split(b" ")
    decoded = []
    for letter in code:
        byte = parse(letter)
        decoded.append(byte)
    return decoded

def generic(level):
    write(str(level).encode("utf-8") + b"\n")
    line = b""
    while not line.startswith(b"Give"):
        line = readline()

    write(b"abcdefghijklmnopqrstuvwxyz\n")
    
    while not line.startswith(b"A"):
        line = readline()
    
    decoder = parse_sentence(line.removeprefix(b"ABCDEFGHIJKLMNOPQRSTUVWXYZ encrypted is "))
    print(decoder)
    
    while True:
        done = False
        line = b""
        while not line.startswith(b"Decrypt"):
            line = readline()
            if line.startswith(b"Congratulations!"):
                done = True
                break
        if done:
            break

        decoded = parse_sentence(line.removeprefix(b"Decrypt "))
        message = b""
        for letter in decoded:
            message += chr(ord("A") + decoder.index(letter)).encode("utf-8")
        write(message + b"\n")

def generic2(level, data):
    write(str(level).encode("utf-8") + b"\n")
    line = b""
    while not line.startswith(b"Give"):
        line = readline()

    write(b"a\n")
    
    while True:
        done = False
        line = b""
        while not line.startswith(b"Decrypt"):
            line = readline()
            if line.startswith(b"Congratulations!"):
                done = True
                break
        if done:
            break

        decoded = parse_sentence(line.removeprefix(b"Decrypt "))
        new_decoded = [None] * len(decoded)

        order = data[len(decoded) - 1]

        for i, letter in enumerate(decoded):
            new_decoded[order[i]] = letter
        message = b""
        for letter in new_decoded:
            message += chr(ord("A") + letter).encode("utf-8")
        write(message + b"\n")

def level7():
    write(b"7\n")
    line = b""
    while not line.startswith(b"Give"):
        line = readline()

    write(b"a\n")
    
    data = [
        [0],
        [0, 1],
        [0, 1, 2],
        [0, 1, 2, 3],
        [0, 1, 2, 3, 4],
        [0, 1, 2, 3, 5, 4],
        [0, 1, 2, 6, 3, 5, 4],
        [0, 1, 7, 2, 6, 3, 5, 4],
        [0, 8, 1, 7, 2, 6, 3, 5, 4],
        [0, 8, 1, 7, 9, 2, 6, 3, 5, 4],
        [0, 8, 1, 7, 9, 2, 6, 10, 3, 5, 4],
        [0, 8, 1, 7, 9, 2, 6, 10, 3, 5, 11, 4],
        [0, 8, 1, 7, 9, 2, 6, 10, 3, 5, 11, 4, 12],
        [0, 8, 1, 7, 9, 2, 6, 10, 3, 5, 11, 13, 4, 12],
        [0, 8, 1, 7, 9, 2, 6, 10, 14, 3, 5, 11, 13, 4, 12],
        [0, 8, 1, 7, 9, 15, 2, 6, 10, 14, 3, 5, 11, 13, 4, 12],
        [0, 8, 16, 1, 7, 9, 15, 2, 6, 10, 14, 3, 5, 11, 13, 4, 12],
        [0, 8, 16, 1, 7, 9, 15, 17, 2, 6, 10, 14, 3, 5, 11, 13, 4, 12],
        [0, 8, 16, 1, 7, 9, 15, 17, 2, 6, 10, 14, 18, 3, 5, 11, 13, 4, 12],
        [0, 8, 16, 1, 7, 9, 15, 17, 2, 6, 10, 14, 18, 3, 5, 11, 13, 19, 4, 12],
        [0, 8, 16, 1, 7, 9, 15, 17, 2, 6, 10, 14, 18, 3, 5, 11, 13, 19, 4, 12, 20],
        [0, 8, 16, 1, 7, 9, 15, 17, 2, 6, 10, 14, 18, 3, 5, 11, 13, 19, 21, 4, 12, 20],
        [0, 8, 16, 1, 7, 9, 15, 17, 2, 6, 10, 14, 18, 22, 3, 5, 11, 13, 19, 21, 4, 12, 20],
        [0, 8, 16, 1, 7, 9, 15, 17, 23, 2, 6, 10, 14, 18, 22, 3, 5, 11, 13, 19, 21, 4, 12, 20],
        [0, 8, 16, 24, 1, 7, 9, 15, 17, 23, 2, 6, 10, 14, 18, 22, 3, 5, 11, 13, 19, 21, 4, 12, 20],
        [0, 8, 16, 24, 1, 7, 9, 15, 17, 23, 25, 2, 6, 10, 14, 18, 22, 3, 5, 11, 13, 19, 21, 4, 12, 20]
    ]

    while True:
        done = False
        line = b""
        while not line.startswith(b"Decrypt"):
            line = readline()
            if line.startswith(b"Congratulations!"):
                done = True
                break
        if done:
            break

        decoded = parse_sentence(line.removeprefix(b"Decrypt "))
        decoded = [(letter - 22) % 26 for letter in decoded]
        new_decoded = [None] * len(decoded)

        order = data[len(decoded) - 1]

        for i, letter in enumerate(decoded):
            new_decoded[order[i]] = letter
        message = b""
        for letter in new_decoded:
            message += chr(ord("A") + letter).encode("utf-8")
        write(message + b"\n")

generic(0)
generic(1)
generic(2)
generic(3)
generic2(4, [
        [0],
        [0, 1],
        [0, 1, 2],
        [0, 1, 3, 2],
        [0, 4, 1, 3, 2],
        [0, 4, 1, 3, 5, 2],
        [0, 4, 1, 3, 5, 2, 6],
        [0, 4, 1, 3, 5, 7, 2, 6],
        [0, 4, 8, 1, 3, 5, 7, 2, 6],
        [0, 4, 8, 1, 3, 5, 7, 9, 2, 6],
        [0, 4, 8, 1, 3, 5, 7, 9, 2, 6, 10],
        [0, 4, 8, 1, 3, 5, 7, 9, 11, 2, 6, 10],
        [0, 4, 8, 12, 1, 3, 5, 7, 9, 11, 2, 6, 10],
        [0, 4, 8, 12, 1, 3, 5, 7, 9, 11, 13, 2, 6, 10],
        [0, 4, 8, 12, 1, 3, 5, 7, 9, 11, 13, 2, 6, 10, 14],
        [0, 4, 8, 12, 1, 3, 5, 7, 9, 11, 13, 15, 2, 6, 10, 14],
        [0, 4, 8, 12, 16, 1, 3, 5, 7, 9, 11, 13, 15, 2, 6, 10, 14],
        [0, 4, 8, 12, 16, 1, 3, 5, 7, 9, 11, 13, 15, 17, 2, 6, 10, 14],
        [0, 4, 8, 12, 16, 1, 3, 5, 7, 9, 11, 13, 15, 17, 2, 6, 10, 14, 18],
        [0, 4, 8, 12, 16, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 2, 6, 10, 14, 18],
        [0, 4, 8, 12, 16, 20, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 2, 6, 10, 14, 18],
        [0, 4, 8, 12, 16, 20, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 2, 6, 10, 14, 18],
        [0, 4, 8, 12, 16, 20, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 2, 6, 10, 14, 18, 22],
        [0, 4, 8, 12, 16, 20, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 2, 6, 10, 14, 18, 22],
        [0, 4, 8, 12, 16, 20, 24, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 2, 6, 10, 14, 18, 22],
        [0, 4, 8, 12, 16, 20, 24, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 2, 6, 10, 14, 18, 22]
    ])
generic(5)
generic(6)
level7()

while True:
    readline()
