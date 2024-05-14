# with open("test.bin", "wb") as file:
#     file.write("àªª".encode("charmap"))

# with open("test.bin", "rb") as file:
#     print(file.read().decode("utf-8"))

with open("test.bin", "w") as file:
    file.write(f"hi{chr(127)}hello")

