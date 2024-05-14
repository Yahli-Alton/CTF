void _init()
{
    if (__gmon_start__ != 0)
    {
        __gmon_start__();
    }
}

int64_t sub_1020()
{
    int64_t var_8 = 0;
    /* jump -> nullptr */
}

int64_t sub_1030()
{
    int64_t var_8 = 0;
    /* tailcall */
    return sub_1020();
}

int64_t sub_1040()
{
    int64_t var_8 = 1;
    /* tailcall */
    return sub_1020();
}

int64_t sub_1050()
{
    int64_t var_8 = 2;
    /* tailcall */
    return sub_1020();
}

int64_t sub_1060()
{
    int64_t var_8 = 3;
    /* tailcall */
    return sub_1020();
}

int64_t sub_1070()
{
    int64_t var_8 = 4;
    /* tailcall */
    return sub_1020();
}

int64_t sub_1080()
{
    int64_t var_8 = 5;
    /* tailcall */
    return sub_1020();
}

int64_t sub_1090()
{
    int64_t var_8 = 6;
    /* tailcall */
    return sub_1020();
}

int64_t sub_10a0()
{
    int64_t var_8 = 7;
    /* tailcall */
    return sub_1020();
}

int64_t sub_10b0()
{
    int64_t var_8 = 8;
    /* tailcall */
    return sub_1020();
}

int64_t sub_10c0()
{
    int64_t var_8 = 9;
    /* tailcall */
    return sub_1020();
}

int64_t sub_10d0()
{
    int64_t var_8 = 0xa;
    /* tailcall */
    return sub_1020();
}

int64_t sub_10e0()
{
    int64_t var_8 = 0xb;
    /* tailcall */
    return sub_1020();
}

void __cxa_finalize(void* d)
{
    /* tailcall */
    return __cxa_finalize(d);
}

int32_t putchar(int32_t c)
{
    /* tailcall */
    return putchar(c);
}

int32_t puts(char const* str)
{
    /* tailcall */
    return puts(str);
}

uint64_t strlen(char const* arg1)
{
    /* tailcall */
    return strlen(arg1);
}

void __stack_chk_fail() __noreturn
{
    /* tailcall */
    return __stack_chk_fail();
}

void setbuf(FILE* fp, char* buf)
{
    /* tailcall */
    return setbuf(fp, buf);
}

int32_t printf(char const* format, ...)
{
    /* tailcall */
    return printf();
}

int64_t memset(void* arg1, int32_t arg2, uint64_t arg3)
{
    /* tailcall */
    return memset(arg1, arg2, arg3);
}

char* fgets(char* buf, int32_t n, FILE* fp)
{
    /* tailcall */
    return fgets(buf, n, fp);
}

int32_t getchar()
{
    /* tailcall */
    return getchar();
}

int32_t __isoc99_scanf(char const* format, ...)
{
    /* tailcall */
    return __isoc99_scanf();
}

void exit(int32_t status) __noreturn
{
    /* tailcall */
    return exit(status);
}

int32_t rand()
{
    /* tailcall */
    return rand();
}

void _start(int64_t arg1, int64_t arg2, void (* arg3)()) __noreturn
{
    int64_t stack_end_1;
    int64_t stack_end = stack_end_1;
    __libc_start_main(main, __return_addr, &ubp_av, nullptr, nullptr, arg3, &stack_end);
    /* no return */
}

void deregister_tm_clones()
{
    return;
}

void register_tm_clones()
{
    return;
}

void __do_global_dtors_aux()
{
    if (completed.0 != 0)
    {
        return;
    }
    if (__cxa_finalize != 0)
    {
        __cxa_finalize(__dso_handle);
    }
    deregister_tm_clones();
    completed.0 = 1;
}

void frame_dummy()
{
    /* tailcall */
    return register_tm_clones();
}

int64_t init()
{
    void* fsbase;
    int64_t rax = *(fsbase + 0x28);
    setbuf(stdin, nullptr);
    setbuf(stdout, nullptr);
    setbuf(stderr, nullptr);
    if (rax == *(fsbase + 0x28))
    {
        return (rax - *(fsbase + 0x28));
    }
    __stack_chk_fail();
    /* no return */
}

int64_t the_boats()
{
    int64_t rbp;
    int64_t var_8 = rbp;
    void* fsbase;
    int64_t var_10 = *(fsbase + 0x28);
    int64_t var_18;
    return var_18;
}

int64_t sub_1334() __pure
{
    return;
}

int64_t sub_1336() __pure
{
    return;
}

int64_t sub_1338() __pure
{
    return;
}

int64_t sub_133a() __pure
{
    return;
}

int64_t sub_133c() __pure
{
    return;
}

