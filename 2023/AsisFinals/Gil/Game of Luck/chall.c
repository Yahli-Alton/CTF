int32_t main(int32_t argc, char** argv, char** envp)
{
    void* fsbase;
    int64_t rax = *(fsbase + 0x28);
    sub_1289();
    srand(main);
    puts("This game is so easy!");
    puts("Just guess the correct number to…");
    puts("If you lose 3 times you'll be ki…");
    void buf;
    __builtin_memcpy(&buf, &data_21e0, 0x808);
    memset(&buf, 0, 0x800);
    while (true)
    {
        char money_str;
        int32_t money;
        printf("\nmoney: %s\nYour money: %d\n", &money_str, money, &money_str);
        if (money < 0)
        {
            puts("You can't play anymore :(");
            break;
        }
        printf("Enter a bet value: ");
        int32_t your_bet = 0xffffffff;
        __isoc99_scanf(&data_20d2, &your_bet);
        if (your_bet <= 0)
        {
            puts("Your bet amount should be positi…");
        }
        else
        {
            int32_t my_bet = rand();
            printf("Your bet: %d, my bet: %d\n", your_bet, ((my_bet % 0x64) + 1));
            printf("Enter your guess: ");
            int32_t guess = 0xffffffff;
            __isoc99_scanf(&data_20d2, &guess);
            getchar();
            if (((rand() % 0x3e8) + 1) != guess)  {  // {"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX…"}}
            {
                puts("You lost :(");
                money = (money - your_bet);
                &money_str[(strlen(&money_str) - 1)] = 0;
            }
            else
            {
                puts("You won!");
                money = (((my_bet % 0x64) + 1) + money);
            }
            if ((money + 1) > 0x7ff)
            {
                puts("Sorry we can't take your feedbac…");
            }
            else
            {
                printf("Please give us your feedback for…");
                read(0, &buf, money);
                puts("Thanks for your feedback!");
            }
            if (money_str == 0)
            {
                puts("No more money");
                break;
            }
            }
        }
    }
    puts("Bye!");
    *(fsbase + 0x28);
    if (rax == *(fsbase + 0x28))
    {
        return 0;
    }
    __stack_chk_fail();
    /* no return */
}