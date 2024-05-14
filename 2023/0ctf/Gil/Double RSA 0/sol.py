import multiprocessing
import hashlib
from itertools import product, repeat
import subprocess

# p = subprocess.Popen("nc chall.ctf.0ops.sjtu.cn 32226".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)
p = subprocess.Popen("nc 127.0.0.1 32226".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)

def write(message):
    p.stdin.write(message)
    p.stdin.flush()
    print(message.decode())

def readline():
    line = p.stdout.readline()
    print(line.decode())
    return line

def end():
    while True:
        c = p.stdout.read(1)
        print(c.decode(), end="")

# base != 2
# mod = base ** n
def discrete_log(m, c, n, base):
    b = 0
    mod = base ** n
    for bit in range(n - 2, -1, -1):
        for i in range(base):
            if (pow(c, (base - 1) * base ** bit, mod) == pow(m, (b + i * base ** (n - 2 - bit)) * (base - 1) * base ** bit, mod)):
                b += i * base ** (n - 2 - bit)
                break
    return b

# characters = "abcdefghijklmnopqrstuvwxyz" + "abcdefghijklmnopqrstuvwxyz".upper() + "0123456789"

# line = readline()
# end = line[line.index(b"+") + 2: line.index(b")")].decode()
# sha = line[line.index(b"=") + 3:-1].decode()

# def try_hashes(arg):
#     first, end, sha = arg
#     characters = "abcdefghijklmnopqrstuvwxyz" + "abcdefghijklmnopqrstuvwxyz".upper() + "0123456789"

#     for c2, c3, c4 in product(characters, repeat=3):
#         code = first + c2 + c3 + c4 + end
#         encoding = hashlib.sha256(code.encode()).hexdigest()
#         if encoding == sha:
#             return first + c2 + c3 + c4

# pool = multiprocessing.Pool(62)
# ret = pool.map(try_hashes, zip(characters, repeat(end, 62), repeat(sha, 62)))
# pool.close()
# pool.terminate()
# ret = list(filter(lambda x: x != None, ret))

# write(ret[0].encode() + b"\n")

P_BITS = 512

carmichael = 11410594160432371203550894759727634716446651207295987069586482451065607481503976092772438266788920213006671350673714951456474588707247166273602065224760401

hex_value = hex(carmichael)[2:].encode()
write(hex_value + b"\n" + hex_value + b"\n")

end()
