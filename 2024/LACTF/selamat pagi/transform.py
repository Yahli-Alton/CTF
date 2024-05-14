mapping = {
    "k": "a",
    "e": "i",
    "f": "n",

    "w": "s", # might be k

    "q": "d", # from adalah
    "b": "l",
    "x": "h",

    "c": "p", # from pesan
    "z": "e",

    "l": "b",
    "t": "r",

    "s": "g",

    "i": "t",
    "u": "k",

    "v": "c", # from CTF
    "m": "f",

    "d": "m",
    "j": "i"
}


with open("message.txt", "r") as file:
    m = file.read()

m2 = ""

for l in m:
    l = l.lower()
    if l not in mapping:
        if l in "abcdefghijklmnopqrstuvwxyz":
            m2 += f"[{l}]"
        else:
            m2 += l
    else:
        m2 += mapping[l]

print(m)
print()
print(m2)
