from Crypto.Util import number

X = 5

def convert(msg):
    msg = msg ^ msg >> X
    msg = msg ^ msg << 13 & 275128763
    msg = msg ^ msg << 20 & 2186268085
    msg = msg ^ msg >> 14
    return msg


def undo(msg):
    bits = 0
    for _ in range(14):
        bits <<= 1
        bits += 1
    x = 0
    i = 0
    while msg.bit_length() >= 14 * i:
        x |= (msg ^ x >> 14) & (bits << max(0, msg.bit_length() - 14 * (i + 1)))
        i += 1

    msg = x

    bits = 0
    for _ in range(20):
        bits <<= 1
        bits += 1
    x = 0
    i = 0
    while msg.bit_length() >= 20 * (i - 1):
        x |= (msg ^ x << 20 & 2186268085) & (bits << (20 * i))
        i += 1

    msg = x

    bits = 0
    for _ in range(13):
        bits <<= 1
        bits += 1
    x = 0
    i = 0
    while msg.bit_length() >= 13 * (i - 1):
        x |= (msg ^ x << 13 & 275128763) & (bits << (13 * i))
        i += 1

    msg = x

    bits = 0
    for _ in range(X):
        bits <<= 1
        bits += 1
    x = 0
    i = 0
    while msg.bit_length() >= X * i:
        x |= (msg ^ x >> X) & (bits << max(0, msg.bit_length() - X * (i + 1)))
        i += 1

    msg = x

    return msg

def transform(message):
    assert len(message) % 4 == 0
    new_message = b''
    for i in range(int(len(message) / 4)):
        block = message[i * 4 : i * 4 +4]
        block = number.bytes_to_long(block)
        block = undo(block)
        block = number.long_to_bytes(block, 4)
        new_message += block
    return new_message

flag = number.long_to_bytes(int("e34a707c5c1970cc6375181577612a4ed07a2c3e3f441d6af808a8acd4310b89bd7e2bb9", 16))
while True:
    print(transform(flag))
    X += 1
    input()
