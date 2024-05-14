import subprocess


p = subprocess.Popen(["py", "server.py"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

n = int(p.stdout.readline())
d = int(p.stdout.readline())

divided = []
for i in range(10):
    
    print(p.stdout.readline())
    print(p.stdout.readline())
    print(p.stdout.readline())
    print(p.stdout.read(2))
    p.stdin.write(b"1\n")
    p.stdin.write(chr(ord("a") + i).encode() + b" \n")
    p.stdin.flush()
    print(p.stdout.readline())
    output = p.stdout.readline()
    print(output)
    sa = int(output[output.index(b" ") + 1:])
    # print(pow(int.from_bytes(chr(ord("a") + i).encode(), "big"), d, n) * pow(256, d, n) % n)
    # print(pow(int.from_bytes(chr(ord("a") + i).encode() + b"\x00", "big"), d, n))

    print(p.stdout.readline())
    print(p.stdout.readline())
    print(p.stdout.readline())
    print(p.stdout.read(2))
    p.stdin.write(b"1\n")
    p.stdin.write(b"1")
    p.stdin.write(chr(ord("a") + i).encode() + b" \x00\n")
    p.stdin.flush()
    print(p.stdout.readline())
    output = p.stdout.readline()
    s8a = int(output[output.index(b" ") + 1:])

    print(p.stdout.readline())
    print(p.stdout.readline())
    print(p.stdout.readline())
    print(p.stdout.read(2))
    p.stdin.write(b"1\n")
    p.stdin.write(b"1")
    p.stdin.write(chr(ord("A") + i).encode() + b" \n")
    p.stdin.flush()
    print(p.stdout.readline())
    output = p.stdout.readline()
    sA = int(output[output.index(b" ") + 1:])

    print(p.stdout.readline())
    print(p.stdout.readline())
    print(p.stdout.readline())
    print(p.stdout.read(2))
    p.stdin.write(b"1\n")
    p.stdin.write(b"1")
    p.stdin.write(chr(ord("A") + i).encode() + b" \x00\n")
    p.stdin.flush()
    print(p.stdout.readline())
    output = p.stdout.readline()
    s8A = int(output[output.index(b" ") + 1:])

    print(s8a % n == pow(256, d, n) * sa % n)
    divided.append(sa * s8A - sA * s8a)

# for d in divided:
#     print(d)
#     print("hi", d % n)
