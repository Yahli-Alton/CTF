

def parse(letter):
    byte = 0
    while letter != b"":
        if letter.startswith(b"Swift"):
            byte += 1
            letter = letter[5:]
        else:
            letter = letter[6:]
        byte *= 2
    byte //= 2
    return byte

def parse_sentence(line):
    code = line.removesuffix(b"\n").split(b" ")
    decoded = []
    for letter in code:
        byte = parse(letter)
        decoded.append(byte)
    return decoded


decoded = parse_sentence(b"TaylorTaylorTaylorTaylorTaylor TaylorTaylorSwiftTaylorTaylor TaylorSwiftTaylorTaylorTaylor TaylorSwiftSwiftTaylorTaylor SwiftTaylorTaylorTaylorTaylor SwiftTaylorSwiftTaylorTaylor SwiftSwiftTaylorTaylorTaylor TaylorTaylorTaylorTaylorSwift TaylorTaylorTaylorSwiftSwift TaylorTaylorSwiftTaylorSwift TaylorTaylorSwiftSwiftSwift TaylorSwiftTaylorTaylorSwift TaylorSwiftTaylorSwiftSwift TaylorSwiftSwiftTaylorSwift TaylorSwiftSwiftSwiftSwift SwiftTaylorTaylorTaylorSwift SwiftTaylorTaylorSwiftSwift SwiftTaylorSwiftTaylorSwift SwiftTaylorSwiftSwiftSwift SwiftSwiftTaylorTaylorSwift TaylorTaylorTaylorSwiftTaylor TaylorTaylorSwiftSwiftTaylor TaylorSwiftTaylorSwiftTaylor TaylorSwiftSwiftSwiftTaylor SwiftTaylorTaylorSwiftTaylor SwiftTaylorSwiftSwiftTaylor\n")
new_decoded = [None] * len(decoded)

data = [
    [0],
    [0, 1],
    [0, 1, 2],
    [0, 1, 3, 2],
    [0, 4, 1, 3, 2],
    [0, 4, 1, 3, 5, 2],
    [0, 4, 1, 3, 5, 2, 6],
    [0, 4, 1, 3, 5, 7, 2, 6],
    [0, 4, 8, 1, 3, 5, 7, 2, 6],
    [0, 4, 8, 1, 3, 5, 7, 9, 2, 6],
    [0, 4, 8, 1, 3, 5, 7, 9, 2, 6, 10],
    [0, 4, 8, 1, 3, 5, 7, 9, 11, 2, 6, 10],
    [0, 4, 8, 12, 1, 3, 5, 7, 9, 11, 2, 6, 10],
    [0, 4, 8, 12, 1, 3, 5, 7, 9, 11, 13, 2, 6, 10],
    [0, 4, 8, 12, 1, 3, 5, 7, 9, 11, 13, 2, 6, 10, 14],
    [0, 4, 8, 12, 1, 3, 5, 7, 9, 11, 13, 15, 2, 6, 10, 14],
    [0, 4, 8, 12, 16, 1, 3, 5, 7, 9, 11, 13, 15, 2, 6, 10, 14],
    [0, 4, 8, 12, 16, 1, 3, 5, 7, 9, 11, 13, 15, 17, 2, 6, 10, 14],
    [0, 4, 8, 12, 16, 1, 3, 5, 7, 9, 11, 13, 15, 17, 2, 6, 10, 14, 18],
    [0, 4, 8, 12, 16, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 2, 6, 10, 14, 18],
    [0, 4, 8, 12, 16, 20, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 2, 6, 10, 14, 18],
    [0, 4, 8, 12, 16, 20, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 2, 6, 10, 14, 18],
    [0, 4, 8, 12, 16, 20, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 2, 6, 10, 14, 18, 22],
    [0, 4, 8, 12, 16, 20, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 2, 6, 10, 14, 18, 22],
    [0, 4, 8, 12, 16, 20, 24, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 2, 6, 10, 14, 18, 22],
    [0, 4, 8, 12, 16, 20, 24, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 2, 6, 10, 14, 18, 22]
]

order = data[len(decoded) - 1]

for i, letter in enumerate(decoded):
    new_decoded[order[i]] = letter
message = b""
for letter in new_decoded:
    message += chr(ord("A") + letter).encode("utf-8")

print(message)
# while True:
#     done = False
#     line = b""
#     while not line.startswith(b"Decrypt"):
#         line = readline()
#         if line.startswith(b"Congratulations!"):
#             done = True
#             break
#     if done:
#         break

#     decoded = parse_sentence(line.removeprefix(b"Decrypt "))
#     message = b""
#     for letter in decoded:
#         message += chr(ord("A") + decoder.index(letter)).encode("utf-8")
#     write(message + b"\n")
