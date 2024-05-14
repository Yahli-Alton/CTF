#include <stdio.h>
#include <string.h>
#include <stdint.h>


uint64_t hash_64_fnv1a(const void* key, const uint64_t len) {
    
    const char* data = (char*)key;
    uint64_t hash = 0xcbf29ce484222325;
    uint64_t prime = 0x100000001b3;
    
    for(int i = 0; i < len; ++i) {
        uint8_t value = data[i];
        hash = hash ^ value;
        hash *= prime;
    }
    
    return hash;

}

void main() {
    // uint64_t h = 18446744072877646971;
    uint64_t h = 842869369;
    // uint64_t h = 768433061756976548;
    char alphabet[24];
    strcpy(alphabet, "!_acdefghilmnoprstuwy");

    char input[4];

    for (int i = 0; i < 24; i++) {
        input[0] = alphabet[i];
        for (int i = 0; i < 24; i++) {
            input[1] = alphabet[i];
            for (int i = 0; i < 24; i++) {
                input[2] = alphabet[i];
                for (int i = 0; i < 24; i++) {
                    input[3] = alphabet[i];
                    if (hash_64_fnv1a((uint64_t)&input, 4uLL) == h) {
                        printf("%s", input);
                    }
                }
            }
        }
    }

    // char input[4] = "heia";
    // printf("%lu",hash_64_fnv1a((uint64_t)&input, 4uLL));
}