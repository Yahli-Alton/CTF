import time as t

import base64 as b64



i = "u09gfxnbs000wp83crixznixznujurqqvt8zvn80l0patrq9"

i = b64.b64decode(i).decode()

g = "ecqktoww!\p"

def d(h, g=0.2):

    for f in h:

        print(g, end='', flush=True)

        t.sleep(g)



d(i+g)
