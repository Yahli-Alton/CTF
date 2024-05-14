import subprocess

# KEY_LEN = 15
KEY_LEN = 50000

# p = subprocess.Popen("py otp.py".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)
# p = subprocess.Popen("py C:\\Users\\sharon\\Downloads\\otp.py".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)
p = subprocess.Popen("nc mercury.picoctf.net 36981".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)

def write(message):
    p.stdin.write(message)
    p.stdin.flush()
    # print(message.decode())

def readline():
    line = p.stdout.readline()
    # print(line.decode())
    return line

def read(length):
    line = p.stdout.read(length)
    # print(line.decode(), end="")
    return line

readline()
write(b"a" * KEY_LEN + b"\n")
readline()
encoded = readline().strip().decode()
# encoded = "5541103a246e415e036c4c5f0e3d415a513e4a560050644859536b4f57003d4c"
readline()
readline()
key = readline().strip().decode()
readline()

print(encoded)
print(key)

result = list(map(lambda a, b, c: hex(int(a, 16) ^ int(b, 16) ^ int(c, 16))[2:], encoded, key[-len(encoded):], "61" * (len(encoded) // 2)))
print(int("".join(result), 16).to_bytes(len(result) // 2, "big"))
