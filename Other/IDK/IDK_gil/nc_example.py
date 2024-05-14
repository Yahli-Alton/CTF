import subprocess

p = subprocess.Popen("nc chall.ctf.0ops.sjtu.cn 32226".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)

def write(message):
    p.stdin.write(message)
    p.stdin.flush()
    print(message.decode())

def readline():
    line = p.stdout.readline()
    print(line.decode())
    return line
