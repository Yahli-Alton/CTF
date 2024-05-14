#include <stdlib.h>
#include <stdio.h>

void test() {
    // system("ls");
    printf("hi");
}

void main() {
    char *func = (char*)test;
    for (int i = 0; i < 15; i++)
    {
        printf("%02x", func[i]);
    }
}