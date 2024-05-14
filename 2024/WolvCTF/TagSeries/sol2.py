import pwn, time


def xor(var, key):
    return bytes(a ^ b for a, b in zip(var, key))

MESSAGE = b"GET: flag.txt" + b"\x00" * 3
assert len(MESSAGE) == 16
zero = (0).to_bytes(16, "big")
one = (16).to_bytes(16, "big")
two = (32).to_bytes(16, "big")
three = (48).to_bytes(16, "big")
four = (64).to_bytes(16, "big")
five = (80).to_bytes(16, "big")

p = pwn.process(["python3", "chal2.py"])
# p = pwn.remote("tagseries1.wolvctf.io", 1337)
# print(p.recvline()) # TODO: change
p.sendline(MESSAGE + zero + zero)
p.sendline(b"")
tag1 = p.recv(16)
p.recv(1)

p.sendline(MESSAGE + zero + zero + zero)
p.sendline(b"")
tag2 = p.recv(16) # P(tag1*four)
p.recv(1)

p.sendline(MESSAGE + zero + zero + zero + four)
p.sendline(b"")
tag3 = p.recv(16)
p.recv(1)

# print(tag1, tag2, tag3)
assert len(tag1) == len(tag2) == len(tag3) == 16
p.sendline(MESSAGE + zero + zero + three + xor(tag2, tag1))
p.sendline(tag3)

p.interactive()
