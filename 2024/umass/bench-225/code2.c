#include "out.h"



void _init(void)

{
  __gmon_start__();
  return;
}



void FUN_00101020(void)

{
  (*(code *)(undefined *)0x0)();
  return;
}



void FUN_001010f0(void)

{
  __cxa_finalize();
  return;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int putchar(int __c)

{
  int iVar1;
  
  iVar1 = putchar(__c);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int puts(char *__s)

{
  int iVar1;
  
  iVar1 = puts(__s);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

size_t strlen(char *__s)

{
  size_t sVar1;
  
  sVar1 = strlen(__s);
  return sVar1;
}



void __stack_chk_fail(void)

{
                    // WARNING: Subroutine does not return
  __stack_chk_fail();
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

void setbuf(FILE *__stream,char *__buf)

{
  setbuf(__stream,__buf);
  return;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int printf(char *__format,...)

{
  int iVar1;
  
  iVar1 = printf(__format);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

void * memset(void *__s,int __c,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memset(__s,__c,__n);
  return pvVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

char * fgets(char *__s,int __n,FILE *__stream)

{
  char *pcVar1;
  
  pcVar1 = fgets(__s,__n,__stream);
  return pcVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int getchar(void)

{
  int iVar1;
  
  iVar1 = getchar();
  return iVar1;
}



void __isoc99_scanf(void)

{
  __isoc99_scanf();
  return;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

void exit(int __status)

{
                    // WARNING: Subroutine does not return
  exit(__status);
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int rand(void)

{
  int iVar1;
  
  iVar1 = rand();
  return iVar1;
}



void processEntry _start(undefined8 param_1,undefined8 param_2)

{
  undefined auStack_8 [8];
  
  __libc_start_main(main,param_2,&stack0x00000008,0,0,param_1,auStack_8);
  do {
                    // WARNING: Do nothing block with infinite loop
  } while( true );
}



// WARNING: Removing unreachable block (ram,0x00101203)
// WARNING: Removing unreachable block (ram,0x0010120f)

void deregister_tm_clones(void)

{
  return;
}



// WARNING: Removing unreachable block (ram,0x00101244)
// WARNING: Removing unreachable block (ram,0x00101250)

void register_tm_clones(void)

{
  return;
}



void __do_global_dtors_aux(void)

{
  if (completed_0 != '\0') {
    return;
  }
  FUN_001010f0(__dso_handle);
  deregister_tm_clones();
  completed_0 = 1;
  return;
}



void frame_dummy(void)

{
  register_tm_clones();
  return;
}



int init(EVP_PKEY_CTX *ctx)

{
  long lVar1;
  long in_FS_OFFSET;
  
  lVar1 = *(long *)(in_FS_OFFSET + 0x28);
  setbuf(stdin,(char *)0x0);
  setbuf(stdout,(char *)0x0);
  setbuf(stderr,(char *)0x0);
  if (lVar1 != *(long *)(in_FS_OFFSET + 0x28)) {
                    // WARNING: Subroutine does not return
    __stack_chk_fail();
  }
  return 0;
}



undefined8 the_boats(void)

{
  undefined8 uStack_18;
  
  return uStack_18;
}



// WARNING: Switch with 1 destination removed at 0x001015f9
// WARNING: Exceeded maximum restarts with more pending

void main(void)

{
  long in_FS_OFFSET;
  undefined4 local_14;
  undefined8 local_10;
  
  local_10 = *(undefined8 *)(in_FS_OFFSET + 0x28);
  local_14 = 0;
  puts(" __                                      __                ______    ______   _______  ");
  puts("/  |                                    /  |              /      \\  /      \\ /       | ");
  puts("$$ |____    ______   _______    _______ $$ |____         /$$$$$$  |/$$$$$$  |$$$$$$$/  ");
  puts("$$      \\  /      \\ /       \\  /       |$$      \\  ______$$____$$ |$$____$$ |$$ |____  "
      );
  puts("$$$$$$$  |/$$$$$$  |$$$$$$$  |/$$$$$$$/ $$$$$$$  |/      |/    $$/  /    $$/ $$      \\ ");
  puts("$$ |  $$ |$$    $$ |$$ |  $$ |$$ |      $$ |  $$ |$$$$$$//$$$$$$/  /$$$$$$/  $$$$$$$  |");
  puts("$$ |__$$ |$$$$$$$$/ $$ |  $$ |$$ \\_____ $$ |  $$ |       $$ |_____ $$ |_____ /  \\__$$ |");
  puts("$$    $$/ $$       |$$ |  $$ |$$       |$$ |  $$ |       $$       |$$       |$$    $$/ ");
  puts("$$$$$$$/   $$$$$$$/ $$/   $$/  $$$$$$$/ $$/   $$/        $$$$$$$$/ $$$$$$$$/  $$$$$$/  ");
  putchar(10);
  puts("Grind doesn\'t stop.");
  putchar(10);
  g_Barbell = 0;
  DAT_00107092 = 0xe1;
  DAT_0010709a = 0x8c;
  DAT_00107094 = 0x13b;
  DAT_00107098 = 0x19;
  DAT_00107096 = 0;
  do {
    puts("====================================");
    puts("Name: Gary Goggins");
    printf("Goal: %d lbs x %d reps\n",(ulong)DAT_00107092,(ulong)DAT_00107098);
    printf("Current Weight: %d\n",(ulong)g_Barbell);
    printf("Rep: %d/%d\n",(ulong)DAT_00107096,(ulong)DAT_00107098);
    printf("Stamina: %d\n",(ulong)DAT_0010709a);
    puts("====================================");
    putchar(10);
    puts("Choose an option:");
    puts("1. Add 10s");
    puts("2. Add 25s");
    puts("3. Add 45s");
    puts("4. Bench");
    puts("5. Remove Plate");
    if ((DAT_0010709a < 0x32) && (DAT_00107092 <= g_Barbell)) {
      puts("6. Motivational Quote");
    }
    __isoc99_scanf(&DAT_001034bf,&local_14);
                    // WARNING: Could not find normalized switch variable to match jumptable
                    // WARNING: This code block may not be properly labeled as switch case
    puts("Invalid choice.");
  } while( true );
}



uint calculate_stamina_needed(void)

{
  long in_FS_OFFSET;
  
  if (*(long *)(in_FS_OFFSET + 0x28) != *(long *)(in_FS_OFFSET + 0x28)) {
                    // WARNING: Subroutine does not return
    __stack_chk_fail();
  }
  return (g_Barbell >> 1) / 7;
}



void printTextBox(char *param_1)

{
  long lVar1;
  int iVar2;
  size_t sVar3;
  long in_FS_OFFSET;
  int local_1c;
  int local_18;
  
  lVar1 = *(long *)(in_FS_OFFSET + 0x28);
  sVar3 = strlen(param_1);
  iVar2 = (int)sVar3 + 6;
  putchar(0x7c);
  for (local_1c = 0; local_1c < iVar2; local_1c = local_1c + 1) {
    putchar(0x2d);
  }
  puts("|");
  printf("|  \"%s\"  |\n",param_1);
  putchar(0x7c);
  for (local_18 = 0; local_18 < iVar2; local_18 = local_18 + 1) {
    putchar(0x2d);
  }
  puts("|");
  if (lVar1 != *(long *)(in_FS_OFFSET + 0x28)) {
                    // WARNING: Subroutine does not return
    __stack_chk_fail();
  }
  return;
}



void add_10s(void)

{
  long lVar1;
  long in_FS_OFFSET;
  
  lVar1 = *(long *)(in_FS_OFFSET + 0x28);
  printf("\x1b[2J");
  puts("Adding 10s");
  if ((uint)DAT_00107094 <= g_Barbell + 9) {
    puts("On second thought... they don\'t allow that at this gym.");
                    // WARNING: Subroutine does not return
    exit(0);
  }
  g_Barbell = g_Barbell + 10;
  DAT_00107096 = 0;
  if (lVar1 != *(long *)(in_FS_OFFSET + 0x28)) {
                    // WARNING: Subroutine does not return
    __stack_chk_fail();
  }
  return;
}



void add_25s(void)

{
  long lVar1;
  long in_FS_OFFSET;
  
  lVar1 = *(long *)(in_FS_OFFSET + 0x28);
  printf("\x1b[2J");
  puts("Adding 25s");
  if ((uint)DAT_00107094 <= g_Barbell + 0x18) {
    puts("On second thought... they don\'t allow that at this gym.");
                    // WARNING: Subroutine does not return
    exit(0);
  }
  g_Barbell = g_Barbell + 0x19;
  DAT_00107096 = 0;
  if (lVar1 != *(long *)(in_FS_OFFSET + 0x28)) {
                    // WARNING: Subroutine does not return
    __stack_chk_fail();
  }
  return;
}



void add_45s(void)

{
  long lVar1;
  long in_FS_OFFSET;
  
  lVar1 = *(long *)(in_FS_OFFSET + 0x28);
  printf("\x1b[2J");
  puts("Adding 45s");
  if ((uint)DAT_00107094 <= g_Barbell + 0x2c) {
    puts("On second thought... they don\'t allow that at this gym.");
                    // WARNING: Subroutine does not return
    exit(0);
  }
  g_Barbell = g_Barbell + 0x2d;
  DAT_00107096 = 0;
  if (lVar1 != *(long *)(in_FS_OFFSET + 0x28)) {
                    // WARNING: Subroutine does not return
    __stack_chk_fail();
  }
  return;
}



void motivation(void)

{
  int iVar1;
  long in_FS_OFFSET;
  char local_18 [8];
  long local_10;
  
  local_10 = *(long *)(in_FS_OFFSET + 0x28);
  memset(local_18,0,8);
  printf("Enter your motivational quote: ");
  do {
    iVar1 = getchar();
    if (iVar1 == 10) break;
  } while (iVar1 != -1);
  fgets(local_18,1000,stdin);
  printf("\x1b[2J");
  printf("Quote: \"");
  printf(local_18);
  printf("\" - Gary Goggins");
  puts(
      "...........................................................................:::::::::::::------------"
      );
  puts(
      "............................................................................::::::::::::------------"
      );
  puts(
      "............................................................................::::::::::::------------"
      );
  puts(
      "............................................................................:::::::::::-------------"
      );
  puts(
      ".....................................................=+++===.................::::::::::-------------"
      );
  puts(
      "..................................................++#**+++=====-............:::::::::::-------------"
      );
  puts(
      "................................................+####***+========-..........:::::::::::-------------"
      );
  puts(
      "...............................................+##%##**+====-======.........:::::::::::-------------"
      );
  puts(
      "..............................................+%##%%**++=-------===-.........::::::::::-------------"
      );
  puts(
      "..............................................##%%%%#*++===---=====+.........::::::::::-------------"
      );
  puts(
      "..............................................*%%%%%#***++=----====+........:::::::::::-------------"
      );
  puts(
      "..............................................+#%%%%#+=++===---===++........:::::::::::-------------"
      );
  puts(
      "..............................................+*#@@@@%#*+++*##*+=+=:-.......:::::::::::-------------"
      );
  puts(
      "............................................:%%*%%%#**%%#-=*#@@*=-=--#......:::::::::::-------------"
      );
  puts(
      "............................................-%##%%%%+-#%*---***=--====......:::::::::::-------------"
      );
  puts(
      ".............................................@%#%%#***%%*----==---==+:......:::::::::::-------------"
      );
  puts(
      ".............................................#%#%%####%%+--=-==--===-........::::::::::-------------"
      );
  puts(
      "..............................................=*%%%%%%%@#+%*-======:.........::::::::::-------------"
      );
  puts(
      "...............................................:#%%%%%%%#*+=--=====..........::::::::::-------------"
      );
  puts(
      "................................................%%%%%%%%%+++-======..........::::::::::-------------"
      );
  puts(
      "................................................#%%%%@%#+==-======+..........::::::::::-------------"
      );
  puts(
      ".................................................%%%%%%%%#*====++==:.........::::::::::-------------"
      );
  puts(
      ".................................................%@%%%%%**+====++==++*=-....:::::::::::-------------"
      );
  puts(
      "..............................................:#%%@@@%%@%%%#**+======*=+-=--::::::::::::------------"
      );
  puts(
      "..........................................:**%%%@%%@@%%%@%#+==++=====#++*+-==---::::::::------------"
      );
  puts(
      ".....................................-+**%%%%%%@@@@@@@%%%#*+=+++=====+++++==++++-==::::-------------"
      );
  puts(
      ".................................-+*#%#%%#%%%@%@@@@@@@%%%%#++++++++=++=====+++=+======--::---:------"
      );
  puts(
      "..............................:*#%#%%%%%@@@%%%@%@@@@@@%%%%%##*++++=*+*++=+=+==++=========-::--:-----"
      );
  puts(
      "............................-#%#%%%%%@@%%%%%%%%%%%%@%@%#%%%%#*++=*++++====**++**+====+=-=--::-:-----"
      );
  puts(
      "...........................*####%#%%%%%@%@%%%#*##*#*++#==*%%#++=***=*=++++#=#**+=+*====--=--:-------"
      );
  puts(
      "..........................=#####*#####%#%#@%%%%#*#***+*==+%##**+**=*#*+*+%=*##+#+*++======---:------"
      );
  puts(
      "..........................######%@*####*#%@%%*##*##***+*+*%%##***+*+#++=#+=%%*%**+*+=+===-:==:------"
      );
  puts(
      ".........................=%#@*%#*%**#**##%%%#**#**%#***#*#*#%#**+++**+*+%=#%*#***#++*=+-+==--:------"
      );
  puts(
      ".........................#%%##%*#%%++***#%@%+*#%**#%*=*+#**+###**=***++%#*%%+%@%**%*++*=+=----------"
      );
  puts(
      ".........................#%%*@*%+#@++**+#%%%*+#%*++%%*=+%*+***+*+++*+**%*#@*%%%%##*#***==+==::------"
      );
  puts(
      ".........................#%%%#@*%*%*+%++*%%#**##***##%#+++*###+*+****+##*%@+%@%@%%%#+**=====--------"
      );
  puts(
      ".........................%#@%@%%##@#+%#=*@%#**#%#+=###%#****#*+#*##+*=#%#@%=%@@@@@%%*#*++==---------"
      );
  puts(
      "........................+*%#%%%*@**@*%%=%%#**##%#=++##*%%*###***###***###@#+#@@@@@#%##*++===--------"
      );
  puts(
      "........................%%%@%+@%%%%@#@%+%%#*###%#**#%%####%##*####*++#%#%@*+*%@@@@%%%+==*+=-=-------"
      );
  puts(
      "........................%%@%%@@*#@%@%@%#%###*%%##**##%##*#%%*##*##***#%#@%**#%@@*#%%%**++==+-==-----"
      );
  if (local_10 == *(long *)(in_FS_OFFSET + 0x28)) {
    return;
  }
                    // WARNING: Subroutine does not return
  __stack_chk_fail();
}



void bench(void)

{
  long lVar1;
  short sVar2;
  int iVar3;
  long in_FS_OFFSET;
  
  lVar1 = *(long *)(in_FS_OFFSET + 0x28);
  printf("\x1b[2J");
  if (DAT_00107096 == DAT_00107098) {
    puts("You already finished the set, but okay...");
  }
  if (g_Barbell == 0) {
    puts("You need to add some weight first.");
  }
  else {
    if (DAT_00107094 < g_Barbell) {
      printTextBox("CENSORED");
      puts("The barbell bent once you picked it up. What a miracle. I think we\'re done here...");
                    // WARNING: Subroutine does not return
      exit(0);
    }
    if (DAT_0010709a == 0) {
      puts("You are too tired to bench this.");
    }
    else {
      sVar2 = calculate_stamina_needed();
      if ((short)(DAT_0010709a - sVar2) < 1) {
        puts("Barely made that one...");
        DAT_0010709a = 0;
      }
      else {
        DAT_0010709a = DAT_0010709a - sVar2;
      }
      puts("Benching...");
      DAT_00107096 = DAT_00107096 + 1;
      if ((DAT_00107092 <= g_Barbell) &&
         ((double)(uint)DAT_00107098 / 2.0 <= (double)(uint)DAT_00107096)) {
        iVar3 = rand();
        printTextBox(*(undefined8 *)(g_Quotes + (long)(iVar3 % 4) * 8));
      }
      printf("Stamina: %d\n",(ulong)DAT_0010709a);
      puts(&DAT_001046b8);
      puts(&DAT_00104748);
      puts(&DAT_001047d8);
      puts(&DAT_00104868);
      puts(&DAT_001048f8);
      puts(&DAT_00104988);
      puts(&DAT_00104a18);
      puts(&DAT_00104aa8);
      puts(&DAT_00104b38);
      puts(&DAT_00104bc8);
      puts(&DAT_00104c58);
      puts(&DAT_00104ce8);
      puts(&DAT_00104d78);
      puts(&DAT_00104e08);
      puts(&DAT_00104e98);
      puts(&DAT_00104f28);
      puts(&DAT_00104fb8);
      puts(&DAT_00105048);
      puts(&DAT_001050d8);
      putchar(10);
      if (DAT_00107098 <= DAT_00107096) {
        puts("You have completed the set!");
      }
    }
  }
  if (lVar1 != *(long *)(in_FS_OFFSET + 0x28)) {
                    // WARNING: Subroutine does not return
    __stack_chk_fail();
  }
  return;
}



void _fini(void)

{
  return;
}



