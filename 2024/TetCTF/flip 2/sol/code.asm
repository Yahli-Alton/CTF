
encrypt:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 92 3f 00 00    	push   0x3f92(%rip)        # 4fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 93 3f 00 00 	bnd jmp *0x3f93(%rip)        # 4fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 9d 3f 00 00 	bnd jmp *0x3f9d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001060 <write@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 5d 3f 00 00 	bnd jmp *0x3f5d(%rip)        # 4fc8 <write@GLIBC_2.2.5>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001070 <__stack_chk_fail@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 55 3f 00 00 	bnd jmp *0x3f55(%rip)        # 4fd0 <__stack_chk_fail@GLIBC_2.4>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	49 89 d1             	mov    %rdx,%r9
    1089:	5e                   	pop    %rsi
    108a:	48 89 e2             	mov    %rsp,%rdx
    108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1091:	50                   	push   %rax
    1092:	54                   	push   %rsp
    1093:	45 31 c0             	xor    %r8d,%r8d
    1096:	31 c9                	xor    %ecx,%ecx
    1098:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1169 <main>
    109f:	ff 15 33 3f 00 00    	call   *0x3f33(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    10a5:	f4                   	hlt    
    10a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ad:	00 00 00 

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 79 3f 00 00 	lea    0x3f79(%rip),%rdi        # 5030 <__TMC_END__>
    10b7:	48 8d 05 72 3f 00 00 	lea    0x3f72(%rip),%rax        # 5030 <__TMC_END__>
    10be:	48 39 f8             	cmp    %rdi,%rax
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 16 3f 00 00 	mov    0x3f16(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    10ca:	48 85 c0             	test   %rax,%rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmp    *%rax
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	c3                   	ret    
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 49 3f 00 00 	lea    0x3f49(%rip),%rdi        # 5030 <__TMC_END__>
    10e7:	48 8d 35 42 3f 00 00 	lea    0x3f42(%rip),%rsi        # 5030 <__TMC_END__>
    10ee:	48 29 fe             	sub    %rdi,%rsi
    10f1:	48 89 f0             	mov    %rsi,%rax
    10f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10f8:	48 c1 f8 03          	sar    $0x3,%rax
    10fc:	48 01 c6             	add    %rax,%rsi
    10ff:	48 d1 fe             	sar    %rsi
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 3e 00 00 	mov    0x3ee5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    110b:	48 85 c0             	test   %rax,%rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmp    *%rax
    1112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	80 3d 05 3f 00 00 00 	cmpb   $0x0,0x3f05(%rip)        # 5030 <__TMC_END__>
    112b:	75 2b                	jne    1158 <__do_global_dtors_aux+0x38>
    112d:	55                   	push   %rbp
    112e:	48 83 3d c2 3e 00 00 	cmpq   $0x0,0x3ec2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	74 0c                	je     1147 <__do_global_dtors_aux+0x27>
    113b:	48 8b 3d c6 3e 00 00 	mov    0x3ec6(%rip),%rdi        # 5008 <__dso_handle>
    1142:	e8 09 ff ff ff       	call   1050 <__cxa_finalize@plt>
    1147:	e8 64 ff ff ff       	call   10b0 <deregister_tm_clones>
    114c:	c6 05 dd 3e 00 00 01 	movb   $0x1,0x3edd(%rip)        # 5030 <__TMC_END__>
    1153:	5d                   	pop    %rbp
    1154:	c3                   	ret    
    1155:	0f 1f 00             	nopl   (%rax)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <frame_dummy>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	e9 77 ff ff ff       	jmp    10e0 <register_tm_clones>

0000000000001169 <main>:
    1169:	f3 0f 1e fa          	endbr64 
    116d:	55                   	push   %rbp
    116e:	48 89 e5             	mov    %rsp,%rbp
    1171:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
    1178:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    117f:	00 00 
    1181:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1185:	31 c0                	xor    %eax,%eax
    1187:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
    118e:	48 8d 15 8b 3e 00 00 	lea    0x3e8b(%rip),%rdx        # 5020 <key>
    1195:	48 89 d6             	mov    %rdx,%rsi
    1198:	48 89 c7             	mov    %rax,%rdi
    119b:	e8 0c 03 00 00       	call   14ac <AES_init_ctx>
    11a0:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
    11a7:	48 8d 15 62 3e 00 00 	lea    0x3e62(%rip),%rdx        # 5010 <plaintext>
    11ae:	48 89 d6             	mov    %rdx,%rsi
    11b1:	48 89 c7             	mov    %rax,%rdi
    11b4:	e8 dc 11 00 00       	call   2395 <AES_ECB_encrypt>
    11b9:	ba 10 00 00 00       	mov    $0x10,%edx
    11be:	48 8d 05 4b 3e 00 00 	lea    0x3e4b(%rip),%rax        # 5010 <plaintext>
    11c5:	48 89 c6             	mov    %rax,%rsi
    11c8:	bf 01 00 00 00       	mov    $0x1,%edi
    11cd:	e8 8e fe ff ff       	call   1060 <write@plt>
    11d2:	b8 00 00 00 00       	mov    $0x0,%eax
    11d7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    11db:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    11e2:	00 00 
    11e4:	74 05                	je     11eb <main+0x82>
    11e6:	e8 85 fe ff ff       	call   1070 <__stack_chk_fail@plt>
    11eb:	c9                   	leave  
    11ec:	c3                   	ret    

00000000000011ed <KeyExpansion>:
    11ed:	f3 0f 1e fa          	endbr64 
    11f1:	55                   	push   %rbp
    11f2:	48 89 e5             	mov    %rsp,%rbp
    11f5:	48 83 ec 30          	sub    $0x30,%rsp
    11f9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    11fd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1201:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1208:	00 00 
    120a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    120e:	31 c0                	xor    %eax,%eax
    1210:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    1217:	e9 a2 00 00 00       	jmp    12be <KeyExpansion+0xd1>
    121c:	8b 45 e8             	mov    -0x18(%rbp),%eax
    121f:	c1 e0 02             	shl    $0x2,%eax
    1222:	89 c2                	mov    %eax,%edx
    1224:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1228:	48 01 d0             	add    %rdx,%rax
    122b:	8b 55 e8             	mov    -0x18(%rbp),%edx
    122e:	c1 e2 02             	shl    $0x2,%edx
    1231:	89 d1                	mov    %edx,%ecx
    1233:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1237:	48 01 ca             	add    %rcx,%rdx
    123a:	0f b6 00             	movzbl (%rax),%eax
    123d:	88 02                	mov    %al,(%rdx)
    123f:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1242:	c1 e0 02             	shl    $0x2,%eax
    1245:	83 c0 01             	add    $0x1,%eax
    1248:	89 c2                	mov    %eax,%edx
    124a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    124e:	48 01 d0             	add    %rdx,%rax
    1251:	8b 55 e8             	mov    -0x18(%rbp),%edx
    1254:	c1 e2 02             	shl    $0x2,%edx
    1257:	83 c2 01             	add    $0x1,%edx
    125a:	89 d1                	mov    %edx,%ecx
    125c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1260:	48 01 ca             	add    %rcx,%rdx
    1263:	0f b6 00             	movzbl (%rax),%eax
    1266:	88 02                	mov    %al,(%rdx)
    1268:	8b 45 e8             	mov    -0x18(%rbp),%eax
    126b:	c1 e0 02             	shl    $0x2,%eax
    126e:	83 c0 02             	add    $0x2,%eax
    1271:	89 c2                	mov    %eax,%edx
    1273:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1277:	48 01 d0             	add    %rdx,%rax
    127a:	8b 55 e8             	mov    -0x18(%rbp),%edx
    127d:	c1 e2 02             	shl    $0x2,%edx
    1280:	83 c2 02             	add    $0x2,%edx
    1283:	89 d1                	mov    %edx,%ecx
    1285:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1289:	48 01 ca             	add    %rcx,%rdx
    128c:	0f b6 00             	movzbl (%rax),%eax
    128f:	88 02                	mov    %al,(%rdx)
    1291:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1294:	c1 e0 02             	shl    $0x2,%eax
    1297:	83 c0 03             	add    $0x3,%eax
    129a:	89 c2                	mov    %eax,%edx
    129c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    12a0:	48 01 d0             	add    %rdx,%rax
    12a3:	8b 55 e8             	mov    -0x18(%rbp),%edx
    12a6:	c1 e2 02             	shl    $0x2,%edx
    12a9:	83 c2 03             	add    $0x3,%edx
    12ac:	89 d1                	mov    %edx,%ecx
    12ae:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    12b2:	48 01 ca             	add    %rcx,%rdx
    12b5:	0f b6 00             	movzbl (%rax),%eax
    12b8:	88 02                	mov    %al,(%rdx)
    12ba:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    12be:	83 7d e8 03          	cmpl   $0x3,-0x18(%rbp)
    12c2:	0f 86 54 ff ff ff    	jbe    121c <KeyExpansion+0x2f>
    12c8:	c7 45 e8 04 00 00 00 	movl   $0x4,-0x18(%rbp)                    change to 0x44
    12cf:	e9 b7 01 00 00       	jmp    148b <KeyExpansion+0x29e>
    12d4:	8b 45 e8             	mov    -0x18(%rbp),%eax
    12d7:	83 e8 01             	sub    $0x1,%eax
    12da:	c1 e0 02             	shl    $0x2,%eax
    12dd:	89 45 ec             	mov    %eax,-0x14(%rbp)
    12e0:	8b 55 ec             	mov    -0x14(%rbp),%edx
    12e3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    12e7:	48 01 d0             	add    %rdx,%rax
    12ea:	0f b6 00             	movzbl (%rax),%eax
    12ed:	88 45 f4             	mov    %al,-0xc(%rbp)
    12f0:	8b 45 ec             	mov    -0x14(%rbp),%eax
    12f3:	83 c0 01             	add    $0x1,%eax
    12f6:	89 c2                	mov    %eax,%edx
    12f8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    12fc:	48 01 d0             	add    %rdx,%rax
    12ff:	0f b6 00             	movzbl (%rax),%eax
    1302:	88 45 f5             	mov    %al,-0xb(%rbp)
    1305:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1308:	83 c0 02             	add    $0x2,%eax
    130b:	89 c2                	mov    %eax,%edx
    130d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1311:	48 01 d0             	add    %rdx,%rax
    1314:	0f b6 00             	movzbl (%rax),%eax
    1317:	88 45 f6             	mov    %al,-0xa(%rbp)
    131a:	8b 45 ec             	mov    -0x14(%rbp),%eax
    131d:	83 c0 03             	add    $0x3,%eax
    1320:	89 c2                	mov    %eax,%edx
    1322:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1326:	48 01 d0             	add    %rdx,%rax
    1329:	0f b6 00             	movzbl (%rax),%eax
    132c:	88 45 f7             	mov    %al,-0x9(%rbp)
    132f:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1332:	83 e0 03             	and    $0x3,%eax
    1335:	85 c0                	test   %eax,%eax
    1337:	0f 85 9b 00 00 00    	jne    13d8 <KeyExpansion+0x1eb>
    133d:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
    1341:	88 45 e7             	mov    %al,-0x19(%rbp)
    1344:	0f b6 45 f5          	movzbl -0xb(%rbp),%eax
    1348:	88 45 f4             	mov    %al,-0xc(%rbp)
    134b:	0f b6 45 f6          	movzbl -0xa(%rbp),%eax
    134f:	88 45 f5             	mov    %al,-0xb(%rbp)
    1352:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    1356:	88 45 f6             	mov    %al,-0xa(%rbp)
    1359:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
    135d:	88 45 f7             	mov    %al,-0x9(%rbp)
    1360:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
    1364:	0f b6 c0             	movzbl %al,%eax
    1367:	48 98                	cltq   
    1369:	48 8d 15 b0 1c 00 00 	lea    0x1cb0(%rip),%rdx        # 3020 <sbox>
    1370:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    1374:	88 45 f4             	mov    %al,-0xc(%rbp)
    1377:	0f b6 45 f5          	movzbl -0xb(%rbp),%eax
    137b:	0f b6 c0             	movzbl %al,%eax
    137e:	48 98                	cltq   
    1380:	48 8d 15 99 1c 00 00 	lea    0x1c99(%rip),%rdx        # 3020 <sbox>
    1387:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    138b:	88 45 f5             	mov    %al,-0xb(%rbp)
    138e:	0f b6 45 f6          	movzbl -0xa(%rbp),%eax
    1392:	0f b6 c0             	movzbl %al,%eax
    1395:	48 98                	cltq   
    1397:	48 8d 15 82 1c 00 00 	lea    0x1c82(%rip),%rdx        # 3020 <sbox>
    139e:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    13a2:	88 45 f6             	mov    %al,-0xa(%rbp)
    13a5:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    13a9:	0f b6 c0             	movzbl %al,%eax
    13ac:	48 98                	cltq   
    13ae:	48 8d 15 6b 1c 00 00 	lea    0x1c6b(%rip),%rdx        # 3020 <sbox>
    13b5:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    13b9:	88 45 f7             	mov    %al,-0x9(%rbp)
    13bc:	0f b6 55 f4          	movzbl -0xc(%rbp),%edx
    13c0:	8b 45 e8             	mov    -0x18(%rbp),%eax
    13c3:	c1 e8 02             	shr    $0x2,%eax
    13c6:	89 c1                	mov    %eax,%ecx
    13c8:	48 8d 05 51 1e 00 00 	lea    0x1e51(%rip),%rax        # 3220 <Rcon>
    13cf:	0f b6 04 01          	movzbl (%rcx,%rax,1),%eax
    13d3:	31 d0                	xor    %edx,%eax
    13d5:	88 45 f4             	mov    %al,-0xc(%rbp)
    13d8:	8b 45 e8             	mov    -0x18(%rbp),%eax
    13db:	c1 e0 02             	shl    $0x2,%eax
    13de:	89 45 f0             	mov    %eax,-0x10(%rbp)
    13e1:	8b 45 e8             	mov    -0x18(%rbp),%eax
    13e4:	83 e8 04             	sub    $0x4,%eax
    13e7:	c1 e0 02             	shl    $0x2,%eax
    13ea:	89 45 ec             	mov    %eax,-0x14(%rbp)
    13ed:	8b 55 ec             	mov    -0x14(%rbp),%edx
    13f0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13f4:	48 01 d0             	add    %rdx,%rax
    13f7:	0f b6 08             	movzbl (%rax),%ecx
    13fa:	0f b6 55 f4          	movzbl -0xc(%rbp),%edx
    13fe:	8b 75 f0             	mov    -0x10(%rbp),%esi
    1401:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1405:	48 01 f0             	add    %rsi,%rax
    1408:	31 ca                	xor    %ecx,%edx
    140a:	88 10                	mov    %dl,(%rax)
    140c:	8b 45 ec             	mov    -0x14(%rbp),%eax
    140f:	83 c0 01             	add    $0x1,%eax
    1412:	89 c2                	mov    %eax,%edx
    1414:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1418:	48 01 d0             	add    %rdx,%rax
    141b:	0f b6 08             	movzbl (%rax),%ecx
    141e:	0f b6 55 f5          	movzbl -0xb(%rbp),%edx
    1422:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1425:	83 c0 01             	add    $0x1,%eax
    1428:	89 c6                	mov    %eax,%esi
    142a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    142e:	48 01 f0             	add    %rsi,%rax
    1431:	31 ca                	xor    %ecx,%edx
    1433:	88 10                	mov    %dl,(%rax)
    1435:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1438:	83 c0 02             	add    $0x2,%eax
    143b:	89 c2                	mov    %eax,%edx
    143d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1441:	48 01 d0             	add    %rdx,%rax
    1444:	0f b6 08             	movzbl (%rax),%ecx
    1447:	0f b6 55 f6          	movzbl -0xa(%rbp),%edx
    144b:	8b 45 f0             	mov    -0x10(%rbp),%eax
    144e:	83 c0 02             	add    $0x2,%eax
    1451:	89 c6                	mov    %eax,%esi
    1453:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1457:	48 01 f0             	add    %rsi,%rax
    145a:	31 ca                	xor    %ecx,%edx
    145c:	88 10                	mov    %dl,(%rax)
    145e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1461:	83 c0 03             	add    $0x3,%eax
    1464:	89 c2                	mov    %eax,%edx
    1466:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    146a:	48 01 d0             	add    %rdx,%rax
    146d:	0f b6 08             	movzbl (%rax),%ecx
    1470:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    1474:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1477:	83 c0 03             	add    $0x3,%eax
    147a:	89 c6                	mov    %eax,%esi
    147c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1480:	48 01 f0             	add    %rsi,%rax
    1483:	31 ca                	xor    %ecx,%edx
    1485:	88 10                	mov    %dl,(%rax)
    1487:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    148b:	83 7d e8 2b          	cmpl   $0x2b,-0x18(%rbp)
    148f:	0f 86 3f fe ff ff    	jbe    12d4 <KeyExpansion+0xe7>
    1495:	90                   	nop
    1496:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    149a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    14a1:	00 00 
    14a3:	74 05                	je     14aa <KeyExpansion+0x2bd>
    14a5:	e8 c6 fb ff ff       	call   1070 <__stack_chk_fail@plt>
    14aa:	c9                   	leave  
    14ab:	c3                   	ret    

00000000000014ac <AES_init_ctx>:
    14ac:	f3 0f 1e fa          	endbr64 
    14b0:	55                   	push   %rbp
    14b1:	48 89 e5             	mov    %rsp,%rbp
    14b4:	48 83 ec 10          	sub    $0x10,%rsp
    14b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    14bc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    14c0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14c4:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    14c8:	48 89 d6             	mov    %rdx,%rsi
    14cb:	48 89 c7             	mov    %rax,%rdi
    14ce:	e8 1a fd ff ff       	call   11ed <KeyExpansion>
    14d3:	90                   	nop
    14d4:	c9                   	leave  
    14d5:	c3                   	ret    

00000000000014d6 <AES_init_ctx_iv>:
    14d6:	f3 0f 1e fa          	endbr64 
    14da:	55                   	push   %rbp
    14db:	48 89 e5             	mov    %rsp,%rbp
    14de:	48 83 ec 20          	sub    $0x20,%rsp
    14e2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    14e6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    14ea:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    14ee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14f2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    14f6:	48 89 d6             	mov    %rdx,%rsi
    14f9:	48 89 c7             	mov    %rax,%rdi
    14fc:	e8 ec fc ff ff       	call   11ed <KeyExpansion>
    1501:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1505:	48 8d 88 b0 00 00 00 	lea    0xb0(%rax),%rcx
    150c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1510:	48 8b 50 08          	mov    0x8(%rax),%rdx
    1514:	48 8b 00             	mov    (%rax),%rax
    1517:	48 89 01             	mov    %rax,(%rcx)
    151a:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    151e:	90                   	nop
    151f:	c9                   	leave  
    1520:	c3                   	ret    

0000000000001521 <AES_ctx_set_iv>:
    1521:	f3 0f 1e fa          	endbr64 
    1525:	55                   	push   %rbp
    1526:	48 89 e5             	mov    %rsp,%rbp
    1529:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    152d:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1531:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1535:	48 8d 88 b0 00 00 00 	lea    0xb0(%rax),%rcx
    153c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1540:	48 8b 50 08          	mov    0x8(%rax),%rdx
    1544:	48 8b 00             	mov    (%rax),%rax
    1547:	48 89 01             	mov    %rax,(%rcx)
    154a:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    154e:	90                   	nop
    154f:	5d                   	pop    %rbp
    1550:	c3                   	ret    

0000000000001551 <AddRoundKey>:
    1551:	f3 0f 1e fa          	endbr64 
    1555:	55                   	push   %rbp
    1556:	48 89 e5             	mov    %rsp,%rbp
    1559:	89 f8                	mov    %edi,%eax
    155b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    155f:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    1563:	88 45 ec             	mov    %al,-0x14(%rbp)
    1566:	c6 45 fe 00          	movb   $0x0,-0x2(%rbp)
    156a:	eb 7c                	jmp    15e8 <AddRoundKey+0x97>
    156c:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1570:	eb 6c                	jmp    15de <AddRoundKey+0x8d>
    1572:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    1576:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    157a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    157e:	48 63 d2             	movslq %edx,%rdx
    1581:	48 98                	cltq   
    1583:	48 c1 e0 02          	shl    $0x2,%rax
    1587:	48 01 c8             	add    %rcx,%rax
    158a:	48 01 d0             	add    %rdx,%rax
    158d:	0f b6 30             	movzbl (%rax),%esi
    1590:	0f b6 45 ec          	movzbl -0x14(%rbp),%eax
    1594:	8d 14 85 00 00 00 00 	lea    0x0(,%rax,4),%edx
    159b:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    159f:	01 d0                	add    %edx,%eax
    15a1:	8d 14 85 00 00 00 00 	lea    0x0(,%rax,4),%edx
    15a8:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    15ac:	01 d0                	add    %edx,%eax
    15ae:	48 63 d0             	movslq %eax,%rdx
    15b1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    15b5:	48 01 d0             	add    %rdx,%rax
    15b8:	0f b6 10             	movzbl (%rax),%edx
    15bb:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    15bf:	0f b6 4d ff          	movzbl -0x1(%rbp),%ecx
    15c3:	31 f2                	xor    %esi,%edx
    15c5:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    15c9:	48 63 c9             	movslq %ecx,%rcx
    15cc:	48 98                	cltq   
    15ce:	48 c1 e0 02          	shl    $0x2,%rax
    15d2:	48 01 f0             	add    %rsi,%rax
    15d5:	48 01 c8             	add    %rcx,%rax
    15d8:	88 10                	mov    %dl,(%rax)
    15da:	80 45 ff 01          	addb   $0x1,-0x1(%rbp)
    15de:	80 7d ff 03          	cmpb   $0x3,-0x1(%rbp)
    15e2:	76 8e                	jbe    1572 <AddRoundKey+0x21>
    15e4:	80 45 fe 01          	addb   $0x1,-0x2(%rbp)
    15e8:	80 7d fe 03          	cmpb   $0x3,-0x2(%rbp)
    15ec:	0f 86 7a ff ff ff    	jbe    156c <AddRoundKey+0x1b>
    15f2:	90                   	nop
    15f3:	90                   	nop
    15f4:	5d                   	pop    %rbp
    15f5:	c3                   	ret    

00000000000015f6 <SubBytes>:
    15f6:	f3 0f 1e fa          	endbr64 
    15fa:	55                   	push   %rbp
    15fb:	48 89 e5             	mov    %rsp,%rbp
    15fe:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1602:	c6 45 fe 00          	movb   $0x0,-0x2(%rbp)
    1606:	eb 60                	jmp    1668 <SubBytes+0x72>
    1608:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    160c:	eb 50                	jmp    165e <SubBytes+0x68>
    160e:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1612:	0f b6 55 fe          	movzbl -0x2(%rbp),%edx
    1616:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    161a:	48 63 d2             	movslq %edx,%rdx
    161d:	48 98                	cltq   
    161f:	48 c1 e0 02          	shl    $0x2,%rax
    1623:	48 01 c8             	add    %rcx,%rax
    1626:	48 01 d0             	add    %rdx,%rax
    1629:	0f b6 00             	movzbl (%rax),%eax
    162c:	0f b6 c0             	movzbl %al,%eax
    162f:	0f b6 4d ff          	movzbl -0x1(%rbp),%ecx
    1633:	0f b6 75 fe          	movzbl -0x2(%rbp),%esi
    1637:	48 98                	cltq   
    1639:	48 8d 15 e0 19 00 00 	lea    0x19e0(%rip),%rdx        # 3020 <sbox>
    1640:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
    1644:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    1648:	48 63 f6             	movslq %esi,%rsi
    164b:	48 63 c1             	movslq %ecx,%rax
    164e:	48 c1 e0 02          	shl    $0x2,%rax
    1652:	48 01 f8             	add    %rdi,%rax
    1655:	48 01 f0             	add    %rsi,%rax
    1658:	88 10                	mov    %dl,(%rax)
    165a:	80 45 ff 01          	addb   $0x1,-0x1(%rbp)
    165e:	80 7d ff 03          	cmpb   $0x3,-0x1(%rbp)
    1662:	76 aa                	jbe    160e <SubBytes+0x18>
    1664:	80 45 fe 01          	addb   $0x1,-0x2(%rbp)
    1668:	80 7d fe 03          	cmpb   $0x3,-0x2(%rbp)
    166c:	76 9a                	jbe    1608 <SubBytes+0x12>
    166e:	90                   	nop
    166f:	90                   	nop
    1670:	5d                   	pop    %rbp
    1671:	c3                   	ret    

0000000000001672 <ShiftRows>:
    1672:	f3 0f 1e fa          	endbr64 
    1676:	55                   	push   %rbp
    1677:	48 89 e5             	mov    %rsp,%rbp
    167a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    167e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1682:	0f b6 40 01          	movzbl 0x1(%rax),%eax
    1686:	88 45 ff             	mov    %al,-0x1(%rbp)
    1689:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    168d:	0f b6 50 05          	movzbl 0x5(%rax),%edx
    1691:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1695:	88 50 01             	mov    %dl,0x1(%rax)
    1698:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    169c:	0f b6 50 09          	movzbl 0x9(%rax),%edx
    16a0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16a4:	88 50 05             	mov    %dl,0x5(%rax)
    16a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16ab:	0f b6 50 0d          	movzbl 0xd(%rax),%edx
    16af:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16b3:	88 50 09             	mov    %dl,0x9(%rax)
    16b6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16ba:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    16be:	88 50 0d             	mov    %dl,0xd(%rax)
    16c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16c5:	0f b6 40 02          	movzbl 0x2(%rax),%eax
    16c9:	88 45 ff             	mov    %al,-0x1(%rbp)
    16cc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16d0:	0f b6 50 0a          	movzbl 0xa(%rax),%edx
    16d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16d8:	88 50 02             	mov    %dl,0x2(%rax)
    16db:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16df:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    16e3:	88 50 0a             	mov    %dl,0xa(%rax)
    16e6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16ea:	0f b6 40 06          	movzbl 0x6(%rax),%eax
    16ee:	88 45 ff             	mov    %al,-0x1(%rbp)
    16f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16f5:	0f b6 50 0e          	movzbl 0xe(%rax),%edx
    16f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16fd:	88 50 06             	mov    %dl,0x6(%rax)
    1700:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1704:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    1708:	88 50 0e             	mov    %dl,0xe(%rax)
    170b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    170f:	0f b6 40 03          	movzbl 0x3(%rax),%eax
    1713:	88 45 ff             	mov    %al,-0x1(%rbp)
    1716:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    171a:	0f b6 50 0f          	movzbl 0xf(%rax),%edx
    171e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1722:	88 50 03             	mov    %dl,0x3(%rax)
    1725:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1729:	0f b6 50 0b          	movzbl 0xb(%rax),%edx
    172d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1731:	88 50 0f             	mov    %dl,0xf(%rax)
    1734:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1738:	0f b6 50 07          	movzbl 0x7(%rax),%edx
    173c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1740:	88 50 0b             	mov    %dl,0xb(%rax)
    1743:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1747:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    174b:	88 50 07             	mov    %dl,0x7(%rax)
    174e:	90                   	nop
    174f:	5d                   	pop    %rbp
    1750:	c3                   	ret    

0000000000001751 <xtime>:
    1751:	f3 0f 1e fa          	endbr64 
    1755:	55                   	push   %rbp
    1756:	48 89 e5             	mov    %rsp,%rbp
    1759:	89 f8                	mov    %edi,%eax
    175b:	88 45 fc             	mov    %al,-0x4(%rbp)
    175e:	0f b6 45 fc          	movzbl -0x4(%rbp),%eax
    1762:	01 c0                	add    %eax,%eax
    1764:	89 c1                	mov    %eax,%ecx
    1766:	0f b6 45 fc          	movzbl -0x4(%rbp),%eax
    176a:	c0 e8 07             	shr    $0x7,%al
    176d:	89 c2                	mov    %eax,%edx
    176f:	89 d0                	mov    %edx,%eax
    1771:	01 c0                	add    %eax,%eax
    1773:	01 d0                	add    %edx,%eax
    1775:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
    177c:	01 d0                	add    %edx,%eax
    177e:	31 c8                	xor    %ecx,%eax
    1780:	5d                   	pop    %rbp
    1781:	c3                   	ret    

0000000000001782 <MixColumns>:
    1782:	f3 0f 1e fa          	endbr64 
    1786:	55                   	push   %rbp
    1787:	48 89 e5             	mov    %rsp,%rbp
    178a:	48 83 ec 18          	sub    $0x18,%rsp
    178e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1792:	c6 45 fc 00          	movb   $0x0,-0x4(%rbp)
    1796:	e9 b8 01 00 00       	jmp    1953 <MixColumns+0x1d1>
    179b:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    179f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17a3:	48 63 d2             	movslq %edx,%rdx
    17a6:	0f b6 04 90          	movzbl (%rax,%rdx,4),%eax
    17aa:	88 45 fd             	mov    %al,-0x3(%rbp)
    17ad:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    17b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17b5:	48 63 d2             	movslq %edx,%rdx
    17b8:	0f b6 0c 90          	movzbl (%rax,%rdx,4),%ecx
    17bc:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    17c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17c4:	48 63 d2             	movslq %edx,%rdx
    17c7:	0f b6 44 90 01       	movzbl 0x1(%rax,%rdx,4),%eax
    17cc:	31 c1                	xor    %eax,%ecx
    17ce:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    17d2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17d6:	48 63 d2             	movslq %edx,%rdx
    17d9:	0f b6 44 90 02       	movzbl 0x2(%rax,%rdx,4),%eax
    17de:	31 c1                	xor    %eax,%ecx
    17e0:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    17e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17e8:	48 63 d2             	movslq %edx,%rdx
    17eb:	0f b6 44 90 03       	movzbl 0x3(%rax,%rdx,4),%eax
    17f0:	31 c8                	xor    %ecx,%eax
    17f2:	88 45 fe             	mov    %al,-0x2(%rbp)
    17f5:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    17f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17fd:	48 63 d2             	movslq %edx,%rdx
    1800:	0f b6 0c 90          	movzbl (%rax,%rdx,4),%ecx
    1804:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    1808:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    180c:	48 63 d2             	movslq %edx,%rdx
    180f:	0f b6 44 90 01       	movzbl 0x1(%rax,%rdx,4),%eax
    1814:	31 c8                	xor    %ecx,%eax
    1816:	88 45 ff             	mov    %al,-0x1(%rbp)
    1819:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    181d:	89 c7                	mov    %eax,%edi
    181f:	e8 2d ff ff ff       	call   1751 <xtime>
    1824:	88 45 ff             	mov    %al,-0x1(%rbp)
    1827:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    182b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    182f:	48 63 d2             	movslq %edx,%rdx
    1832:	0f b6 0c 90          	movzbl (%rax,%rdx,4),%ecx
    1836:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    183a:	32 45 fe             	xor    -0x2(%rbp),%al
    183d:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    1841:	31 c1                	xor    %eax,%ecx
    1843:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1847:	48 63 d2             	movslq %edx,%rdx
    184a:	88 0c 90             	mov    %cl,(%rax,%rdx,4)
    184d:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    1851:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1855:	48 63 d2             	movslq %edx,%rdx
    1858:	0f b6 4c 90 01       	movzbl 0x1(%rax,%rdx,4),%ecx
    185d:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    1861:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1865:	48 63 d2             	movslq %edx,%rdx
    1868:	0f b6 44 90 02       	movzbl 0x2(%rax,%rdx,4),%eax
    186d:	31 c8                	xor    %ecx,%eax
    186f:	88 45 ff             	mov    %al,-0x1(%rbp)
    1872:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1876:	89 c7                	mov    %eax,%edi
    1878:	e8 d4 fe ff ff       	call   1751 <xtime>
    187d:	88 45 ff             	mov    %al,-0x1(%rbp)
    1880:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    1884:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1888:	48 63 d2             	movslq %edx,%rdx
    188b:	0f b6 4c 90 01       	movzbl 0x1(%rax,%rdx,4),%ecx
    1890:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1894:	32 45 fe             	xor    -0x2(%rbp),%al
    1897:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    189b:	31 c1                	xor    %eax,%ecx
    189d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18a1:	48 63 d2             	movslq %edx,%rdx
    18a4:	88 4c 90 01          	mov    %cl,0x1(%rax,%rdx,4)
    18a8:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    18ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18b0:	48 63 d2             	movslq %edx,%rdx
    18b3:	0f b6 4c 90 02       	movzbl 0x2(%rax,%rdx,4),%ecx
    18b8:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    18bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18c0:	48 63 d2             	movslq %edx,%rdx
    18c3:	0f b6 44 90 03       	movzbl 0x3(%rax,%rdx,4),%eax
    18c8:	31 c8                	xor    %ecx,%eax
    18ca:	88 45 ff             	mov    %al,-0x1(%rbp)
    18cd:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    18d1:	89 c7                	mov    %eax,%edi
    18d3:	e8 79 fe ff ff       	call   1751 <xtime>
    18d8:	88 45 ff             	mov    %al,-0x1(%rbp)
    18db:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    18df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18e3:	48 63 d2             	movslq %edx,%rdx
    18e6:	0f b6 4c 90 02       	movzbl 0x2(%rax,%rdx,4),%ecx
    18eb:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    18ef:	32 45 fe             	xor    -0x2(%rbp),%al
    18f2:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    18f6:	31 c1                	xor    %eax,%ecx
    18f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18fc:	48 63 d2             	movslq %edx,%rdx
    18ff:	88 4c 90 02          	mov    %cl,0x2(%rax,%rdx,4)
    1903:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    1907:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    190b:	48 63 d2             	movslq %edx,%rdx
    190e:	0f b6 44 90 03       	movzbl 0x3(%rax,%rdx,4),%eax
    1913:	32 45 fd             	xor    -0x3(%rbp),%al
    1916:	88 45 ff             	mov    %al,-0x1(%rbp)
    1919:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    191d:	89 c7                	mov    %eax,%edi
    191f:	e8 2d fe ff ff       	call   1751 <xtime>
    1924:	88 45 ff             	mov    %al,-0x1(%rbp)
    1927:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    192b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    192f:	48 63 d2             	movslq %edx,%rdx
    1932:	0f b6 4c 90 03       	movzbl 0x3(%rax,%rdx,4),%ecx
    1937:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    193b:	32 45 fe             	xor    -0x2(%rbp),%al
    193e:	0f b6 55 fc          	movzbl -0x4(%rbp),%edx
    1942:	31 c1                	xor    %eax,%ecx
    1944:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1948:	48 63 d2             	movslq %edx,%rdx
    194b:	88 4c 90 03          	mov    %cl,0x3(%rax,%rdx,4)
    194f:	80 45 fc 01          	addb   $0x1,-0x4(%rbp)
    1953:	80 7d fc 03          	cmpb   $0x3,-0x4(%rbp)
    1957:	0f 86 3e fe ff ff    	jbe    179b <MixColumns+0x19>
    195d:	90                   	nop
    195e:	90                   	nop
    195f:	c9                   	leave  
    1960:	c3                   	ret    

0000000000001961 <InvMixColumns>:
    1961:	f3 0f 1e fa          	endbr64 
    1965:	55                   	push   %rbp
    1966:	48 89 e5             	mov    %rsp,%rbp
    1969:	41 54                	push   %r12
    196b:	53                   	push   %rbx
    196c:	48 83 ec 18          	sub    $0x18,%rsp
    1970:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1974:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    197b:	e9 9a 07 00 00       	jmp    211a <InvMixColumns+0x7b9>
    1980:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1984:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1987:	48 63 d2             	movslq %edx,%rdx
    198a:	0f b6 04 90          	movzbl (%rax,%rdx,4),%eax
    198e:	88 45 e8             	mov    %al,-0x18(%rbp)
    1991:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1995:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1998:	48 63 d2             	movslq %edx,%rdx
    199b:	0f b6 44 90 01       	movzbl 0x1(%rax,%rdx,4),%eax
    19a0:	88 45 e9             	mov    %al,-0x17(%rbp)
    19a3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    19a7:	8b 55 ec             	mov    -0x14(%rbp),%edx
    19aa:	48 63 d2             	movslq %edx,%rdx
    19ad:	0f b6 44 90 02       	movzbl 0x2(%rax,%rdx,4),%eax
    19b2:	88 45 ea             	mov    %al,-0x16(%rbp)
    19b5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    19b9:	8b 55 ec             	mov    -0x14(%rbp),%edx
    19bc:	48 63 d2             	movslq %edx,%rdx
    19bf:	0f b6 44 90 03       	movzbl 0x3(%rax,%rdx,4),%eax
    19c4:	88 45 eb             	mov    %al,-0x15(%rbp)
    19c7:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    19cb:	89 c7                	mov    %eax,%edi
    19cd:	e8 7f fd ff ff       	call   1751 <xtime>
    19d2:	0f b6 c0             	movzbl %al,%eax
    19d5:	89 c7                	mov    %eax,%edi
    19d7:	e8 75 fd ff ff       	call   1751 <xtime>
    19dc:	0f b6 c0             	movzbl %al,%eax
    19df:	89 c7                	mov    %eax,%edi
    19e1:	e8 6b fd ff ff       	call   1751 <xtime>
    19e6:	0f b6 c0             	movzbl %al,%eax
    19e9:	89 c7                	mov    %eax,%edi
    19eb:	e8 61 fd ff ff       	call   1751 <xtime>
    19f0:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    19f4:	89 c7                	mov    %eax,%edi
    19f6:	e8 56 fd ff ff       	call   1751 <xtime>
    19fb:	0f b6 c0             	movzbl %al,%eax
    19fe:	89 c7                	mov    %eax,%edi
    1a00:	e8 4c fd ff ff       	call   1751 <xtime>
    1a05:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1a09:	89 c7                	mov    %eax,%edi
    1a0b:	e8 41 fd ff ff       	call   1751 <xtime>
    1a10:	0f b6 c0             	movzbl %al,%eax
    1a13:	89 c7                	mov    %eax,%edi
    1a15:	e8 37 fd ff ff       	call   1751 <xtime>
    1a1a:	0f b6 c0             	movzbl %al,%eax
    1a1d:	89 c7                	mov    %eax,%edi
    1a1f:	e8 2d fd ff ff       	call   1751 <xtime>
    1a24:	0f b6 c0             	movzbl %al,%eax
    1a27:	89 c7                	mov    %eax,%edi
    1a29:	e8 23 fd ff ff       	call   1751 <xtime>
    1a2e:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1a32:	89 c7                	mov    %eax,%edi
    1a34:	e8 18 fd ff ff       	call   1751 <xtime>
    1a39:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1a3d:	89 c7                	mov    %eax,%edi
    1a3f:	e8 0d fd ff ff       	call   1751 <xtime>
    1a44:	0f b6 c0             	movzbl %al,%eax
    1a47:	89 c7                	mov    %eax,%edi
    1a49:	e8 03 fd ff ff       	call   1751 <xtime>
    1a4e:	0f b6 c0             	movzbl %al,%eax
    1a51:	89 c7                	mov    %eax,%edi
    1a53:	e8 f9 fc ff ff       	call   1751 <xtime>
    1a58:	0f b6 c0             	movzbl %al,%eax
    1a5b:	89 c7                	mov    %eax,%edi
    1a5d:	e8 ef fc ff ff       	call   1751 <xtime>
    1a62:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1a66:	89 c7                	mov    %eax,%edi
    1a68:	e8 e4 fc ff ff       	call   1751 <xtime>
    1a6d:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1a71:	89 c7                	mov    %eax,%edi
    1a73:	e8 d9 fc ff ff       	call   1751 <xtime>
    1a78:	0f b6 c0             	movzbl %al,%eax
    1a7b:	89 c7                	mov    %eax,%edi
    1a7d:	e8 cf fc ff ff       	call   1751 <xtime>
    1a82:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1a86:	89 c7                	mov    %eax,%edi
    1a88:	e8 c4 fc ff ff       	call   1751 <xtime>
    1a8d:	0f b6 c0             	movzbl %al,%eax
    1a90:	89 c7                	mov    %eax,%edi
    1a92:	e8 ba fc ff ff       	call   1751 <xtime>
    1a97:	0f b6 c0             	movzbl %al,%eax
    1a9a:	89 c7                	mov    %eax,%edi
    1a9c:	e8 b0 fc ff ff       	call   1751 <xtime>
    1aa1:	0f b6 c0             	movzbl %al,%eax
    1aa4:	89 c7                	mov    %eax,%edi
    1aa6:	e8 a6 fc ff ff       	call   1751 <xtime>
    1aab:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1aaf:	89 c7                	mov    %eax,%edi
    1ab1:	e8 9b fc ff ff       	call   1751 <xtime>
    1ab6:	89 c3                	mov    %eax,%ebx
    1ab8:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1abc:	89 c7                	mov    %eax,%edi
    1abe:	e8 8e fc ff ff       	call   1751 <xtime>
    1ac3:	0f b6 c0             	movzbl %al,%eax
    1ac6:	89 c7                	mov    %eax,%edi
    1ac8:	e8 84 fc ff ff       	call   1751 <xtime>
    1acd:	31 c3                	xor    %eax,%ebx
    1acf:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1ad3:	89 c7                	mov    %eax,%edi
    1ad5:	e8 77 fc ff ff       	call   1751 <xtime>
    1ada:	0f b6 c0             	movzbl %al,%eax
    1add:	89 c7                	mov    %eax,%edi
    1adf:	e8 6d fc ff ff       	call   1751 <xtime>
    1ae4:	0f b6 c0             	movzbl %al,%eax
    1ae7:	89 c7                	mov    %eax,%edi
    1ae9:	e8 63 fc ff ff       	call   1751 <xtime>
    1aee:	31 c3                	xor    %eax,%ebx
    1af0:	41 89 dc             	mov    %ebx,%r12d
    1af3:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1af7:	89 c7                	mov    %eax,%edi
    1af9:	e8 53 fc ff ff       	call   1751 <xtime>
    1afe:	32 45 e9             	xor    -0x17(%rbp),%al
    1b01:	89 c3                	mov    %eax,%ebx
    1b03:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1b07:	89 c7                	mov    %eax,%edi
    1b09:	e8 43 fc ff ff       	call   1751 <xtime>
    1b0e:	0f b6 c0             	movzbl %al,%eax
    1b11:	89 c7                	mov    %eax,%edi
    1b13:	e8 39 fc ff ff       	call   1751 <xtime>
    1b18:	0f b6 c0             	movzbl %al,%eax
    1b1b:	89 c7                	mov    %eax,%edi
    1b1d:	e8 2f fc ff ff       	call   1751 <xtime>
    1b22:	31 d8                	xor    %ebx,%eax
    1b24:	41 31 c4             	xor    %eax,%r12d
    1b27:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1b2b:	89 c7                	mov    %eax,%edi
    1b2d:	e8 1f fc ff ff       	call   1751 <xtime>
    1b32:	0f b6 c0             	movzbl %al,%eax
    1b35:	89 c7                	mov    %eax,%edi
    1b37:	e8 15 fc ff ff       	call   1751 <xtime>
    1b3c:	32 45 ea             	xor    -0x16(%rbp),%al
    1b3f:	89 c3                	mov    %eax,%ebx
    1b41:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1b45:	89 c7                	mov    %eax,%edi
    1b47:	e8 05 fc ff ff       	call   1751 <xtime>
    1b4c:	0f b6 c0             	movzbl %al,%eax
    1b4f:	89 c7                	mov    %eax,%edi
    1b51:	e8 fb fb ff ff       	call   1751 <xtime>
    1b56:	0f b6 c0             	movzbl %al,%eax
    1b59:	89 c7                	mov    %eax,%edi
    1b5b:	e8 f1 fb ff ff       	call   1751 <xtime>
    1b60:	31 d8                	xor    %ebx,%eax
    1b62:	44 89 e3             	mov    %r12d,%ebx
    1b65:	31 c3                	xor    %eax,%ebx
    1b67:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1b6b:	89 c7                	mov    %eax,%edi
    1b6d:	e8 df fb ff ff       	call   1751 <xtime>
    1b72:	0f b6 c0             	movzbl %al,%eax
    1b75:	89 c7                	mov    %eax,%edi
    1b77:	e8 d5 fb ff ff       	call   1751 <xtime>
    1b7c:	0f b6 c0             	movzbl %al,%eax
    1b7f:	89 c7                	mov    %eax,%edi
    1b81:	e8 cb fb ff ff       	call   1751 <xtime>
    1b86:	32 45 eb             	xor    -0x15(%rbp),%al
    1b89:	89 d9                	mov    %ebx,%ecx
    1b8b:	31 c1                	xor    %eax,%ecx
    1b8d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1b91:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1b94:	48 63 d2             	movslq %edx,%rdx
    1b97:	88 0c 90             	mov    %cl,(%rax,%rdx,4)
    1b9a:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1b9e:	89 c7                	mov    %eax,%edi
    1ba0:	e8 ac fb ff ff       	call   1751 <xtime>
    1ba5:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1ba9:	89 c7                	mov    %eax,%edi
    1bab:	e8 a1 fb ff ff       	call   1751 <xtime>
    1bb0:	0f b6 c0             	movzbl %al,%eax
    1bb3:	89 c7                	mov    %eax,%edi
    1bb5:	e8 97 fb ff ff       	call   1751 <xtime>
    1bba:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1bbe:	89 c7                	mov    %eax,%edi
    1bc0:	e8 8c fb ff ff       	call   1751 <xtime>
    1bc5:	0f b6 c0             	movzbl %al,%eax
    1bc8:	89 c7                	mov    %eax,%edi
    1bca:	e8 82 fb ff ff       	call   1751 <xtime>
    1bcf:	0f b6 c0             	movzbl %al,%eax
    1bd2:	89 c7                	mov    %eax,%edi
    1bd4:	e8 78 fb ff ff       	call   1751 <xtime>
    1bd9:	0f b6 c0             	movzbl %al,%eax
    1bdc:	89 c7                	mov    %eax,%edi
    1bde:	e8 6e fb ff ff       	call   1751 <xtime>
    1be3:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1be7:	89 c7                	mov    %eax,%edi
    1be9:	e8 63 fb ff ff       	call   1751 <xtime>
    1bee:	0f b6 c0             	movzbl %al,%eax
    1bf1:	89 c7                	mov    %eax,%edi
    1bf3:	e8 59 fb ff ff       	call   1751 <xtime>
    1bf8:	0f b6 c0             	movzbl %al,%eax
    1bfb:	89 c7                	mov    %eax,%edi
    1bfd:	e8 4f fb ff ff       	call   1751 <xtime>
    1c02:	0f b6 c0             	movzbl %al,%eax
    1c05:	89 c7                	mov    %eax,%edi
    1c07:	e8 45 fb ff ff       	call   1751 <xtime>
    1c0c:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1c10:	89 c7                	mov    %eax,%edi
    1c12:	e8 3a fb ff ff       	call   1751 <xtime>
    1c17:	0f b6 c0             	movzbl %al,%eax
    1c1a:	89 c7                	mov    %eax,%edi
    1c1c:	e8 30 fb ff ff       	call   1751 <xtime>
    1c21:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1c25:	89 c7                	mov    %eax,%edi
    1c27:	e8 25 fb ff ff       	call   1751 <xtime>
    1c2c:	0f b6 c0             	movzbl %al,%eax
    1c2f:	89 c7                	mov    %eax,%edi
    1c31:	e8 1b fb ff ff       	call   1751 <xtime>
    1c36:	0f b6 c0             	movzbl %al,%eax
    1c39:	89 c7                	mov    %eax,%edi
    1c3b:	e8 11 fb ff ff       	call   1751 <xtime>
    1c40:	0f b6 c0             	movzbl %al,%eax
    1c43:	89 c7                	mov    %eax,%edi
    1c45:	e8 07 fb ff ff       	call   1751 <xtime>
    1c4a:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1c4e:	89 c7                	mov    %eax,%edi
    1c50:	e8 fc fa ff ff       	call   1751 <xtime>
    1c55:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1c59:	89 c7                	mov    %eax,%edi
    1c5b:	e8 f1 fa ff ff       	call   1751 <xtime>
    1c60:	0f b6 c0             	movzbl %al,%eax
    1c63:	89 c7                	mov    %eax,%edi
    1c65:	e8 e7 fa ff ff       	call   1751 <xtime>
    1c6a:	0f b6 c0             	movzbl %al,%eax
    1c6d:	89 c7                	mov    %eax,%edi
    1c6f:	e8 dd fa ff ff       	call   1751 <xtime>
    1c74:	0f b6 c0             	movzbl %al,%eax
    1c77:	89 c7                	mov    %eax,%edi
    1c79:	e8 d3 fa ff ff       	call   1751 <xtime>
    1c7e:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1c82:	89 c7                	mov    %eax,%edi
    1c84:	e8 c8 fa ff ff       	call   1751 <xtime>
    1c89:	0f b6 c0             	movzbl %al,%eax
    1c8c:	89 c7                	mov    %eax,%edi
    1c8e:	e8 be fa ff ff       	call   1751 <xtime>
    1c93:	0f b6 c0             	movzbl %al,%eax
    1c96:	89 c7                	mov    %eax,%edi
    1c98:	e8 b4 fa ff ff       	call   1751 <xtime>
    1c9d:	32 45 e8             	xor    -0x18(%rbp),%al
    1ca0:	41 89 c4             	mov    %eax,%r12d
    1ca3:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1ca7:	89 c7                	mov    %eax,%edi
    1ca9:	e8 a3 fa ff ff       	call   1751 <xtime>
    1cae:	89 c3                	mov    %eax,%ebx
    1cb0:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1cb4:	89 c7                	mov    %eax,%edi
    1cb6:	e8 96 fa ff ff       	call   1751 <xtime>
    1cbb:	0f b6 c0             	movzbl %al,%eax
    1cbe:	89 c7                	mov    %eax,%edi
    1cc0:	e8 8c fa ff ff       	call   1751 <xtime>
    1cc5:	31 c3                	xor    %eax,%ebx
    1cc7:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1ccb:	89 c7                	mov    %eax,%edi
    1ccd:	e8 7f fa ff ff       	call   1751 <xtime>
    1cd2:	0f b6 c0             	movzbl %al,%eax
    1cd5:	89 c7                	mov    %eax,%edi
    1cd7:	e8 75 fa ff ff       	call   1751 <xtime>
    1cdc:	0f b6 c0             	movzbl %al,%eax
    1cdf:	89 c7                	mov    %eax,%edi
    1ce1:	e8 6b fa ff ff       	call   1751 <xtime>
    1ce6:	31 d8                	xor    %ebx,%eax
    1ce8:	41 31 c4             	xor    %eax,%r12d
    1ceb:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1cef:	89 c7                	mov    %eax,%edi
    1cf1:	e8 5b fa ff ff       	call   1751 <xtime>
    1cf6:	32 45 ea             	xor    -0x16(%rbp),%al
    1cf9:	89 c3                	mov    %eax,%ebx
    1cfb:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1cff:	89 c7                	mov    %eax,%edi
    1d01:	e8 4b fa ff ff       	call   1751 <xtime>
    1d06:	0f b6 c0             	movzbl %al,%eax
    1d09:	89 c7                	mov    %eax,%edi
    1d0b:	e8 41 fa ff ff       	call   1751 <xtime>
    1d10:	0f b6 c0             	movzbl %al,%eax
    1d13:	89 c7                	mov    %eax,%edi
    1d15:	e8 37 fa ff ff       	call   1751 <xtime>
    1d1a:	31 d8                	xor    %ebx,%eax
    1d1c:	41 31 c4             	xor    %eax,%r12d
    1d1f:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1d23:	89 c7                	mov    %eax,%edi
    1d25:	e8 27 fa ff ff       	call   1751 <xtime>
    1d2a:	0f b6 c0             	movzbl %al,%eax
    1d2d:	89 c7                	mov    %eax,%edi
    1d2f:	e8 1d fa ff ff       	call   1751 <xtime>
    1d34:	32 45 eb             	xor    -0x15(%rbp),%al
    1d37:	89 c3                	mov    %eax,%ebx
    1d39:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1d3d:	89 c7                	mov    %eax,%edi
    1d3f:	e8 0d fa ff ff       	call   1751 <xtime>
    1d44:	0f b6 c0             	movzbl %al,%eax
    1d47:	89 c7                	mov    %eax,%edi
    1d49:	e8 03 fa ff ff       	call   1751 <xtime>
    1d4e:	0f b6 c0             	movzbl %al,%eax
    1d51:	89 c7                	mov    %eax,%edi
    1d53:	e8 f9 f9 ff ff       	call   1751 <xtime>
    1d58:	31 d8                	xor    %ebx,%eax
    1d5a:	44 89 e1             	mov    %r12d,%ecx
    1d5d:	31 c1                	xor    %eax,%ecx
    1d5f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1d63:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1d66:	48 63 d2             	movslq %edx,%rdx
    1d69:	88 4c 90 01          	mov    %cl,0x1(%rax,%rdx,4)
    1d6d:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1d71:	89 c7                	mov    %eax,%edi
    1d73:	e8 d9 f9 ff ff       	call   1751 <xtime>
    1d78:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1d7c:	89 c7                	mov    %eax,%edi
    1d7e:	e8 ce f9 ff ff       	call   1751 <xtime>
    1d83:	0f b6 c0             	movzbl %al,%eax
    1d86:	89 c7                	mov    %eax,%edi
    1d88:	e8 c4 f9 ff ff       	call   1751 <xtime>
    1d8d:	0f b6 c0             	movzbl %al,%eax
    1d90:	89 c7                	mov    %eax,%edi
    1d92:	e8 ba f9 ff ff       	call   1751 <xtime>
    1d97:	0f b6 c0             	movzbl %al,%eax
    1d9a:	89 c7                	mov    %eax,%edi
    1d9c:	e8 b0 f9 ff ff       	call   1751 <xtime>
    1da1:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1da5:	89 c7                	mov    %eax,%edi
    1da7:	e8 a5 f9 ff ff       	call   1751 <xtime>
    1dac:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1db0:	89 c7                	mov    %eax,%edi
    1db2:	e8 9a f9 ff ff       	call   1751 <xtime>
    1db7:	0f b6 c0             	movzbl %al,%eax
    1dba:	89 c7                	mov    %eax,%edi
    1dbc:	e8 90 f9 ff ff       	call   1751 <xtime>
    1dc1:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1dc5:	89 c7                	mov    %eax,%edi
    1dc7:	e8 85 f9 ff ff       	call   1751 <xtime>
    1dcc:	0f b6 c0             	movzbl %al,%eax
    1dcf:	89 c7                	mov    %eax,%edi
    1dd1:	e8 7b f9 ff ff       	call   1751 <xtime>
    1dd6:	0f b6 c0             	movzbl %al,%eax
    1dd9:	89 c7                	mov    %eax,%edi
    1ddb:	e8 71 f9 ff ff       	call   1751 <xtime>
    1de0:	0f b6 c0             	movzbl %al,%eax
    1de3:	89 c7                	mov    %eax,%edi
    1de5:	e8 67 f9 ff ff       	call   1751 <xtime>
    1dea:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1dee:	89 c7                	mov    %eax,%edi
    1df0:	e8 5c f9 ff ff       	call   1751 <xtime>
    1df5:	0f b6 c0             	movzbl %al,%eax
    1df8:	89 c7                	mov    %eax,%edi
    1dfa:	e8 52 f9 ff ff       	call   1751 <xtime>
    1dff:	0f b6 c0             	movzbl %al,%eax
    1e02:	89 c7                	mov    %eax,%edi
    1e04:	e8 48 f9 ff ff       	call   1751 <xtime>
    1e09:	0f b6 c0             	movzbl %al,%eax
    1e0c:	89 c7                	mov    %eax,%edi
    1e0e:	e8 3e f9 ff ff       	call   1751 <xtime>
    1e13:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1e17:	89 c7                	mov    %eax,%edi
    1e19:	e8 33 f9 ff ff       	call   1751 <xtime>
    1e1e:	0f b6 c0             	movzbl %al,%eax
    1e21:	89 c7                	mov    %eax,%edi
    1e23:	e8 29 f9 ff ff       	call   1751 <xtime>
    1e28:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1e2c:	89 c7                	mov    %eax,%edi
    1e2e:	e8 1e f9 ff ff       	call   1751 <xtime>
    1e33:	0f b6 c0             	movzbl %al,%eax
    1e36:	89 c7                	mov    %eax,%edi
    1e38:	e8 14 f9 ff ff       	call   1751 <xtime>
    1e3d:	0f b6 c0             	movzbl %al,%eax
    1e40:	89 c7                	mov    %eax,%edi
    1e42:	e8 0a f9 ff ff       	call   1751 <xtime>
    1e47:	0f b6 c0             	movzbl %al,%eax
    1e4a:	89 c7                	mov    %eax,%edi
    1e4c:	e8 00 f9 ff ff       	call   1751 <xtime>
    1e51:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1e55:	89 c7                	mov    %eax,%edi
    1e57:	e8 f5 f8 ff ff       	call   1751 <xtime>
    1e5c:	0f b6 c0             	movzbl %al,%eax
    1e5f:	89 c7                	mov    %eax,%edi
    1e61:	e8 eb f8 ff ff       	call   1751 <xtime>
    1e66:	32 45 e8             	xor    -0x18(%rbp),%al
    1e69:	89 c3                	mov    %eax,%ebx
    1e6b:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1e6f:	89 c7                	mov    %eax,%edi
    1e71:	e8 db f8 ff ff       	call   1751 <xtime>
    1e76:	0f b6 c0             	movzbl %al,%eax
    1e79:	89 c7                	mov    %eax,%edi
    1e7b:	e8 d1 f8 ff ff       	call   1751 <xtime>
    1e80:	0f b6 c0             	movzbl %al,%eax
    1e83:	89 c7                	mov    %eax,%edi
    1e85:	e8 c7 f8 ff ff       	call   1751 <xtime>
    1e8a:	31 c3                	xor    %eax,%ebx
    1e8c:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1e90:	89 c7                	mov    %eax,%edi
    1e92:	e8 ba f8 ff ff       	call   1751 <xtime>
    1e97:	0f b6 c0             	movzbl %al,%eax
    1e9a:	89 c7                	mov    %eax,%edi
    1e9c:	e8 b0 f8 ff ff       	call   1751 <xtime>
    1ea1:	0f b6 c0             	movzbl %al,%eax
    1ea4:	89 c7                	mov    %eax,%edi
    1ea6:	e8 a6 f8 ff ff       	call   1751 <xtime>
    1eab:	32 45 e9             	xor    -0x17(%rbp),%al
    1eae:	31 c3                	xor    %eax,%ebx
    1eb0:	41 89 dc             	mov    %ebx,%r12d
    1eb3:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1eb7:	89 c7                	mov    %eax,%edi
    1eb9:	e8 93 f8 ff ff       	call   1751 <xtime>
    1ebe:	89 c3                	mov    %eax,%ebx
    1ec0:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1ec4:	89 c7                	mov    %eax,%edi
    1ec6:	e8 86 f8 ff ff       	call   1751 <xtime>
    1ecb:	0f b6 c0             	movzbl %al,%eax
    1ece:	89 c7                	mov    %eax,%edi
    1ed0:	e8 7c f8 ff ff       	call   1751 <xtime>
    1ed5:	31 c3                	xor    %eax,%ebx
    1ed7:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1edb:	89 c7                	mov    %eax,%edi
    1edd:	e8 6f f8 ff ff       	call   1751 <xtime>
    1ee2:	0f b6 c0             	movzbl %al,%eax
    1ee5:	89 c7                	mov    %eax,%edi
    1ee7:	e8 65 f8 ff ff       	call   1751 <xtime>
    1eec:	0f b6 c0             	movzbl %al,%eax
    1eef:	89 c7                	mov    %eax,%edi
    1ef1:	e8 5b f8 ff ff       	call   1751 <xtime>
    1ef6:	31 d8                	xor    %ebx,%eax
    1ef8:	41 31 c4             	xor    %eax,%r12d
    1efb:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1eff:	89 c7                	mov    %eax,%edi
    1f01:	e8 4b f8 ff ff       	call   1751 <xtime>
    1f06:	32 45 eb             	xor    -0x15(%rbp),%al
    1f09:	89 c3                	mov    %eax,%ebx
    1f0b:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1f0f:	89 c7                	mov    %eax,%edi
    1f11:	e8 3b f8 ff ff       	call   1751 <xtime>
    1f16:	0f b6 c0             	movzbl %al,%eax
    1f19:	89 c7                	mov    %eax,%edi
    1f1b:	e8 31 f8 ff ff       	call   1751 <xtime>
    1f20:	0f b6 c0             	movzbl %al,%eax
    1f23:	89 c7                	mov    %eax,%edi
    1f25:	e8 27 f8 ff ff       	call   1751 <xtime>
    1f2a:	31 d8                	xor    %ebx,%eax
    1f2c:	44 89 e1             	mov    %r12d,%ecx
    1f2f:	31 c1                	xor    %eax,%ecx
    1f31:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1f35:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1f38:	48 63 d2             	movslq %edx,%rdx
    1f3b:	88 4c 90 02          	mov    %cl,0x2(%rax,%rdx,4)
    1f3f:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1f43:	89 c7                	mov    %eax,%edi
    1f45:	e8 07 f8 ff ff       	call   1751 <xtime>
    1f4a:	0f b6 c0             	movzbl %al,%eax
    1f4d:	89 c7                	mov    %eax,%edi
    1f4f:	e8 fd f7 ff ff       	call   1751 <xtime>
    1f54:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    1f58:	89 c7                	mov    %eax,%edi
    1f5a:	e8 f2 f7 ff ff       	call   1751 <xtime>
    1f5f:	0f b6 c0             	movzbl %al,%eax
    1f62:	89 c7                	mov    %eax,%edi
    1f64:	e8 e8 f7 ff ff       	call   1751 <xtime>
    1f69:	0f b6 c0             	movzbl %al,%eax
    1f6c:	89 c7                	mov    %eax,%edi
    1f6e:	e8 de f7 ff ff       	call   1751 <xtime>
    1f73:	0f b6 c0             	movzbl %al,%eax
    1f76:	89 c7                	mov    %eax,%edi
    1f78:	e8 d4 f7 ff ff       	call   1751 <xtime>
    1f7d:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1f81:	89 c7                	mov    %eax,%edi
    1f83:	e8 c9 f7 ff ff       	call   1751 <xtime>
    1f88:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    1f8c:	89 c7                	mov    %eax,%edi
    1f8e:	e8 be f7 ff ff       	call   1751 <xtime>
    1f93:	0f b6 c0             	movzbl %al,%eax
    1f96:	89 c7                	mov    %eax,%edi
    1f98:	e8 b4 f7 ff ff       	call   1751 <xtime>
    1f9d:	0f b6 c0             	movzbl %al,%eax
    1fa0:	89 c7                	mov    %eax,%edi
    1fa2:	e8 aa f7 ff ff       	call   1751 <xtime>
    1fa7:	0f b6 c0             	movzbl %al,%eax
    1faa:	89 c7                	mov    %eax,%edi
    1fac:	e8 a0 f7 ff ff       	call   1751 <xtime>
    1fb1:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1fb5:	89 c7                	mov    %eax,%edi
    1fb7:	e8 95 f7 ff ff       	call   1751 <xtime>
    1fbc:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1fc0:	89 c7                	mov    %eax,%edi
    1fc2:	e8 8a f7 ff ff       	call   1751 <xtime>
    1fc7:	0f b6 c0             	movzbl %al,%eax
    1fca:	89 c7                	mov    %eax,%edi
    1fcc:	e8 80 f7 ff ff       	call   1751 <xtime>
    1fd1:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    1fd5:	89 c7                	mov    %eax,%edi
    1fd7:	e8 75 f7 ff ff       	call   1751 <xtime>
    1fdc:	0f b6 c0             	movzbl %al,%eax
    1fdf:	89 c7                	mov    %eax,%edi
    1fe1:	e8 6b f7 ff ff       	call   1751 <xtime>
    1fe6:	0f b6 c0             	movzbl %al,%eax
    1fe9:	89 c7                	mov    %eax,%edi
    1feb:	e8 61 f7 ff ff       	call   1751 <xtime>
    1ff0:	0f b6 c0             	movzbl %al,%eax
    1ff3:	89 c7                	mov    %eax,%edi
    1ff5:	e8 57 f7 ff ff       	call   1751 <xtime>
    1ffa:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    1ffe:	89 c7                	mov    %eax,%edi
    2000:	e8 4c f7 ff ff       	call   1751 <xtime>
    2005:	0f b6 c0             	movzbl %al,%eax
    2008:	89 c7                	mov    %eax,%edi
    200a:	e8 42 f7 ff ff       	call   1751 <xtime>
    200f:	0f b6 c0             	movzbl %al,%eax
    2012:	89 c7                	mov    %eax,%edi
    2014:	e8 38 f7 ff ff       	call   1751 <xtime>
    2019:	0f b6 c0             	movzbl %al,%eax
    201c:	89 c7                	mov    %eax,%edi
    201e:	e8 2e f7 ff ff       	call   1751 <xtime>
    2023:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    2027:	89 c7                	mov    %eax,%edi
    2029:	e8 23 f7 ff ff       	call   1751 <xtime>
    202e:	32 45 e8             	xor    -0x18(%rbp),%al
    2031:	89 c3                	mov    %eax,%ebx
    2033:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
    2037:	89 c7                	mov    %eax,%edi
    2039:	e8 13 f7 ff ff       	call   1751 <xtime>
    203e:	0f b6 c0             	movzbl %al,%eax
    2041:	89 c7                	mov    %eax,%edi
    2043:	e8 09 f7 ff ff       	call   1751 <xtime>
    2048:	0f b6 c0             	movzbl %al,%eax
    204b:	89 c7                	mov    %eax,%edi
    204d:	e8 ff f6 ff ff       	call   1751 <xtime>
    2052:	31 c3                	xor    %eax,%ebx
    2054:	41 89 dc             	mov    %ebx,%r12d
    2057:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    205b:	89 c7                	mov    %eax,%edi
    205d:	e8 ef f6 ff ff       	call   1751 <xtime>
    2062:	0f b6 c0             	movzbl %al,%eax
    2065:	89 c7                	mov    %eax,%edi
    2067:	e8 e5 f6 ff ff       	call   1751 <xtime>
    206c:	32 45 e9             	xor    -0x17(%rbp),%al
    206f:	89 c3                	mov    %eax,%ebx
    2071:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    2075:	89 c7                	mov    %eax,%edi
    2077:	e8 d5 f6 ff ff       	call   1751 <xtime>
    207c:	0f b6 c0             	movzbl %al,%eax
    207f:	89 c7                	mov    %eax,%edi
    2081:	e8 cb f6 ff ff       	call   1751 <xtime>
    2086:	0f b6 c0             	movzbl %al,%eax
    2089:	89 c7                	mov    %eax,%edi
    208b:	e8 c1 f6 ff ff       	call   1751 <xtime>
    2090:	31 d8                	xor    %ebx,%eax
    2092:	44 89 e3             	mov    %r12d,%ebx
    2095:	31 c3                	xor    %eax,%ebx
    2097:	0f b6 45 ea          	movzbl -0x16(%rbp),%eax
    209b:	89 c7                	mov    %eax,%edi
    209d:	e8 af f6 ff ff       	call   1751 <xtime>
    20a2:	0f b6 c0             	movzbl %al,%eax
    20a5:	89 c7                	mov    %eax,%edi
    20a7:	e8 a5 f6 ff ff       	call   1751 <xtime>
    20ac:	0f b6 c0             	movzbl %al,%eax
    20af:	89 c7                	mov    %eax,%edi
    20b1:	e8 9b f6 ff ff       	call   1751 <xtime>
    20b6:	32 45 ea             	xor    -0x16(%rbp),%al
    20b9:	31 c3                	xor    %eax,%ebx
    20bb:	41 89 dc             	mov    %ebx,%r12d
    20be:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    20c2:	89 c7                	mov    %eax,%edi
    20c4:	e8 88 f6 ff ff       	call   1751 <xtime>
    20c9:	89 c3                	mov    %eax,%ebx
    20cb:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    20cf:	89 c7                	mov    %eax,%edi
    20d1:	e8 7b f6 ff ff       	call   1751 <xtime>
    20d6:	0f b6 c0             	movzbl %al,%eax
    20d9:	89 c7                	mov    %eax,%edi
    20db:	e8 71 f6 ff ff       	call   1751 <xtime>
    20e0:	31 c3                	xor    %eax,%ebx
    20e2:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    20e6:	89 c7                	mov    %eax,%edi
    20e8:	e8 64 f6 ff ff       	call   1751 <xtime>
    20ed:	0f b6 c0             	movzbl %al,%eax
    20f0:	89 c7                	mov    %eax,%edi
    20f2:	e8 5a f6 ff ff       	call   1751 <xtime>
    20f7:	0f b6 c0             	movzbl %al,%eax
    20fa:	89 c7                	mov    %eax,%edi
    20fc:	e8 50 f6 ff ff       	call   1751 <xtime>
    2101:	31 d8                	xor    %ebx,%eax
    2103:	44 89 e1             	mov    %r12d,%ecx
    2106:	31 c1                	xor    %eax,%ecx
    2108:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    210c:	8b 55 ec             	mov    -0x14(%rbp),%edx
    210f:	48 63 d2             	movslq %edx,%rdx
    2112:	88 4c 90 03          	mov    %cl,0x3(%rax,%rdx,4)
    2116:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    211a:	83 7d ec 03          	cmpl   $0x3,-0x14(%rbp)
    211e:	0f 8e 5c f8 ff ff    	jle    1980 <InvMixColumns+0x1f>
    2124:	90                   	nop
    2125:	90                   	nop
    2126:	48 83 c4 18          	add    $0x18,%rsp
    212a:	5b                   	pop    %rbx
    212b:	41 5c                	pop    %r12
    212d:	5d                   	pop    %rbp
    212e:	c3                   	ret    

000000000000212f <InvSubBytes>:
    212f:	f3 0f 1e fa          	endbr64 
    2133:	55                   	push   %rbp
    2134:	48 89 e5             	mov    %rsp,%rbp
    2137:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    213b:	c6 45 fe 00          	movb   $0x0,-0x2(%rbp)
    213f:	eb 60                	jmp    21a1 <InvSubBytes+0x72>
    2141:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    2145:	eb 50                	jmp    2197 <InvSubBytes+0x68>
    2147:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    214b:	0f b6 55 fe          	movzbl -0x2(%rbp),%edx
    214f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    2153:	48 63 d2             	movslq %edx,%rdx
    2156:	48 98                	cltq   
    2158:	48 c1 e0 02          	shl    $0x2,%rax
    215c:	48 01 c8             	add    %rcx,%rax
    215f:	48 01 d0             	add    %rdx,%rax
    2162:	0f b6 00             	movzbl (%rax),%eax
    2165:	0f b6 c0             	movzbl %al,%eax
    2168:	0f b6 4d ff          	movzbl -0x1(%rbp),%ecx
    216c:	0f b6 75 fe          	movzbl -0x2(%rbp),%esi
    2170:	48 98                	cltq   
    2172:	48 8d 15 a7 0f 00 00 	lea    0xfa7(%rip),%rdx        # 3120 <rsbox>
    2179:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
    217d:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    2181:	48 63 f6             	movslq %esi,%rsi
    2184:	48 63 c1             	movslq %ecx,%rax
    2187:	48 c1 e0 02          	shl    $0x2,%rax
    218b:	48 01 f8             	add    %rdi,%rax
    218e:	48 01 f0             	add    %rsi,%rax
    2191:	88 10                	mov    %dl,(%rax)
    2193:	80 45 ff 01          	addb   $0x1,-0x1(%rbp)
    2197:	80 7d ff 03          	cmpb   $0x3,-0x1(%rbp)
    219b:	76 aa                	jbe    2147 <InvSubBytes+0x18>
    219d:	80 45 fe 01          	addb   $0x1,-0x2(%rbp)
    21a1:	80 7d fe 03          	cmpb   $0x3,-0x2(%rbp)
    21a5:	76 9a                	jbe    2141 <InvSubBytes+0x12>
    21a7:	90                   	nop
    21a8:	90                   	nop
    21a9:	5d                   	pop    %rbp
    21aa:	c3                   	ret    

00000000000021ab <InvShiftRows>:
    21ab:	f3 0f 1e fa          	endbr64 
    21af:	55                   	push   %rbp
    21b0:	48 89 e5             	mov    %rsp,%rbp
    21b3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    21b7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21bb:	0f b6 40 0d          	movzbl 0xd(%rax),%eax
    21bf:	88 45 ff             	mov    %al,-0x1(%rbp)
    21c2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21c6:	0f b6 50 09          	movzbl 0x9(%rax),%edx
    21ca:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21ce:	88 50 0d             	mov    %dl,0xd(%rax)
    21d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21d5:	0f b6 50 05          	movzbl 0x5(%rax),%edx
    21d9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21dd:	88 50 09             	mov    %dl,0x9(%rax)
    21e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21e4:	0f b6 50 01          	movzbl 0x1(%rax),%edx
    21e8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21ec:	88 50 05             	mov    %dl,0x5(%rax)
    21ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21f3:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    21f7:	88 50 01             	mov    %dl,0x1(%rax)
    21fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21fe:	0f b6 40 02          	movzbl 0x2(%rax),%eax
    2202:	88 45 ff             	mov    %al,-0x1(%rbp)
    2205:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2209:	0f b6 50 0a          	movzbl 0xa(%rax),%edx
    220d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2211:	88 50 02             	mov    %dl,0x2(%rax)
    2214:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2218:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    221c:	88 50 0a             	mov    %dl,0xa(%rax)
    221f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2223:	0f b6 40 06          	movzbl 0x6(%rax),%eax
    2227:	88 45 ff             	mov    %al,-0x1(%rbp)
    222a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    222e:	0f b6 50 0e          	movzbl 0xe(%rax),%edx
    2232:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2236:	88 50 06             	mov    %dl,0x6(%rax)
    2239:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    223d:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    2241:	88 50 0e             	mov    %dl,0xe(%rax)
    2244:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2248:	0f b6 40 03          	movzbl 0x3(%rax),%eax
    224c:	88 45 ff             	mov    %al,-0x1(%rbp)
    224f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2253:	0f b6 50 07          	movzbl 0x7(%rax),%edx
    2257:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    225b:	88 50 03             	mov    %dl,0x3(%rax)
    225e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2262:	0f b6 50 0b          	movzbl 0xb(%rax),%edx
    2266:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    226a:	88 50 07             	mov    %dl,0x7(%rax)
    226d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2271:	0f b6 50 0f          	movzbl 0xf(%rax),%edx
    2275:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2279:	88 50 0b             	mov    %dl,0xb(%rax)
    227c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2280:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    2284:	88 50 0f             	mov    %dl,0xf(%rax)
    2287:	90                   	nop
    2288:	5d                   	pop    %rbp
    2289:	c3                   	ret    

000000000000228a <Cipher>:
    228a:	f3 0f 1e fa          	endbr64 
    228e:	55                   	push   %rbp
    228f:	48 89 e5             	mov    %rsp,%rbp
    2292:	48 83 ec 20          	sub    $0x20,%rsp
    2296:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    229a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    229e:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    22a2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    22a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    22aa:	48 89 c6             	mov    %rax,%rsi
    22ad:	bf 00 00 00 00       	mov    $0x0,%edi
    22b2:	e8 9a f2 ff ff       	call   1551 <AddRoundKey>
    22b7:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    22bb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    22bf:	48 89 c7             	mov    %rax,%rdi
    22c2:	e8 2f f3 ff ff       	call   15f6 <SubBytes>
    22c7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    22cb:	48 89 c7             	mov    %rax,%rdi
    22ce:	e8 9f f3 ff ff       	call   1672 <ShiftRows>
    22d3:	80 7d ff 0a          	cmpb   $0xa,-0x1(%rbp)
    22d7:	74 28                	je     2301 <Cipher+0x77>
    22d9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    22dd:	48 89 c7             	mov    %rax,%rdi
    22e0:	e8 9d f4 ff ff       	call   1782 <MixColumns>
    22e5:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    22e9:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    22ed:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    22f1:	48 89 ce             	mov    %rcx,%rsi
    22f4:	89 c7                	mov    %eax,%edi
    22f6:	e8 56 f2 ff ff       	call   1551 <AddRoundKey>
    22fb:	80 45 ff 01          	addb   $0x1,-0x1(%rbp)
    22ff:	eb ba                	jmp    22bb <Cipher+0x31>
    2301:	90                   	nop
    2302:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    2306:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    230a:	48 89 c6             	mov    %rax,%rsi
    230d:	bf 0a 00 00 00       	mov    $0xa,%edi
    2312:	e8 3a f2 ff ff       	call   1551 <AddRoundKey>
    2317:	90                   	nop
    2318:	c9                   	leave  
    2319:	c3                   	ret    

000000000000231a <InvCipher>:
    231a:	f3 0f 1e fa          	endbr64 
    231e:	55                   	push   %rbp
    231f:	48 89 e5             	mov    %rsp,%rbp
    2322:	48 83 ec 20          	sub    $0x20,%rsp
    2326:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    232a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    232e:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    2332:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    2336:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    233a:	48 89 c6             	mov    %rax,%rsi
    233d:	bf 0a 00 00 00       	mov    $0xa,%edi
    2342:	e8 0a f2 ff ff       	call   1551 <AddRoundKey>
    2347:	c6 45 ff 09          	movb   $0x9,-0x1(%rbp)
    234b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    234f:	48 89 c7             	mov    %rax,%rdi
    2352:	e8 54 fe ff ff       	call   21ab <InvShiftRows>
    2357:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    235b:	48 89 c7             	mov    %rax,%rdi
    235e:	e8 cc fd ff ff       	call   212f <InvSubBytes>
    2363:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    2367:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    236b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    236f:	48 89 ce             	mov    %rcx,%rsi
    2372:	89 c7                	mov    %eax,%edi
    2374:	e8 d8 f1 ff ff       	call   1551 <AddRoundKey>
    2379:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
    237d:	74 12                	je     2391 <InvCipher+0x77>
    237f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2383:	48 89 c7             	mov    %rax,%rdi
    2386:	e8 d6 f5 ff ff       	call   1961 <InvMixColumns>
    238b:	80 6d ff 01          	subb   $0x1,-0x1(%rbp)
    238f:	eb ba                	jmp    234b <InvCipher+0x31>
    2391:	90                   	nop
    2392:	90                   	nop
    2393:	c9                   	leave  
    2394:	c3                   	ret    

0000000000002395 <AES_ECB_encrypt>:
    2395:	f3 0f 1e fa          	endbr64 
    2399:	55                   	push   %rbp
    239a:	48 89 e5             	mov    %rsp,%rbp
    239d:	48 83 ec 10          	sub    $0x10,%rsp
    23a1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    23a5:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    23a9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    23ad:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    23b1:	48 89 d6             	mov    %rdx,%rsi
    23b4:	48 89 c7             	mov    %rax,%rdi
    23b7:	e8 ce fe ff ff       	call   228a <Cipher>
    23bc:	90                   	nop
    23bd:	c9                   	leave  
    23be:	c3                   	ret    

00000000000023bf <AES_ECB_decrypt>:
    23bf:	f3 0f 1e fa          	endbr64 
    23c3:	55                   	push   %rbp
    23c4:	48 89 e5             	mov    %rsp,%rbp
    23c7:	48 83 ec 10          	sub    $0x10,%rsp
    23cb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    23cf:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    23d3:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    23d7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    23db:	48 89 d6             	mov    %rdx,%rsi
    23de:	48 89 c7             	mov    %rax,%rdi
    23e1:	e8 34 ff ff ff       	call   231a <InvCipher>
    23e6:	90                   	nop
    23e7:	c9                   	leave  
    23e8:	c3                   	ret    

00000000000023e9 <XorWithIv>:
    23e9:	f3 0f 1e fa          	endbr64 
    23ed:	55                   	push   %rbp
    23ee:	48 89 e5             	mov    %rsp,%rbp
    23f1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    23f5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    23f9:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    23fd:	eb 2f                	jmp    242e <XorWithIv+0x45>
    23ff:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    2403:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2407:	48 01 d0             	add    %rdx,%rax
    240a:	0f b6 08             	movzbl (%rax),%ecx
    240d:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    2411:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2415:	48 01 d0             	add    %rdx,%rax
    2418:	0f b6 10             	movzbl (%rax),%edx
    241b:	0f b6 75 ff          	movzbl -0x1(%rbp),%esi
    241f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2423:	48 01 f0             	add    %rsi,%rax
    2426:	31 ca                	xor    %ecx,%edx
    2428:	88 10                	mov    %dl,(%rax)
    242a:	80 45 ff 01          	addb   $0x1,-0x1(%rbp)
    242e:	80 7d ff 0f          	cmpb   $0xf,-0x1(%rbp)
    2432:	76 cb                	jbe    23ff <XorWithIv+0x16>
    2434:	90                   	nop
    2435:	90                   	nop
    2436:	5d                   	pop    %rbp
    2437:	c3                   	ret    

0000000000002438 <AES_CBC_encrypt_buffer>:
    2438:	f3 0f 1e fa          	endbr64 
    243c:	55                   	push   %rbp
    243d:	48 89 e5             	mov    %rsp,%rbp
    2440:	48 83 ec 28          	sub    $0x28,%rsp
    2444:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2448:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    244c:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    2450:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2454:	48 05 b0 00 00 00    	add    $0xb0,%rax
    245a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    245e:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    2465:	00 
    2466:	eb 38                	jmp    24a0 <AES_CBC_encrypt_buffer+0x68>
    2468:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    246c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2470:	48 89 d6             	mov    %rdx,%rsi
    2473:	48 89 c7             	mov    %rax,%rdi
    2476:	e8 6e ff ff ff       	call   23e9 <XorWithIv>
    247b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    247f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2483:	48 89 d6             	mov    %rdx,%rsi
    2486:	48 89 c7             	mov    %rax,%rdi
    2489:	e8 fc fd ff ff       	call   228a <Cipher>
    248e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2492:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2496:	48 83 45 e0 10       	addq   $0x10,-0x20(%rbp)
    249b:	48 83 45 f0 10       	addq   $0x10,-0x10(%rbp)
    24a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    24a4:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    24a8:	72 be                	jb     2468 <AES_CBC_encrypt_buffer+0x30>
    24aa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    24ae:	48 8d 88 b0 00 00 00 	lea    0xb0(%rax),%rcx
    24b5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    24b9:	48 8b 50 08          	mov    0x8(%rax),%rdx
    24bd:	48 8b 00             	mov    (%rax),%rax
    24c0:	48 89 01             	mov    %rax,(%rcx)
    24c3:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    24c7:	90                   	nop
    24c8:	c9                   	leave  
    24c9:	c3                   	ret    

00000000000024ca <AES_CBC_decrypt_buffer>:
    24ca:	f3 0f 1e fa          	endbr64 
    24ce:	55                   	push   %rbp
    24cf:	48 89 e5             	mov    %rsp,%rbp
    24d2:	48 83 ec 50          	sub    $0x50,%rsp
    24d6:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    24da:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    24de:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    24e2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    24e9:	00 00 
    24eb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    24ef:	31 c0                	xor    %eax,%eax
    24f1:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    24f8:	00 
    24f9:	eb 64                	jmp    255f <AES_CBC_decrypt_buffer+0x95>
    24fb:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    24ff:	48 8b 50 08          	mov    0x8(%rax),%rdx
    2503:	48 8b 00             	mov    (%rax),%rax
    2506:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    250a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    250e:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    2512:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2516:	48 89 d6             	mov    %rdx,%rsi
    2519:	48 89 c7             	mov    %rax,%rdi
    251c:	e8 f9 fd ff ff       	call   231a <InvCipher>
    2521:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2525:	48 8d 90 b0 00 00 00 	lea    0xb0(%rax),%rdx
    252c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2530:	48 89 d6             	mov    %rdx,%rsi
    2533:	48 89 c7             	mov    %rax,%rdi
    2536:	e8 ae fe ff ff       	call   23e9 <XorWithIv>
    253b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    253f:	48 8d 88 b0 00 00 00 	lea    0xb0(%rax),%rcx
    2546:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    254a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    254e:	48 89 01             	mov    %rax,(%rcx)
    2551:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    2555:	48 83 45 c0 10       	addq   $0x10,-0x40(%rbp)
    255a:	48 83 45 d8 10       	addq   $0x10,-0x28(%rbp)
    255f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2563:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
    2567:	72 92                	jb     24fb <AES_CBC_decrypt_buffer+0x31>
    2569:	90                   	nop
    256a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    256e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2575:	00 00 
    2577:	74 05                	je     257e <AES_CBC_decrypt_buffer+0xb4>
    2579:	e8 f2 ea ff ff       	call   1070 <__stack_chk_fail@plt>
    257e:	c9                   	leave  
    257f:	c3                   	ret    

0000000000002580 <AES_CTR_xcrypt_buffer>:
    2580:	f3 0f 1e fa          	endbr64 
    2584:	55                   	push   %rbp
    2585:	48 89 e5             	mov    %rsp,%rbp
    2588:	48 83 ec 50          	sub    $0x50,%rsp
    258c:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    2590:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    2594:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    2598:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    259f:	00 00 
    25a1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    25a5:	31 c0                	xor    %eax,%eax
    25a7:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    25ae:	00 
    25af:	c7 45 d4 10 00 00 00 	movl   $0x10,-0x2c(%rbp)
    25b6:	e9 ce 00 00 00       	jmp    2689 <AES_CTR_xcrypt_buffer+0x109>
    25bb:	83 7d d4 10          	cmpl   $0x10,-0x2c(%rbp)
    25bf:	0f 85 94 00 00 00    	jne    2659 <AES_CTR_xcrypt_buffer+0xd9>
    25c5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    25c9:	48 05 b0 00 00 00    	add    $0xb0,%rax
    25cf:	48 8b 50 08          	mov    0x8(%rax),%rdx
    25d3:	48 8b 00             	mov    (%rax),%rax
    25d6:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    25da:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    25de:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    25e2:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    25e6:	48 89 d6             	mov    %rdx,%rsi
    25e9:	48 89 c7             	mov    %rax,%rdi
    25ec:	e8 99 fc ff ff       	call   228a <Cipher>
    25f1:	c7 45 d4 0f 00 00 00 	movl   $0xf,-0x2c(%rbp)
    25f8:	eb 52                	jmp    264c <AES_CTR_xcrypt_buffer+0xcc>
    25fa:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    25fe:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2601:	48 98                	cltq   
    2603:	0f b6 84 02 b0 00 00 	movzbl 0xb0(%rdx,%rax,1),%eax
    260a:	00 
    260b:	3c ff                	cmp    $0xff,%al
    260d:	75 13                	jne    2622 <AES_CTR_xcrypt_buffer+0xa2>
    260f:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    2613:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2616:	48 98                	cltq   
    2618:	c6 84 02 b0 00 00 00 	movb   $0x0,0xb0(%rdx,%rax,1)
    261f:	00 
    2620:	eb 26                	jmp    2648 <AES_CTR_xcrypt_buffer+0xc8>
    2622:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    2626:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2629:	48 98                	cltq   
    262b:	0f b6 84 02 b0 00 00 	movzbl 0xb0(%rdx,%rax,1),%eax
    2632:	00 
    2633:	8d 48 01             	lea    0x1(%rax),%ecx
    2636:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    263a:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    263d:	48 98                	cltq   
    263f:	88 8c 02 b0 00 00 00 	mov    %cl,0xb0(%rdx,%rax,1)
    2646:	eb 0a                	jmp    2652 <AES_CTR_xcrypt_buffer+0xd2>
    2648:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    264c:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    2650:	79 a8                	jns    25fa <AES_CTR_xcrypt_buffer+0x7a>
    2652:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
    2659:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    265d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2661:	48 01 d0             	add    %rdx,%rax
    2664:	0f b6 08             	movzbl (%rax),%ecx
    2667:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    266a:	48 98                	cltq   
    266c:	0f b6 54 05 e0       	movzbl -0x20(%rbp,%rax,1),%edx
    2671:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
    2675:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2679:	48 01 f0             	add    %rsi,%rax
    267c:	31 ca                	xor    %ecx,%edx
    267e:	88 10                	mov    %dl,(%rax)
    2680:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    2685:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
    2689:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    268d:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
    2691:	0f 82 24 ff ff ff    	jb     25bb <AES_CTR_xcrypt_buffer+0x3b>
    2697:	90                   	nop
    2698:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    269c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    26a3:	00 00 
    26a5:	74 05                	je     26ac <AES_CTR_xcrypt_buffer+0x12c>
    26a7:	e8 c4 e9 ff ff       	call   1070 <__stack_chk_fail@plt>
    26ac:	c9                   	leave  
    26ad:	c3                   	ret    

Disassembly of section .fini:

00000000000026b0 <_fini>:
    26b0:	f3 0f 1e fa          	endbr64 
    26b4:	48 83 ec 08          	sub    $0x8,%rsp
    26b8:	48 83 c4 08          	add    $0x8,%rsp
    26bc:	c3                   	ret    
