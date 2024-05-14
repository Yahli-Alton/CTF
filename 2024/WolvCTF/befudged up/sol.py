from befunge2 import read_in, befunge
import string

chars = string.ascii_letters + string.digits + string.punctuation

flag = "wctf{pr30ccup13d_w1+h_wh3+h3r_0r_n0t_1"
prog = read_in('prog.befunge')

while True:
    lengths = []
    for l in chars:
        copy = [l.copy() for l in prog]
        lengths.append((befunge(copy, flag + l + "\n"), l))
    
    print(sorted(lengths))
    flag += max(lengths, key=lambda x: x[0])[1]
    print(flag)
