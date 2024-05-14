import subprocess


p = subprocess.Popen(["nc", "45.153.241.194", "31337"], stdin=subprocess.PIPE, stdout=subprocess.PIPE)
print(p.stdout.readline())
print(p.stdout.readline())
print(p.stdout.readline())
print(p.stdout.readline())
print(p.stdout.readline())
print(p.stdout.readline())
p.stdin.write(b"y\n")
p.stdin.flush()
for _ in range(40):
    p.stdout.readline()
    prime = int(p.stdout.readline()[6:])
    print(prime)
    p.stdin.write(str((prime - 2) * 2 % prime).encode() + b"\n")
    p.stdin.write(str(prime - 2).encode() + b",2\n")
    p.stdin.flush()
    p.stdout.readline()
    p.stdout.readline()

print(p.stdout.readline())    
