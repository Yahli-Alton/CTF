import subprocess

print(subprocess.check_output(["ncat", "--ssl", "diffhell-0.chals.kitctf.de", "1337"], timeout=0.1))