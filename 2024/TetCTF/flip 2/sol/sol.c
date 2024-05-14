// To compile:
// git clone https://github.com/kokke/tiny-AES-c
// gcc encrypt.c tiny-AES-c/aes.c
#include "../tiny-AES-c/aes.h"
#include <unistd.h>

uint8_t plaintext[16] = {0x7e,0x10,0x2d,0x58,0xa0,0xe1,0x39,0xb7,0x0c,0xdb,0x9f,0xc0,0x36,0xd6,0x99,0xa4};
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
