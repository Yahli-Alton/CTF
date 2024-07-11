from pwn import *

def inverse_bytes(my_bytes):
  return bytes(i ^ 0xff for i in my_bytes)

def to_blocks(my_bytes):
  return [my_bytes[i:i+8] for i in range(0, len(my_bytes), 8)]

context.log_level = "error"

for j in range(100):
  r = remote("desfunctional.2024.ctfcompetition.com", 1337)
  r.recvuntil(b"flag")
  r.sendline(b"1")
  r.recvline()
  challenge_hex = r.recvline().strip().decode()
  inverse_challenge_hex = inverse_bytes(bytes.fromhex(challenge_hex)).hex()
  for i in range(10):
    r.recvuntil(b"flag")
    r.sendline(b"2")
    r.sendlineafter(b"(hex) ct: ", inverse_challenge_hex.encode())
    result = r.recvline().strip()
  result_bytes = bytes.fromhex(result.decode())
  result_blocks = to_blocks(result_bytes)
  inverse_result = inverse_bytes(result_bytes)
  inverse_result_blocks = to_blocks(inverse_result)
  new_block = [inverse_result_blocks[0]] + result_blocks[1:]
  combined = b"".join(new_block)
  challenge_pt = combined.hex().encode()
  r.recvuntil(b"flag")
  r.sendline(b"3")
  r.sendlineafter(b"(hex) pt: ", challenge_pt)
  print(r.recvline())
  r.close()