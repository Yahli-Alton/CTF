output = ",K6}Uq434q-s4p's4&dr?"
flag = "flag{?????????????}"
key = ""
guesskey = "jmpM4?n"

print(len(output))

flag_len = 28
key_len = 7
s = 0
for i in range(len(flag)):
    s = ord(flag[i])
    for j in range(len(key)):
        s ^= ord(key[j])
    key += chr(s ^ ord(output[i]))

print(key)