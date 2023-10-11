from Crypto.Cipher import AES
from Crypto.Util.Padding import pad, unpad
import hashlib


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


shared_secret = 1530404652293486420214458747084974171178492628550547734956218797979159956601837062371390773474386618037086638198334758714744083542563089441995828842485938128582871061347566627849647447913258987530506800538681443233210128151281907407723781706260207241335182469218471171904840288036340457139003392772945364953714760519532487988689081731988567694652466081620130298760623429761235428521679433068767857406681942464302538458596518049807507881759810210394104859872869397
iv = "0d35251e31629521088e8087ecf05c4b"
ciphertext = "63315a9e7e10e8f91dfabd3ce0c97a0aefa3f00561e0784dd6d1402205918257a9c198cc340349a795d6c590bf27555777d3fe9029413cf9cd8ed1573ea9d792383c25c79d4d2201bd21b923dfe12d9e"


print(decrypt_flag(shared_secret, iv, ciphertext))
# {"supported": ["DH1536", "DH64"]}

# {"p": "0xde26ab651b92a129", "g": "0x2", "A": "0x15eb52e15ce84f3f"}
# Intercepted from Bob: {"B": "0x36cc5a387d3cf621"}
# Intercepted from Alice: {"iv": "7366b4daff61f157c428044d29e4babb", "encrypted_flag": "28604648d13e358fde8c8128128b33be926501badeb40b09510bc958b352fd5a"}