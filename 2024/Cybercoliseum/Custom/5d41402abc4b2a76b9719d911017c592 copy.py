import string
import random
import sys

def generate_key(entrypoint):
    random.seed(entrypoint)
    letters = list(string.ascii_lowercase)
    key = list(letters)
    random.shuffle(key)
    return dict(zip(letters, key))

def encrypt(key, message):
    cipher = ""
    for c in message:
        if c in key:
            cipher += key[c]
        else:
            cipher += c
    return cipher

entrypoint = sys.argv[0][::-1].upper()
key = generate_key(entrypoint)

FLAG = "CODEBY{REDACTED}".lower()

cipher = encrypt(key, FLAG)

with open('encrypted.txt', 'w') as file:
    file.write(cipher)
