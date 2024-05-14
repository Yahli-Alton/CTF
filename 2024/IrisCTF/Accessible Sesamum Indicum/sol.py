import subprocess

p = subprocess.Popen("py chal.py".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)

def write(message):
    p.stdin.write(message)
    p.stdin.flush()
    # print(message.decode(), end="")

def readline():
    line = p.stdout.readline()
    print(line.decode(), end="")
    return line

def read(n):
    line = p.stdout.read(n)
    print(line.decode(), end="")
    return line

for _ in range(16):
    readline()

for _ in range(16):
    for pin_start in range(256):
        msg = b""
        for pin_end in range(0, 65536, 256):
            msg += hex(pin_start + pin_end)[2:].zfill(4).encode() + b"\n"
            # print(hex(pin_start + pin_end)[2:].zfill(4))
        write(msg)
        line = read(len("Attempt> ") * 256)
        
        # if b"You've defeated this vault" in line:
        #     readline()
        #     break
    print("_________________________", _)

while True:
    print(readline())
