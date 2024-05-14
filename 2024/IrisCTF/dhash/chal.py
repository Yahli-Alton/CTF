from Crypto.Util.number import getPrime, isPrime

e = 65537
N = 1
while (N - 1) % e == 0:
    N = getPrime(2048)

def xor(a, b):
    return bytes(x^y for x,y in zip(a,b))

class MySeededHash():
    def __init__(self, N, e):
        self.N = N
        self.e = e
        self._state = b"\x00" * 256
        self.seen = set()

    def _hash_block(self, block):
        assert len(block) == 256

        if block in self.seen:
            raise ValueError("This looks too familiar... :o")
        self.seen.add(block)

        data = int.from_bytes(block, "big")
        if data < 2 or data >= N-1:
            raise ValueError("Please ensure data is supported by hash function :|")

        data = pow(data, self.e, self.N)
        if data in self.seen:
            raise ValueError("Collisions are cheating!!! >:(")
        self.seen.add(data)

        return data.to_bytes(256, "big")

    def update(self, data):
        assert len(data) % 256 == 0

        for block in range(0, len(data), 256):
            block = data[block:block+256]
            self._state = xor(self._state, self._hash_block(block))

        return self

    def hexdigest(self):
        return self._state.hex()

    def __repr__(self):
        return f"MySeededHash({self.N}, {self.e})"

def main():
    N, e = (30899351031157562056424978401508068754059848502010968183447460739604658557742544251643414847682067837443662689019938296938176252796980625377460685400224613746717161971812120412323951607880918412154320730812806759193366552306158313602615869293943785992960002930269992142908377516844489796848420730540901405938706503350458512002318395267554200877864435154016757507917677637077194978629670772503444950798718438681343225560210570601651687852871184694345464629892319153911736781259965851094441689233331425407810574477719493605638715542469533696118400798085380127034809364241448060217445280376717929168817250911751220649783, 65537)
    hash = MySeededHash(N, e)
    print(hash)

    print("Give me your string that hashes to 0...")
    preimage = bytes.fromhex(input("> "))
    if len(preimage) < 256 or len(preimage) % 256 != 0:
        raise ValueError("Invalid input!")

    zero = hash.update(preimage).hexdigest()
    print("hash(input) ==", zero)
    if zero == "00" * 256:
        with open("flag.txt") as f:
            print(f.read())
    else:
        print("...")

main()
