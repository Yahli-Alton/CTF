KEY_LEN = 161

with open("ct.txt") as file:
    ct = file.read()

with open("intro.txt") as file:
    intro = file.read()

ct_ = "".join(filter(str.isalpha, ct))
intro_ = "".join(filter(str.isalpha, intro))

ct_ = ct_.lower()
intro_ = intro_.lower()

key = [(ord(l1) - ord(l2)) % 26 for l1, l2 in zip(ct_, intro_)]
print(len(ct_))
print(len(key))

ct_decoded = ""

for i in range(0, len(ct_), 161):
    ct_decoded += "".join(chr((ord(l) - ord("a") - offset) % 26 + ord("a")) for l, offset in zip(ct_[i:], key))
    ct_decoded += ct_[i + len(key): i + KEY_LEN]

for i, l in enumerate(ct):
    if not l.isalpha() and i % 161 < KEY_LEN:
        ct_decoded = ct_decoded[:i] + l + ct_decoded[i:]

print(ct_decoded)
