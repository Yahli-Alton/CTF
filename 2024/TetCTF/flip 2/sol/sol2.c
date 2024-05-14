// To compile:
// git clone https://github.com/kokke/tiny-AES-c
// gcc encrypt.c tiny-AES-c/aes.c
#include "../tiny-AES-c/aes.h"
#include <unistd.h>

uint8_t plaintext[16] = {0x37,0x23,0x64,0xda,0x32,0x33,0xda,0x74,0x44,0xe9,0x7b,0x33,0xa4,0x04,0x2e,0xa5};

int main(int argc, char *argv[]) {
    struct AES_ctx ctx;
    // AES_init_ctx(&ctx, key);
    // NewKeyExpansion(ctx.RoundKey, key);
    AES_ECB_decrypt(&ctx, argv[1]);
    write(STDOUT_FILENO, plaintext, 16);
    return 0;
}
