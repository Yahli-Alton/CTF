import sys
import os
import subprocess
import tempfile

OFFSET_PLAINTEXT = 0x4010
OFFSET_KEY = 0x4020

def main():
    key = os.urandom(16)
    with open("encrypt", "rb") as f:
        content = bytearray(f.read())

    # input format: hex(plaintext) i j
    # i_str = input()
    # i = int(i_str)
    # assert 0 <= i < len(content)

    # update key, plaintext, and inject the fault
    content[OFFSET_KEY:OFFSET_KEY + 16] = key
    content[OFFSET_PLAINTEXT:OFFSET_PLAINTEXT + 16] = bytes(16)

    tmpfile = tempfile.NamedTemporaryFile(delete=True)
    with open(tmpfile.name, "r+b") as f:
        f.write(content)
    os.chmod(tmpfile.name, 0o775)

    for i in range(4096, 9916):
    # for i in range(4530, 4539):
        if i % 100 == 0:
            print(i)

        with open(tmpfile.name, "r+b") as f:
            f.seek(i)
            original = f.read(1)[0]

        for j in range(8):
            with open(tmpfile.name, "r+b") as f:
                f.seek(i)
                f.write(bytes([original ^ (1 << j)]))

            # execute the modified binary
            try:
                ciphertext = subprocess.check_output(tmpfile.name, timeout=1.0)
            except Exception as err:
                ciphertext = b""

            # please guess the AES key
            if key in ciphertext:
                print(i, j)
        
        with open(tmpfile.name, "r+b") as f:
            f.seek(i)
            f.write(bytes([original]))

main()
