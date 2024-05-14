extern unsigned int w;
extern unsigned int x;
extern unsigned int y;
extern unsigned int z;

int xorshift128()
{
    unsigned int v0;  // [bp-0xc]

    v0 = x;
    v0 ^= v0 * 0x800;
    v0 ^= (unsigned int)(v0 >> 8);
    x = y;
    y = z;
    z = w;
    w = w ^ (unsigned int)(w >> 19);
    w = w ^ v0;
    return w;
}

extern unsigned int w;
extern unsigned int x;
extern unsigned int y;
extern unsigned int z;

int check_key(char *a0)
{
    unsigned int v0;  // [bp-0x260]
    unsigned int v1;  // [bp-0x25c]
    unsigned int v2;  // [bp-0x258]
    unsigned int v3;  // [bp-0x254]
    unsigned int v4;  // [bp-0x250]
    unsigned int v5;  // [bp-0x24c]
    char v6;  // [bp-0x248]
    char v7;  // [bp-0x198]
    unsigned long long v8;  // [bp-0xe8]
    unsigned long long v9;  // [bp-0xe0]
    unsigned long long v10;  // [bp-0xd8]
    unsigned long long v11;  // [bp-0xd0]
    unsigned long long v12;  // [bp-0xc8]
    unsigned long long v13;  // [bp-0xc0]
    unsigned long long v14;  // [bp-0xb8]
    unsigned long long v15;  // [bp-0xb0]
    unsigned long long v16;  // [bp-0xa8]
    unsigned long long v17;  // [bp-0xa0]
    unsigned long long v18;  // [bp-0x98]
    unsigned long long v19;  // [bp-0x90]
    unsigned long long v20;  // [bp-0x88]
    unsigned long long v21;  // [bp-0x80]
    unsigned long long v22;  // [bp-0x78]
    unsigned long long v23;  // [bp-0x70]
    unsigned long long v24;  // [bp-0x68]
    unsigned long long v25;  // [bp-0x60]
    unsigned long long v26;  // [bp-0x58]
    unsigned long long v27;  // [bp-0x50]
    unsigned long long v28;  // [bp-0x48]
    char v29;  // [bp-0x38]
    unsigned long long v31;  // rdx
    unsigned long long v33;  // rax
    unsigned long long v35;  // rax
    unsigned long long v37;  // rax

    if (strlen(a0) != 84)
        return 0;
    v31 = 8246213437788285288;
    strncpy(&v29, "!_acdefghilmnoprstuwy", 21);
    for (v0 = 0; v0 <= 83; v0 += 1)
    {
        for (v1 = 0; v1 <= 20 && (&v29)[v1] != a0[v0]; v1 += 1)
        {
            if (v1 == 20)
                return 0;
        }
    }
    memset(&v6, 0, 168);
    for (v2 = 0; v2 <= 20; v2 += 1)
    {
        *((unsigned long long *)&(&v6)[8 * v2]) = hash_64_fnv1a(&a0[4 * v2], 4);
    }
    x = 123456789;
    y = 362436069;
    z = 521288629;
    w = 3735928559;
    memset(&v7, 0, 168);
    for (v3 = 0; v3 <= 20; v3 += 1)
    {
        for (v4 = 0; v4 <= 20; v4 += 1)
        {
            unsigned int v33 = xorshift128();
            v35 = v33 >> 31 >> 22;
            v37 = (unsigned int)v33 + (unsigned int)v35 & 1023;
            *((unsigned long long *)&(&v7)[8 * v3]) = (v37 - v35) * *((long long *)&(&v6)[8 * v4]) + *((long long *)&(&v7)[8 * v3]);
        }
    }
    v8 = -622472985781;
    v9 = 443256199922;
    v10 = 4804862013484;
    v11 = -1990292653755;
    v12 = 1716071043623;
    v13 = 2612697655413;
    v14 = 2853361699824;
    v15 = -8094556971432;
    v16 = -1289445257418;
    v17 = -1552556399857;
    v18 = 6101836644339;
    v19 = -3508582733213;
    v20 = -1821100477986;
    v21 = -6183692404382;
    v22 = -581895255209;
    v23 = 311783905729;
    v24 = -1403558929228;
    v25 = 948885246100;
    v26 = 3711633763399;
    v27 = -1222346925610;
    v28 = -2460365508509;
    v5 = 0;
    while (1)
    {
        if (v5 > 20)
        {
            return 1;
        }
        else if ((&v8)[v5] == *((long long *)&(&v7)[8 * v5]))
        {
            v5 += 1;
        }
        else
        {
            return 0;
        }
    }
}

int main()
{
    char v0;  // [bp-0x78]
    char v1;  // [bp-0x10]
    unsigned long long *v3;  // fs

    memset(&v0, 0, 100);
    printf("Please enter your key: ");
    __isoc99_scanf("%84s", (unsigned int)&v0);
    if (!(char)check_key(&v0))
    {
        puts("Wrong");
        return *((long long *)&v1) - v3[5];
    }
    printf("Correct. Your flag is TetCTF{%s}\n", (unsigned int)&v0);
    return *((long long *)&v1) - v3[5];
}

int hash_64_fnv1a(char *a0, unsigned long a1)
{
    char v0;  // [bp-0x25]
    unsigned int v1;  // [bp-0x24]
    unsigned long long v2;  // [bp-0x20]
    unsigned long long v3;  // [bp-0x10]

    v2 = 14695981039346656037;
    v3 = 1099511628211;
    for (v1 = 0; a1 > v1; v1 += 1)
    {
        v0 = a0[v1];
        v2 ^= v0;
        v2 = v3 * v2;
    }
    return v2;
}

long long _fini()
{
    unsigned long v1;  // rax

    return v1;
}

