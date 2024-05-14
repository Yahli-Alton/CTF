import base64


with open("modified2.pem") as file:
    data = base64.b64decode(file.read())

with open("temp.bin", "wb") as file:
    file.write(data)

with open("modified4.pem") as file:
    mask = base64.b64decode(file.read())

print(data)
print(mask)
