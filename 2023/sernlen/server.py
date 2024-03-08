from ecdsa import curves, util, SigningKey, VerifyingKey, BadSignatureError
from hashlib import sha224
from Crypto.Util.number import bytes_to_long
from random import SystemRandom
import os, ast, signal

random = SystemRandom()
sk: SigningKey = SigningKey.generate(curve=curves.NIST224p, hashfunc=sha224)
vk: VerifyingKey = sk.get_verifying_key()
order: int = curves.NIST224p.order


def sign(msg: bytes, true_sign: bytes):
    nbits = (order.bit_length() - len(true_sign) * 8) // 2

    k = 0
    while not (0 < k < order):
        k_h, k_l = random.getrandbits(nbits), random.getrandbits(nbits)
        k = (k_h * 2**(len(true_sign) * 8) + bytes_to_long(true_sign)) * 2**nbits + k_l
    
    return (msg.hex(), util.sigdecode_string(sk.sign(msg, k=k), order))


def main():
    print("How can I trully sign my messages if I use a fully random k?")

    msgs = [b"Are you enjoying srdnlen ctf so far?", b"I hope you are and will continue to enjoy it!"]
    true_signs = [b"<From the mighty>", b"<For the players>"]
    signed_msgs = list(map(sign, msgs, true_signs))
    print("||||||||||||||||||||||||||||||||||||||||")
    print(sign(msgs[0], true_signs[0]))
    print("||||||||||||||||||||||||||||||||||||||||")

    print("Now you can verify that I trully wrote these messages")
    print(f"This is my public key: {vk.to_string().hex()}")
    for i, signed_msg in enumerate(signed_msgs):
        print(f"Signed message number {i + 1}: {signed_msg}")

    msg_hex, (r, s) = ast.literal_eval(input("Do you have a signed message for me? "))
    msg = bytes.fromhex(msg_hex)

    vk.verify(util.sigencode_string(r, s, order), msg)

    if msg == b"Could I have the flag?":
        print("Certainly, you must be Bob the builder, only you have that signature")
        flag = os.getenv("FLAG", r"srdnlen{THIS_IS_FAKE}")
        print(flag)
    else:
        print("I'll see your request later")


def signal_handler(signum, frame):
    raise TimeoutError


signal.signal(signal.SIGALRM, signal_handler)

if __name__ == "__main__":
    print(order)
    # print(sign)
    # print(vk.to_string().hex())
    # print(bytes.fromhex(vk.to_string().hex()))
    public_key_hex = "0941071b9139cc0cb908c9c5fd8f4c497ab026b076c7950944dcbc7ac6cb48693215d6e92baffff92de80717744624849c0dccd0b409fe4c"
    newVK = VerifyingKey.from_string(bytes.fromhex(public_key_hex), curve=curves.NIST224p)
    # newSK = SigningKey.from_string(bytes.fromhex(public_key_hex),  curve=curves.NIST224p)
    msg_hex, (r, s) = ('41726520796f7520656e6a6f79696e67207372646e6c656e2063746620736f206661723f', (3051802803672115540370860783147079853378598274425831317120070895214, 20780925265534592325964731412225143664523172940071882416835604267988))
    # msg_hex, (r, s) = ('4920686f706520796f752061726520616e642077696c6c20636f6e74696e756520746f20656e6a6f7920697421', (1394140274528467070325574588639860012373837253254539123623241523047, 8865014105833015844497055541283244445989649490590655940803290639562))
    msg = bytes.fromhex(msg_hex)
    print(newVK.to_string().hex() == public_key_hex)
    newVK.verify(util.sigencode_string(r, s, order), msg)
    signal.alarm(180)
    try:
        # main()'
        print("hi")
    except BadSignatureError:
        print("Are you Mallory!?!")
    except TimeoutError:
        print("You sleepin'?")
    except Exception:
        print("Something has gone wrong")
