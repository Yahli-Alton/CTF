#!/usr/bin/env python3

import sys
import struct
import glob
import shutil
import os
import hashlib


def get_data(args):
    fn1, fn2 = args

    with open(fn1, "rb") as f:
        d1 = f.read()
    with open(fn2, "rb") as f:
        d2 = f.read()

    assert d1.startswith(b"\x89PNG\r\n\x1a\n\x00\x00\x00\rIHDR")
    assert d2.startswith(b"\x89PNG\r\n\x1a\n\x00\x00\x00\rIHDR")
    # make sure the header of the two files match
    assert d1[:0x21] == d2[:0x21]
    # make sure the first 21 bytes of the 2 PNG files are the same
    return d1, d2


d1, d2 = get_data(sys.argv[1:3])

hash = hashlib.sha256(d1[:0x21]).hexdigest()[:8]

print("Header hash: %s" % hash)

if not glob.glob("png1-%s.bin" % hash):
    print("Not found! Launching computation...")

    # make the complete prefix
    with open("prefix", "wb") as f:
        f.write(b"".join([
            # 00-20 - original common header
            d1[:0x21],
            # 21-46 - padding chunk
            b"\0\0\0\x1a", b"aNGE", b"ha IS A PRO HEHEHEHEHEHEHE", b"ROFL",

            # 47-C7 - collision chunk

            # 47-4F
            # this is the end of the collision prefix,
            # => lengths of 0x75 and 0x175
            b"\0\0\0\x75", b"mARC", b"!",

            # the end of the collision blocks if they're not computed
            # 50-BF
            # " " * 0x70,
        ]))

    os.system("../hashclash/scripts/poc_no.sh prefix")

    shutil.copyfile("collision1.bin", "png1-%s.bin" % hash)
    shutil.copyfile("collision2.bin", "png2-%s.bin" % hash)

with open("png1-%s.bin" % hash, "rb") as f:
    block1 = f.read()
with open("png2-%s.bin" % hash, "rb") as f:
    block2 = f.read()

assert len(block1) == 0xC0
assert len(block2) == 0xC0
# make sure both the block lengths are 192 bytes
ascii_art = b"""
/==============\\
|*            *|
|  PNG IMGS    |
|     with     |
|  identical   |
|   -prefixes  |
|              |
|              |
|  by          |
| Swetha       |
|              |
|              |
|              |
|*            *|
\\==============/
BRK!
""".replace(b"\n", b"").replace(b"\r", b"")

assert len(ascii_art) == 0xF4
# assert the length of the ascii art is 244 bytes
suffix = b"".join([
    # C0-C7
    b"RealHash",
    # the remaining of the chunk mARC

    # C8-1C3 the tricky fake chunk

    # the length, the type and the data should all take 0x100
    struct.pack(">I", 0x100 - 4 * 2 + len(d2[0x21:])),
    b"jUMP",
    # it will cover the data chunks of d2,
    # and the 0x100 buffer
    ascii_art,
    b"\xDE\xAD\xBE\xEF",
    # fake cyclic redundancy check for mARC

    # 1C8 - Img2 + 4
    d2[0x21:],
    b"\x5E\xAF\x00\x0D",
    # fake cyclic redundancy check for jUMP after d2's IEND
    d1[0x21:],
])

with open("%s-1.png" % hash, "wb") as f:
    f.write(b"".join([
        block1,
        suffix
    ]))

with open("%s-2.png" % hash, "wb") as f:
    f.write(b"".join([
        block2,
        suffix
    ]))