import subprocess, sys

# nc chal.tuctf.com 30007
p = None

def readline():
    line = p.stdout.readline()
    # print(line.decode(), end="")
    return line

def write(message):
    p.stdin.write(message)
    p.stdin.flush()
    # print(message.decode(), end="")

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

for i in range(26):
    p = subprocess.Popen(["nc", "chal.tuctf.com", "30007"], stdin=subprocess.PIPE, stdout=subprocess.PIPE)

    write(b"7\n")
    line = b""
    while not line.startswith(b"Give"):
        line = readline()

    write(b"abcdefghijklmnopqrstuvwxyz"[i:i + 1] + b"\n")
    
    while not line.startswith(b"ABCDEFGHIJKLMNOPQRSTUVWXYZ"[i:i + 1]):
        line = readline()
    
    decoder = parse_sentence(line.removeprefix(b"ABCDEFGHIJKLMNOPQRSTUVWXYZ"[i:i + 1] + b" encrypted is "))
    print(decoder[0])
