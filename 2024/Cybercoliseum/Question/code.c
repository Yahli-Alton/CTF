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

void __cxa_finalize(void* d)
{
    /* tailcall */
    return __cxa_finalize(d);
}

char* getenv(char const* name)
{
    /* tailcall */
    return getenv(name);
}

int32_t puts(char const* str)
{
    /* tailcall */
    return puts(str);
}

int32_t printf(char const* format, ...)
{
    /* tailcall */
    return printf();
}

int32_t fflush(FILE* fp)
{
    /* tailcall */
    return fflush(fp);
}

int32_t __isoc99_scanf(char const* format, ...)
{
    /* tailcall */
    return __isoc99_scanf();
}

uint32_t sleep(uint32_t seconds)
{
    /* tailcall */
    return sleep(seconds);
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

int64_t print_capy()
{
    return puts(&capy);
}

int64_t print_flag()
{
    printf("Your flag: %s\n", getenv("FLAG"));
    return fflush(__TMC_END__);
}

int32_t main(int32_t argc, char** argv, char** envp)
{
    print_capy();
    puts("What is the name of the category…");
    printf(&data_205b);
    fflush(__TMC_END__);
    __isoc99_scanf(&data_205f, &str);
    if (secret != 0x50574e21)
    {
        puts("No!!");
    }
    else
    {
        puts("Hmm, you know...");
        sleep(1);
        print_flag();
    }
    return 0;
}

int64_t _fini() __pure
{
    return;
}

