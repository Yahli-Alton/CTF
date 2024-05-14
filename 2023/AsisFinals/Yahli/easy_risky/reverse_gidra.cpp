#include "out.h"



void print(char param_1)

{
  std::basic_ostream<char,std::char_traits<char>>::put(param_1);
  return;
}



void flush(void)

{
  std::basic_ostream<char,std::char_traits<char>>::flush();
  return;
}



void call_to_main(void)

{
  __libc_start_main();
  return;
}



void bit_shift(basic_ostream *param_1,char *param_2)

{
  std::operator<<(param_1,param_2);
  return;
}



void FUN_001008a0(void)

{
  std::ctype<char>::_M_widen_init();
  return;
}



void FUN_001008b0(void)

{
  std::__throw_bad_cast();
  return;
}



void FUN_001008c0(Init *param_1)

{
  std::ios_base::Init::Init(param_1);
  return;
}



undefined8 main(void)

{
  long *plVar1;
  undefined8 uVar2;
  long *plVar3;
  ulong uVar4;
  undefined8 local_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined4 uStack_28;
  
  uStack_28 = 0x2a002a57;
  local_50 = 0x73581d517963796b;
  uStack_48 = 0x75447f5875655e75;
  uStack_40 = 0x6378756445751967;
  uStack_38 = 0x47751e1c7c076979;
  uStack_30 = 0xb0b6f440b62491e;
  uVar2 = FUN_00100a4c(&local_50);
  plVar3 = (long *)bit_shift(&std::cout,uVar2);
  plVar1 = *(long **)((long)plVar3 + *(long *)(*plVar3 + -0x18) + 0xf0);
  if (plVar1 != (long *)0x0) {
    if (*(char *)(plVar1 + 7) == '\0') {
      FUN_001008a0(plVar1);
      uVar4 = (**(code **)(*plVar1 + 0x30))(plVar1,10,*(code **)(*plVar1 + 0x30));
    }
    else {
      uVar4 = (ulong)*(byte *)((long)plVar1 + 0x43);
    }
    print(plVar3,uVar4);
    flush();
    return 0;
  }
  FUN_001008b0();
  FUN_001008c0(&DAT_00102098);
  uVar2 = __cxa_atexit(std::ios_base::Init::~Init,&DAT_00102098,&PTR_LOOP_00102000);
  return uVar2;
}



void _INIT_1(void)

{
  FUN_001008c0(&DAT_00102098);
  __cxa_atexit(std::ios_base::Init::~Init,&DAT_00102098,&PTR_LOOP_00102000);
  return;
}



void entry(void)

{
  undefined8 uVar1;
  undefined8 in_stack_00000000;
  
  uVar1 = _PREINIT_0();
  call_to_main(main,in_stack_00000000,&stack0x00000008,0,0,uVar1,&stack0x00000000);
  ebreak();
  gp = 0x102800;
  return;
}



void _PREINIT_0(void)

{
  gp = 0x102800;
  return;
}



// WARNING: Removing unreachable block (ram,0x001009d6)
// WARNING: Removing unreachable block (ram,0x001009e0)

void FUN_001009c2(void)

{
  return;
}



// WARNING: Removing unreachable block (ram,0x00100a02)
// WARNING: Removing unreachable block (ram,0x00100a0c)

void FUN_001009e4(void)

{
  return;
}



void _FINI_0(void)

{
  if (DAT_00102090 == '\0') {
    __cxa_finalize(PTR_LOOP_00102000);
    FUN_001009c2();
    DAT_00102090 = '\x01';
  }
  return;
}



// WARNING: Removing unreachable block (ram,0x00100a02)
// WARNING: Removing unreachable block (ram,0x00100a0c)

void _INIT_0(void)

{
  return;
}



void FUN_00100a4c(byte *param_1)

{
  byte bVar1;
  long lVar2;
  ulong *puVar3;
  ulong uVar4;
  byte *pbVar5;
  ulong uVar6;
  ulong uVar7;
  
  if (param_1[0x2a] != 0) {
    return;
  }
  uVar6 = -(long)param_1;
  uVar7 = uVar6 & 7;
  if (uVar7 == 0) {
    uVar4 = (ulong)param_1[0x2b];
    lVar2 = 0x2a;
    pbVar5 = param_1;
  }
  else {
    bVar1 = param_1[0x2b];
    uVar4 = (ulong)bVar1;
    *param_1 = *param_1 ^ bVar1;
    if ((uVar6 & 6) == 0) {
      lVar2 = 0x29;
      pbVar5 = param_1 + 1;
    }
    else {
      lVar2 = 0x28;
      param_1[1] = param_1[1] ^ bVar1;
      pbVar5 = param_1 + 2;
      if (2 < uVar7) {
        lVar2 = 0x27;
        param_1[2] = param_1[2] ^ bVar1;
        pbVar5 = param_1 + 3;
        if ((uVar6 & 4) != 0) {
          param_1[3] = param_1[3] ^ bVar1;
          if (uVar7 < 5) {
            lVar2 = 0x26;
            pbVar5 = param_1 + 4;
          }
          else {
            param_1[4] = param_1[4] ^ bVar1;
            if (uVar7 == 5) {
              lVar2 = 0x25;
              pbVar5 = param_1 + 5;
            }
            else {
              param_1[5] = param_1[5] ^ bVar1;
              lVar2 = 0x24;
              pbVar5 = param_1 + 6;
              if (((ulong)(param_1 + -1) & 7) == 0) {
                lVar2 = 0x23;
                param_1[6] = param_1[6] ^ bVar1;
                pbVar5 = param_1 + 7;
              }
            }
          }
        }
      }
    }
  }
  puVar3 = (ulong *)(param_1 + uVar7);
  uVar6 = uVar4 << 8 | uVar4 | uVar4 << 0x10 | uVar4 << 0x18 | uVar4 << 0x20 | uVar4 << 0x28 |
          uVar4 << 0x30 | uVar4 << 0x38;
  puVar3[3] = uVar6 ^ puVar3[3];
  *puVar3 = uVar6 ^ *puVar3;
  puVar3[1] = uVar6 ^ puVar3[1];
  puVar3[2] = uVar6 ^ puVar3[2];
  if (0x2a - uVar7 >> 3 == 5) {
    pbVar5 = pbVar5 + 0x28;
    puVar3[4] = uVar6 ^ puVar3[4];
    lVar2 = lVar2 + -0x28;
    if (0x2a - uVar7 == 0x28) goto LAB_00100c04;
  }
  else {
    pbVar5 = pbVar5 + 0x20;
    lVar2 = lVar2 + -0x20;
  }
  *pbVar5 = *pbVar5 ^ param_1[0x2b];
  if ((((lVar2 != 1) && (pbVar5[1] = pbVar5[1] ^ param_1[0x2b], lVar2 != 2)) &&
      (pbVar5[2] = pbVar5[2] ^ param_1[0x2b], lVar2 != 3)) &&
     (((pbVar5[3] = pbVar5[3] ^ param_1[0x2b], lVar2 != 4 &&
       (pbVar5[4] = pbVar5[4] ^ param_1[0x2b], lVar2 != 5)) &&
      (pbVar5[5] = pbVar5[5] ^ param_1[0x2b], lVar2 != 6)))) {
    pbVar5[6] = pbVar5[6] ^ param_1[0x2b];
  }
LAB_00100c04:
  param_1[0x2a] = 1;
  return;
}



