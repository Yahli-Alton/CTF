import pwn


def xor(var, key):
    return bytes(a ^ b for a, b in zip(var, key))


# p = pwn.process(["python3", "server.py"])
p = pwn.remote("blocked1.wolvctf.io", 1337)

wanted = b"doubledelete" + b"\x00" * 4
assert len(wanted) == 16

p.recvuntil(b"as: ")
username = p.recvline(keepends=False).decode()
# print(username)
msg = f'password reset: {username}'.encode()
if len(msg) % 16 != 0:
    msg += b'\0' * (16 - len(msg) % 16)

p.recvuntil(b"> ")
p.send(b"2\n")
ret = bytes.fromhex(p.recvline(keepends=False).decode())
iv = ret[:16]
ciphertext = ret[16:]

new_ciphertext = xor(xor(wanted, msg[16:]), ciphertext[:16]) + ciphertext[16:]

# print(ciphertext)
# print(new_ciphertext)

assert len(new_ciphertext) == 32
p.send(b"1\n" + (b"\x00" * 16 + new_ciphertext).hex().encode() + b"\n")
p.interactive()


# p.send(b"1\n" + (b"\x00" * 32).hex().encode() + first_ciphertext.hex().encode() + b"\n")
# p.recvuntil(b", ")
# ret = bytes.fromhex(p.recvline(keepends=False).decode())
# iv = ret[16:32]
# first_msg = ret[32:]




# print(ciphertext)
# print(msg)
# print(xor(msg[16:], ciphertext[:16]))
# p.send(b"1\n" + (b"\x00" * 16 + ciphertext[16:]).hex().encode() + b"\n")
