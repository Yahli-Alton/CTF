
bench-225:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 6fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 42 5f 00 00    	push   0x5f42(%rip)        # 6f68 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 43 5f 00 00 	bnd jmp *0x5f43(%rip)        # 6f70 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop

Disassembly of section .plt.got:

00000000000010f0 <__cxa_finalize@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 fd 5e 00 00 	bnd jmp *0x5efd(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001100 <putchar@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 6d 5e 00 00 	bnd jmp *0x5e6d(%rip)        # 6f78 <putchar@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <puts@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 65 5e 00 00 	bnd jmp *0x5e65(%rip)        # 6f80 <puts@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <strlen@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 5d 5e 00 00 	bnd jmp *0x5e5d(%rip)        # 6f88 <strlen@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <__stack_chk_fail@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 55 5e 00 00 	bnd jmp *0x5e55(%rip)        # 6f90 <__stack_chk_fail@GLIBC_2.4>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <setbuf@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 4d 5e 00 00 	bnd jmp *0x5e4d(%rip)        # 6f98 <setbuf@GLIBC_2.2.5>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <printf@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 45 5e 00 00 	bnd jmp *0x5e45(%rip)        # 6fa0 <printf@GLIBC_2.2.5>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <memset@plt>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	f2 ff 25 3d 5e 00 00 	bnd jmp *0x5e3d(%rip)        # 6fa8 <memset@GLIBC_2.2.5>
    116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001170 <fgets@plt>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	f2 ff 25 35 5e 00 00 	bnd jmp *0x5e35(%rip)        # 6fb0 <fgets@GLIBC_2.2.5>
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001180 <getchar@plt>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	f2 ff 25 2d 5e 00 00 	bnd jmp *0x5e2d(%rip)        # 6fb8 <getchar@GLIBC_2.2.5>
    118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001190 <__isoc99_scanf@plt>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	f2 ff 25 25 5e 00 00 	bnd jmp *0x5e25(%rip)        # 6fc0 <__isoc99_scanf@GLIBC_2.7>
    119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011a0 <exit@plt>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	f2 ff 25 1d 5e 00 00 	bnd jmp *0x5e1d(%rip)        # 6fc8 <exit@GLIBC_2.2.5>
    11ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011b0 <rand@plt>:
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	f2 ff 25 15 5e 00 00 	bnd jmp *0x5e15(%rip)        # 6fd0 <rand@GLIBC_2.2.5>
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000011c0 <_start>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	31 ed                	xor    %ebp,%ebp
    11c6:	49 89 d1             	mov    %rdx,%r9
    11c9:	5e                   	pop    %rsi
    11ca:	48 89 e2             	mov    %rsp,%rdx
    11cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11d1:	50                   	push   %rax
    11d2:	54                   	push   %rsp
    11d3:	45 31 c0             	xor    %r8d,%r8d
    11d6:	31 c9                	xor    %ecx,%ecx
    11d8:	48 8d 3d 7d 01 00 00 	lea    0x17d(%rip),%rdi        # 135c <main>
    11df:	ff 15 f3 5d 00 00    	call   *0x5df3(%rip)        # 6fd8 <__libc_start_main@GLIBC_2.34>
    11e5:	f4                   	hlt    
    11e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11ed:	00 00 00 

00000000000011f0 <deregister_tm_clones>:
    11f0:	48 8d 3d 51 5e 00 00 	lea    0x5e51(%rip),%rdi        # 7048 <__TMC_END__>
    11f7:	48 8d 05 4a 5e 00 00 	lea    0x5e4a(%rip),%rax        # 7048 <__TMC_END__>
    11fe:	48 39 f8             	cmp    %rdi,%rax
    1201:	74 15                	je     1218 <deregister_tm_clones+0x28>
    1203:	48 8b 05 d6 5d 00 00 	mov    0x5dd6(%rip),%rax        # 6fe0 <_ITM_deregisterTMCloneTable@Base>
    120a:	48 85 c0             	test   %rax,%rax
    120d:	74 09                	je     1218 <deregister_tm_clones+0x28>
    120f:	ff e0                	jmp    *%rax
    1211:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1218:	c3                   	ret    
    1219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001220 <register_tm_clones>:
    1220:	48 8d 3d 21 5e 00 00 	lea    0x5e21(%rip),%rdi        # 7048 <__TMC_END__>
    1227:	48 8d 35 1a 5e 00 00 	lea    0x5e1a(%rip),%rsi        # 7048 <__TMC_END__>
    122e:	48 29 fe             	sub    %rdi,%rsi
    1231:	48 89 f0             	mov    %rsi,%rax
    1234:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1238:	48 c1 f8 03          	sar    $0x3,%rax
    123c:	48 01 c6             	add    %rax,%rsi
    123f:	48 d1 fe             	sar    %rsi
    1242:	74 14                	je     1258 <register_tm_clones+0x38>
    1244:	48 8b 05 a5 5d 00 00 	mov    0x5da5(%rip),%rax        # 6ff0 <_ITM_registerTMCloneTable@Base>
    124b:	48 85 c0             	test   %rax,%rax
    124e:	74 08                	je     1258 <register_tm_clones+0x38>
    1250:	ff e0                	jmp    *%rax
    1252:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1258:	c3                   	ret    
    1259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001260 <__do_global_dtors_aux>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	80 3d 1d 5e 00 00 00 	cmpb   $0x0,0x5e1d(%rip)        # 7088 <completed.0>
    126b:	75 2b                	jne    1298 <__do_global_dtors_aux+0x38>
    126d:	55                   	push   %rbp
    126e:	48 83 3d 82 5d 00 00 	cmpq   $0x0,0x5d82(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    1275:	00 
    1276:	48 89 e5             	mov    %rsp,%rbp
    1279:	74 0c                	je     1287 <__do_global_dtors_aux+0x27>
    127b:	48 8b 3d 86 5d 00 00 	mov    0x5d86(%rip),%rdi        # 7008 <__dso_handle>
    1282:	e8 69 fe ff ff       	call   10f0 <__cxa_finalize@plt>
    1287:	e8 64 ff ff ff       	call   11f0 <deregister_tm_clones>
    128c:	c6 05 f5 5d 00 00 01 	movb   $0x1,0x5df5(%rip)        # 7088 <completed.0>
    1293:	5d                   	pop    %rbp
    1294:	c3                   	ret    
    1295:	0f 1f 00             	nopl   (%rax)
    1298:	c3                   	ret    
    1299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012a0 <frame_dummy>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	e9 77 ff ff ff       	jmp    1220 <register_tm_clones>

00000000000012a9 <init>:
    12a9:	f3 0f 1e fa          	endbr64 
    12ad:	55                   	push   %rbp
    12ae:	48 89 e5             	mov    %rsp,%rbp
    12b1:	48 83 ec 10          	sub    $0x10,%rsp
    12b5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12bc:	00 00 
    12be:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12c2:	31 c0                	xor    %eax,%eax
    12c4:	48 8b 05 a5 5d 00 00 	mov    0x5da5(%rip),%rax        # 7070 <stdin@GLIBC_2.2.5>
    12cb:	be 00 00 00 00       	mov    $0x0,%esi
    12d0:	48 89 c7             	mov    %rax,%rdi
    12d3:	e8 68 fe ff ff       	call   1140 <setbuf@plt>
    12d8:	48 8b 05 81 5d 00 00 	mov    0x5d81(%rip),%rax        # 7060 <stdout@GLIBC_2.2.5>
    12df:	be 00 00 00 00       	mov    $0x0,%esi
    12e4:	48 89 c7             	mov    %rax,%rdi
    12e7:	e8 54 fe ff ff       	call   1140 <setbuf@plt>
    12ec:	48 8b 05 8d 5d 00 00 	mov    0x5d8d(%rip),%rax        # 7080 <stderr@GLIBC_2.2.5>
    12f3:	be 00 00 00 00       	mov    $0x0,%esi
    12f8:	48 89 c7             	mov    %rax,%rdi
    12fb:	e8 40 fe ff ff       	call   1140 <setbuf@plt>
    1300:	90                   	nop
    1301:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1305:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    130c:	00 00 
    130e:	74 05                	je     1315 <init+0x6c>
    1310:	e8 1b fe ff ff       	call   1130 <__stack_chk_fail@plt>
    1315:	c9                   	leave  
    1316:	c3                   	ret    

0000000000001317 <the_boats>:
    1317:	f3 0f 1e fa          	endbr64 
    131b:	55                   	push   %rbp
    131c:	48 89 e5             	mov    %rsp,%rbp
    131f:	48 83 ec 10          	sub    $0x10,%rsp
    1323:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    132a:	00 00 
    132c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1330:	31 c0                	xor    %eax,%eax
    1332:	58                   	pop    %rax
    1333:	c3                   	ret    
    1334:	5b                   	pop    %rbx
    1335:	c3                   	ret    
    1336:	5f                   	pop    %rdi
    1337:	c3                   	ret    
    1338:	5a                   	pop    %rdx
    1339:	c3                   	ret    
    133a:	5e                   	pop    %rsi
    133b:	c3                   	ret    
    133c:	59                   	pop    %rcx
    133d:	c3                   	ret    
    133e:	0f 05                	syscall 
    1340:	c3                   	ret    
    1341:	48 89 c7             	mov    %rax,%rdi
    1344:	c3                   	ret    
    1345:	90                   	nop
    1346:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    134a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1351:	00 00 
    1353:	74 05                	je     135a <the_boats+0x43>
    1355:	e8 d6 fd ff ff       	call   1130 <__stack_chk_fail@plt>
    135a:	c9                   	leave  
    135b:	c3                   	ret    

000000000000135c <main>:
    135c:	f3 0f 1e fa          	endbr64 
    1360:	55                   	push   %rbp
    1361:	48 89 e5             	mov    %rsp,%rbp
    1364:	48 83 ec 10          	sub    $0x10,%rsp
    1368:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    136f:	00 00 
    1371:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1375:	31 c0                	xor    %eax,%eax
    1377:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    137e:	48 8d 05 2b 1d 00 00 	lea    0x1d2b(%rip),%rax        # 30b0 <_IO_stdin_used+0xb0>
    1385:	48 89 c7             	mov    %rax,%rdi
    1388:	e8 83 fd ff ff       	call   1110 <puts@plt>
    138d:	48 8d 05 74 1d 00 00 	lea    0x1d74(%rip),%rax        # 3108 <_IO_stdin_used+0x108>
    1394:	48 89 c7             	mov    %rax,%rdi
    1397:	e8 74 fd ff ff       	call   1110 <puts@plt>
    139c:	48 8d 05 bd 1d 00 00 	lea    0x1dbd(%rip),%rax        # 3160 <_IO_stdin_used+0x160>
    13a3:	48 89 c7             	mov    %rax,%rdi
    13a6:	e8 65 fd ff ff       	call   1110 <puts@plt>
    13ab:	48 8d 05 06 1e 00 00 	lea    0x1e06(%rip),%rax        # 31b8 <_IO_stdin_used+0x1b8>
    13b2:	48 89 c7             	mov    %rax,%rdi
    13b5:	e8 56 fd ff ff       	call   1110 <puts@plt>
    13ba:	48 8d 05 4f 1e 00 00 	lea    0x1e4f(%rip),%rax        # 3210 <_IO_stdin_used+0x210>
    13c1:	48 89 c7             	mov    %rax,%rdi
    13c4:	e8 47 fd ff ff       	call   1110 <puts@plt>
    13c9:	48 8d 05 98 1e 00 00 	lea    0x1e98(%rip),%rax        # 3268 <_IO_stdin_used+0x268>
    13d0:	48 89 c7             	mov    %rax,%rdi
    13d3:	e8 38 fd ff ff       	call   1110 <puts@plt>
    13d8:	48 8d 05 e1 1e 00 00 	lea    0x1ee1(%rip),%rax        # 32c0 <_IO_stdin_used+0x2c0>
    13df:	48 89 c7             	mov    %rax,%rdi
    13e2:	e8 29 fd ff ff       	call   1110 <puts@plt>
    13e7:	48 8d 05 2a 1f 00 00 	lea    0x1f2a(%rip),%rax        # 3318 <_IO_stdin_used+0x318>
    13ee:	48 89 c7             	mov    %rax,%rdi
    13f1:	e8 1a fd ff ff       	call   1110 <puts@plt>
    13f6:	48 8d 05 73 1f 00 00 	lea    0x1f73(%rip),%rax        # 3370 <_IO_stdin_used+0x370>
    13fd:	48 89 c7             	mov    %rax,%rdi
    1400:	e8 0b fd ff ff       	call   1110 <puts@plt>
    1405:	bf 0a 00 00 00       	mov    $0xa,%edi
    140a:	e8 f1 fc ff ff       	call   1100 <putchar@plt>
    140f:	48 8d 05 b2 1f 00 00 	lea    0x1fb2(%rip),%rax        # 33c8 <_IO_stdin_used+0x3c8>
    1416:	48 89 c7             	mov    %rax,%rdi
    1419:	e8 f2 fc ff ff       	call   1110 <puts@plt>
    141e:	bf 0a 00 00 00       	mov    $0xa,%edi
    1423:	e8 d8 fc ff ff       	call   1100 <putchar@plt>
    1428:	66 c7 05 5f 5c 00 00 	movw   $0x0,0x5c5f(%rip)        # 7090 <g_Barbell>
    142f:	00 00 
    1431:	66 c7 05 58 5c 00 00 	movw   $0xe1,0x5c58(%rip)        # 7092 <g_Barbell+0x2>
    1438:	e1 00 
    143a:	66 c7 05 57 5c 00 00 	movw   $0x8c,0x5c57(%rip)        # 709a <g_Barbell+0xa>
    1441:	8c 00 
    1443:	66 c7 05 48 5c 00 00 	movw   $0x13b,0x5c48(%rip)        # 7094 <g_Barbell+0x4>
    144a:	3b 01 
    144c:	66 c7 05 43 5c 00 00 	movw   $0x19,0x5c43(%rip)        # 7098 <g_Barbell+0x8>
    1453:	19 00 
    1455:	66 c7 05 38 5c 00 00 	movw   $0x0,0x5c38(%rip)        # 7096 <g_Barbell+0x6>
    145c:	00 00 
    145e:	48 8d 05 7b 1f 00 00 	lea    0x1f7b(%rip),%rax        # 33e0 <_IO_stdin_used+0x3e0>
    1465:	48 89 c7             	mov    %rax,%rdi
    1468:	e8 a3 fc ff ff       	call   1110 <puts@plt>
    146d:	48 8d 05 91 1f 00 00 	lea    0x1f91(%rip),%rax        # 3405 <_IO_stdin_used+0x405>
    1474:	48 89 c7             	mov    %rax,%rdi
    1477:	e8 94 fc ff ff       	call   1110 <puts@plt>
    147c:	0f b7 05 15 5c 00 00 	movzwl 0x5c15(%rip),%eax        # 7098 <g_Barbell+0x8>
    1483:	0f b7 d0             	movzwl %ax,%edx
    1486:	0f b7 05 05 5c 00 00 	movzwl 0x5c05(%rip),%eax        # 7092 <g_Barbell+0x2>
    148d:	0f b7 c0             	movzwl %ax,%eax
    1490:	89 c6                	mov    %eax,%esi
    1492:	48 8d 05 7f 1f 00 00 	lea    0x1f7f(%rip),%rax        # 3418 <_IO_stdin_used+0x418>
    1499:	48 89 c7             	mov    %rax,%rdi
    149c:	b8 00 00 00 00       	mov    $0x0,%eax
    14a1:	e8 aa fc ff ff       	call   1150 <printf@plt>
    14a6:	0f b7 05 e3 5b 00 00 	movzwl 0x5be3(%rip),%eax        # 7090 <g_Barbell>
    14ad:	0f b7 c0             	movzwl %ax,%eax
    14b0:	89 c6                	mov    %eax,%esi
    14b2:	48 8d 05 77 1f 00 00 	lea    0x1f77(%rip),%rax        # 3430 <_IO_stdin_used+0x430>
    14b9:	48 89 c7             	mov    %rax,%rdi
    14bc:	b8 00 00 00 00       	mov    $0x0,%eax
    14c1:	e8 8a fc ff ff       	call   1150 <printf@plt>
    14c6:	0f b7 05 cb 5b 00 00 	movzwl 0x5bcb(%rip),%eax        # 7098 <g_Barbell+0x8>
    14cd:	0f b7 d0             	movzwl %ax,%edx
    14d0:	0f b7 05 bf 5b 00 00 	movzwl 0x5bbf(%rip),%eax        # 7096 <g_Barbell+0x6>
    14d7:	0f b7 c0             	movzwl %ax,%eax
    14da:	89 c6                	mov    %eax,%esi
    14dc:	48 8d 05 61 1f 00 00 	lea    0x1f61(%rip),%rax        # 3444 <_IO_stdin_used+0x444>
    14e3:	48 89 c7             	mov    %rax,%rdi
    14e6:	b8 00 00 00 00       	mov    $0x0,%eax
    14eb:	e8 60 fc ff ff       	call   1150 <printf@plt>
    14f0:	0f b7 05 a3 5b 00 00 	movzwl 0x5ba3(%rip),%eax        # 709a <g_Barbell+0xa>
    14f7:	0f b7 c0             	movzwl %ax,%eax
    14fa:	89 c6                	mov    %eax,%esi
    14fc:	48 8d 05 4d 1f 00 00 	lea    0x1f4d(%rip),%rax        # 3450 <_IO_stdin_used+0x450>
    1503:	48 89 c7             	mov    %rax,%rdi
    1506:	b8 00 00 00 00       	mov    $0x0,%eax
    150b:	e8 40 fc ff ff       	call   1150 <printf@plt>
    1510:	48 8d 05 c9 1e 00 00 	lea    0x1ec9(%rip),%rax        # 33e0 <_IO_stdin_used+0x3e0>
    1517:	48 89 c7             	mov    %rax,%rdi
    151a:	e8 f1 fb ff ff       	call   1110 <puts@plt>
    151f:	bf 0a 00 00 00       	mov    $0xa,%edi
    1524:	e8 d7 fb ff ff       	call   1100 <putchar@plt>
    1529:	48 8d 05 2d 1f 00 00 	lea    0x1f2d(%rip),%rax        # 345d <_IO_stdin_used+0x45d>
    1530:	48 89 c7             	mov    %rax,%rdi
    1533:	e8 d8 fb ff ff       	call   1110 <puts@plt>
    1538:	48 8d 05 30 1f 00 00 	lea    0x1f30(%rip),%rax        # 346f <_IO_stdin_used+0x46f>
    153f:	48 89 c7             	mov    %rax,%rdi
    1542:	e8 c9 fb ff ff       	call   1110 <puts@plt>
    1547:	48 8d 05 2c 1f 00 00 	lea    0x1f2c(%rip),%rax        # 347a <_IO_stdin_used+0x47a>
    154e:	48 89 c7             	mov    %rax,%rdi
    1551:	e8 ba fb ff ff       	call   1110 <puts@plt>
    1556:	48 8d 05 28 1f 00 00 	lea    0x1f28(%rip),%rax        # 3485 <_IO_stdin_used+0x485>
    155d:	48 89 c7             	mov    %rax,%rdi
    1560:	e8 ab fb ff ff       	call   1110 <puts@plt>
    1565:	48 8d 05 24 1f 00 00 	lea    0x1f24(%rip),%rax        # 3490 <_IO_stdin_used+0x490>
    156c:	48 89 c7             	mov    %rax,%rdi
    156f:	e8 9c fb ff ff       	call   1110 <puts@plt>
    1574:	48 8d 05 1e 1f 00 00 	lea    0x1f1e(%rip),%rax        # 3499 <_IO_stdin_used+0x499>
    157b:	48 89 c7             	mov    %rax,%rdi
    157e:	e8 8d fb ff ff       	call   1110 <puts@plt>
    1583:	0f b7 05 10 5b 00 00 	movzwl 0x5b10(%rip),%eax        # 709a <g_Barbell+0xa>
    158a:	66 83 f8 31          	cmp    $0x31,%ax
    158e:	77 22                	ja     15b2 <main+0x256>
    1590:	0f b7 15 f9 5a 00 00 	movzwl 0x5af9(%rip),%edx        # 7090 <g_Barbell>
    1597:	0f b7 05 f4 5a 00 00 	movzwl 0x5af4(%rip),%eax        # 7092 <g_Barbell+0x2>
    159e:	66 39 c2             	cmp    %ax,%dx
    15a1:	72 0f                	jb     15b2 <main+0x256>
    15a3:	48 8d 05 ff 1e 00 00 	lea    0x1eff(%rip),%rax        # 34a9 <_IO_stdin_used+0x4a9>
    15aa:	48 89 c7             	mov    %rax,%rdi
    15ad:	e8 5e fb ff ff       	call   1110 <puts@plt>
    15b2:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
    15b6:	48 89 c6             	mov    %rax,%rsi
    15b9:	48 8d 05 ff 1e 00 00 	lea    0x1eff(%rip),%rax        # 34bf <_IO_stdin_used+0x4bf>
    15c0:	48 89 c7             	mov    %rax,%rdi
    15c3:	b8 00 00 00 00       	mov    $0x0,%eax
    15c8:	e8 c3 fb ff ff       	call   1190 <__isoc99_scanf@plt>
    15cd:	8b 45 f4             	mov    -0xc(%rbp),%eax
    15d0:	83 f8 06             	cmp    $0x6,%eax
    15d3:	0f 87 ca 00 00 00    	ja     16a3 <main+0x347>
    15d9:	89 c0                	mov    %eax,%eax
    15db:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    15e2:	00 
    15e3:	48 8d 05 2a 1f 00 00 	lea    0x1f2a(%rip),%rax        # 3514 <_IO_stdin_used+0x514>
    15ea:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    15ed:	48 98                	cltq   
    15ef:	48 8d 15 1e 1f 00 00 	lea    0x1f1e(%rip),%rdx        # 3514 <_IO_stdin_used+0x514>
    15f6:	48 01 d0             	add    %rdx,%rax
    15f9:	3e ff e0             	notrack jmp *%rax
    15fc:	b8 00 00 00 00       	mov    $0x0,%eax
    1601:	e8 d1 01 00 00       	call   17d7 <add_10s>
    1606:	e9 aa 00 00 00       	jmp    16b5 <main+0x359>
    160b:	b8 00 00 00 00       	mov    $0x0,%eax
    1610:	e8 65 02 00 00       	call   187a <add_25s>
    1615:	e9 9b 00 00 00       	jmp    16b5 <main+0x359>
    161a:	b8 00 00 00 00       	mov    $0x0,%eax
    161f:	e8 f9 02 00 00       	call   191d <add_45s>
    1624:	e9 8c 00 00 00       	jmp    16b5 <main+0x359>
    1629:	0f b7 05 6a 5a 00 00 	movzwl 0x5a6a(%rip),%eax        # 709a <g_Barbell+0xa>
    1630:	66 85 c0             	test   %ax,%ax
    1633:	75 11                	jne    1646 <main+0x2ea>
    1635:	48 8d 05 8c 1e 00 00 	lea    0x1e8c(%rip),%rax        # 34c8 <_IO_stdin_used+0x4c8>
    163c:	48 89 c7             	mov    %rax,%rdi
    163f:	e8 cc fa ff ff       	call   1110 <puts@plt>
    1644:	eb 6f                	jmp    16b5 <main+0x359>
    1646:	b8 00 00 00 00       	mov    $0x0,%eax
    164b:	e8 9f 06 00 00       	call   1cef <bench>
    1650:	eb 63                	jmp    16b5 <main+0x359>
    1652:	48 8d 05 8e 1e 00 00 	lea    0x1e8e(%rip),%rax        # 34e7 <_IO_stdin_used+0x4e7>
    1659:	48 89 c7             	mov    %rax,%rdi
    165c:	b8 00 00 00 00       	mov    $0x0,%eax
    1661:	e8 ea fa ff ff       	call   1150 <printf@plt>
    1666:	48 8d 05 7f 1e 00 00 	lea    0x1e7f(%rip),%rax        # 34ec <_IO_stdin_used+0x4ec>
    166d:	48 89 c7             	mov    %rax,%rdi
    1670:	e8 9b fa ff ff       	call   1110 <puts@plt>
    1675:	eb 3e                	jmp    16b5 <main+0x359>
    1677:	0f b7 05 1c 5a 00 00 	movzwl 0x5a1c(%rip),%eax        # 709a <g_Barbell+0xa>
    167e:	66 83 f8 31          	cmp    $0x31,%ax
    1682:	77 30                	ja     16b4 <main+0x358>
    1684:	0f b7 15 05 5a 00 00 	movzwl 0x5a05(%rip),%edx        # 7090 <g_Barbell>
    168b:	0f b7 05 00 5a 00 00 	movzwl 0x5a00(%rip),%eax        # 7092 <g_Barbell+0x2>
    1692:	66 39 c2             	cmp    %ax,%dx
    1695:	72 1d                	jb     16b4 <main+0x358>
    1697:	b8 00 00 00 00       	mov    $0x0,%eax
    169c:	e8 1f 03 00 00       	call   19c0 <motivation>
    16a1:	eb 11                	jmp    16b4 <main+0x358>
    16a3:	48 8d 05 58 1e 00 00 	lea    0x1e58(%rip),%rax        # 3502 <_IO_stdin_used+0x502>
    16aa:	48 89 c7             	mov    %rax,%rdi
    16ad:	e8 5e fa ff ff       	call   1110 <puts@plt>
    16b2:	eb 01                	jmp    16b5 <main+0x359>
    16b4:	90                   	nop
    16b5:	e9 a4 fd ff ff       	jmp    145e <main+0x102>

00000000000016ba <calculate_stamina_needed>:
    16ba:	f3 0f 1e fa          	endbr64 
    16be:	55                   	push   %rbp
    16bf:	48 89 e5             	mov    %rsp,%rbp
    16c2:	48 83 ec 10          	sub    $0x10,%rsp
    16c6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    16cd:	00 00 
    16cf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    16d3:	31 c0                	xor    %eax,%eax
    16d5:	0f b7 05 b4 59 00 00 	movzwl 0x59b4(%rip),%eax        # 7090 <g_Barbell>
    16dc:	66 d1 e8             	shr    %ax
    16df:	0f b7 c0             	movzwl %ax,%eax
    16e2:	69 c0 25 49 00 00    	imul   $0x4925,%eax,%eax
    16e8:	c1 e8 10             	shr    $0x10,%eax
    16eb:	66 d1 e8             	shr    %ax
    16ee:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    16f2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    16f9:	00 00 
    16fb:	74 05                	je     1702 <calculate_stamina_needed+0x48>
    16fd:	e8 2e fa ff ff       	call   1130 <__stack_chk_fail@plt>
    1702:	c9                   	leave  
    1703:	c3                   	ret    

0000000000001704 <printTextBox>:
    1704:	f3 0f 1e fa          	endbr64 
    1708:	55                   	push   %rbp
    1709:	48 89 e5             	mov    %rsp,%rbp
    170c:	48 83 ec 30          	sub    $0x30,%rsp
    1710:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1714:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    171b:	00 00 
    171d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1721:	31 c0                	xor    %eax,%eax
    1723:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1727:	48 89 c7             	mov    %rax,%rdi
    172a:	e8 f1 f9 ff ff       	call   1120 <strlen@plt>
    172f:	83 c0 06             	add    $0x6,%eax
    1732:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1735:	bf 7c 00 00 00       	mov    $0x7c,%edi
    173a:	e8 c1 f9 ff ff       	call   1100 <putchar@plt>
    173f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    1746:	eb 0e                	jmp    1756 <printTextBox+0x52>
    1748:	bf 2d 00 00 00       	mov    $0x2d,%edi
    174d:	e8 ae f9 ff ff       	call   1100 <putchar@plt>
    1752:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    1756:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1759:	3b 45 f4             	cmp    -0xc(%rbp),%eax
    175c:	7c ea                	jl     1748 <printTextBox+0x44>
    175e:	48 8d 05 cb 1d 00 00 	lea    0x1dcb(%rip),%rax        # 3530 <_IO_stdin_used+0x530>
    1765:	48 89 c7             	mov    %rax,%rdi
    1768:	e8 a3 f9 ff ff       	call   1110 <puts@plt>
    176d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1771:	48 89 c6             	mov    %rax,%rsi
    1774:	48 8d 05 b7 1d 00 00 	lea    0x1db7(%rip),%rax        # 3532 <_IO_stdin_used+0x532>
    177b:	48 89 c7             	mov    %rax,%rdi
    177e:	b8 00 00 00 00       	mov    $0x0,%eax
    1783:	e8 c8 f9 ff ff       	call   1150 <printf@plt>
    1788:	bf 7c 00 00 00       	mov    $0x7c,%edi
    178d:	e8 6e f9 ff ff       	call   1100 <putchar@plt>
    1792:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    1799:	eb 0e                	jmp    17a9 <printTextBox+0xa5>
    179b:	bf 2d 00 00 00       	mov    $0x2d,%edi
    17a0:	e8 5b f9 ff ff       	call   1100 <putchar@plt>
    17a5:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    17a9:	8b 45 f0             	mov    -0x10(%rbp),%eax
    17ac:	3b 45 f4             	cmp    -0xc(%rbp),%eax
    17af:	7c ea                	jl     179b <printTextBox+0x97>
    17b1:	48 8d 05 78 1d 00 00 	lea    0x1d78(%rip),%rax        # 3530 <_IO_stdin_used+0x530>
    17b8:	48 89 c7             	mov    %rax,%rdi
    17bb:	e8 50 f9 ff ff       	call   1110 <puts@plt>
    17c0:	90                   	nop
    17c1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    17c5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    17cc:	00 00 
    17ce:	74 05                	je     17d5 <printTextBox+0xd1>
    17d0:	e8 5b f9 ff ff       	call   1130 <__stack_chk_fail@plt>
    17d5:	c9                   	leave  
    17d6:	c3                   	ret    

00000000000017d7 <add_10s>:
    17d7:	f3 0f 1e fa          	endbr64 
    17db:	55                   	push   %rbp
    17dc:	48 89 e5             	mov    %rsp,%rbp
    17df:	48 83 ec 10          	sub    $0x10,%rsp
    17e3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17ea:	00 00 
    17ec:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    17f0:	31 c0                	xor    %eax,%eax
    17f2:	48 8d 05 ee 1c 00 00 	lea    0x1cee(%rip),%rax        # 34e7 <_IO_stdin_used+0x4e7>
    17f9:	48 89 c7             	mov    %rax,%rdi
    17fc:	b8 00 00 00 00       	mov    $0x0,%eax
    1801:	e8 4a f9 ff ff       	call   1150 <printf@plt>
    1806:	48 8d 05 31 1d 00 00 	lea    0x1d31(%rip),%rax        # 353e <_IO_stdin_used+0x53e>
    180d:	48 89 c7             	mov    %rax,%rdi
    1810:	e8 fb f8 ff ff       	call   1110 <puts@plt>
    1815:	0f b7 05 74 58 00 00 	movzwl 0x5874(%rip),%eax        # 7090 <g_Barbell>
    181c:	0f b7 c0             	movzwl %ax,%eax
    181f:	8d 50 09             	lea    0x9(%rax),%edx
    1822:	0f b7 05 6b 58 00 00 	movzwl 0x586b(%rip),%eax        # 7094 <g_Barbell+0x4>
    1829:	0f b7 c0             	movzwl %ax,%eax
    182c:	39 c2                	cmp    %eax,%edx
    182e:	7c 19                	jl     1849 <add_10s+0x72>
    1830:	48 8d 05 19 1d 00 00 	lea    0x1d19(%rip),%rax        # 3550 <_IO_stdin_used+0x550>
    1837:	48 89 c7             	mov    %rax,%rdi
    183a:	e8 d1 f8 ff ff       	call   1110 <puts@plt>
    183f:	bf 00 00 00 00       	mov    $0x0,%edi
    1844:	e8 57 f9 ff ff       	call   11a0 <exit@plt>
    1849:	0f b7 05 40 58 00 00 	movzwl 0x5840(%rip),%eax        # 7090 <g_Barbell>
    1850:	83 c0 0a             	add    $0xa,%eax
    1853:	66 89 05 36 58 00 00 	mov    %ax,0x5836(%rip)        # 7090 <g_Barbell>
    185a:	66 c7 05 33 58 00 00 	movw   $0x0,0x5833(%rip)        # 7096 <g_Barbell+0x6>
    1861:	00 00 
    1863:	90                   	nop
    1864:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1868:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    186f:	00 00 
    1871:	74 05                	je     1878 <add_10s+0xa1>
    1873:	e8 b8 f8 ff ff       	call   1130 <__stack_chk_fail@plt>
    1878:	c9                   	leave  
    1879:	c3                   	ret    

000000000000187a <add_25s>:
    187a:	f3 0f 1e fa          	endbr64 
    187e:	55                   	push   %rbp
    187f:	48 89 e5             	mov    %rsp,%rbp
    1882:	48 83 ec 10          	sub    $0x10,%rsp
    1886:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    188d:	00 00 
    188f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1893:	31 c0                	xor    %eax,%eax
    1895:	48 8d 05 4b 1c 00 00 	lea    0x1c4b(%rip),%rax        # 34e7 <_IO_stdin_used+0x4e7>
    189c:	48 89 c7             	mov    %rax,%rdi
    189f:	b8 00 00 00 00       	mov    $0x0,%eax
    18a4:	e8 a7 f8 ff ff       	call   1150 <printf@plt>
    18a9:	48 8d 05 d8 1c 00 00 	lea    0x1cd8(%rip),%rax        # 3588 <_IO_stdin_used+0x588>
    18b0:	48 89 c7             	mov    %rax,%rdi
    18b3:	e8 58 f8 ff ff       	call   1110 <puts@plt>
    18b8:	0f b7 05 d1 57 00 00 	movzwl 0x57d1(%rip),%eax        # 7090 <g_Barbell>
    18bf:	0f b7 c0             	movzwl %ax,%eax
    18c2:	8d 50 18             	lea    0x18(%rax),%edx
    18c5:	0f b7 05 c8 57 00 00 	movzwl 0x57c8(%rip),%eax        # 7094 <g_Barbell+0x4>
    18cc:	0f b7 c0             	movzwl %ax,%eax
    18cf:	39 c2                	cmp    %eax,%edx
    18d1:	7c 19                	jl     18ec <add_25s+0x72>
    18d3:	48 8d 05 76 1c 00 00 	lea    0x1c76(%rip),%rax        # 3550 <_IO_stdin_used+0x550>
    18da:	48 89 c7             	mov    %rax,%rdi
    18dd:	e8 2e f8 ff ff       	call   1110 <puts@plt>
    18e2:	bf 00 00 00 00       	mov    $0x0,%edi
    18e7:	e8 b4 f8 ff ff       	call   11a0 <exit@plt>
    18ec:	0f b7 05 9d 57 00 00 	movzwl 0x579d(%rip),%eax        # 7090 <g_Barbell>
    18f3:	83 c0 19             	add    $0x19,%eax
    18f6:	66 89 05 93 57 00 00 	mov    %ax,0x5793(%rip)        # 7090 <g_Barbell>
    18fd:	66 c7 05 90 57 00 00 	movw   $0x0,0x5790(%rip)        # 7096 <g_Barbell+0x6>
    1904:	00 00 
    1906:	90                   	nop
    1907:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    190b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1912:	00 00 
    1914:	74 05                	je     191b <add_25s+0xa1>
    1916:	e8 15 f8 ff ff       	call   1130 <__stack_chk_fail@plt>
    191b:	c9                   	leave  
    191c:	c3                   	ret    

000000000000191d <add_45s>:
    191d:	f3 0f 1e fa          	endbr64 
    1921:	55                   	push   %rbp
    1922:	48 89 e5             	mov    %rsp,%rbp
    1925:	48 83 ec 10          	sub    $0x10,%rsp
    1929:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1930:	00 00 
    1932:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1936:	31 c0                	xor    %eax,%eax
    1938:	48 8d 05 a8 1b 00 00 	lea    0x1ba8(%rip),%rax        # 34e7 <_IO_stdin_used+0x4e7>
    193f:	48 89 c7             	mov    %rax,%rdi
    1942:	b8 00 00 00 00       	mov    $0x0,%eax
    1947:	e8 04 f8 ff ff       	call   1150 <printf@plt>
    194c:	48 8d 05 40 1c 00 00 	lea    0x1c40(%rip),%rax        # 3593 <_IO_stdin_used+0x593>
    1953:	48 89 c7             	mov    %rax,%rdi
    1956:	e8 b5 f7 ff ff       	call   1110 <puts@plt>
    195b:	0f b7 05 2e 57 00 00 	movzwl 0x572e(%rip),%eax        # 7090 <g_Barbell>
    1962:	0f b7 c0             	movzwl %ax,%eax
    1965:	8d 50 2c             	lea    0x2c(%rax),%edx
    1968:	0f b7 05 25 57 00 00 	movzwl 0x5725(%rip),%eax        # 7094 <g_Barbell+0x4>
    196f:	0f b7 c0             	movzwl %ax,%eax
    1972:	39 c2                	cmp    %eax,%edx
    1974:	7c 19                	jl     198f <add_45s+0x72>
    1976:	48 8d 05 d3 1b 00 00 	lea    0x1bd3(%rip),%rax        # 3550 <_IO_stdin_used+0x550>
    197d:	48 89 c7             	mov    %rax,%rdi
    1980:	e8 8b f7 ff ff       	call   1110 <puts@plt>
    1985:	bf 00 00 00 00       	mov    $0x0,%edi
    198a:	e8 11 f8 ff ff       	call   11a0 <exit@plt>
    198f:	0f b7 05 fa 56 00 00 	movzwl 0x56fa(%rip),%eax        # 7090 <g_Barbell>
    1996:	83 c0 2d             	add    $0x2d,%eax
    1999:	66 89 05 f0 56 00 00 	mov    %ax,0x56f0(%rip)        # 7090 <g_Barbell>
    19a0:	66 c7 05 ed 56 00 00 	movw   $0x0,0x56ed(%rip)        # 7096 <g_Barbell+0x6>
    19a7:	00 00 
    19a9:	90                   	nop
    19aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19ae:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    19b5:	00 00 
    19b7:	74 05                	je     19be <add_45s+0xa1>
    19b9:	e8 72 f7 ff ff       	call   1130 <__stack_chk_fail@plt>
    19be:	c9                   	leave  
    19bf:	c3                   	ret    

00000000000019c0 <motivation>:
    19c0:	f3 0f 1e fa          	endbr64 
    19c4:	55                   	push   %rbp
    19c5:	48 89 e5             	mov    %rsp,%rbp
    19c8:	48 83 ec 20          	sub    $0x20,%rsp
    19cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    19d3:	00 00 
    19d5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    19d9:	31 c0                	xor    %eax,%eax
    19db:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    19df:	ba 08 00 00 00       	mov    $0x8,%edx
    19e4:	be 00 00 00 00       	mov    $0x0,%esi
    19e9:	48 89 c7             	mov    %rax,%rdi
    19ec:	e8 6f f7 ff ff       	call   1160 <memset@plt>
    19f1:	48 8d 05 a8 1b 00 00 	lea    0x1ba8(%rip),%rax        # 35a0 <_IO_stdin_used+0x5a0>
    19f8:	48 89 c7             	mov    %rax,%rdi
    19fb:	b8 00 00 00 00       	mov    $0x0,%eax
    1a00:	e8 4b f7 ff ff       	call   1150 <printf@plt>
    1a05:	e8 76 f7 ff ff       	call   1180 <getchar@plt>
    1a0a:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1a0d:	83 7d ec 0a          	cmpl   $0xa,-0x14(%rbp)
    1a11:	74 08                	je     1a1b <motivation+0x5b>
    1a13:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%rbp)
    1a17:	74 02                	je     1a1b <motivation+0x5b>
    1a19:	eb ea                	jmp    1a05 <motivation+0x45>
    1a1b:	48 8b 15 4e 56 00 00 	mov    0x564e(%rip),%rdx        # 7070 <stdin@GLIBC_2.2.5>
    1a22:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    1a26:	be e8 03 00 00       	mov    $0x3e8,%esi
    1a2b:	48 89 c7             	mov    %rax,%rdi
    1a2e:	e8 3d f7 ff ff       	call   1170 <fgets@plt>
    1a33:	48 8d 05 ad 1a 00 00 	lea    0x1aad(%rip),%rax        # 34e7 <_IO_stdin_used+0x4e7>
    1a3a:	48 89 c7             	mov    %rax,%rdi
    1a3d:	b8 00 00 00 00       	mov    $0x0,%eax
    1a42:	e8 09 f7 ff ff       	call   1150 <printf@plt>
    1a47:	48 8d 05 72 1b 00 00 	lea    0x1b72(%rip),%rax        # 35c0 <_IO_stdin_used+0x5c0>
    1a4e:	48 89 c7             	mov    %rax,%rdi
    1a51:	b8 00 00 00 00       	mov    $0x0,%eax
    1a56:	e8 f5 f6 ff ff       	call   1150 <printf@plt>
    1a5b:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    1a5f:	48 89 c7             	mov    %rax,%rdi
    1a62:	b8 00 00 00 00       	mov    $0x0,%eax
    1a67:	e8 e4 f6 ff ff       	call   1150 <printf@plt>
    1a6c:	48 8d 05 56 1b 00 00 	lea    0x1b56(%rip),%rax        # 35c9 <_IO_stdin_used+0x5c9>
    1a73:	48 89 c7             	mov    %rax,%rdi
    1a76:	b8 00 00 00 00       	mov    $0x0,%eax
    1a7b:	e8 d0 f6 ff ff       	call   1150 <printf@plt>
    1a80:	48 8d 05 59 1b 00 00 	lea    0x1b59(%rip),%rax        # 35e0 <_IO_stdin_used+0x5e0>
    1a87:	48 89 c7             	mov    %rax,%rdi
    1a8a:	e8 81 f6 ff ff       	call   1110 <puts@plt>
    1a8f:	48 8d 05 b2 1b 00 00 	lea    0x1bb2(%rip),%rax        # 3648 <_IO_stdin_used+0x648>
    1a96:	48 89 c7             	mov    %rax,%rdi
    1a99:	e8 72 f6 ff ff       	call   1110 <puts@plt>
    1a9e:	48 8d 05 a3 1b 00 00 	lea    0x1ba3(%rip),%rax        # 3648 <_IO_stdin_used+0x648>
    1aa5:	48 89 c7             	mov    %rax,%rdi
    1aa8:	e8 63 f6 ff ff       	call   1110 <puts@plt>
    1aad:	48 8d 05 fc 1b 00 00 	lea    0x1bfc(%rip),%rax        # 36b0 <_IO_stdin_used+0x6b0>
    1ab4:	48 89 c7             	mov    %rax,%rdi
    1ab7:	e8 54 f6 ff ff       	call   1110 <puts@plt>
    1abc:	48 8d 05 55 1c 00 00 	lea    0x1c55(%rip),%rax        # 3718 <_IO_stdin_used+0x718>
    1ac3:	48 89 c7             	mov    %rax,%rdi
    1ac6:	e8 45 f6 ff ff       	call   1110 <puts@plt>
    1acb:	48 8d 05 ae 1c 00 00 	lea    0x1cae(%rip),%rax        # 3780 <_IO_stdin_used+0x780>
    1ad2:	48 89 c7             	mov    %rax,%rdi
    1ad5:	e8 36 f6 ff ff       	call   1110 <puts@plt>
    1ada:	48 8d 05 07 1d 00 00 	lea    0x1d07(%rip),%rax        # 37e8 <_IO_stdin_used+0x7e8>
    1ae1:	48 89 c7             	mov    %rax,%rdi
    1ae4:	e8 27 f6 ff ff       	call   1110 <puts@plt>
    1ae9:	48 8d 05 60 1d 00 00 	lea    0x1d60(%rip),%rax        # 3850 <_IO_stdin_used+0x850>
    1af0:	48 89 c7             	mov    %rax,%rdi
    1af3:	e8 18 f6 ff ff       	call   1110 <puts@plt>
    1af8:	48 8d 05 b9 1d 00 00 	lea    0x1db9(%rip),%rax        # 38b8 <_IO_stdin_used+0x8b8>
    1aff:	48 89 c7             	mov    %rax,%rdi
    1b02:	e8 09 f6 ff ff       	call   1110 <puts@plt>
    1b07:	48 8d 05 12 1e 00 00 	lea    0x1e12(%rip),%rax        # 3920 <_IO_stdin_used+0x920>
    1b0e:	48 89 c7             	mov    %rax,%rdi
    1b11:	e8 fa f5 ff ff       	call   1110 <puts@plt>
    1b16:	48 8d 05 6b 1e 00 00 	lea    0x1e6b(%rip),%rax        # 3988 <_IO_stdin_used+0x988>
    1b1d:	48 89 c7             	mov    %rax,%rdi
    1b20:	e8 eb f5 ff ff       	call   1110 <puts@plt>
    1b25:	48 8d 05 c4 1e 00 00 	lea    0x1ec4(%rip),%rax        # 39f0 <_IO_stdin_used+0x9f0>
    1b2c:	48 89 c7             	mov    %rax,%rdi
    1b2f:	e8 dc f5 ff ff       	call   1110 <puts@plt>
    1b34:	48 8d 05 1d 1f 00 00 	lea    0x1f1d(%rip),%rax        # 3a58 <_IO_stdin_used+0xa58>
    1b3b:	48 89 c7             	mov    %rax,%rdi
    1b3e:	e8 cd f5 ff ff       	call   1110 <puts@plt>
    1b43:	48 8d 05 76 1f 00 00 	lea    0x1f76(%rip),%rax        # 3ac0 <_IO_stdin_used+0xac0>
    1b4a:	48 89 c7             	mov    %rax,%rdi
    1b4d:	e8 be f5 ff ff       	call   1110 <puts@plt>
    1b52:	48 8d 05 cf 1f 00 00 	lea    0x1fcf(%rip),%rax        # 3b28 <_IO_stdin_used+0xb28>
    1b59:	48 89 c7             	mov    %rax,%rdi
    1b5c:	e8 af f5 ff ff       	call   1110 <puts@plt>
    1b61:	48 8d 05 28 20 00 00 	lea    0x2028(%rip),%rax        # 3b90 <_IO_stdin_used+0xb90>
    1b68:	48 89 c7             	mov    %rax,%rdi
    1b6b:	e8 a0 f5 ff ff       	call   1110 <puts@plt>
    1b70:	48 8d 05 81 20 00 00 	lea    0x2081(%rip),%rax        # 3bf8 <_IO_stdin_used+0xbf8>
    1b77:	48 89 c7             	mov    %rax,%rdi
    1b7a:	e8 91 f5 ff ff       	call   1110 <puts@plt>
    1b7f:	48 8d 05 da 20 00 00 	lea    0x20da(%rip),%rax        # 3c60 <_IO_stdin_used+0xc60>
    1b86:	48 89 c7             	mov    %rax,%rdi
    1b89:	e8 82 f5 ff ff       	call   1110 <puts@plt>
    1b8e:	48 8d 05 33 21 00 00 	lea    0x2133(%rip),%rax        # 3cc8 <_IO_stdin_used+0xcc8>
    1b95:	48 89 c7             	mov    %rax,%rdi
    1b98:	e8 73 f5 ff ff       	call   1110 <puts@plt>
    1b9d:	48 8d 05 8c 21 00 00 	lea    0x218c(%rip),%rax        # 3d30 <_IO_stdin_used+0xd30>
    1ba4:	48 89 c7             	mov    %rax,%rdi
    1ba7:	e8 64 f5 ff ff       	call   1110 <puts@plt>
    1bac:	48 8d 05 e5 21 00 00 	lea    0x21e5(%rip),%rax        # 3d98 <_IO_stdin_used+0xd98>
    1bb3:	48 89 c7             	mov    %rax,%rdi
    1bb6:	e8 55 f5 ff ff       	call   1110 <puts@plt>
    1bbb:	48 8d 05 3e 22 00 00 	lea    0x223e(%rip),%rax        # 3e00 <_IO_stdin_used+0xe00>
    1bc2:	48 89 c7             	mov    %rax,%rdi
    1bc5:	e8 46 f5 ff ff       	call   1110 <puts@plt>
    1bca:	48 8d 05 97 22 00 00 	lea    0x2297(%rip),%rax        # 3e68 <_IO_stdin_used+0xe68>
    1bd1:	48 89 c7             	mov    %rax,%rdi
    1bd4:	e8 37 f5 ff ff       	call   1110 <puts@plt>
    1bd9:	48 8d 05 f0 22 00 00 	lea    0x22f0(%rip),%rax        # 3ed0 <_IO_stdin_used+0xed0>
    1be0:	48 89 c7             	mov    %rax,%rdi
    1be3:	e8 28 f5 ff ff       	call   1110 <puts@plt>
    1be8:	48 8d 05 49 23 00 00 	lea    0x2349(%rip),%rax        # 3f38 <_IO_stdin_used+0xf38>
    1bef:	48 89 c7             	mov    %rax,%rdi
    1bf2:	e8 19 f5 ff ff       	call   1110 <puts@plt>
    1bf7:	48 8d 05 a2 23 00 00 	lea    0x23a2(%rip),%rax        # 3fa0 <_IO_stdin_used+0xfa0>
    1bfe:	48 89 c7             	mov    %rax,%rdi
    1c01:	e8 0a f5 ff ff       	call   1110 <puts@plt>
    1c06:	48 8d 05 fb 23 00 00 	lea    0x23fb(%rip),%rax        # 4008 <_IO_stdin_used+0x1008>
    1c0d:	48 89 c7             	mov    %rax,%rdi
    1c10:	e8 fb f4 ff ff       	call   1110 <puts@plt>
    1c15:	48 8d 05 54 24 00 00 	lea    0x2454(%rip),%rax        # 4070 <_IO_stdin_used+0x1070>
    1c1c:	48 89 c7             	mov    %rax,%rdi
    1c1f:	e8 ec f4 ff ff       	call   1110 <puts@plt>
    1c24:	48 8d 05 ad 24 00 00 	lea    0x24ad(%rip),%rax        # 40d8 <_IO_stdin_used+0x10d8>
    1c2b:	48 89 c7             	mov    %rax,%rdi
    1c2e:	e8 dd f4 ff ff       	call   1110 <puts@plt>
    1c33:	48 8d 05 06 25 00 00 	lea    0x2506(%rip),%rax        # 4140 <_IO_stdin_used+0x1140>
    1c3a:	48 89 c7             	mov    %rax,%rdi
    1c3d:	e8 ce f4 ff ff       	call   1110 <puts@plt>
    1c42:	48 8d 05 5f 25 00 00 	lea    0x255f(%rip),%rax        # 41a8 <_IO_stdin_used+0x11a8>
    1c49:	48 89 c7             	mov    %rax,%rdi
    1c4c:	e8 bf f4 ff ff       	call   1110 <puts@plt>
    1c51:	48 8d 05 b8 25 00 00 	lea    0x25b8(%rip),%rax        # 4210 <_IO_stdin_used+0x1210>
    1c58:	48 89 c7             	mov    %rax,%rdi
    1c5b:	e8 b0 f4 ff ff       	call   1110 <puts@plt>
    1c60:	48 8d 05 11 26 00 00 	lea    0x2611(%rip),%rax        # 4278 <_IO_stdin_used+0x1278>
    1c67:	48 89 c7             	mov    %rax,%rdi
    1c6a:	e8 a1 f4 ff ff       	call   1110 <puts@plt>
    1c6f:	48 8d 05 6a 26 00 00 	lea    0x266a(%rip),%rax        # 42e0 <_IO_stdin_used+0x12e0>
    1c76:	48 89 c7             	mov    %rax,%rdi
    1c79:	e8 92 f4 ff ff       	call   1110 <puts@plt>
    1c7e:	48 8d 05 c3 26 00 00 	lea    0x26c3(%rip),%rax        # 4348 <_IO_stdin_used+0x1348>
    1c85:	48 89 c7             	mov    %rax,%rdi
    1c88:	e8 83 f4 ff ff       	call   1110 <puts@plt>
    1c8d:	48 8d 05 1c 27 00 00 	lea    0x271c(%rip),%rax        # 43b0 <_IO_stdin_used+0x13b0>
    1c94:	48 89 c7             	mov    %rax,%rdi
    1c97:	e8 74 f4 ff ff       	call   1110 <puts@plt>
    1c9c:	48 8d 05 75 27 00 00 	lea    0x2775(%rip),%rax        # 4418 <_IO_stdin_used+0x1418>
    1ca3:	48 89 c7             	mov    %rax,%rdi
    1ca6:	e8 65 f4 ff ff       	call   1110 <puts@plt>
    1cab:	48 8d 05 ce 27 00 00 	lea    0x27ce(%rip),%rax        # 4480 <_IO_stdin_used+0x1480>
    1cb2:	48 89 c7             	mov    %rax,%rdi
    1cb5:	e8 56 f4 ff ff       	call   1110 <puts@plt>
    1cba:	48 8d 05 27 28 00 00 	lea    0x2827(%rip),%rax        # 44e8 <_IO_stdin_used+0x14e8>
    1cc1:	48 89 c7             	mov    %rax,%rdi
    1cc4:	e8 47 f4 ff ff       	call   1110 <puts@plt>
    1cc9:	48 8d 05 80 28 00 00 	lea    0x2880(%rip),%rax        # 4550 <_IO_stdin_used+0x1550>
    1cd0:	48 89 c7             	mov    %rax,%rdi
    1cd3:	e8 38 f4 ff ff       	call   1110 <puts@plt>
    1cd8:	90                   	nop
    1cd9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1cdd:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1ce4:	00 00 
    1ce6:	74 05                	je     1ced <motivation+0x32d>
    1ce8:	e8 43 f4 ff ff       	call   1130 <__stack_chk_fail@plt>
    1ced:	c9                   	leave  
    1cee:	c3                   	ret    

0000000000001cef <bench>:
    1cef:	f3 0f 1e fa          	endbr64 
    1cf3:	55                   	push   %rbp
    1cf4:	48 89 e5             	mov    %rsp,%rbp
    1cf7:	48 83 ec 10          	sub    $0x10,%rsp
    1cfb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d02:	00 00 
    1d04:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1d08:	31 c0                	xor    %eax,%eax
    1d0a:	48 8d 05 d6 17 00 00 	lea    0x17d6(%rip),%rax        # 34e7 <_IO_stdin_used+0x4e7>
    1d11:	48 89 c7             	mov    %rax,%rdi
    1d14:	b8 00 00 00 00       	mov    $0x0,%eax
    1d19:	e8 32 f4 ff ff       	call   1150 <printf@plt>
    1d1e:	0f b7 15 71 53 00 00 	movzwl 0x5371(%rip),%edx        # 7096 <g_Barbell+0x6>
    1d25:	0f b7 05 6c 53 00 00 	movzwl 0x536c(%rip),%eax        # 7098 <g_Barbell+0x8>
    1d2c:	66 39 c2             	cmp    %ax,%dx
    1d2f:	75 0f                	jne    1d40 <bench+0x51>
    1d31:	48 8d 05 80 28 00 00 	lea    0x2880(%rip),%rax        # 45b8 <_IO_stdin_used+0x15b8>
    1d38:	48 89 c7             	mov    %rax,%rdi
    1d3b:	e8 d0 f3 ff ff       	call   1110 <puts@plt>
    1d40:	0f b7 05 49 53 00 00 	movzwl 0x5349(%rip),%eax        # 7090 <g_Barbell>
    1d47:	66 85 c0             	test   %ax,%ax
    1d4a:	75 14                	jne    1d60 <bench+0x71>
    1d4c:	48 8d 05 95 28 00 00 	lea    0x2895(%rip),%rax        # 45e8 <_IO_stdin_used+0x15e8>
    1d53:	48 89 c7             	mov    %rax,%rdi
    1d56:	e8 b5 f3 ff ff       	call   1110 <puts@plt>
    1d5b:	e9 a4 02 00 00       	jmp    2004 <bench+0x315>
    1d60:	0f b7 15 29 53 00 00 	movzwl 0x5329(%rip),%edx        # 7090 <g_Barbell>
    1d67:	0f b7 05 26 53 00 00 	movzwl 0x5326(%rip),%eax        # 7094 <g_Barbell+0x4>
    1d6e:	66 39 c2             	cmp    %ax,%dx
    1d71:	76 28                	jbe    1d9b <bench+0xac>
    1d73:	48 8d 05 91 28 00 00 	lea    0x2891(%rip),%rax        # 460b <_IO_stdin_used+0x160b>
    1d7a:	48 89 c7             	mov    %rax,%rdi
    1d7d:	e8 82 f9 ff ff       	call   1704 <printTextBox>
    1d82:	48 8d 05 8f 28 00 00 	lea    0x288f(%rip),%rax        # 4618 <_IO_stdin_used+0x1618>
    1d89:	48 89 c7             	mov    %rax,%rdi
    1d8c:	e8 7f f3 ff ff       	call   1110 <puts@plt>
    1d91:	bf 00 00 00 00       	mov    $0x0,%edi
    1d96:	e8 05 f4 ff ff       	call   11a0 <exit@plt>
    1d9b:	0f b7 05 f8 52 00 00 	movzwl 0x52f8(%rip),%eax        # 709a <g_Barbell+0xa>
    1da2:	66 85 c0             	test   %ax,%ax
    1da5:	75 14                	jne    1dbb <bench+0xcc>
    1da7:	48 8d 05 c2 28 00 00 	lea    0x28c2(%rip),%rax        # 4670 <_IO_stdin_used+0x1670>
    1dae:	48 89 c7             	mov    %rax,%rdi
    1db1:	e8 5a f3 ff ff       	call   1110 <puts@plt>
    1db6:	e9 49 02 00 00       	jmp    2004 <bench+0x315>
    1dbb:	b8 00 00 00 00       	mov    $0x0,%eax
    1dc0:	e8 f5 f8 ff ff       	call   16ba <calculate_stamina_needed>
    1dc5:	66 89 45 f6          	mov    %ax,-0xa(%rbp)
    1dc9:	0f b7 05 ca 52 00 00 	movzwl 0x52ca(%rip),%eax        # 709a <g_Barbell+0xa>
    1dd0:	66 2b 45 f6          	sub    -0xa(%rbp),%ax
    1dd4:	66 85 c0             	test   %ax,%ax
    1dd7:	7f 1a                	jg     1df3 <bench+0x104>
    1dd9:	48 8d 05 b1 28 00 00 	lea    0x28b1(%rip),%rax        # 4691 <_IO_stdin_used+0x1691>
    1de0:	48 89 c7             	mov    %rax,%rdi
    1de3:	e8 28 f3 ff ff       	call   1110 <puts@plt>
    1de8:	66 c7 05 a9 52 00 00 	movw   $0x0,0x52a9(%rip)        # 709a <g_Barbell+0xa>
    1def:	00 00 
    1df1:	eb 12                	jmp    1e05 <bench+0x116>
    1df3:	0f b7 05 a0 52 00 00 	movzwl 0x52a0(%rip),%eax        # 709a <g_Barbell+0xa>
    1dfa:	66 2b 45 f6          	sub    -0xa(%rbp),%ax
    1dfe:	66 89 05 95 52 00 00 	mov    %ax,0x5295(%rip)        # 709a <g_Barbell+0xa>
    1e05:	48 8d 05 9d 28 00 00 	lea    0x289d(%rip),%rax        # 46a9 <_IO_stdin_used+0x16a9>
    1e0c:	48 89 c7             	mov    %rax,%rdi
    1e0f:	e8 fc f2 ff ff       	call   1110 <puts@plt>
    1e14:	0f b7 05 7b 52 00 00 	movzwl 0x527b(%rip),%eax        # 7096 <g_Barbell+0x6>
    1e1b:	83 c0 01             	add    $0x1,%eax
    1e1e:	66 89 05 71 52 00 00 	mov    %ax,0x5271(%rip)        # 7096 <g_Barbell+0x6>
    1e25:	0f b7 15 64 52 00 00 	movzwl 0x5264(%rip),%edx        # 7090 <g_Barbell>
    1e2c:	0f b7 05 5f 52 00 00 	movzwl 0x525f(%rip),%eax        # 7092 <g_Barbell+0x2>
    1e33:	66 39 c2             	cmp    %ax,%dx
    1e36:	72 63                	jb     1e9b <bench+0x1ac>
    1e38:	0f b7 05 57 52 00 00 	movzwl 0x5257(%rip),%eax        # 7096 <g_Barbell+0x6>
    1e3f:	0f b7 c0             	movzwl %ax,%eax
    1e42:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1e46:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    1e4a:	0f b7 05 47 52 00 00 	movzwl 0x5247(%rip),%eax        # 7098 <g_Barbell+0x8>
    1e51:	0f b7 c0             	movzwl %ax,%eax
    1e54:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1e58:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    1e5c:	f2 0f 10 15 54 33 00 	movsd  0x3354(%rip),%xmm2        # 51b8 <_IO_stdin_used+0x21b8>
    1e63:	00 
    1e64:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    1e68:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1e6c:	72 2d                	jb     1e9b <bench+0x1ac>
    1e6e:	e8 3d f3 ff ff       	call   11b0 <rand@plt>
    1e73:	99                   	cltd   
    1e74:	c1 ea 1e             	shr    $0x1e,%edx
    1e77:	01 d0                	add    %edx,%eax
    1e79:	83 e0 03             	and    $0x3,%eax
    1e7c:	29 d0                	sub    %edx,%eax
    1e7e:	48 98                	cltq   
    1e80:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1e87:	00 
    1e88:	48 8d 05 91 51 00 00 	lea    0x5191(%rip),%rax        # 7020 <g_Quotes>
    1e8f:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    1e93:	48 89 c7             	mov    %rax,%rdi
    1e96:	e8 69 f8 ff ff       	call   1704 <printTextBox>
    1e9b:	0f b7 05 f8 51 00 00 	movzwl 0x51f8(%rip),%eax        # 709a <g_Barbell+0xa>
    1ea2:	0f b7 c0             	movzwl %ax,%eax
    1ea5:	89 c6                	mov    %eax,%esi
    1ea7:	48 8d 05 a2 15 00 00 	lea    0x15a2(%rip),%rax        # 3450 <_IO_stdin_used+0x450>
    1eae:	48 89 c7             	mov    %rax,%rdi
    1eb1:	b8 00 00 00 00       	mov    $0x0,%eax
    1eb6:	e8 95 f2 ff ff       	call   1150 <printf@plt>
    1ebb:	48 8d 05 f6 27 00 00 	lea    0x27f6(%rip),%rax        # 46b8 <_IO_stdin_used+0x16b8>
    1ec2:	48 89 c7             	mov    %rax,%rdi
    1ec5:	e8 46 f2 ff ff       	call   1110 <puts@plt>
    1eca:	48 8d 05 77 28 00 00 	lea    0x2877(%rip),%rax        # 4748 <_IO_stdin_used+0x1748>
    1ed1:	48 89 c7             	mov    %rax,%rdi
    1ed4:	e8 37 f2 ff ff       	call   1110 <puts@plt>
    1ed9:	48 8d 05 f8 28 00 00 	lea    0x28f8(%rip),%rax        # 47d8 <_IO_stdin_used+0x17d8>
    1ee0:	48 89 c7             	mov    %rax,%rdi
    1ee3:	e8 28 f2 ff ff       	call   1110 <puts@plt>
    1ee8:	48 8d 05 79 29 00 00 	lea    0x2979(%rip),%rax        # 4868 <_IO_stdin_used+0x1868>
    1eef:	48 89 c7             	mov    %rax,%rdi
    1ef2:	e8 19 f2 ff ff       	call   1110 <puts@plt>
    1ef7:	48 8d 05 fa 29 00 00 	lea    0x29fa(%rip),%rax        # 48f8 <_IO_stdin_used+0x18f8>
    1efe:	48 89 c7             	mov    %rax,%rdi
    1f01:	e8 0a f2 ff ff       	call   1110 <puts@plt>
    1f06:	48 8d 05 7b 2a 00 00 	lea    0x2a7b(%rip),%rax        # 4988 <_IO_stdin_used+0x1988>
    1f0d:	48 89 c7             	mov    %rax,%rdi
    1f10:	e8 fb f1 ff ff       	call   1110 <puts@plt>
    1f15:	48 8d 05 fc 2a 00 00 	lea    0x2afc(%rip),%rax        # 4a18 <_IO_stdin_used+0x1a18>
    1f1c:	48 89 c7             	mov    %rax,%rdi
    1f1f:	e8 ec f1 ff ff       	call   1110 <puts@plt>
    1f24:	48 8d 05 7d 2b 00 00 	lea    0x2b7d(%rip),%rax        # 4aa8 <_IO_stdin_used+0x1aa8>
    1f2b:	48 89 c7             	mov    %rax,%rdi
    1f2e:	e8 dd f1 ff ff       	call   1110 <puts@plt>
    1f33:	48 8d 05 fe 2b 00 00 	lea    0x2bfe(%rip),%rax        # 4b38 <_IO_stdin_used+0x1b38>
    1f3a:	48 89 c7             	mov    %rax,%rdi
    1f3d:	e8 ce f1 ff ff       	call   1110 <puts@plt>
    1f42:	48 8d 05 7f 2c 00 00 	lea    0x2c7f(%rip),%rax        # 4bc8 <_IO_stdin_used+0x1bc8>
    1f49:	48 89 c7             	mov    %rax,%rdi
    1f4c:	e8 bf f1 ff ff       	call   1110 <puts@plt>
    1f51:	48 8d 05 00 2d 00 00 	lea    0x2d00(%rip),%rax        # 4c58 <_IO_stdin_used+0x1c58>
    1f58:	48 89 c7             	mov    %rax,%rdi
    1f5b:	e8 b0 f1 ff ff       	call   1110 <puts@plt>
    1f60:	48 8d 05 81 2d 00 00 	lea    0x2d81(%rip),%rax        # 4ce8 <_IO_stdin_used+0x1ce8>
    1f67:	48 89 c7             	mov    %rax,%rdi
    1f6a:	e8 a1 f1 ff ff       	call   1110 <puts@plt>
    1f6f:	48 8d 05 02 2e 00 00 	lea    0x2e02(%rip),%rax        # 4d78 <_IO_stdin_used+0x1d78>
    1f76:	48 89 c7             	mov    %rax,%rdi
    1f79:	e8 92 f1 ff ff       	call   1110 <puts@plt>
    1f7e:	48 8d 05 83 2e 00 00 	lea    0x2e83(%rip),%rax        # 4e08 <_IO_stdin_used+0x1e08>
    1f85:	48 89 c7             	mov    %rax,%rdi
    1f88:	e8 83 f1 ff ff       	call   1110 <puts@plt>
    1f8d:	48 8d 05 04 2f 00 00 	lea    0x2f04(%rip),%rax        # 4e98 <_IO_stdin_used+0x1e98>
    1f94:	48 89 c7             	mov    %rax,%rdi
    1f97:	e8 74 f1 ff ff       	call   1110 <puts@plt>
    1f9c:	48 8d 05 85 2f 00 00 	lea    0x2f85(%rip),%rax        # 4f28 <_IO_stdin_used+0x1f28>
    1fa3:	48 89 c7             	mov    %rax,%rdi
    1fa6:	e8 65 f1 ff ff       	call   1110 <puts@plt>
    1fab:	48 8d 05 06 30 00 00 	lea    0x3006(%rip),%rax        # 4fb8 <_IO_stdin_used+0x1fb8>
    1fb2:	48 89 c7             	mov    %rax,%rdi
    1fb5:	e8 56 f1 ff ff       	call   1110 <puts@plt>
    1fba:	48 8d 05 87 30 00 00 	lea    0x3087(%rip),%rax        # 5048 <_IO_stdin_used+0x2048>
    1fc1:	48 89 c7             	mov    %rax,%rdi
    1fc4:	e8 47 f1 ff ff       	call   1110 <puts@plt>
    1fc9:	48 8d 05 08 31 00 00 	lea    0x3108(%rip),%rax        # 50d8 <_IO_stdin_used+0x20d8>
    1fd0:	48 89 c7             	mov    %rax,%rdi
    1fd3:	e8 38 f1 ff ff       	call   1110 <puts@plt>
    1fd8:	bf 0a 00 00 00       	mov    $0xa,%edi
    1fdd:	e8 1e f1 ff ff       	call   1100 <putchar@plt>
    1fe2:	0f b7 15 ad 50 00 00 	movzwl 0x50ad(%rip),%edx        # 7096 <g_Barbell+0x6>
    1fe9:	0f b7 05 a8 50 00 00 	movzwl 0x50a8(%rip),%eax        # 7098 <g_Barbell+0x8>
    1ff0:	66 39 c2             	cmp    %ax,%dx
    1ff3:	72 0f                	jb     2004 <bench+0x315>
    1ff5:	48 8d 05 9a 31 00 00 	lea    0x319a(%rip),%rax        # 5196 <_IO_stdin_used+0x2196>
    1ffc:	48 89 c7             	mov    %rax,%rdi
    1fff:	e8 0c f1 ff ff       	call   1110 <puts@plt>
    2004:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2008:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    200f:	00 00 
    2011:	74 05                	je     2018 <bench+0x329>
    2013:	e8 18 f1 ff ff       	call   1130 <__stack_chk_fail@plt>
    2018:	c9                   	leave  
    2019:	c3                   	ret    

Disassembly of section .fini:

000000000000201c <_fini>:
    201c:	f3 0f 1e fa          	endbr64 
    2020:	48 83 ec 08          	sub    $0x8,%rsp
    2024:	48 83 c4 08          	add    $0x8,%rsp
    2028:	c3                   	ret    
