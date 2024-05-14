with open("text.txt", "r") as file:
    data = file.read()

for i in range(26):
    for l in data:
        l = l.lower()
        if l.isalpha():
            print(chr((ord(l) - ord("a") + i) % 26 + ord("a")), end="")
        else:
            print(l, end="")
