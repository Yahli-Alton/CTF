import base64

plaintext = "A string of text can be encrypted by applying the bitwise XOR operator to every character using a given key"
key = "wctf{}" # I have lost the key!

def byte_xor(ba1, ba2):
    return bytes([_a ^ _b for _a, _b in zip(ba1, ba2)])

ciphertext_b64 = byte_xor([54, 67, 7, 18, 9, 49, 94, 53, 127, 6, 83, 127, 18, 85, 10, 49, 86, 80, 19, 49, 109, 27, 58, 108, 85, 56, 6, 15], plaintext.encode())
print(ciphertext_b64)

ciphertext_decoded = base64.b64decode("NkMHEgkxXjV/BlN/ElUKMVZQEzFtGzpsVTgGDw==")


print(ciphertext_decoded)