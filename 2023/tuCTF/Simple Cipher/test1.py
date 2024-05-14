# import subprocess

# p = subprocess.Popen(["nc", "chal.tuctf.com", "30004"], stdin=subprocess.PIPE, stdout=subprocess.PIPE)

# def readuntil(start):
#     line = b""
#     while not line.startswith(start):
#         line = readline()
#     return line

# def readline():
#     line = p.stdout.readline()
#     print(line.decode(), end="")
#     return line

# def write(message):
#     p.stdin.write(message)
#     p.stdin.flush()
#     # print(message.decode(), end="")

# message = b""
# for bit in range(48):
#     message += b"1\n" + (1 << bit).to_bytes(6, "big") + b"\n000000000000\n"

# write(message)

# pattern = [None] * 48

# for bit in range(48):
#     readuntil(b"Your")
#     cipher = readline()
#     if int(cipher, 2).bit_count() == 1:
#         pattern[int(cipher, 2).bit_length() - 1] = bit
#         print(pattern)
#     else:
#         print(bit)

# print(f"{pattern=}")

def pad(ptext): ##DONE 
    if len(ptext)%48!=0:
        bitsToAdd =  48-(len(ptext)%48)
        add = ('0'*bitsToAdd)
        ptext+=add    
    elif len(ptext)==0:
        ptext=('0'*48)    
    return ptext


def substitution(ptext): ##DONE
    pattern=[41, 18, 30, 26, 15, 11, 14, 25, None, None, 47, 12, 28, 21, None, 29, 20, None, 19, 9, 22, 42, 36, 7, 10, 3, 31, 2, 5, 17, 13, 43, 27, 44, 6, 38, None, 33, 23, 45, 1, None, 4, 35, 34, 46, 39, 37]
    scrambled = ''
    for i in pattern:
        if i is None:
            scrambled += "0"
        else:
            scrambled += str(ptext[i])
    return scrambled



# message = b"1\n" + (1).to_bytes(6, "big") + b"\n000000000000\n"

# write(message)

# readuntil(b"Your")
# cipher = readline()[:-1].decode("utf-8")
cipher  ='000000000010000000000000000000000000000000000000'

binPT="0" * 47 + "1"
binCText = ''
for i in range(0,len(binPT),48):
    binCText+=substitution(binPT[i:i+48])
print(f"{cipher  =}")
print(f"{binCText=}")