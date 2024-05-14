#!/usr/local/bin/python
import pickle
i = input()
print(i)
print(i.split()[0].encode())
pickle.loads(i.split()[0].encode())
