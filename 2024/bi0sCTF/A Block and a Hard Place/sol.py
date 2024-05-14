import pwn

p = pwn.remote("13.201.224.182", 31384)

p.recvuntil("secrets!")
p.recvline()
p.recvline()

board = []

for _ in range(20):
    board.append("")

    for _ in range(40):
        p.sendline(b"d")
        ret = p.recvline()
        print(ret)
        if b"Moved!" in ret:
            board[-1] += " "
        else:
            p.sendline(b"D")
            ret = p.recvline()
            print(ret)
            if b"Jumped over a wall!" in ret:
                board[-1] += "#"
            else:
                break
    
    board.append("")

    for _ in range(40):
        p.sendline(b"a")
        ret = p.recvline()
        print(ret)
        if b"Moved!" in ret:
            board[-1] = " " + board[-1]
        else:
            p.sendline(b"A")
            ret = p.recvline()
            print(ret)
            if b"Jumped over a wall!" in ret:
                board[-1] = "#" + board[-1]
            else:
                break
    
print(board)
