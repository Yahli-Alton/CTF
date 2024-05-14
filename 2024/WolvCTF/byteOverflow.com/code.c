#include "out.h"



int _init(EVP_PKEY_CTX *ctx)

{
  int iVar1;
  
  iVar1 = __gmon_start__();
  return iVar1;
}



void FUN_00401020(void)

{
                    // WARNING: Treating indirect jump as call
  (*(code *)(undefined *)0x0)();
  return;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int puts(char *__s)

{
  int iVar1;
  
  iVar1 = puts(__s);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int printf(char *__format,...)

{
  int iVar1;
  
  iVar1 = printf(__format);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

ssize_t read(int __fd,void *__buf,size_t __nbytes)

{
  ssize_t sVar1;
  
  sVar1 = read(__fd,__buf,__nbytes);
  return sVar1;
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



// WARNING: Unknown calling convention -- yet parameter storage is locked

int fflush(FILE *__stream)

{
  int iVar1;
  
  iVar1 = fflush(__stream);
  return iVar1;
}



// WARNING: Unknown calling convention -- yet parameter storage is locked

int setvbuf(FILE *__stream,char *__buf,int __modes,size_t __n)

{
  int iVar1;
  
  iVar1 = setvbuf(__stream,__buf,__modes,__n);
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



void processEntry _start(undefined8 param_1,undefined8 param_2)

{
  undefined auStack_8 [8];
  
  __libc_start_main(main,param_2,&stack0x00000008,__libc_csu_init,__libc_csu_fini,param_1,auStack_8)
  ;
  do {
                    // WARNING: Do nothing block with infinite loop
  } while( true );
}



void _dl_relocate_static_pie(void)

{
  return;
}



// WARNING: Removing unreachable block (ram,0x0040110d)
// WARNING: Removing unreachable block (ram,0x00401117)

void deregister_tm_clones(void)

{
  return;
}



// WARNING: Removing unreachable block (ram,0x0040114f)
// WARNING: Removing unreachable block (ram,0x00401159)

void register_tm_clones(void)

{
  return;
}



void __do_global_dtors_aux(void)

{
  if (completed_7348 == '\0') {
    deregister_tm_clones();
    completed_7348 = 1;
    return;
  }
  return;
}



// WARNING: Removing unreachable block (ram,0x0040114f)
// WARNING: Removing unreachable block (ram,0x00401159)

void frame_dummy(void)

{
  return;
}



void main(void)

{
  setvbuf(stdout,(char *)0x0,2,0);
  setvbuf(stderr,(char *)0x0,2,0);
  setvbuf(stdin,(char *)0x0,2,0);
  puts(&DAT_00402008);
  puts(
      "                                                   \n                                  (((((            \n                                   (((((,          \n                            (        (((((*        \n                          /(((((      /(((((       \n                            ((((((((    /(((((     \n                               (((((((*   ((((((   \n                     .(((,        (((((((,  (((((( \n                    *((((((((((      (((((((# (    \n                         (((((((((((    ((((#      \n                               ((((((((((*         \n                  ((((((((          (((((          \n                  (((((((((((((((((((/             \n         %%%%             ,,((((((((((((   ,%%%%   \n         %%%%                         .    ,%%%%   \n         %%%%    ((((((((((((((((((((((    ,%%%%   \n         %%%%    ((((((((((((((((((((((    ,%%%%   \n         %%%%                              ,%%%%   \n         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   \n         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   \n"
      );
  do {
    opts();
  } while( true );
}



void opts(void)

{
  int local_c;
  
  puts("Welcome! What do you want to do?\n");
  puts("1) LOOK AT A POST\n");
  puts("2) MAKE A COMMENT\n");
  puts("3) EXIT\n");
  __isoc99_scanf(&DAT_00402a99,&local_c);
  getchar();
  if (local_c == 3) {
                    // WARNING: Subroutine does not return
    exit(0);
  }
  if (local_c < 4) {
    if (local_c == 1) {
      lookPost();
      return;
    }
    if (local_c == 2) {
      makeComment();
      return;
    }
  }
  puts("Not a valid option. Please try again.");
  return;
}



void lookPost(void)

{
  char local_108 [256];
  
  puts("Select one of the following: \n");
  puts("1) Why do hackers prefer dark mode while coding?");
  puts("\n");
  puts("2) The Ultimate Guide to Hacking - Secure Your Coffee Machine\'s Firmware!");
  puts("\n");
  puts("3) The Secret Society of Silent Print Statements - Debugging in Stealth Mode");
  puts("\n");
  fflush(stdout);
  read(0,local_108,0x101);
  if (local_108[0] == '1') {
    puts("------------------------------------------------------------------------------------\n");
    puts(
        "Greetings fellow code enigmas! Have you ever wondered why hackers have an undeniable affinity for dark mode? Join our cryptic investigation as we unveil the hidden secrets behind this nocturnal coding preference. Share your theories on whether it\'s for stealth, enhanced focus, or just a love for stylish, mysterious aesthetics. Let the dark secrets be revealed!\n"
        );
    puts("------------------------------------------------------------------------------------\n");
  }
  else if (local_108[0] == '2') {
    puts("------------------------------------------------------------------------------------\n");
    puts(
        "Hey fellow hackers, I recently discovered a groundbreaking technique to secure my coffee machine\'s firmware. It involves a mix of reverse engineering, coffee bean encryption, and a dash of caffeine-based encryption keys. Let\'s share our innovative approaches to make our appliances hacker-proof!\n"
        );
    puts("------------------------------------------------------------------------------------\n");
  }
  else if (local_108[0] == '3') {
    puts("------------------------------------------------------------------------------------\n");
    puts(
        "Greetings clandestine coders! Unveil the mysteries of stealth debugging with the Silent Print Statement Society. Share your experiences on embedding print statements so discreetly that even the logs remain silent. Let\'s discuss the art of leaving no trace while unraveling the secrets of our code in the shadows!\n"
        );
    puts("------------------------------------------------------------------------------------\n");
  }
  return;
}



void makeComment(void)

{
  char local_108 [256];
  
  if (NUM_COMMENTS == 0) {
    puts("Please write your comment below: \n");
    fgets(local_108,0x100,stdin);
    puts("Your comment is the following: ");
    printf(local_108);
    NUM_COMMENTS = NUM_COMMENTS + 1;
  }
  else {
    puts("You can only leave one comment\n");
  }
  return;
}



void __libc_csu_init(EVP_PKEY_CTX *param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  
  _init(param_1);
  lVar1 = 0;
  do {
    (*(code *)(&__frame_dummy_init_array_entry)[lVar1])((ulong)param_1 & 0xffffffff,param_2,param_3)
    ;
    lVar1 = lVar1 + 1;
  } while (lVar1 != 1);
  return;
}



void __libc_csu_fini(void)

{
  return;
}



void _fini(void)

{
  return;
}



