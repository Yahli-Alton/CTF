import subprocess, os

p = subprocess.Popen("python3 main.py".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)
# p = subprocess.Popen("nc 139.162.24.230 31340".split(" "), stdin=subprocess.PIPE, stdout=subprocess.PIPE)

def write(message):
    p.stdin.write(message)
    p.stdin.flush()

def readline():
    line = p.stdout.readline()
    return line

write(b"00000000000000000000000000000000 4811 6\n")
message = readline()[:-1].decode()
assert len(message) == 32
print("message:", message)

array = "{" + ",".join("0x" + s1 + s2 for s1, s2 in zip(message[::2], message[1::2])) + "}"
with open("sol/sol3.c", "w") as file:
    file.write("""
#include "../tiny-AES-c/aes.h"
#include <unistd.h>

uint8_t plaintext[16] = """ + array + """;
static void NewKeyExpansion(uint8_t* RoundKey, const uint8_t* Key)
{
  unsigned i, j, k;
  uint8_t tempa[4]; // Used for the column/row operations
  
  // The first round key is the key itself.
  for (i = 0; i < 4; ++i)
  {
    RoundKey[(i * 4) + 0] = Key[(i * 4) + 0];
    RoundKey[(i * 4) + 1] = Key[(i * 4) + 1];
    RoundKey[(i * 4) + 2] = Key[(i * 4) + 2];
    RoundKey[(i * 4) + 3] = Key[(i * 4) + 3];
  }
}

int main() {
    struct AES_ctx ctx;
    // AES_init_ctx(&ctx, key);
    // NewKeyExpansion(ctx.RoundKey, key);
    AES_ECB_decrypt(&ctx, plaintext);
    write(STDOUT_FILENO, plaintext, 16);
    return 0;
}
""")

os.system("gcc sol/sol3.c tiny-AES-c/aes.c")
os.system("./a.out > sol/test")

with open("sol/test", "rb") as file:
    key = file.read()
assert len(key.hex()) == 32
    
print("key:", key.hex())
write(key.hex().encode() + b"\n")

while True:
    print(p.stdout.read(1).decode(), end="")
