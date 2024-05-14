#include <stdio.h>
#include <stdlib.h>

__thread long long g[10];

void give_flag() {
    puts("abcde");
    char buf[100];
    FILE* f = fopen("flag.txt", "r");
    
    fgets(buf, sizeof(buf), f);
    printf("%s\n", buf);
}

int main() {
    setbuf(stdin, NULL);
    setbuf(stdout, NULL);
    setbuf(stderr, NULL);  

    puts("aIf you want the flag, command me to give it to you.");
    printf("%x", main);
    char command[16];
    gets(command);
    g[atoi(command)] = 10191;
}
