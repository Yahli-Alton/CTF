import codecs
from pwn import * # pip install pwntools
import json

r = remote('socket.cryptohack.org', 13377, level = 'debug')

def json_recv():
    line = r.recvline()
    return json.loads(line.decode())

def json_send(hsh):
    request = json.dumps(hsh).encode()
    r.sendline(request)

while(True):

    received = json_recv()

    print("Received type: ")
    print(received["type"])
    print("Received encoded value: ")
    print(received["encoded"])

    send = ""
    if (received["type"] == "base64"):
        send += str(base64.b64decode(received["encoded"]))[2:-1]
    if (received["type"] == "hex"):
        send += str(bytes.fromhex(received["encoded"]))[2:-1]
    if (received["type"] == "rot13"):
        send += codecs.encode(received["encoded"], 'rot_13')
    if (received["type"] == "bigint"):
        send += str(bytes.fromhex(received["encoded"][2:]))[2:-1]
    if (received["type"] == "utf-8"):
        send += "".join(chr(b) for b in received["encoded"])
    to_send = {
        "decoded": send
    }
    json_send(to_send)