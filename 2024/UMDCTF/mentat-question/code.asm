
mentat-question:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <strncmp@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <strncmp@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <strncmp@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <puts@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <puts@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <setbuf@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <setbuf@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <system@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4018 <system@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <printf@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <printf@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <fgets@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4028 <fgets@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <gets@plt>:
    1090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 4030 <gets@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <atoi@plt>:
    10a0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 4038 <atoi@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <exit@plt>:
    10b0:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 4040 <exit@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <fwrite@plt>:
    10c0:	ff 25 82 2f 00 00    	jmp    *0x2f82(%rip)        # 4048 <fwrite@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <getc@plt>:
    10d0:	ff 25 7a 2f 00 00    	jmp    *0x2f7a(%rip)        # 4050 <getc@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

00000000000010e0 <_start>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	31 ed                	xor    %ebp,%ebp
    10e6:	49 89 d1             	mov    %rdx,%r9
    10e9:	5e                   	pop    %rsi
    10ea:	48 89 e2             	mov    %rsp,%rdx
    10ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10f1:	50                   	push   %rax
    10f2:	54                   	push   %rsp
    10f3:	45 31 c0             	xor    %r8d,%r8d
    10f6:	31 c9                	xor    %ecx,%ecx
    10f8:	48 8d 3d 0c 02 00 00 	lea    0x20c(%rip),%rdi        # 130b <main>
    10ff:	ff 15 bb 2e 00 00    	call   *0x2ebb(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1105:	f4                   	hlt    
    1106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110d:	00 00 00 
    1110:	48 8d 3d 51 2f 00 00 	lea    0x2f51(%rip),%rdi        # 4068 <__TMC_END__>
    1117:	48 8d 05 4a 2f 00 00 	lea    0x2f4a(%rip),%rax        # 4068 <__TMC_END__>
    111e:	48 39 f8             	cmp    %rdi,%rax
    1121:	74 15                	je     1138 <_start+0x58>
    1123:	48 8b 05 9e 2e 00 00 	mov    0x2e9e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    112a:	48 85 c0             	test   %rax,%rax
    112d:	74 09                	je     1138 <_start+0x58>
    112f:	ff e0                	jmp    *%rax
    1131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1140:	48 8d 3d 21 2f 00 00 	lea    0x2f21(%rip),%rdi        # 4068 <__TMC_END__>
    1147:	48 8d 35 1a 2f 00 00 	lea    0x2f1a(%rip),%rsi        # 4068 <__TMC_END__>
    114e:	48 29 fe             	sub    %rdi,%rsi
    1151:	48 89 f0             	mov    %rsi,%rax
    1154:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1158:	48 c1 f8 03          	sar    $0x3,%rax
    115c:	48 01 c6             	add    %rax,%rsi
    115f:	48 d1 fe             	sar    %rsi
    1162:	74 14                	je     1178 <_start+0x98>
    1164:	48 8b 05 6d 2e 00 00 	mov    0x2e6d(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    116b:	48 85 c0             	test   %rax,%rax
    116e:	74 08                	je     1178 <_start+0x98>
    1170:	ff e0                	jmp    *%rax
    1172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1180:	f3 0f 1e fa          	endbr64 
    1184:	80 3d 1d 2f 00 00 00 	cmpb   $0x0,0x2f1d(%rip)        # 40a8 <stderr@GLIBC_2.2.5+0x8>
    118b:	75 33                	jne    11c0 <_start+0xe0>
    118d:	55                   	push   %rbp
    118e:	48 83 3d 4a 2e 00 00 	cmpq   $0x0,0x2e4a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1195:	00 
    1196:	48 89 e5             	mov    %rsp,%rbp
    1199:	74 0d                	je     11a8 <_start+0xc8>
    119b:	48 8b 3d be 2e 00 00 	mov    0x2ebe(%rip),%rdi        # 4060 <__dso_handle>
    11a2:	ff 15 38 2e 00 00    	call   *0x2e38(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    11a8:	e8 63 ff ff ff       	call   1110 <_start+0x30>
    11ad:	c6 05 f4 2e 00 00 01 	movb   $0x1,0x2ef4(%rip)        # 40a8 <stderr@GLIBC_2.2.5+0x8>
    11b4:	5d                   	pop    %rbp
    11b5:	c3                   	ret    
    11b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11bd:	00 00 00 
    11c0:	c3                   	ret    
    11c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11c8:	00 00 00 00 
    11cc:	0f 1f 40 00          	nopl   0x0(%rax)
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	e9 67 ff ff ff       	jmp    1140 <_start+0x60>

00000000000011d9 <secret>:
    11d9:	55                   	push   %rbp
    11da:	48 89 e5             	mov    %rsp,%rbp
    11dd:	48 8d 05 24 0e 00 00 	lea    0xe24(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    11e4:	48 89 c7             	mov    %rax,%rdi
    11e7:	e8 74 fe ff ff       	call   1060 <system@plt>
    11ec:	90                   	nop
    11ed:	5d                   	pop    %rbp
    11ee:	c3                   	ret    

00000000000011ef <calculate>:
    11ef:	55                   	push   %rbp
    11f0:	48 89 e5             	mov    %rsp,%rbp
    11f3:	48 83 ec 20          	sub    $0x20,%rsp
    11f7:	89 7d ec             	mov    %edi,-0x14(%rbp)
    11fa:	89 75 e8             	mov    %esi,-0x18(%rbp)
    11fd:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1200:	89 c6                	mov    %eax,%esi
    1202:	48 8d 05 07 0e 00 00 	lea    0xe07(%rip),%rax        # 2010 <_IO_stdin_used+0x10>
    1209:	48 89 c7             	mov    %rax,%rdi
    120c:	b8 00 00 00 00       	mov    $0x0,%eax
    1211:	e8 5a fe ff ff       	call   1070 <printf@plt>
    1216:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1219:	89 c6                	mov    %eax,%esi
    121b:	48 8d 05 ee 0d 00 00 	lea    0xdee(%rip),%rax        # 2010 <_IO_stdin_used+0x10>
    1222:	48 89 c7             	mov    %rax,%rdi
    1225:	b8 00 00 00 00       	mov    $0x0,%eax
    122a:	e8 41 fe ff ff       	call   1070 <printf@plt>
    122f:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
    1233:	0f 85 c5 00 00 00    	jne    12fe <calculate+0x10f>
    1239:	48 8d 05 d8 0d 00 00 	lea    0xdd8(%rip),%rax        # 2018 <_IO_stdin_used+0x18>
    1240:	48 89 c7             	mov    %rax,%rdi
    1243:	e8 f8 fd ff ff       	call   1040 <puts@plt>
    1248:	48 8d 05 fd 0d 00 00 	lea    0xdfd(%rip),%rax        # 204c <_IO_stdin_used+0x4c>
    124f:	48 89 c7             	mov    %rax,%rdi
    1252:	e8 e9 fd ff ff       	call   1040 <puts@plt>
    1257:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    125b:	48 89 c7             	mov    %rax,%rdi
    125e:	b8 00 00 00 00       	mov    $0x0,%eax
    1263:	e8 28 fe ff ff       	call   1090 <gets@plt>
    1268:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    126c:	ba 03 00 00 00       	mov    $0x3,%edx
    1271:	48 8d 0d f1 0d 00 00 	lea    0xdf1(%rip),%rcx        # 2069 <_IO_stdin_used+0x69>
    1278:	48 89 ce             	mov    %rcx,%rsi
    127b:	48 89 c7             	mov    %rax,%rdi
    127e:	e8 ad fd ff ff       	call   1030 <strncmp@plt>
    1283:	85 c0                	test   %eax,%eax
    1285:	75 5e                	jne    12e5 <calculate+0xf6>
    1287:	48 8b 05 f2 2d 00 00 	mov    0x2df2(%rip),%rax        # 4080 <stdout@GLIBC_2.2.5>
    128e:	48 89 c1             	mov    %rax,%rcx
    1291:	ba 0b 00 00 00       	mov    $0xb,%edx
    1296:	be 01 00 00 00       	mov    $0x1,%esi
    129b:	48 8d 05 cb 0d 00 00 	lea    0xdcb(%rip),%rax        # 206d <_IO_stdin_used+0x6d>
    12a2:	48 89 c7             	mov    %rax,%rdi
    12a5:	e8 16 fe ff ff       	call   10c0 <fwrite@plt>
    12aa:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    12ae:	48 89 c7             	mov    %rax,%rdi
    12b1:	b8 00 00 00 00       	mov    $0x0,%eax
    12b6:	e8 b5 fd ff ff       	call   1070 <printf@plt>
    12bb:	48 8b 05 be 2d 00 00 	mov    0x2dbe(%rip),%rax        # 4080 <stdout@GLIBC_2.2.5>
    12c2:	48 89 c1             	mov    %rax,%rcx
    12c5:	ba 0a 00 00 00       	mov    $0xa,%edx
    12ca:	be 01 00 00 00       	mov    $0x1,%esi
    12cf:	48 8d 05 a3 0d 00 00 	lea    0xda3(%rip),%rax        # 2079 <_IO_stdin_used+0x79>
    12d6:	48 89 c7             	mov    %rax,%rdi
    12d9:	e8 e2 fd ff ff       	call   10c0 <fwrite@plt>
    12de:	b8 00 00 00 00       	mov    $0x0,%eax
    12e3:	eb 24                	jmp    1309 <calculate+0x11a>
    12e5:	48 8d 05 9c 0d 00 00 	lea    0xd9c(%rip),%rax        # 2088 <_IO_stdin_used+0x88>
    12ec:	48 89 c7             	mov    %rax,%rdi
    12ef:	e8 4c fd ff ff       	call   1040 <puts@plt>
    12f4:	bf 00 00 00 00       	mov    $0x0,%edi
    12f9:	e8 b2 fd ff ff       	call   10b0 <exit@plt>
    12fe:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1301:	ba 00 00 00 00       	mov    $0x0,%edx
    1306:	f7 75 e8             	divl   -0x18(%rbp)
    1309:	c9                   	leave  
    130a:	c3                   	ret    

000000000000130b <main>:
    130b:	55                   	push   %rbp
    130c:	48 89 e5             	mov    %rsp,%rbp
    130f:	48 83 ec 20          	sub    $0x20,%rsp
    1313:	48 8b 05 76 2d 00 00 	mov    0x2d76(%rip),%rax        # 4090 <stdin@GLIBC_2.2.5>
    131a:	be 00 00 00 00       	mov    $0x0,%esi
    131f:	48 89 c7             	mov    %rax,%rdi
    1322:	e8 29 fd ff ff       	call   1050 <setbuf@plt>
    1327:	48 8b 05 52 2d 00 00 	mov    0x2d52(%rip),%rax        # 4080 <stdout@GLIBC_2.2.5>
    132e:	be 00 00 00 00       	mov    $0x0,%esi
    1333:	48 89 c7             	mov    %rax,%rdi
    1336:	e8 15 fd ff ff       	call   1050 <setbuf@plt>
    133b:	48 8b 05 5e 2d 00 00 	mov    0x2d5e(%rip),%rax        # 40a0 <stderr@GLIBC_2.2.5>
    1342:	be 00 00 00 00       	mov    $0x0,%esi
    1347:	48 89 c7             	mov    %rax,%rdi
    134a:	e8 01 fd ff ff       	call   1050 <setbuf@plt>
    134f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1356:	48 8d 05 53 0d 00 00 	lea    0xd53(%rip),%rax        # 20b0 <_IO_stdin_used+0xb0>
    135d:	48 89 c7             	mov    %rax,%rdi
    1360:	e8 db fc ff ff       	call   1040 <puts@plt>
    1365:	48 8b 15 24 2d 00 00 	mov    0x2d24(%rip),%rdx        # 4090 <stdin@GLIBC_2.2.5>
    136c:	48 8d 45 e9          	lea    -0x17(%rbp),%rax
    1370:	be 0b 00 00 00       	mov    $0xb,%esi
    1375:	48 89 c7             	mov    %rax,%rdi
    1378:	e8 03 fd ff ff       	call   1080 <fgets@plt>
    137d:	48 8d 45 e9          	lea    -0x17(%rbp),%rax
    1381:	ba 08 00 00 00       	mov    $0x8,%edx
    1386:	48 8d 0d 52 0d 00 00 	lea    0xd52(%rip),%rcx        # 20df <_IO_stdin_used+0xdf>
    138d:	48 89 ce             	mov    %rcx,%rsi
    1390:	48 89 c7             	mov    %rax,%rdi
    1393:	e8 98 fc ff ff       	call   1030 <strncmp@plt>
    1398:	85 c0                	test   %eax,%eax
    139a:	0f 85 c9 00 00 00    	jne    1469 <main+0x15e>
    13a0:	48 8d 05 41 0d 00 00 	lea    0xd41(%rip),%rax        # 20e8 <_IO_stdin_used+0xe8>
    13a7:	48 89 c7             	mov    %rax,%rdi
    13aa:	e8 91 fc ff ff       	call   1040 <puts@plt>
    13af:	e9 ab 00 00 00       	jmp    145f <main+0x154>
    13b4:	48 8d 05 3d 0d 00 00 	lea    0xd3d(%rip),%rax        # 20f8 <_IO_stdin_used+0xf8>
    13bb:	48 89 c7             	mov    %rax,%rdi
    13be:	e8 7d fc ff ff       	call   1040 <puts@plt>
    13c3:	48 8b 15 c6 2c 00 00 	mov    0x2cc6(%rip),%rdx        # 4090 <stdin@GLIBC_2.2.5>
    13ca:	48 8d 45 e9          	lea    -0x17(%rbp),%rax
    13ce:	be 0b 00 00 00       	mov    $0xb,%esi
    13d3:	48 89 c7             	mov    %rax,%rdi
    13d6:	e8 a5 fc ff ff       	call   1080 <fgets@plt>
    13db:	48 8d 45 e9          	lea    -0x17(%rbp),%rax
    13df:	48 89 c7             	mov    %rax,%rdi
    13e2:	e8 b9 fc ff ff       	call   10a0 <atoi@plt>
    13e7:	89 45 f8             	mov    %eax,-0x8(%rbp)
    13ea:	48 8b 15 9f 2c 00 00 	mov    0x2c9f(%rip),%rdx        # 4090 <stdin@GLIBC_2.2.5>
    13f1:	48 8d 45 e9          	lea    -0x17(%rbp),%rax
    13f5:	be 0b 00 00 00       	mov    $0xb,%esi
    13fa:	48 89 c7             	mov    %rax,%rdi
    13fd:	e8 7e fc ff ff       	call   1080 <fgets@plt>
    1402:	48 8b 05 87 2c 00 00 	mov    0x2c87(%rip),%rax        # 4090 <stdin@GLIBC_2.2.5>
    1409:	48 89 c7             	mov    %rax,%rdi
    140c:	e8 bf fc ff ff       	call   10d0 <getc@plt>
    1411:	0f b6 55 e9          	movzbl -0x17(%rbp),%edx
    1415:	0f b6 05 02 0d 00 00 	movzbl 0xd02(%rip),%eax        # 211e <_IO_stdin_used+0x11e>
    141c:	0f b6 d2             	movzbl %dl,%edx
    141f:	0f b6 c0             	movzbl %al,%eax
    1422:	29 c2                	sub    %eax,%edx
    1424:	85 d2                	test   %edx,%edx
    1426:	75 16                	jne    143e <main+0x133>
    1428:	48 8d 05 f1 0c 00 00 	lea    0xcf1(%rip),%rax        # 2120 <_IO_stdin_used+0x120>
    142f:	48 89 c7             	mov    %rax,%rdi
    1432:	e8 09 fc ff ff       	call   1040 <puts@plt>
    1437:	b8 01 00 00 00       	mov    $0x1,%eax
    143c:	eb 30                	jmp    146e <main+0x163>
    143e:	48 8d 45 e9          	lea    -0x17(%rbp),%rax
    1442:	48 89 c7             	mov    %rax,%rdi
    1445:	e8 56 fc ff ff       	call   10a0 <atoi@plt>
    144a:	89 45 f4             	mov    %eax,-0xc(%rbp)
    144d:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1450:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1453:	89 d6                	mov    %edx,%esi
    1455:	89 c7                	mov    %eax,%edi
    1457:	e8 93 fd ff ff       	call   11ef <calculate>
    145c:	89 45 fc             	mov    %eax,-0x4(%rbp)
    145f:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1463:	0f 84 4b ff ff ff    	je     13b4 <main+0xa9>
    1469:	b8 00 00 00 00       	mov    $0x0,%eax
    146e:	c9                   	leave  
    146f:	c3                   	ret    

Disassembly of section .fini:

0000000000001470 <_fini>:
    1470:	f3 0f 1e fa          	endbr64 
    1474:	48 83 ec 08          	sub    $0x8,%rsp
    1478:	48 83 c4 08          	add    $0x8,%rsp
    147c:	c3                   	ret    
