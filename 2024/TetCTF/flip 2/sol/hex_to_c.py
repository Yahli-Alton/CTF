import sys

h = sys.argv[1]

print("{" + ",".join("0x" + s1 + s2 for s1, s2 in zip(h[::2], h[1::2])) + "}")
