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
            for d in key:
                if key[d] == c:
                    cipher += d
        else:
            cipher += c
    return cipher

def decrypt(key, message):
    cipher = ""
    for c in message:
        if c in key:
            cipher += key[c]
        else:
            cipher += c
    return cipher

entrypoint = sys.argv[0][::-1].upper()
# entrypoint = "task/5d41402abc4b2a76b9719d911017c592.py"[::-1].upper()
print(entrypoint)
key = generate_key(entrypoint)
print(key)

FLAG = "bxciak{vicobpic}"

cipher = decrypt(key, FLAG)
print(cipher)
print(decrypt(key, encrypt(key, "abcdefg")))
