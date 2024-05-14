with open("priv_bytes.bin", "rb") as file:
    encoded = file.read()
with open("ciphertext_message", "rb") as file:
    txt = int.from_bytes(file.read(), "big")

numbers = []
start = 33
while start < len(encoded):
    print(start, bin(encoded[start]))
    length = encoded[start + 1]
    start += 2
    if length >> 7 == 1:
        temp = int.from_bytes(encoded[start: start + length - 128])
        start += length - 128
        length = temp

    print("length=", length)
    
    numbers.append(int.from_bytes(encoded[start: start + length], "big"))
    start += length

print(numbers)

p = numbers[-5]
q = numbers[-4]

n = q * p
e = 0x10001
d = pow(e, -1, (p - 1) * (q - 1))
print(pow(txt, d, n).to_bytes(100, "big"))
