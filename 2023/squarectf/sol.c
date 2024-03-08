#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
    char expected_output[] = ",K6}Uq43\x1f""4q-s\x1f""4p\x1f""'s4\x1f""&\x15""d\x0c""r?\x13";
    char key[] = "JmpM\x34""n";

    _Static_assert(sizeof(key) == 7, "Invalid key size!");

    char output[28];
    strncpy(output, expected_output, 28);

    int flag_len = 28;
    int key_len = strlen(key);

    for(int i = 0; i < flag_len - key_len + 1; i++) {
        for(int j = 0; j < key_len; j++) {
            output[i + j] ^= key[j];
        }
    }


    printf("%s", output);
    return 0;
}