int64_t sub_133e()
{
    return syscall();
}

void sub_1341() __pure
{
    return;
}

int64_t sub_1346(void* arg1 @ rbp)
{
    int64_t rax_1 = *(arg1 - 8);
    void* fsbase;
    if (rax_1 == *(fsbase + 0x28))
    {
        *arg1;
        return (rax_1 - *(fsbase + 0x28));
    }
    __stack_chk_fail();
    /* no return */
}

int32_t main(int32_t argc, char** argv, char** envp)
{
    void* fsbase;
    int64_t var_10 = *(fsbase + 0x28);
    int32_t var_14 = 0;
    puts(" __                             …");
    puts("/  |                            …");
    puts("$$ |____    ______   _______    …");
    puts("$$      \  /      \ /       \  /…");
    puts("$$$$$$$  |/$$$$$$  |$$$$$$$  |/$…");
    puts("$$ |  $$ |$$    $$ |$$ |  $$ |$$…");
    puts("$$ |__$$ |$$$$$$$$/ $$ |  $$ |$$…");
    puts("$$    $$/ $$       |$$ |  $$ |$$…");
    puts("$$$$$$$/   $$$$$$$/ $$/   $$/  $…");
    putchar(0xa);
    puts("Grind doesn't stop.");
    putchar(0xa);
    g_Barbell = 0;
    lbs = 0xe1;
    stamina = 0x8c;
    data_7094 = 0x13b;
    reps = 0x19;
    rep_num = 0;
    while (true)
    {
        puts("================================…");
        puts("Name: Gary Goggins");
        printf("Goal: %d lbs x %d reps\n", lbs, reps);
        printf("Current Weight: %d\n", g_Barbell);
        printf("Rep: %d/%d\n", rep_num, reps);
        printf("Stamina: %d\n", stamina);
        puts("================================…");
        putchar(0xa);
        puts("Choose an option:");
        puts("1. Add 10s");
        puts("2. Add 25s");
        puts("3. Add 45s");
        puts("4. Bench");
        puts("5. Remove Plate");
        if ((stamina <= 0x31 && g_Barbell >= lbs))
        {
            puts("6. Motivational Quote");
        }
        __isoc99_scanf(&data_34bf, &var_14);
        switch (var_14)
        {
            case 1:
            {
                add_10s();
                continue;
            }
            case 2:
            {
                add_25s();
                continue;
            }
            case 3:
            {
                add_45s();
                continue;
            }
            case 4:
            {
                if (stamina != 0)
                {
                    bench();
                    continue;
                }
                else
                {
                    puts("You are too tired to continue.");
                    continue;
                }
                break;
            }
            case 5:
            {
                printf("\x1b[2J");
                puts("Weakness is a choice.");
                continue;
            }
            case 6:
            {
                if (stamina > 0x31)
                {
                    continue;
                }
                else if (g_Barbell < lbs)
                {
                    continue;
                }
                else
                {
                    motivation();
                    continue;
                }
                break;
            }
        }
        puts("Invalid choice.");
    }
}

uint16_t calculate_stamina_needed()
{
    void* fsbase;
    *(fsbase + 0x28);
    if (*(fsbase + 0x28) == *(fsbase + 0x28))
    {
        return (g_Barbell / 0xe);
    }
    __stack_chk_fail();
    /* no return */
}

int64_t printTextBox(char* arg1)
{
    void* fsbase;
    int64_t rax = *(fsbase + 0x28);
    int32_t rax_3 = (strlen(arg1) + 6);
    putchar(0x7c);
    for (int32_t i = 0; i < rax_3; i = (i + 1))
    {
        putchar(0x2d);
    }
    puts(&data_3530);
    printf("|  "%s"  |\n", arg1);
    putchar(0x7c);
    for (int32_t i_1 = 0; i_1 < rax_3; i_1 = (i_1 + 1))
    {
        putchar(0x2d);
    }
    puts(&data_3530);
    if (rax == *(fsbase + 0x28))
    {
        return (rax - *(fsbase + 0x28));
    }
    __stack_chk_fail();
    /* no return */
}

int64_t add_10s()
{
    void* fsbase;
    int64_t rax = *(fsbase + 0x28);
    printf("\x1b[2J");
    puts("Adding 10s");
    if ((g_Barbell + 9) >= data_7094)
    {
        puts("On second thought... they don't …");
        exit(0);
        /* no return */
    }
    g_Barbell = (g_Barbell + 0xa);
    rep_num = 0;
    if (rax == *(fsbase + 0x28))
    {
        return (rax - *(fsbase + 0x28));
    }
    __stack_chk_fail();
    /* no return */
}

