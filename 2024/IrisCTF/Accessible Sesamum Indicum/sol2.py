from itertools import product

pin = "000"
combinations = {"".join(start): list("0123456789abcdef") for start in product("0123456789abcdef", repeat=3)}

for _ in range(65536):
    pin += combinations[pin[-3:]].pop()

with open("pin.txt", "w") as file:
    file.write((pin + "\n") * 16)
