import os
import py7zr
import hashlib

curr = "root.7z"

while True:
    # print(curr)
    with py7zr.SevenZipFile("files/" + curr, 'r', password=hashlib.md5(curr.encode()).hexdigest()) as archive:
        archive.extractall(path="files")
    os.remove("files/" + curr)
    # input()

    files = os.listdir("files")
    zips = list(filter(lambda x: x[-3:] == ".7z", files))
    txts = list(filter(lambda x: x[-4:] == ".txt", files))
    curr = min(zips, key=lambda x: int(x[x.rindex("_") + 1:-3]))
    # print(zips)
    if len(zips) == 0:
        break

    for txt in txts:
        with open("files/" + txt, "r") as file:
            data = file.read()
        print(txt, data)
        if not data.startswith("UMDCTF"):
            os.remove("files/" + txt)
