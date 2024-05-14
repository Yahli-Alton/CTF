p = 22164857548872153350792863287126662739346790382724883568469825455088689119474784066358095106688985128245096556482593315395509994112330842037731896432716074587916002372658113733392392830971642878227300074751441475110802528284293674049241201403401496426351459462195992798867652944173025546970871261462401766951

mat = []
vec = []

def read_int(f):
    i = []
    new = f.read(1)
    while new.isdigit():
        i.append(new)
        new = f.read(1)
    return int("".join(i))

with open("output.py", "r") as file:
    file.read(2)

    for i in range(100):
        print(i)
        mat.append([0] * 100)
        vec.append(0)

        for a in range(1000):
            # x = read_int(file)
            # vec[-1] -= x
            vec[-1] -= read_int(file)
            file.read(1)
        file.read(2)

        bb = []
        cc = []

        for b in range(1000):
            bb.append(read_int(file))
            file.read(1)
        file.read(2)
        for c in range(1000):
            cc.append(read_int(file))
            file.read(1)
        file.read(1)

        for b, c in zip(bb, cc):
            mat[-1][b * 10 + c] += 1

        x = read_int(file)
        vec[-1] += x
        vec[-1] = vec[-1] % p
        file.read(2)

mat = matrix(GF(p), mat)
vec = vector(GF(p), vec)
print(mat)
print(vec)
sol = mat.solve_right(vec)
print(sol)
