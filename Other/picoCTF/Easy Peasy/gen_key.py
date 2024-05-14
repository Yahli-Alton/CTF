import random


with open("key", "wb") as file:
    for _ in range(50000):
        file.write(random.randrange(0, 256).to_bytes(1, "big"))