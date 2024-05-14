def pad(ptext): ##DONE 
    if len(ptext)%48!=0:
        bitsToAdd =  48-(len(ptext)%48)
        add = ('0'*bitsToAdd)
        ptext+=add    
    elif len(ptext)==0:
        ptext=('0'*48)    
    return ptext


def substitution(ptext): ##DONE
    pattern=[6, 29, 17, 21, 32, 36, 33, 22, None, None, 0, 35, 19, 26, None, 18, 27, None, 28, 38, 25, 5, 11, 40, 37, 44, 16, 45, 42, 30, 34, 4, 20, 3, 41, 9, None, 14, 24, 2, 46, None, 43, 12, 13, 1, 8, 10]
    scrambled = ''
    for i in pattern:
        if i is None:
            scrambled += "0"
        else:
            scrambled += str(ptext[i])
    return scrambled


pt = "abcdef"
binPT=''
for chr in pt:
    binPT+='{0:08b}'.format(ord(chr)) 
binCText=''
binPT=pad(binPT)
for i in range(0,len(binPT),48):
    binCText+=substitution(binPT[i:i+48])
print('\nYour ciphertext is: \n' + binCText+'\n\n')

# 110100110000000100011101100101000000011110001111
# 101000011010110001011001000100001010000011000110
