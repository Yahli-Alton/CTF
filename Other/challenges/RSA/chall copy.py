from Crypto.Util.number import getStrongPrime, bytes_to_long

flag = b"srdnlen{?????????????????????????????????????????????}"

nbits = 512
e = 0x10001
r, s, a = [getStrongPrime(nbits, e=e) for _ in range(3)]

rsa = r * s * a
r_s_a = r + s + a
rs_ra_sa = r * s + r * a + s * a

flag_enc = pow(bytes_to_long(flag), e, rsa)

print(f"{flag_enc = }")
print(f"{rsa = }")
print(f"{r_s_a = }")
print(f"{rs_ra_sa = }")

x = (r - 1) * (s - 1) * (a - 1)
print((r - 1) * (s - 1) * (a - 1))
print(rsa - rs_ra_sa + r_s_a - 1)
d = pow(e, -1, x)
print(pow(flag_enc, d, rsa).to_bytes(200, "big"))

# (r - 1)(s - 1)(a - 1) = (rs - r - s + 1)(a - 1) = rsa - ra - sa + a - rs + r + s - 1 = rsa - rs - ra - sa + r + s + a - 1