int64_t add_25s()
{
    void* fsbase;
    int64_t rax = *(fsbase + 0x28);
    printf("\x1b[2J");
    puts("Adding 25s");
    if ((g_Barbell + 0x18) >= data_7094)
    {
        puts("On second thought... they don't …");
        exit(0);
        /* no return */
    }
    g_Barbell = (g_Barbell + 0x19);
    rep_num = 0;
    if (rax == *(fsbase + 0x28))
    {
        return (rax - *(fsbase + 0x28));
    }
    __stack_chk_fail();
    /* no return */
}

int64_t add_45s()
{
    void* fsbase;
    int64_t rax = *(fsbase + 0x28);
    printf("\x1b[2J");
    puts("Adding 45s");
    if ((g_Barbell + 0x2c) >= data_7094)
    {
        puts("On second thought... they don't …");
        exit(0);
        /* no return */
    }
    g_Barbell = (g_Barbell + 0x2d);
    rep_num = 0;
    if (rax == *(fsbase + 0x28))
    {
        return (rax - *(fsbase + 0x28));
    }
    __stack_chk_fail();
    /* no return */
}

int64_t motivation()
{
    void* fsbase;
    int64_t rax = *(fsbase + 0x28);
    void var_18;
    memset(&var_18, 0, 8);
    printf("Enter your motivational quote: ");
    while (true)
    {
        int32_t rax_2 = getchar();
        if (rax_2 == 0xa)
        {
            break;
        }
        if (rax_2 == 0xffffffff)
        {
            break;
        }
        if (!((rax_2 != 0xa && rax_2 != 0xffffffff)))
        {
            /* nop */
        }
    }
    fgets(&var_18, 0x3e8, stdin);
    printf("\x1b[2J");
    printf("Quote: "");
    printf(&var_18);
    printf("" - Gary Goggins");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("................................…");
    puts("..............................:*…");
    puts("............................-#%#…");
    puts("...........................*####…");
    puts("..........................=#####…");
    puts("..........................######…");
    puts(".........................=%#@*%#…");
    puts(".........................#%%##%*…");
    puts(".........................#%%*@*%…");
    puts(".........................#%%%#@*…");
    puts(".........................%#@%@%%…");
    puts("........................+*%#%%%*…");
    puts("........................%%%@%+@%…");
    puts("........................%%@%%@@*…");
    if (rax == *(fsbase + 0x28))
    {
        return (rax - *(fsbase + 0x28));
    }
    __stack_chk_fail();
    /* no return */
}

int64_t bench()
{
    void* fsbase;
    int64_t rax = *(fsbase + 0x28);
    printf("\x1b[2J");
    if (rep_num == reps)
    {
        puts("You already finished the set, bu…");
    }
    if (g_Barbell == 0)
    {
        puts("You need to add some weight firs…");
    }
    else
    {
        if (g_Barbell > data_7094)
        {
            printTextBox("CENSORED");
            puts("The barbell bent once you picked…");
            exit(0);
            /* no return */
        }
        if (stamina == 0)
        {
            puts("You are too tired to bench this.");
        }
        else
        {
            uint16_t rax_7 = calculate_stamina_needed();
            if ((stamina - rax_7) > 0)
            {
                stamina = (stamina - rax_7);
            }
            else
            {
                puts("Barely made that one...");
                stamina = 0;
            }
            puts("Benching...");
            rep_num = (rep_num + 1);
            if ((g_Barbell >= lbs && !(rep_num < (reps / 2.0))))
            {
                int32_t temp2_1;
                int32_t temp3_1;
                temp2_1 = HIGHD(rand());
                temp3_1 = LOWD(rand());
                uint32_t rdx_4 = (temp2_1 >> 0x1e);
                printTextBox(&g_Quotes[(((temp3_1 + rdx_4) & 3) - rdx_4)]);
            }
            printf("Stamina: %d\n", stamina);
            puts(&data_46b8);
            puts(&data_4748);
            puts(&data_47d8);
            puts(&data_4868);
            puts(&data_48f8);
            puts(&data_4988);
            puts(&data_4a18);
            puts(&data_4aa8);
            puts(&data_4b38);
            puts(&data_4bc8);
            puts(&data_4c58);
            puts(&data_4ce8);
            puts(&data_4d78);
            puts(&data_4e08);
            puts(&data_4e98);
            puts(&data_4f28);
            puts(&data_4fb8);
            puts(&data_5048);
            puts(&data_50d8);
            putchar(0xa);
            if (rep_num >= reps)
            {
                puts("You have completed the set!");
            }
        }
    }
    if (rax == *(fsbase + 0x28))
    {
        return (rax - *(fsbase + 0x28));
    }
    __stack_chk_fail();
    /* no return */
}

int64_t _fini() __pure
{
    return;
}

