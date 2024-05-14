import pwn


MESSAGE = b"GET FILE: flag.txt" + b"\x00" * 14
assert len(MESSAGE) == 32
add = b"\x00" * 16

# p = pwn.process(["python3", "chal.py"])
p = pwn.remote("tagseries1.wolvctf.io", 1337)
print(p.recvline())
p.sendline(add)
p.sendline(add)

tag = p.recv(16)

p.sendline(MESSAGE + add)
p.sendline(tag)

p.interactive()
