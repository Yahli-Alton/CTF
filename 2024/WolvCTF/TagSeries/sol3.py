import pwn


# p = pwn.process(["python3", "chal3.py"])
p = pwn.remote("tagseries3.wolvctf.io", 1337)

p.recvline(keepends=False)
print(p.recvline(keepends=False))
p.sendline(bytes.fromhex(input()))
p.sendline(input().encode())
p.interactive()
