import binascii

encoded = binascii.unhexlify("06c3abc49dc4b443ca9d65c8b0c386c4b0c99fc798c2bdc5bccb94c68c37c296ca9ac29ac790c4af7bc585c59d").decode()

base = 727
encoded_value = 0

for char in encoded:
    encoded_value = encoded_value * base + ord(char)

decoded_string = ""
while encoded_value > 0:
    decoded_string = chr(encoded_value % 256) + decoded_string
    encoded_value //= 256

print(decoded_string)
