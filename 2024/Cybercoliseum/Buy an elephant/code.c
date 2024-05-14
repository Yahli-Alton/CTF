void _init()
{
    if (__gmon_start__ != 0)
    {
        __gmon_start__();
    }
}

int64_t sub_401020()
{
    int64_t var_8 = data_404008;
    /* jump -> data_404010 */
}

int64_t sub_401030()
{
    int64_t var_8 = 0;
    /* tailcall */
    return sub_401020();
}

int64_t sub_401040()
{
    int64_t var_8 = 1;
    /* tailcall */
    return sub_401020();
}

int64_t sub_401050()
{
    int64_t var_8 = 2;
    /* tailcall */
    return sub_401020();
}

int64_t sub_401060()
{
    int64_t var_8 = 3;
    /* tailcall */
    return sub_401020();
}

int64_t sub_401070()
{
    int64_t var_8 = 4;
    /* tailcall */
    return sub_401020();
}

int64_t sub_401080()
{
    int64_t var_8 = 5;
    /* tailcall */
    return sub_401020();
}

int64_t sub_401090()
{
    int64_t var_8 = 6;
    /* tailcall */
    return sub_401020();
}

int64_t sub_4010a0()
{
    int64_t var_8 = 7;
    /* tailcall */
    return sub_401020();
}

int64_t sub_4010b0()
{
    int64_t var_8 = 8;
    /* tailcall */
    return sub_401020();
}

int64_t sub_4010c0()
{
    int64_t var_8 = 9;
    /* tailcall */
    return sub_401020();
}

int64_t sub_4010d0()
{
    int64_t var_8 = 0xa;
    /* tailcall */
    return sub_401020();
}

int64_t sub_4010e0()
{
    int64_t var_8 = 0xb;
    /* tailcall */
    return sub_401020();
}

int64_t sub_4010f0()
{
    int64_t var_8 = 0xc;
    /* tailcall */
    return sub_401020();
}

char* getenv(char const* name)
{
    /* tailcall */
    return getenv(name);
}

struct tm* localtime(time_t* t)
{
    /* tailcall */
    return localtime(t);
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

uint64_t strcspn(char const* arg1, char const* arg2)
{
    /* tailcall */
    return strcspn(arg1, arg2);
}

char* fgets(char* buf, int32_t n, FILE* fp)
{
    /* tailcall */
    return fgets(buf, n, fp);
}

int32_t strcmp(char const* arg1, char const* arg2)
{
    /* tailcall */
    return strcmp(arg1, arg2);
}

time_t time(time_t* arg1)
{
    /* tailcall */
    return time(arg1);
}

int32_t fflush(FILE* fp)
{
    /* tailcall */
    return fflush(fp);
}

uint64_t strftime(char* s, uint64_t maxsize, char const* format, struct tm* tp)
{
    /* tailcall */
    return strftime(s, maxsize, format, tp);
}

char* strcat(char* arg1, char const* arg2)
{
    /* tailcall */
    return strcat(arg1, arg2);
}

void _start(int64_t arg1, int64_t arg2, void (* arg3)()) __noreturn
{
    int64_t stack_end_1;
    int64_t stack_end = stack_end_1;
    __libc_start_main(main, __return_addr, &ubp_av, nullptr, nullptr, arg3, &stack_end);
    /* no return */
}

int64_t sub_401200() __pure
{
    return;
}

void deregister_tm_clones()
{
    return;
}

void sub_401240()
{
    return;
}

void sub_401280()
{
    if (data_4051f8 != 0)
    {
        return;
    }
    deregister_tm_clones();
    data_4051f8 = 1;
}

void j_sub_401240()
{
    /* tailcall */
    return sub_401240();
}

int64_t sub_4012b6()
{
    printf("Your flag: %s\n", getenv("FLAG"));
    return fflush(stdout);
}

int32_t main(int32_t argc, char** argv, char** envp)
{
    puts("                                …");
    int64_t input;
    __builtin_memset(&input, 0, 0x110);
    time_t t = time(nullptr);
    void s;
    strftime(&s, 0x14, "%a, %y:%H:%M", localtime(&t));
    printf("Enter your name: ");
    fflush(stdout);
    int64_t buf;
    fgets(&buf, 0x10, stdin);
    *(&buf + strcspn(&buf, &data_402037)) = 0;
    data_4051a0 = 0;
    printf("(%s) %s: %s\n", &s, "Vanya", "Buy an elephant");
    while (true)
    {
        memset(&input, 0, 0x100);
        memset(&data_405120, 0, 0x80);
        t = time(nullptr);
        strftime(&s, 0x14, "%a, %y:%H:%M", localtime(&t));
        printf("(%s) %s: ", &s, &buf);
        fflush(stdout);
        fgets(&input, 0x100, stdin);
        *(&input + strcspn(&input, &data_402037)) = 0;
        if (strcmp(&input, &data_402060) == 0)
        {
            break;
        }
        t = time(nullptr);
        strftime(&s, 0x14, "%a, %y:%H:%M", localtime(&t));
        __builtin_strcpy((&data_405120 + strlen(&data_405120)), "Everyone says \"");
        strcat(&data_405120, &input);
        __builtin_strncpy((&data_405120 + strlen(&data_405120)), "\", but you need to buy an elephant", 0x23);
        printf("(%s) %s: %s\n", &s, "Vanya", &data_405120);
    }
    if (data_4051a0 != 0)
    {
        sub_4012b6();
    }
    return 0;
}

int64_t _fini() __pure
{
    return;
}

