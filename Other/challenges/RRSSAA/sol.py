with open("output.txt", "r") as file:
    data = file.read()

N = int(data[:data.index(" ")], 16)
