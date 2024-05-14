from Crypto.Cipher import AES
from Crypto.Util.Padding import pad, unpad
import hashlib
import pwn


def is_pkcs7_padded(message):
    padding = message[-message[-1]:]
    return all(padding[i] == len(padding) for i in range(0, len(padding)))


def decrypt_flag(shared_secret: int, iv: str, ciphertext: str):
    # Derive AES key from shared secret
    sha1 = hashlib.sha1()
    sha1.update(str(shared_secret).encode('ascii'))
    key = sha1.digest()[:16]
    # Decrypt flag
    ciphertext = bytes.fromhex(ciphertext)
    iv = bytes.fromhex(iv)
    cipher = AES.new(key, AES.MODE_CBC, iv)
    plaintext = cipher.decrypt(ciphertext)

    if is_pkcs7_padded(plaintext):
        return unpad(plaintext, 16).decode('ascii')
    else:
        return plaintext.decode('ascii')

# p = 11
# g = 2
# a = 3
# A = pow(g, a, p)
# proc = pwn.remote("socket.cryptohack.org", 13373)
# proc.sendline(str({"p": hex(p), "g": hex(g), "A": hex(A)}).encode().replace(b"'", b'"'))
# proc.interactive()
print(decrypt_flag(3, "888540f7eec1828fef25871640b58a98", "21e5533377671a0bbe9add7d1007c8659a2a5bbb748e7fbe5d7ec3477c89b48c9c158b8ee9659e15c1175a43f73e226650abd22125cc56a83cbd02067883542aea70c1f7a217c724be4307b9fb5c80e1"))
# {"p": "0xb", "g": "0x2", "A": "0x3"}
# {"p": "0xffffffffffffffffc90fdaa22168c234c4c6628b80dc1cd129024e088a67cc74020bbea63b139b22514a08798e3404ddef9519b3cd3a431b302b0a6df25f14374fe1356d6d51c245e485b576625e7ec6f44c42e9a637ed6b0bff5cb6f406b7edee386bfb5a899fa5ae9f24117c4b1fe649286651ece45b3dc2007cb8a163bf0598da48361c55d39a69163fa8fd24cf5f83655d23dca3ad961c62f356208552bb9ed529077096966d670c354e4abc9804f1746c08ca237327ffffffffffffffff", "g": "0x2", "A": "0x3"}
