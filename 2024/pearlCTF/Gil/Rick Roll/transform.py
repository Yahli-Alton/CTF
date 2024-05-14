mapping = {
    "b": "i"
}


with open("text.txt", "r") as file:
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
