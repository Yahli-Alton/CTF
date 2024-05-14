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
""".split("\n")

code = list(filter(lambda x: x != "", code))

codes = ["\n".join(code[::2]), "\n".join(code[1::2])]


new_codes = ["", ""]

subs = [
{
    "r": "d",
    "h": "e",
    "j": "f",
    
    "k": "i",
    "a": "m",
    "s": "p",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
    "": "",
},
{

}
]

for i in range(2):

    for l in codes[i]:
        if not l.isalpha():
            new_codes[i] += l
        elif l in subs[i]:
            new_codes[i] += subs[i][l]
        else:
            new_codes[i] += f"[{l}]"

for a, b in zip(*[code.split("\n") for code in new_codes]):
    print(a)
    print(b)
