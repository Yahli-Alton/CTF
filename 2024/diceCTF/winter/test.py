import hashlib, struct, binascii
from time import time

def get_target_str(bits):
    # https://en.bitcoin.it/wiki/Difficulty
    exp = bits >> 24
    mant = bits & 0xffffff
    target_hexstr = '%064x' % (mant * (1<<(8*(exp - 3))))
    print(f'T: {target_hexstr}')
    
    target_str = bytes.fromhex(target_hexstr)
    return target_str

def verify_nonce(version, prev_block, mrkl_root, 
               timestamp, bits_difficulty,nonce):
    
    target_str = get_target_str(bits_difficulty)
    header = ( struct.pack("<L", version) + 
              bytes.fromhex(prev_block)[::-1] +
              bytes.fromhex(mrkl_root)[::-1] +
              struct.pack("<LLL", timestamp, bits_difficulty, nonce))
    print(hashlib.sha256(header).digest())
    hash_result = hashlib.sha256(hashlib.sha256(header).digest()).digest()
    print(hash_result)

    return bytes.hex(hash_result[::-1])
    #nonce += 1


test1_version = 0x3fff0000
test1_prev_block = "0000000000000000000140ac4688aea45aacbe7caf6aaca46f16acd93e1064c3"
test1_merkle_root = "422458fced12693312058f6ee4ada19f6df8b29d8cac425c12f4722e0dc4aafd"
test1_timestamp = 0x5E664C76
test1_bits_diff = 0x17110119
test1_nonce1 = 538463288 #(0x20184C38)
test1_block_hash = "0000000000000000000d493c3c1b91c8059c6b0838e7e68fbcf8f8382606b82c"
test1_calc_block_hash = verify_nonce(test1_version,
                                     test1_prev_block,
                                     test1_merkle_root,
                                     test1_timestamp,
                                     test1_bits_diff,
                                     test1_nonce1)
print(f'S: {test1_block_hash}')
print(f'R: {test1_calc_block_hash}')
if test1_block_hash == test1_calc_block_hash:
    print("hashing is correct")