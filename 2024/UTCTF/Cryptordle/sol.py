import pwn


# p = pwn.process(["python3", "main.py"])
p = pwn.remote("betta.utctf.live", 7496)

for _ in range(3):
    p.send(b"aaaaa\nbaaaa\nabaaa\naabaa\naaaba\n")

    res = []
    for _ in range(5):
        p.recvline()
        res.append(int(p.recvline(keepends=False)))
    print(res)

    word = []

    for i in range(4):
        word.append((-res[0] * pow(res[i + 1] - res[0], -1, 31)) % 31)
    
    mult = 1

    for l in word:
        mult *= l

    word.append((-res[0] * pow(mult, -1, 31)) % 31)
    print(word)

    for l in word:
        assert 0 <= l <= 26
    
    print("".join([chr(l + ord("a")) for l in word]))
    p.sendline("".join([chr(l + ord("a")) for l in word]).encode())
    p.recvline()
    print(p.recvline())

p.interactive()
