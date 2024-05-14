import subprocess
from Crypto.Util.number import long_to_bytes, bytes_to_long

p = subprocess.Popen("nc babycha.chal.irisc.tf 10100".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)

def write(message):
    p.stdin.write(message)
    p.stdin.flush()
    # print(message.decode(), end="")

def readline():
    line = p.stdout.readline()
    # print(line.decode(), end="")
    return line

write(b"1\n" + b"\x00" * 64 + b"\n2\n")
readline()
readline()
readline()
readline()
readline()
readline()
buffer = bytes.fromhex(readline()[4:-1].decode())
encoded = bytes.fromhex(readline()[2:-1].decode())
assert len(buffer) == 64
print("buffer:", buffer)
print("encoded:", encoded)

state = []

for i in range(0, 64, 4):
    state.append(bytes_to_long(buffer[i: i + 4]))

print("state:", state)

def ROTL(a, b):
    return (((a) << (b)) | ((a % 2**32) >> (32 - (b)))) % 2**32

def qr(x, a, b, c, d):
    x[a] += x[b]; x[d] ^= x[a]; x[d] = ROTL(x[d],16)
    x[c] += x[d]; x[b] ^= x[c]; x[b] = ROTL(x[b],12)
    x[a] += x[b]; x[d] ^= x[a]; x[d] = ROTL(x[d], 8)
    x[c] += x[d]; x[b] ^= x[c]; x[b] = ROTL(x[b], 7)

ROUNDS = 20

def chacha_block(inp):
    x = list(inp)
    for i in range(0, ROUNDS, 2):
        qr(x, 0, 4, 8, 12)
        qr(x, 1, 5, 9, 13)
        qr(x, 2, 6, 10, 14)
        qr(x, 3, 7, 11, 15)

        qr(x, 0, 5, 10, 15)
        qr(x, 1, 6, 11, 12)
        qr(x, 2, 7, 8, 13)
        qr(x, 3, 4, 9, 14)

    return [(a+b) % 2**32 for a, b in zip(x, inp)]

state = chacha_block(state)
buffer = b""

output = []
for b in encoded:
    if len(buffer) == 0:
        buffer = b"".join(long_to_bytes(x).rjust(4, b"\x00") for x in state)
        state = chacha_block(state)
    output.append(b ^ buffer[0])
    buffer = buffer[1:]
print(bytes(output))
