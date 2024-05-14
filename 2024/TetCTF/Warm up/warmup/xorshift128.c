#include <stdio.h>


int x = 123456789;
int y = 362436069;
int z = 521288629;
int w = -559038737;

int xorshift128()
{
    unsigned int v1; // [rsp+0h] [rbp-4h]

    v1 = (((x << 11) ^ (unsigned int)x) >> 8) ^ (x << 11) ^ x;
    x = y;
    y = z;
    z = w;
    w ^= (unsigned int)w >> 19;
    w ^= v1;
    return (unsigned int)w;
}

void main() 
{
    for (int i = 0; i <= 20; i++) {
        for (int j = 0; j <= 20; j++) {
            int xor = xorshift128() % 1024;
            printf("%d\n", xor);
        }
    }
}