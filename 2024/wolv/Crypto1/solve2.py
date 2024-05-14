import time
import random
import sys

for i in range(256):
  random.seed(i)
  if (189 ^ random.getrandbits(8)) == ord("w"):
    print(i)
