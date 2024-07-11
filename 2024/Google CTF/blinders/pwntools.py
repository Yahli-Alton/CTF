from pwn import *
from ecdsa.curves import NIST256p
from ecdsa.numbertheory import jacobi, square_root_mod_prime
from ecdsa.ellipticcurve import Point
from Crypto.Random import random
import hashlib

curve = NIST256p.curve

def H(id):
    a, b, p = curve.a(), curve.b(), curve.p()

    hash = hashlib.sha256(f'id={id}'.encode()).digest()
    x = int.from_bytes(hash, 'big')

    while True:
        y2 = (x**3 + a*x + b) % p
        if jacobi(y2, p) == 1: break
        x += 1

    y = square_root_mod_prime(y2, p)
    return Point(curve, x, y)

# Implements Blinders, a private set membership protocol.
class BlindersServer:
    def __init__(self, S):
        self.S = S
    
    def handle(self, client_eid):
        # 2.1. Generate a random secret key k
        k = random.randrange(0, NIST256p.order)
        # Compute eid1 = H(id1)^K, ..., eidn = H(idn)^K
        eids = [H(id) * k for id in self.S]
        # Compute doubly-encrypted identifier deid = eid^K
        deid = client_eid * k
        # Return (eid1, ..., eidn) and deid to P1
        return eids, deid

# Define the target address and port
host = 'blinders.2024.ctfcompetition.com'
port = 1337

i = 0
while True:
  connection = remote(host, port)
  # Define the input to send
  S = list(range(256))
  S.remove(random.getrandbits(8))
  server = BlindersServer(S)
  input_to_send = hashlib.sha256(','.join(map(str, server.S)).encode()).digest().hex()

  # Send the input
  connection.sendline("submit " + input_to_send)

  # Receive the response
  response = connection.recvall(timeout=2)

  # Print the response
  print(response.decode())
  print("!!!!!!!!!!!!!!!!!", i)
  if (b'Nope.' not in response):
    break
  i += 1

# Close the connection
connection.close()
