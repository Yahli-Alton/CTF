from Crypto.PublicKey import RSA
from Crypto.Cipher import PKCS1_OAEP
import base64
from Crypto.Util.number import bytes_to_long, long_to_bytes

key = RSA.generate(1024)
with open("test.pem", "w") as file:
    file.write(key.exportKey(format="PEM").decode())

print(f"{key.e=}")
print(f"{key.d=}")
print(f"{key.n=}")
print(f"{key.p=}")
print(f"{key.q=}")

pem = key.exportKey(format="PEM")
pem = pem[pem.index(b"\n") + 1:pem.rindex(b"\n")]

with open("test.bin", "wb") as file:
    file.write(base64.b64decode(pem))

cipher = PKCS1_OAEP.new(key)
ciphertext = cipher.encrypt(b"hello, I a asfhgjksdjgbdfjghdkflgkldkgfhdkgjh")

key = RSA.construct((key.n, key.e, key.d))
cipher2 = PKCS1_OAEP.new(key)

print(cipher2.decrypt(ciphertext))
