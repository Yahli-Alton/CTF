# from Crypto.PublicKey import RSA
# import base64
# private_key = RSA.generate(2048)

# private_key = private_key.exportKey().decode("utf-8")
# print(private_key)
# private_bytes = base64.b64decode("\n".join(private_key.split("\n")[1:-1]))

# with open("test_rsa", "wb") as file:
#     file.write(private_bytes)
with open("test_rsa", "rb") as file:
    private_bytes = file.read()

start = 1
while start < len(private_bytes):
    print(start, bin(private_bytes[start]))
    length = private_bytes[start + 1]
    if length >> 7 == 1:
        length = int.from_bytes(private_bytes[start + 2: start + 2 + length - 128]) + length - 128
    print("length=", length)
    start += length + 2
