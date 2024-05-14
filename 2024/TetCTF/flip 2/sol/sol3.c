
#include "../tiny-AES-c/aes.h"
#include <unistd.h>

uint8_t plaintext[16] = {0x72,0xec,0xc5,0xdc,0x6c,0x50,0x71,0x0f,0xb3,0x31,0xf0,0x65,0x0c,0x4b,0xea,0xfc};
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
