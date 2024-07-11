# write me a code that brute force flag.txt (change it to a, than b, than c) then run xor.elf and check if the output is equal to the string "hello"

import os
import subprocess
import string

result = "Encrypted flag: 21 0F 0A 15 3F 29 29 6B 13 1C 2C 74 7D 30 5E 50 6E 29 2B 24 19 0C 67 7D 05 54 7C 34 5C 13 32 42 29 62 7B 0F 4E"

def xor(data, key):
    return ''.join(chr(ord(x) ^ ord(y)) for (x, y) in zip(data, key))

def main():
  while True:
      with open('flag.txt', 'r') as f:
          flag = f.read().strip()
      for c in string.ascii_lowercase + string.ascii_uppercase + string.digits + string.punctuation + ' ':
          new_flag = flag + c
          with open('flag.txt', 'w') as f:
              f.write(new_flag)

          output = subprocess.check_output(['./xor']).strip()
          i = len(output) - 2
          print(str(output[i: i + 2])[2:-1])
          if str(output[i: i + 2])[2:-1] == result[i: i + 2]:
              print("found!!!!" + c)
              break
        
main()