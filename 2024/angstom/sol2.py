import hashlib
import secrets


# ADMIN_PASSWORD = hashlib.md5(
#     f'password-{secrets.token_hex}'.encode()
# ).hexdigest()
# print(f'password-{secrets.token_hex}')

for i in range(256 ** 6):
  if i % 10000000 == 0:
    print(i)
  password = f'password-<function token_hex at 0x7{i:06x}af0>'
  ADMIN_PASSWORD = hashlib.md5(
    f'password-{secrets.token_hex}'.encode()
  ).hexdigest()
  if ADMIN_PASSWORD.startswith('1797c2'):
    print(password)
    print(ADMIN_PASSWORD)


