code = """kassth wmos dw z

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

subs = [
{
    "r": "d",
    "j": "f",

    "k": "i",
    "s": "p",
    "t": "r",

    "w": "i",
    "t": "p",
    "f": "r",

    "": "",
    "": "",
},
{
    "h": "e",

    "a": "m",
    "s": "o",
    "h": "t",

    "p": "m",
    "q": "o",
    "w": "t",

    "": "",
    "": "",
    "": "",
    "": "",
}
]

new_code = ""

for i, l in enumerate(code):
    sub = subs[i % 2]
    if not l.isalpha():
        new_code += l
    elif l in sub:
        new_code += sub[l]
    else:
        new_code += f"[{l}]"

print(new_code)
