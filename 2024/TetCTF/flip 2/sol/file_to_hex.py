import sys

with open(sys.argv[1], "rb") as file:
    print(file.read().hex())
    