import subprocess

p = subprocess.Popen(["nc", "chal.tuctf.com", "30004"], stdin=subprocess.PIPE, stdout=subprocess.PIPE)

def readuntil(start):
    line = b""
    while not line.startswith(start):
        line = readline()
    return line

def readline():
    line = p.stdout.readline()
    print(line.decode(), end="")
    return line

def write(message):
    p.stdin.write(message)
    p.stdin.flush()
    # print(message.decode(), end="")

message = b""
for bit in range(48):
    message += b"1\n" + (1 << bit).to_bytes(6, "big") + b"\n000000000000\n"

write(message)

pattern = [None] * 48

for bit in range(48):
    readuntil(b"Your")
    cipher = readline()
    if int(cipher, 2).bit_count() == 1:
        pattern[-int(cipher, 2).bit_length()] = 47 - bit
        print(pattern)
    else:
        print(bit)

print(f"{pattern=}")
