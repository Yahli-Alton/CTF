import subprocess

p = subprocess.Popen("python3 main.py".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)

def write(message):
    p.stdin.write(message)
    p.stdin.flush()
    print(message.decode())

def readline():
    line = p.stdout.readline()
    print(line)
    return line

write(b"00000000000000000000000000000000 4811 7\n")
message = bytes.fromhex(readline()[:-1].decode())
print("message:", message.hex())

key = subprocess.check_output(["sol/sol2", message])
print("key:", key.hex())
write(key.hex().encode() + b"\n")
readline()
readline()
readline()
