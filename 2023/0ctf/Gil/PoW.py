import multiprocessing
import hashlib
from itertools import product, repeat
import sys

characters = "abcdefghijklmnopqrstuvwxyz" + "abcdefghijklmnopqrstuvwxyz".upper() + "0123456789"

end = sys.argv[1]
sha = sys.argv[2]

def try_hashes(arg):
    first, end, sha = arg
    characters = "abcdefghijklmnopqrstuvwxyz" + "abcdefghijklmnopqrstuvwxyz".upper() + "0123456789"

    for c2, c3, c4 in product(characters, repeat=3):
        code = first + c2 + c3 + c4 + end
        encoding = hashlib.sha256(code.encode()).hexdigest()
        if encoding == sha:
            return first + c2 + c3 + c4

pool = multiprocessing.Pool(62)
ret = pool.map(try_hashes, zip(characters, repeat(end, 62), repeat(sha, 62)))
pool.close()
pool.terminate()
ret = list(filter(lambda x: x != None, ret))
print(ret[0])
