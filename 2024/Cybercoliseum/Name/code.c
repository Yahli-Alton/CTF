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

int32_t puts(char const* str)
{
    /* tailcall */
    return puts(str);
}

ssize_t write(int32_t fd, void const* buf, uint64_t nbytes)
{
    /* tailcall */
    return write(fd, buf, nbytes);
}

int32_t printf(char const* format, ...)
{
    /* tailcall */
    return printf();
}

ssize_t read(int32_t fd, void* buf, uint64_t nbytes)
{
    /* tailcall */
    return read(fd, buf, nbytes);
}

void srand(uint32_t x)
{
    /* tailcall */
    return srand(x);
}

int32_t putc(int32_t c, FILE* fp)
{
    /* tailcall */
    return putc(c, fp);
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

void _start(int64_t arg1, int64_t arg2, void (* arg3)()) __noreturn
{
    int64_t stack_end_1;
    int64_t stack_end = stack_end_1;
    __libc_start_main(main, __return_addr, &ubp_av, nullptr, nullptr, arg3, &stack_end);
    /* no return */
}

int64_t _dl_relocate_static_pie() __pure
{
    return;
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
    deregister_tm_clones();
    completed.0 = 1;
}

void frame_dummy()
{
    /* tailcall */
    return register_tm_clones();
}

int64_t print_logo()
{
    write(1, "                                …", 0x1187);
    return putc(0xa, __TMC_END__);
}

int64_t sub_40124e() __pure
{
    return;
}

int64_t sub_401250() __pure
{
    return;
}

int64_t sub_401252() __pure
{
    return;
}

int64_t enter_name()
{
    int64_t buf = 0;
    int64_t var_10 = 0;
    printf("Enter your name: ");
    fflush(__TMC_END__);
    read(0, &buf, 0x100);
    puts("Thank you!");
    return fflush(__TMC_END__);
}

int32_t main(int32_t argc, char** argv, char** envp)
{
    srand(time(nullptr));
    print_logo();
    printf("%s\n\n", "Hey, bro!\nI know you will solve…");
    enter_name();
    puts("Don't give up!!");
    return 0;
}

int64_t _fini() __pure
{
    return;
}

