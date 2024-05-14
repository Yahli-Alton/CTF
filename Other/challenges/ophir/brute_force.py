import pwn
import string
import base64

p = pwn.process("./MarGamGam_ECB_PENDING_CHAL.exe", raw=False)

flag = b""

for i in range(16):
    m = b"." * (15 - len(flag)) + b"\n"
    for l in string.ascii_letters + string.digits + string.punctuation:
        m += b"." * (15 - len(flag)) + flag + l.encode("utf-8") + b"\n"
    p.send(m)

    p.recvuntil(b"is: ")
    correct = base64.b64decode(p.recvline(keepends=False))[:16]

    l = None

    for x in string.ascii_letters + string.digits + string.punctuation:
        p.recvuntil(b"is: ")
        new = base64.b64decode(p.recvline(keepends=False))[:16]
        if correct == new:
            l = x

    assert l is not None

    flag += l.encode()
    print(flag)

flag2 = b""

for i in range(16):
    m = b"." * (15 - len(flag2)) + b"\n"
    for l in string.ascii_letters + string.digits + string.punctuation:
        m += b"." * (15 - len(flag2)) + flag + flag2 + l.encode("utf-8") + b"\n"
    p.send(m)

    p.recvuntil(b"is: ")
    correct = base64.b64decode(p.recvline(keepends=False))[16:32]

    l = None

    for x in string.ascii_letters + string.digits + string.punctuation:
        p.recvuntil(b"is: ")
        new = base64.b64decode(p.recvline(keepends=False))[16:32]
        if correct == new:
            l = x

    assert l is not None

    flag2 += l.encode()
    print(flag2)

print(flag + flag2)
