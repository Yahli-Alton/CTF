with open("ciphertext", "rb") as file:
    ct = file.read()

length = 34
possibilities = [set(range(256)) for _ in range(length)]
for i in range(0, len(ct), length):
    current = ct[i: i + length]
    for j in range(length):
        possibilities[j].discard(current[j] ^ b"\n"[0])
        # possibilities[j].discard(current[j] - b"\n"[0])

print(length)
print(possibilities)
print("".join([chr(list(possibilities[i])[0]) for i in range(length - 1)]))
