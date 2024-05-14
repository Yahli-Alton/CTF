def substitution(ptext): ##DONE
    pattern=[41, 18, 30, 26, 15, 11, 14, 25, None, None, 47, 12, 28, 21, None, 29, 20, None, 19, 9, 22, 42, 36, 7, 10, 3, 31, 2, 5, 17, 13, 43, 27, 44, 6, 38, None, 33, 23, 45, 1, None, 4, 35, 34, 46, 39, 37]
    # for i, j in enumerate(pattern):
    #     if j is None:
    #         print(i)
    #         assert FLAG[i] == "0"

    scrambled = ''
    for i in pattern:
        if i is None:
            scrambled += "0"
        else:
            scrambled += str(ptext[i])
    return scrambled

def unscramble(scrambled_text): ##DONE
    pattern=[41, 18, 30, 26, 15, 11, 14, 25, None, None, 47, 12, 28, 21, None, 29, 20, None, 19, 9, 22, 42, 36, 7, 10, 3, 31, 2, 5, 17, 13, 43, 27, 44, 6, 38, None, 33, 23, 45, 1, None, 4, 35, 34, 46, 39, 37]
    unscrambled_text=''
    for i in range(len(pattern)):
        if i in pattern:
            unscrambled_text+=str(scrambled_text[pattern.index(i)])
        else:
            # print(i)
            unscrambled_text += "0"
    return unscrambled_text

def pad(ptext): ##DONE 
    if len(ptext)%48!=0:
        bitsToAdd =  48-(len(ptext)%48)
        add = ('0'*bitsToAdd)
        ptext+=add    
    elif len(ptext)==0:
        ptext=('0'*48)    
    return ptext

def xor(ptext,key): ##DONE 
    text=''
    for i in range(0,48):
        text+=str(int(ptext[i])^int(key[i]))
    return text
    
FLAG = """11001010000100010010110100101011111001011100101110010010000101011011111111101000111001111101110110110000000
             11001000010011111111101010100111100110001000000110000100001001111000110010101110101111011111000110101101001101
             00010010000011111100001100100100001100110100100100100110111001001010101""".replace("\n", "").replace(" ", "")

# encrypt
pt = "TUCTF{"
binPT=''
for _chr in pt:
    binPT+='{0:08b}'.format(ord(_chr)) 
binCText=''
binPT=pad(binPT)
for i in range(0,len(binPT),48):
    binCText+=substitution(binPT[i:i+48])

# get key
flag_start = FLAG[:48]
binKey = xor(flag_start, binCText)
print(f"{binKey=}")
print(hex(int(binKey, 2))[2:].upper())

# decrypt
ctext = FLAG.strip()
binPText=''
for i in range(0,len(ctext),48):
    binPText+=unscramble(xor(ctext[i:i+48],binKey))
decodedMessage=''
for i in range(0,len(binPText),8):
    decodedMessage+=str(chr(int(binPText[i:i+8],2)))
print('\nHere is your plaintext back: \n ' + decodedMessage+'\n\n')
