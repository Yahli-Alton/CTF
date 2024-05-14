with open("site.html", "rb") as file:
    data = file.read()

try:
    while True:
        data = data[data.index(b"i.ppy.sh"):]
        print(data[:data.index(b"\\&")].decode())
        data = data[1:]
except ValueError:
    pass
