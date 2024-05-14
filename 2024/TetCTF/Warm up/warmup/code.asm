
challenge:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 72 2f 00 00    	push   0x2f72(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 73 2f 00 00 	bnd jmp *0x2f73(%rip)        # 3fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
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

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 5d 2f 00 00 	bnd jmp *0x2f5d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010a0 <puts@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 3fa8 <puts@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <strlen@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 3fb0 <strlen@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <__stack_chk_fail@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 3fb8 <__stack_chk_fail@GLIBC_2.4>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <printf@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fc0 <printf@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <memset@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3fc8 <memset@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <__isoc99_scanf@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 3fd0 <__isoc99_scanf@GLIBC_2.7>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001100 <_start>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	31 ed                	xor    %ebp,%ebp
    1106:	49 89 d1             	mov    %rdx,%r9
    1109:	5e                   	pop    %rsi
    110a:	48 89 e2             	mov    %rsp,%rdx
    110d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1111:	50                   	push   %rax
    1112:	54                   	push   %rsp
    1113:	45 31 c0             	xor    %r8d,%r8d
    1116:	31 c9                	xor    %ecx,%ecx
    1118:	48 8d 3d fe 04 00 00 	lea    0x4fe(%rip),%rdi        # 161d <main>
    111f:	ff 15 b3 2e 00 00    	call   *0x2eb3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1125:	f4                   	hlt    
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 

0000000000001130 <deregister_tm_clones>:
    1130:	48 8d 3d d9 2e 00 00 	lea    0x2ed9(%rip),%rdi        # 4010 <__TMC_END__>
    1137:	48 8d 05 d2 2e 00 00 	lea    0x2ed2(%rip),%rax        # 4010 <__TMC_END__>
    113e:	48 39 f8             	cmp    %rdi,%rax
    1141:	74 15                	je     1158 <deregister_tm_clones+0x28>
    1143:	48 8b 05 96 2e 00 00 	mov    0x2e96(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    114a:	48 85 c0             	test   %rax,%rax
    114d:	74 09                	je     1158 <deregister_tm_clones+0x28>
    114f:	ff e0                	jmp    *%rax
    1151:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <register_tm_clones>:
    1160:	48 8d 3d a9 2e 00 00 	lea    0x2ea9(%rip),%rdi        # 4010 <__TMC_END__>
    1167:	48 8d 35 a2 2e 00 00 	lea    0x2ea2(%rip),%rsi        # 4010 <__TMC_END__>
    116e:	48 29 fe             	sub    %rdi,%rsi
    1171:	48 89 f0             	mov    %rsi,%rax
    1174:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1178:	48 c1 f8 03          	sar    $0x3,%rax
    117c:	48 01 c6             	add    %rax,%rsi
    117f:	48 d1 fe             	sar    %rsi
    1182:	74 14                	je     1198 <register_tm_clones+0x38>
    1184:	48 8b 05 65 2e 00 00 	mov    0x2e65(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    118b:	48 85 c0             	test   %rax,%rax
    118e:	74 08                	je     1198 <register_tm_clones+0x38>
    1190:	ff e0                	jmp    *%rax
    1192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <__do_global_dtors_aux>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	80 3d 65 2e 00 00 00 	cmpb   $0x0,0x2e65(%rip)        # 4010 <__TMC_END__>
    11ab:	75 2b                	jne    11d8 <__do_global_dtors_aux+0x38>
    11ad:	55                   	push   %rbp
    11ae:	48 83 3d 42 2e 00 00 	cmpq   $0x0,0x2e42(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11b5:	00 
    11b6:	48 89 e5             	mov    %rsp,%rbp
    11b9:	74 0c                	je     11c7 <__do_global_dtors_aux+0x27>
    11bb:	48 8b 3d 46 2e 00 00 	mov    0x2e46(%rip),%rdi        # 4008 <__dso_handle>
    11c2:	e8 c9 fe ff ff       	call   1090 <__cxa_finalize@plt>
    11c7:	e8 64 ff ff ff       	call   1130 <deregister_tm_clones>
    11cc:	c6 05 3d 2e 00 00 01 	movb   $0x1,0x2e3d(%rip)        # 4010 <__TMC_END__>
    11d3:	5d                   	pop    %rbp
    11d4:	c3                   	ret    
    11d5:	0f 1f 00             	nopl   (%rax)
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <frame_dummy>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	e9 77 ff ff ff       	jmp    1160 <register_tm_clones>

00000000000011e9 <xorshift128>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	55                   	push   %rbp
    11ee:	48 89 e5             	mov    %rsp,%rbp
    11f1:	8b 05 1d 2e 00 00    	mov    0x2e1d(%rip),%eax        # 4014 <x>
    11f7:	89 45 fc             	mov    %eax,-0x4(%rbp)
    11fa:	8b 45 fc             	mov    -0x4(%rbp),%eax
    11fd:	c1 e0 0b             	shl    $0xb,%eax
    1200:	31 45 fc             	xor    %eax,-0x4(%rbp)
    1203:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1206:	c1 e8 08             	shr    $0x8,%eax
    1209:	31 45 fc             	xor    %eax,-0x4(%rbp)
    120c:	8b 05 06 2e 00 00    	mov    0x2e06(%rip),%eax        # 4018 <y>
    1212:	89 05 fc 2d 00 00    	mov    %eax,0x2dfc(%rip)        # 4014 <x>
    1218:	8b 05 fe 2d 00 00    	mov    0x2dfe(%rip),%eax        # 401c <z>
    121e:	89 05 f4 2d 00 00    	mov    %eax,0x2df4(%rip)        # 4018 <y>
    1224:	8b 05 f6 2d 00 00    	mov    0x2df6(%rip),%eax        # 4020 <w>
    122a:	89 05 ec 2d 00 00    	mov    %eax,0x2dec(%rip)        # 401c <z>
    1230:	8b 05 ea 2d 00 00    	mov    0x2dea(%rip),%eax        # 4020 <w>
    1236:	c1 e8 13             	shr    $0x13,%eax
    1239:	89 c2                	mov    %eax,%edx
    123b:	8b 05 df 2d 00 00    	mov    0x2ddf(%rip),%eax        # 4020 <w>
    1241:	31 d0                	xor    %edx,%eax
    1243:	89 05 d7 2d 00 00    	mov    %eax,0x2dd7(%rip)        # 4020 <w>
    1249:	8b 05 d1 2d 00 00    	mov    0x2dd1(%rip),%eax        # 4020 <w>
    124f:	33 45 fc             	xor    -0x4(%rbp),%eax
    1252:	89 05 c8 2d 00 00    	mov    %eax,0x2dc8(%rip)        # 4020 <w>
    1258:	8b 05 c2 2d 00 00    	mov    0x2dc2(%rip),%eax        # 4020 <w>
    125e:	5d                   	pop    %rbp
    125f:	c3                   	ret    

0000000000001260 <check_key>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	55                   	push   %rbp
    1265:	48 89 e5             	mov    %rsp,%rbp
    1268:	53                   	push   %rbx
    1269:	48 81 ec 68 02 00 00 	sub    $0x268,%rsp
    1270:	48 89 bd 98 fd ff ff 	mov    %rdi,-0x268(%rbp)
    1277:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    127e:	00 00 
    1280:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1284:	31 c0                	xor    %eax,%eax
    1286:	48 8b 85 98 fd ff ff 	mov    -0x268(%rbp),%rax
    128d:	48 89 c7             	mov    %rax,%rdi
    1290:	e8 1b fe ff ff       	call   10b0 <strlen@plt>
    1295:	48 83 f8 54          	cmp    $0x54,%rax
    1299:	74 0a                	je     12a5 <check_key+0x45>
    129b:	b8 00 00 00 00       	mov    $0x0,%eax
    12a0:	e9 5e 03 00 00       	jmp    1603 <check_key+0x3a3>
    12a5:	48 b8 21 5f 61 63 64 	movabs $0x6766656463615f21,%rax
    12ac:	65 66 67 
    12af:	48 ba 68 69 6c 6d 6e 	movabs $0x72706f6e6d6c6968,%rdx
    12b6:	6f 70 72 
    12b9:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    12bd:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    12c1:	c7 45 e0 73 74 75 77 	movl   $0x77757473,-0x20(%rbp)
    12c8:	66 c7 45 e4 79 00    	movw   $0x79,-0x1c(%rbp)
    12ce:	c7 85 a8 fd ff ff 00 	movl   $0x0,-0x258(%rbp)
    12d5:	00 00 00 
    12d8:	eb 5b                	jmp    1335 <check_key+0xd5>
    12da:	c7 85 ac fd ff ff 00 	movl   $0x0,-0x254(%rbp)
    12e1:	00 00 00 
    12e4:	eb 3c                	jmp    1322 <check_key+0xc2>
    12e6:	8b 85 ac fd ff ff    	mov    -0x254(%rbp),%eax
    12ec:	0f b6 54 05 d0       	movzbl -0x30(%rbp,%rax,1),%edx
    12f1:	8b 8d a8 fd ff ff    	mov    -0x258(%rbp),%ecx
    12f7:	48 8b 85 98 fd ff ff 	mov    -0x268(%rbp),%rax
    12fe:	48 01 c8             	add    %rcx,%rax
    1301:	0f b6 00             	movzbl (%rax),%eax
    1304:	38 c2                	cmp    %al,%dl
    1306:	74 25                	je     132d <check_key+0xcd>
    1308:	83 bd ac fd ff ff 14 	cmpl   $0x14,-0x254(%rbp)
    130f:	75 0a                	jne    131b <check_key+0xbb>
    1311:	b8 00 00 00 00       	mov    $0x0,%eax
    1316:	e9 e8 02 00 00       	jmp    1603 <check_key+0x3a3>
    131b:	83 85 ac fd ff ff 01 	addl   $0x1,-0x254(%rbp)
    1322:	83 bd ac fd ff ff 14 	cmpl   $0x14,-0x254(%rbp)
    1329:	76 bb                	jbe    12e6 <check_key+0x86>
    132b:	eb 01                	jmp    132e <check_key+0xce>
    132d:	90                   	nop
    132e:	83 85 a8 fd ff ff 01 	addl   $0x1,-0x258(%rbp)
    1335:	83 bd a8 fd ff ff 53 	cmpl   $0x53,-0x258(%rbp)
    133c:	76 9c                	jbe    12da <check_key+0x7a>
    133e:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    1345:	ba a8 00 00 00       	mov    $0xa8,%edx
    134a:	be 00 00 00 00       	mov    $0x0,%esi
    134f:	48 89 c7             	mov    %rax,%rdi
    1352:	e8 89 fd ff ff       	call   10e0 <memset@plt>
    1357:	c7 85 b0 fd ff ff 00 	movl   $0x0,-0x250(%rbp)
    135e:	00 00 00 
    1361:	eb 3a                	jmp    139d <check_key+0x13d>
    1363:	8b 85 b0 fd ff ff    	mov    -0x250(%rbp),%eax
    1369:	c1 e0 02             	shl    $0x2,%eax
    136c:	89 c2                	mov    %eax,%edx
    136e:	48 8b 85 98 fd ff ff 	mov    -0x268(%rbp),%rax
    1375:	48 01 d0             	add    %rdx,%rax
    1378:	be 04 00 00 00       	mov    $0x4,%esi
    137d:	48 89 c7             	mov    %rax,%rdi
    1380:	e8 4b 03 00 00       	call   16d0 <hash_64_fnv1a>
    1385:	48 63 d0             	movslq %eax,%rdx
    1388:	8b 85 b0 fd ff ff    	mov    -0x250(%rbp),%eax
    138e:	48 89 94 c5 c0 fd ff 	mov    %rdx,-0x240(%rbp,%rax,8)
    1395:	ff 
    1396:	83 85 b0 fd ff ff 01 	addl   $0x1,-0x250(%rbp)
    139d:	83 bd b0 fd ff ff 14 	cmpl   $0x14,-0x250(%rbp)
    13a4:	76 bd                	jbe    1363 <check_key+0x103>
    13a6:	c7 05 64 2c 00 00 15 	movl   $0x75bcd15,0x2c64(%rip)        # 4014 <x>
    13ad:	cd 5b 07 
    13b0:	c7 05 5e 2c 00 00 e5 	movl   $0x159a55e5,0x2c5e(%rip)        # 4018 <y>
    13b7:	55 9a 15 
    13ba:	c7 05 58 2c 00 00 b5 	movl   $0x1f123bb5,0x2c58(%rip)        # 401c <z>
    13c1:	3b 12 1f 
    13c4:	c7 05 52 2c 00 00 ef 	movl   $0xdeadbeef,0x2c52(%rip)        # 4020 <w>
    13cb:	be ad de 
    13ce:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
    13d5:	ba a8 00 00 00       	mov    $0xa8,%edx
    13da:	be 00 00 00 00       	mov    $0x0,%esi
    13df:	48 89 c7             	mov    %rax,%rdi
    13e2:	e8 f9 fc ff ff       	call   10e0 <memset@plt>
    13e7:	c7 85 b4 fd ff ff 00 	movl   $0x0,-0x24c(%rbp)
    13ee:	00 00 00 
    13f1:	eb 74                	jmp    1467 <check_key+0x207>
    13f3:	c7 85 b8 fd ff ff 00 	movl   $0x0,-0x248(%rbp)
    13fa:	00 00 00 
    13fd:	eb 58                	jmp    1457 <check_key+0x1f7>
    13ff:	8b 85 b8 fd ff ff    	mov    -0x248(%rbp),%eax
    1405:	48 8b 9c c5 c0 fd ff 	mov    -0x240(%rbp,%rax,8),%rbx
    140c:	ff 
    140d:	e8 d7 fd ff ff       	call   11e9 <xorshift128>
    1412:	89 c2                	mov    %eax,%edx
    1414:	89 d0                	mov    %edx,%eax
    1416:	c1 f8 1f             	sar    $0x1f,%eax
    1419:	c1 e8 16             	shr    $0x16,%eax
    141c:	89 c1                	mov    %eax,%ecx
    141e:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
    1421:	25 ff 03 00 00       	and    $0x3ff,%eax
    1426:	29 c8                	sub    %ecx,%eax
    1428:	48 98                	cltq   
    142a:	48 0f af d8          	imul   %rax,%rbx
    142e:	48 89 da             	mov    %rbx,%rdx
    1431:	8b 85 b4 fd ff ff    	mov    -0x24c(%rbp),%eax
    1437:	48 8b 84 c5 70 fe ff 	mov    -0x190(%rbp,%rax,8),%rax
    143e:	ff 
    143f:	48 01 c2             	add    %rax,%rdx
    1442:	8b 85 b4 fd ff ff    	mov    -0x24c(%rbp),%eax
    1448:	48 89 94 c5 70 fe ff 	mov    %rdx,-0x190(%rbp,%rax,8)
    144f:	ff 
    1450:	83 85 b8 fd ff ff 01 	addl   $0x1,-0x248(%rbp)
    1457:	83 bd b8 fd ff ff 14 	cmpl   $0x14,-0x248(%rbp)
    145e:	76 9f                	jbe    13ff <check_key+0x19f>
    1460:	83 85 b4 fd ff ff 01 	addl   $0x1,-0x24c(%rbp)
    1467:	83 bd b4 fd ff ff 14 	cmpl   $0x14,-0x24c(%rbp)
    146e:	76 83                	jbe    13f3 <check_key+0x193>
    1470:	48 b8 4b 03 b8 11 6f 	movabs $0xffffff6f11b8034b,%rax
    1477:	ff ff ff 
    147a:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
    1481:	48 b8 f2 da 20 34 67 	movabs $0x673420daf2,%rax
    1488:	00 00 00 
    148b:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
    1492:	48 b8 2c f0 17 b8 5e 	movabs $0x45eb817f02c,%rax
    1499:	04 00 00 
    149c:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
    14a3:	48 b8 45 39 50 99 30 	movabs $0xfffffe3099503945,%rax
    14aa:	fe ff ff 
    14ad:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    14b4:	48 b8 27 12 ce 8d 8f 	movabs $0x18f8dce1227,%rax
    14bb:	01 00 00 
    14be:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    14c5:	48 b8 75 68 ea 50 60 	movabs $0x26050ea6875,%rax
    14cc:	02 00 00 
    14cf:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    14d6:	48 b8 f0 4b 9c 59 98 	movabs $0x298599c4bf0,%rax
    14dd:	02 00 00 
    14e0:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
    14e7:	48 b8 58 9e ce 56 a3 	movabs $0xfffff8a356ce9e58,%rax
    14ee:	f8 ff ff 
    14f1:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
    14f8:	48 b8 36 cf 12 c7 d3 	movabs $0xfffffed3c712cf36,%rax
    14ff:	fe ff ff 
    1502:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    1509:	48 b8 0f 63 6d 84 96 	movabs $0xfffffe96846d630f,%rax
    1510:	fe ff ff 
    1513:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    151a:	48 b8 f3 3f ce b1 8c 	movabs $0x58cb1ce3ff3,%rax
    1521:	05 00 00 
    1524:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    152b:	48 b8 63 2a 2c 18 cf 	movabs $0xfffffccf182c2a63,%rax
    1532:	fc ff ff 
    1535:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    153c:	48 b8 de f1 f3 fd 57 	movabs $0xfffffe57fdf3f1de,%rax
    1543:	fe ff ff 
    1546:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    154a:	48 b8 62 f9 35 3f 60 	movabs $0xfffffa603f35f962,%rax
    1551:	fa ff ff 
    1554:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    1558:	48 b8 57 0b 57 84 78 	movabs $0xffffff7884570b57,%rax
    155f:	ff ff ff 
    1562:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1566:	48 b8 c1 d9 c4 97 48 	movabs $0x4897c4d9c1,%rax
    156d:	00 00 00 
    1570:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1574:	48 b8 b4 5c 5e 35 b9 	movabs $0xfffffeb9355e5cb4,%rax
    157b:	fe ff ff 
    157e:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    1582:	48 b8 94 d0 f7 ed dc 	movabs $0xdcedf7d094,%rax
    1589:	00 00 00 
    158c:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    1590:	48 b8 47 ac 9c 2e 60 	movabs $0x3602e9cac47,%rax
    1597:	03 00 00 
    159a:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    159e:	48 b8 d6 19 72 66 e3 	movabs $0xfffffee3667219d6,%rax
    15a5:	fe ff ff 
    15a8:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    15ac:	48 b8 63 b0 c9 26 c3 	movabs $0xfffffdc326c9b063,%rax
    15b3:	fd ff ff 
    15b6:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    15ba:	c7 85 bc fd ff ff 00 	movl   $0x0,-0x244(%rbp)
    15c1:	00 00 00 
    15c4:	eb 2f                	jmp    15f5 <check_key+0x395>
    15c6:	8b 85 bc fd ff ff    	mov    -0x244(%rbp),%eax
    15cc:	48 8b 94 c5 20 ff ff 	mov    -0xe0(%rbp,%rax,8),%rdx
    15d3:	ff 
    15d4:	8b 85 bc fd ff ff    	mov    -0x244(%rbp),%eax
    15da:	48 8b 84 c5 70 fe ff 	mov    -0x190(%rbp,%rax,8),%rax
    15e1:	ff 
    15e2:	48 39 c2             	cmp    %rax,%rdx
    15e5:	74 07                	je     15ee <check_key+0x38e>
    15e7:	b8 00 00 00 00       	mov    $0x0,%eax
    15ec:	eb 15                	jmp    1603 <check_key+0x3a3>
    15ee:	83 85 bc fd ff ff 01 	addl   $0x1,-0x244(%rbp)
    15f5:	83 bd bc fd ff ff 14 	cmpl   $0x14,-0x244(%rbp)
    15fc:	76 c8                	jbe    15c6 <check_key+0x366>
    15fe:	b8 01 00 00 00       	mov    $0x1,%eax
    1603:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1607:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    160e:	00 00 
    1610:	74 05                	je     1617 <check_key+0x3b7>
    1612:	e8 a9 fa ff ff       	call   10c0 <__stack_chk_fail@plt>
    1617:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    161b:	c9                   	leave  
    161c:	c3                   	ret    

000000000000161d <main>:
    161d:	f3 0f 1e fa          	endbr64 
    1621:	55                   	push   %rbp
    1622:	48 89 e5             	mov    %rsp,%rbp
    1625:	48 83 ec 70          	sub    $0x70,%rsp
    1629:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1630:	00 00 
    1632:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1636:	31 c0                	xor    %eax,%eax
    1638:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    163c:	ba 64 00 00 00       	mov    $0x64,%edx
    1641:	be 00 00 00 00       	mov    $0x0,%esi
    1646:	48 89 c7             	mov    %rax,%rdi
    1649:	e8 92 fa ff ff       	call   10e0 <memset@plt>
    164e:	48 8d 05 b3 09 00 00 	lea    0x9b3(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1655:	48 89 c7             	mov    %rax,%rdi
    1658:	b8 00 00 00 00       	mov    $0x0,%eax
    165d:	e8 6e fa ff ff       	call   10d0 <printf@plt>
    1662:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    1666:	48 89 c6             	mov    %rax,%rsi
    1669:	48 8d 05 b0 09 00 00 	lea    0x9b0(%rip),%rax        # 2020 <_IO_stdin_used+0x20>
    1670:	48 89 c7             	mov    %rax,%rdi
    1673:	b8 00 00 00 00       	mov    $0x0,%eax
    1678:	e8 73 fa ff ff       	call   10f0 <__isoc99_scanf@plt>
    167d:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    1681:	48 89 c7             	mov    %rax,%rdi
    1684:	e8 d7 fb ff ff       	call   1260 <check_key>
    1689:	84 c0                	test   %al,%al
    168b:	74 1d                	je     16aa <main+0x8d>
    168d:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    1691:	48 89 c6             	mov    %rax,%rsi
    1694:	48 8d 05 8d 09 00 00 	lea    0x98d(%rip),%rax        # 2028 <_IO_stdin_used+0x28>
    169b:	48 89 c7             	mov    %rax,%rdi
    169e:	b8 00 00 00 00       	mov    $0x0,%eax
    16a3:	e8 28 fa ff ff       	call   10d0 <printf@plt>
    16a8:	eb 0f                	jmp    16b9 <main+0x9c>
    16aa:	48 8d 05 99 09 00 00 	lea    0x999(%rip),%rax        # 204a <_IO_stdin_used+0x4a>
    16b1:	48 89 c7             	mov    %rax,%rdi
    16b4:	e8 e7 f9 ff ff       	call   10a0 <puts@plt>
    16b9:	90                   	nop
    16ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16be:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    16c5:	00 00 
    16c7:	74 05                	je     16ce <main+0xb1>
    16c9:	e8 f2 f9 ff ff       	call   10c0 <__stack_chk_fail@plt>
    16ce:	c9                   	leave  
    16cf:	c3                   	ret    

00000000000016d0 <hash_64_fnv1a>:
    16d0:	f3 0f 1e fa          	endbr64 
    16d4:	55                   	push   %rbp
    16d5:	48 89 e5             	mov    %rsp,%rbp
    16d8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    16dc:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    16e0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    16e4:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    16e8:	48 b8 25 23 22 84 e4 	movabs $0xcbf29ce484222325,%rax
    16ef:	9c f2 cb 
    16f2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    16f6:	48 b8 b3 01 00 00 00 	movabs $0x100000001b3,%rax
    16fd:	01 00 00 
    1700:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1704:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    170b:	eb 2c                	jmp    1739 <hash_64_fnv1a+0x69>
    170d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1710:	48 63 d0             	movslq %eax,%rdx
    1713:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1717:	48 01 d0             	add    %rdx,%rax
    171a:	0f b6 00             	movzbl (%rax),%eax
    171d:	88 45 e3             	mov    %al,-0x1d(%rbp)
    1720:	0f b6 45 e3          	movzbl -0x1d(%rbp),%eax
    1724:	48 31 45 e8          	xor    %rax,-0x18(%rbp)
    1728:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    172c:	48 0f af 45 f8       	imul   -0x8(%rbp),%rax
    1731:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1735:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    1739:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    173c:	48 98                	cltq   
    173e:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
    1742:	77 c9                	ja     170d <hash_64_fnv1a+0x3d>
    1744:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1748:	5d                   	pop    %rbp
    1749:	c3                   	ret    

Disassembly of section .fini:

000000000000174c <_fini>:
    174c:	f3 0f 1e fa          	endbr64 
    1750:	48 83 ec 08          	sub    $0x8,%rsp
    1754:	48 83 c4 08          	add    $0x8,%rsp
    1758:	c3                   	ret    
