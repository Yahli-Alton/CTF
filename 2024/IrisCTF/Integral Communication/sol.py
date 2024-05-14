import subprocess
from binascii import hexlify, unhexlify
from Crypto.Cipher import AES

# p = subprocess.Popen("py chal.py".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)
p = subprocess.Popen("nc integral-communication.chal.irisc.tf 10103".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)

def write(message):
    p.stdin.write(message)
    p.stdin.flush()
    print(message.decode(), end="")

def readline():
    line = p.stdout.readline()
    print(line.decode(), end="")
    return line

def read():
    line = p.stdout.read(1)
    print(line.decode(), end="")
    return line

def xor(a, b):
    return bytes([a_ ^ b_ for a_, b_ in zip(a, b)])

m1 = b'{"from": "admin"'
m2 = b', "act": "flag"}'
assert len(m1) == len(m2) == 16

readline()
readline()
readline()
readline()
readline()
readline()

write(b"2\n" + b"0" * 32 + b"\n" + b"0" * 32 + b"\n")

iv2 = readline()
iv2 = unhexlify(iv2[iv2.index(b"8: ") + 3: -1])
print("iv2:", iv2.hex())
iv2 = xor(iv2, m2)

readline()
readline()
readline()
readline()
readline()

write(b"2\n" + b"0" * 32 + b"\n" + iv2.hex().encode() + b"\n")

iv1 = readline()
iv1 = unhexlify(iv1[iv1.index(b"8: ") + 3: -1])
iv = xor(iv1, m1)
print("iv1:", iv1.hex())

write(b"2\n" + iv.hex().encode() + b"\n" + iv2.hex().encode() + b"0" * 32 + b"\n")

while True:
    read()
