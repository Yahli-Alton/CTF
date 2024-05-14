import z3

seed = z3.Int("x")

def next_long():
    global seed
    m = 1 << 52
    c = 4164880461924199
    a = 2760624790958533
    seed = (a *seed+ c) % m
    return seed

# for _ in range(26):
#     next_long()

z3.solve(*[next_long() > (9 * (1 << 52)//10) for _ in range(1)])
