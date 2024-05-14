#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main() {
    char *key = NULL;
    size_t read_length, buffer_length = 0;
    
    read_length = getline(&key, &buffer_length, stdin);

    for (int i = 0; i < read_length; i++)
    {
        printf("%02x", key[i]);
    }
}