import pwn


p = pwn.remote("krusty-katering.ctf.umasscybersec.org", 1337)

def parse_time(time):
    int_time = 0
    while time != "":
        num = ""
        while time[0].isdigit():
            num += time[0]
            time = time[1:]
        if time[0] == "s":
            int_time += int(num)
        elif time[0] == "m":
            int_time += int(num) * 60
        elif time[0] == "h":
            int_time += int(num) * 60 * 60
        elif time[0] == "d":
            int_time += int(num) * 60 * 60 * 24
        else:
            print("???", time)
        time = time[1:]
    return int_time

precision = 10

for day in range(5):
    cooks = [0] * 10
    p.recvuntil(b"beat: ")
    print("time to beat:", parse_time(p.recvline(keepends=False).decode()))

    for i in range(1000 // precision):
        min_cook = min(range(10), key=lambda x: cooks[x])
        p.send((str(min_cook + 1).encode("utf-8") + b"\n") * precision)
        
        for _ in range(precision):
            p.recvuntil(b"cook: ")
            time = p.recvline(keepends=False)
            int_time = parse_time(time.decode())
            cooks[min_cook] += int_time

        print(min(cooks), max(cooks), sum(cooks) // 10)

    print(cooks)
    print(p.recvline())
    print(p.recvline())
    print(p.recvline())
    print(p.recvline())
    print(p.recvline())
    print(p.recvline())
    print(p.recvline())
p.interactive()

