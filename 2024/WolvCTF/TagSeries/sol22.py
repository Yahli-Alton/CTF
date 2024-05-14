import pwn


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

# p = pwn.process(["python3", "chal2.py"])
p = pwn.remote("tagseries2.wolvctf.io", 1337)
print(p.recvline())
p.sendline(MESSAGE + three + five) # a
p.sendline(b"")
tag1 = p.recv(16)
p.recv(1)

p.sendline(MESSAGE + three + four) # b
p.sendline(b"")
tag2 = p.recv(16)
p.recv(1)

p.sendline(MESSAGE + three + four + three + four) # b + four + five
p.sendline(b"")
tag3 = p.recv(16)
p.recv(1)

# print(tag1, tag2, tag3)
assert len(tag1) == len(tag2) == len(tag3) == 16
p.sendline(MESSAGE + three + five + three + xor(xor(four, tag1), tag2))
p.sendline(tag3)

p.interactive()
