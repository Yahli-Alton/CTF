code = """
kassth wmos dw z

wptqfw fcgh64 eu p64



i = "u09gfxnbs000wp83crixznixznujurqqvt8zvn80l0patrq9"

i = d64.p64giecgi(h).rhgqrh()

g = "ecqktoww!\p"

rhj r(h, g=0.2):

    jqf f mp h:

        svkbw(g, gbg='', jnivl=vfxi)

        z.goigd(g)



t(e+s)
"""

new_code = ""

sub = {
    "f": ["r", "b"],
    "h": ["e"],
    "j": ["f"],
    "m": ["i"],
    "p": ["n", "m"],
    "q": ["o"],
    "r": ["d"],
    "c": ["a"],
    "g": ["s"],
    "w": ["i", "t"],
    "t": ["p"],
    "e": ["a"],
    "u": ["s"]
}

for l in code:
    if not l.isalpha():
        new_code += l
    elif l in sub:
        new_code += "/".join(sub[l])
    else:
        new_code += f"[{l}]"

print(new_code)
