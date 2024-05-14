import sys
import os
from Crypto.Cipher import AES

MESSAGE = b"GET: flag.txt"
QUERIES = []
BLOCK_SIZE = 16
KEY = os.urandom(BLOCK_SIZE)
RANDOM_IV = os.urandom(BLOCK_SIZE)


def xor(var, key):
    return bytes(a ^ b for a, b in zip(var, key))


def oracle(message: bytes) -> bytes:
    aes_cbc = AES.new(KEY, AES.MODE_CBC, RANDOM_IV)
    # x = aes_cbc.encrypt(message)[-BLOCK_SIZE:]
    x = aes_cbc.encrypt(message)
    return x


def main():
    for _ in range(4):
        command = sys.stdin.buffer.readline().strip()
        tag = sys.stdin.buffer.readline().strip()

        if command in QUERIES:
            print(b"Already queried")
            continue

        if len(command) % BLOCK_SIZE != 0:
            print(b"Invalid length")
            continue

        result = oracle(command + len(command).to_bytes(16, "big"))
        if command.startswith(MESSAGE) and result[-BLOCK_SIZE:] == tag and command not in QUERIES:
            with open("flag.txt", "rb") as f:
                sys.stdout.buffer.write(f.read())
                sys.stdout.flush()
        else:
            QUERIES.append((command, result))
            assert len(result[-BLOCK_SIZE:]) == BLOCK_SIZE
            sys.stdout.buffer.write(result[-BLOCK_SIZE:] + b"\n")
            sys.stdout.flush()

    print(QUERIES)

if __name__ == "__main__":
    main()
