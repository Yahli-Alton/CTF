
byteoverflow:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    $0x8,%rsp
  401004:	48 8b 05 ed 3f 00 00 	mov    0x3fed(%rip),%rax        # 404ff8 <__gmon_start__>
  40100b:	48 85 c0             	test   %rax,%rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	call   *%rax
  401012:	48 83 c4 08          	add    $0x8,%rsp
  401016:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 72 3f 00 00    	push   0x3f72(%rip)        # 404f98 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 74 3f 00 00    	jmp    *0x3f74(%rip)        # 404fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <puts@plt>:
  401030:	ff 25 72 3f 00 00    	jmp    *0x3f72(%rip)        # 404fa8 <puts@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <.plt>

0000000000401040 <printf@plt>:
  401040:	ff 25 6a 3f 00 00    	jmp    *0x3f6a(%rip)        # 404fb0 <printf@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <.plt>

0000000000401050 <read@plt>:
  401050:	ff 25 62 3f 00 00    	jmp    *0x3f62(%rip)        # 404fb8 <read@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <.plt>

0000000000401060 <fgets@plt>:
  401060:	ff 25 5a 3f 00 00    	jmp    *0x3f5a(%rip)        # 404fc0 <fgets@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <.plt>

0000000000401070 <getchar@plt>:
  401070:	ff 25 52 3f 00 00    	jmp    *0x3f52(%rip)        # 404fc8 <getchar@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <.plt>

0000000000401080 <fflush@plt>:
  401080:	ff 25 4a 3f 00 00    	jmp    *0x3f4a(%rip)        # 404fd0 <fflush@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <.plt>

0000000000401090 <setvbuf@plt>:
  401090:	ff 25 42 3f 00 00    	jmp    *0x3f42(%rip)        # 404fd8 <setvbuf@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <.plt>

00000000004010a0 <__isoc99_scanf@plt>:
  4010a0:	ff 25 3a 3f 00 00    	jmp    *0x3f3a(%rip)        # 404fe0 <__isoc99_scanf@GLIBC_2.7>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <.plt>

00000000004010b0 <exit@plt>:
  4010b0:	ff 25 32 3f 00 00    	jmp    *0x3f32(%rip)        # 404fe8 <exit@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <.plt>

Disassembly of section .text:

00000000004010c0 <_start>:
  4010c0:	31 ed                	xor    %ebp,%ebp
  4010c2:	49 89 d1             	mov    %rdx,%r9
  4010c5:	5e                   	pop    %rsi
  4010c6:	48 89 e2             	mov    %rsp,%rdx
  4010c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4010cd:	50                   	push   %rax
  4010ce:	54                   	push   %rsp
  4010cf:	49 c7 c0 90 14 40 00 	mov    $0x401490,%r8
  4010d6:	48 c7 c1 30 14 40 00 	mov    $0x401430,%rcx
  4010dd:	48 c7 c7 a2 11 40 00 	mov    $0x4011a2,%rdi
  4010e4:	ff 15 06 3f 00 00    	call   *0x3f06(%rip)        # 404ff0 <__libc_start_main@GLIBC_2.2.5>
  4010ea:	f4                   	hlt    
  4010eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010f0 <_dl_relocate_static_pie>:
  4010f0:	c3                   	ret    
  4010f1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4010f8:	00 00 00 
  4010fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401100 <deregister_tm_clones>:
  401100:	b8 10 50 40 00       	mov    $0x405010,%eax
  401105:	48 3d 10 50 40 00    	cmp    $0x405010,%rax
  40110b:	74 13                	je     401120 <deregister_tm_clones+0x20>
  40110d:	b8 00 00 00 00       	mov    $0x0,%eax
  401112:	48 85 c0             	test   %rax,%rax
  401115:	74 09                	je     401120 <deregister_tm_clones+0x20>
  401117:	bf 10 50 40 00       	mov    $0x405010,%edi
  40111c:	ff e0                	jmp    *%rax
  40111e:	66 90                	xchg   %ax,%ax
  401120:	c3                   	ret    
  401121:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401128:	00 00 00 00 
  40112c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401130 <register_tm_clones>:
  401130:	be 10 50 40 00       	mov    $0x405010,%esi
  401135:	48 81 ee 10 50 40 00 	sub    $0x405010,%rsi
  40113c:	48 89 f0             	mov    %rsi,%rax
  40113f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401143:	48 c1 f8 03          	sar    $0x3,%rax
  401147:	48 01 c6             	add    %rax,%rsi
  40114a:	48 d1 fe             	sar    %rsi
  40114d:	74 11                	je     401160 <register_tm_clones+0x30>
  40114f:	b8 00 00 00 00       	mov    $0x0,%eax
  401154:	48 85 c0             	test   %rax,%rax
  401157:	74 07                	je     401160 <register_tm_clones+0x30>
  401159:	bf 10 50 40 00       	mov    $0x405010,%edi
  40115e:	ff e0                	jmp    *%rax
  401160:	c3                   	ret    
  401161:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401168:	00 00 00 00 
  40116c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401170 <__do_global_dtors_aux>:
  401170:	80 3d d1 3e 00 00 00 	cmpb   $0x0,0x3ed1(%rip)        # 405048 <completed.7348>
  401177:	75 17                	jne    401190 <__do_global_dtors_aux+0x20>
  401179:	55                   	push   %rbp
  40117a:	48 89 e5             	mov    %rsp,%rbp
  40117d:	e8 7e ff ff ff       	call   401100 <deregister_tm_clones>
  401182:	c6 05 bf 3e 00 00 01 	movb   $0x1,0x3ebf(%rip)        # 405048 <completed.7348>
  401189:	5d                   	pop    %rbp
  40118a:	c3                   	ret    
  40118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401190:	c3                   	ret    
  401191:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401198:	00 00 00 00 
  40119c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011a0 <frame_dummy>:
  4011a0:	eb 8e                	jmp    401130 <register_tm_clones>

00000000004011a2 <main>:
  4011a2:	55                   	push   %rbp
  4011a3:	48 89 e5             	mov    %rsp,%rbp
  4011a6:	48 8b 05 73 3e 00 00 	mov    0x3e73(%rip),%rax        # 405020 <stdout@GLIBC_2.2.5>
  4011ad:	b9 00 00 00 00       	mov    $0x0,%ecx
  4011b2:	ba 02 00 00 00       	mov    $0x2,%edx
  4011b7:	be 00 00 00 00       	mov    $0x0,%esi
  4011bc:	48 89 c7             	mov    %rax,%rdi
  4011bf:	e8 cc fe ff ff       	call   401090 <setvbuf@plt>
  4011c4:	48 8b 05 75 3e 00 00 	mov    0x3e75(%rip),%rax        # 405040 <stderr@GLIBC_2.2.5>
  4011cb:	b9 00 00 00 00       	mov    $0x0,%ecx
  4011d0:	ba 02 00 00 00       	mov    $0x2,%edx
  4011d5:	be 00 00 00 00       	mov    $0x0,%esi
  4011da:	48 89 c7             	mov    %rax,%rdi
  4011dd:	e8 ae fe ff ff       	call   401090 <setvbuf@plt>
  4011e2:	48 8b 05 47 3e 00 00 	mov    0x3e47(%rip),%rax        # 405030 <stdin@GLIBC_2.2.5>
  4011e9:	b9 00 00 00 00       	mov    $0x0,%ecx
  4011ee:	ba 02 00 00 00       	mov    $0x2,%edx
  4011f3:	be 00 00 00 00       	mov    $0x0,%esi
  4011f8:	48 89 c7             	mov    %rax,%rdi
  4011fb:	e8 90 fe ff ff       	call   401090 <setvbuf@plt>
  401200:	bf 08 20 40 00       	mov    $0x402008,%edi
  401205:	e8 26 fe ff ff       	call   401030 <puts@plt>
  40120a:	bf 30 26 40 00       	mov    $0x402630,%edi
  40120f:	e8 1c fe ff ff       	call   401030 <puts@plt>
  401214:	b8 00 00 00 00       	mov    $0x0,%eax
  401219:	e8 02 00 00 00       	call   401220 <opts>
  40121e:	eb f4                	jmp    401214 <main+0x72>

0000000000401220 <opts>:
  401220:	55                   	push   %rbp
  401221:	48 89 e5             	mov    %rsp,%rbp
  401224:	48 83 ec 10          	sub    $0x10,%rsp
  401228:	bf 48 2a 40 00       	mov    $0x402a48,%edi
  40122d:	e8 fe fd ff ff       	call   401030 <puts@plt>
  401232:	bf 6a 2a 40 00       	mov    $0x402a6a,%edi
  401237:	e8 f4 fd ff ff       	call   401030 <puts@plt>
  40123c:	bf 7d 2a 40 00       	mov    $0x402a7d,%edi
  401241:	e8 ea fd ff ff       	call   401030 <puts@plt>
  401246:	bf 90 2a 40 00       	mov    $0x402a90,%edi
  40124b:	e8 e0 fd ff ff       	call   401030 <puts@plt>
  401250:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
  401254:	48 89 c6             	mov    %rax,%rsi
  401257:	bf 99 2a 40 00       	mov    $0x402a99,%edi
  40125c:	b8 00 00 00 00       	mov    $0x0,%eax
  401261:	e8 3a fe ff ff       	call   4010a0 <__isoc99_scanf@plt>
  401266:	e8 05 fe ff ff       	call   401070 <getchar@plt>
  40126b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40126e:	83 f8 03             	cmp    $0x3,%eax
  401271:	74 29                	je     40129c <opts+0x7c>
  401273:	83 f8 03             	cmp    $0x3,%eax
  401276:	7f 2e                	jg     4012a6 <opts+0x86>
  401278:	83 f8 01             	cmp    $0x1,%eax
  40127b:	74 07                	je     401284 <opts+0x64>
  40127d:	83 f8 02             	cmp    $0x2,%eax
  401280:	74 0e                	je     401290 <opts+0x70>
  401282:	eb 22                	jmp    4012a6 <opts+0x86>
  401284:	b8 00 00 00 00       	mov    $0x0,%eax
  401289:	e8 25 00 00 00       	call   4012b3 <lookPost>
  40128e:	eb 21                	jmp    4012b1 <opts+0x91>
  401290:	b8 00 00 00 00       	mov    $0x0,%eax
  401295:	e8 15 01 00 00       	call   4013af <makeComment>
  40129a:	eb 15                	jmp    4012b1 <opts+0x91>
  40129c:	bf 00 00 00 00       	mov    $0x0,%edi
  4012a1:	e8 0a fe ff ff       	call   4010b0 <exit@plt>
  4012a6:	bf a0 2a 40 00       	mov    $0x402aa0,%edi
  4012ab:	e8 80 fd ff ff       	call   401030 <puts@plt>
  4012b0:	90                   	nop
  4012b1:	c9                   	leave  
  4012b2:	c3                   	ret    

00000000004012b3 <lookPost>:
  4012b3:	55                   	push   %rbp
  4012b4:	48 89 e5             	mov    %rsp,%rbp
  4012b7:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4012be:	bf c8 2a 40 00       	mov    $0x402ac8,%edi
  4012c3:	e8 68 fd ff ff       	call   401030 <puts@plt>
  4012c8:	bf e8 2a 40 00       	mov    $0x402ae8,%edi
  4012cd:	e8 5e fd ff ff       	call   401030 <puts@plt>
  4012d2:	bf 19 2b 40 00       	mov    $0x402b19,%edi
  4012d7:	e8 54 fd ff ff       	call   401030 <puts@plt>
  4012dc:	bf 20 2b 40 00       	mov    $0x402b20,%edi
  4012e1:	e8 4a fd ff ff       	call   401030 <puts@plt>
  4012e6:	bf 19 2b 40 00       	mov    $0x402b19,%edi
  4012eb:	e8 40 fd ff ff       	call   401030 <puts@plt>
  4012f0:	bf 70 2b 40 00       	mov    $0x402b70,%edi
  4012f5:	e8 36 fd ff ff       	call   401030 <puts@plt>
  4012fa:	bf 19 2b 40 00       	mov    $0x402b19,%edi
  4012ff:	e8 2c fd ff ff       	call   401030 <puts@plt>
  401304:	48 8b 05 15 3d 00 00 	mov    0x3d15(%rip),%rax        # 405020 <stdout@GLIBC_2.2.5>
  40130b:	48 89 c7             	mov    %rax,%rdi
  40130e:	e8 6d fd ff ff       	call   401080 <fflush@plt>
  401313:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
  40131a:	ba 01 01 00 00       	mov    $0x101,%edx
  40131f:	48 89 c6             	mov    %rax,%rsi
  401322:	bf 00 00 00 00       	mov    $0x0,%edi
  401327:	e8 24 fd ff ff       	call   401050 <read@plt>
  40132c:	0f b6 85 00 ff ff ff 	movzbl -0x100(%rbp),%eax
  401333:	3c 31                	cmp    $0x31,%al
  401335:	75 20                	jne    401357 <lookPost+0xa4>
  401337:	bf c0 2b 40 00       	mov    $0x402bc0,%edi
  40133c:	e8 ef fc ff ff       	call   401030 <puts@plt>
  401341:	bf 18 2c 40 00       	mov    $0x402c18,%edi
  401346:	e8 e5 fc ff ff       	call   401030 <puts@plt>
  40134b:	bf c0 2b 40 00       	mov    $0x402bc0,%edi
  401350:	e8 db fc ff ff       	call   401030 <puts@plt>
  401355:	eb 55                	jmp    4013ac <lookPost+0xf9>
  401357:	0f b6 85 00 ff ff ff 	movzbl -0x100(%rbp),%eax
  40135e:	3c 32                	cmp    $0x32,%al
  401360:	75 20                	jne    401382 <lookPost+0xcf>
  401362:	bf c0 2b 40 00       	mov    $0x402bc0,%edi
  401367:	e8 c4 fc ff ff       	call   401030 <puts@plt>
  40136c:	bf 88 2d 40 00       	mov    $0x402d88,%edi
  401371:	e8 ba fc ff ff       	call   401030 <puts@plt>
  401376:	bf c0 2b 40 00       	mov    $0x402bc0,%edi
  40137b:	e8 b0 fc ff ff       	call   401030 <puts@plt>
  401380:	eb 2a                	jmp    4013ac <lookPost+0xf9>
  401382:	0f b6 85 00 ff ff ff 	movzbl -0x100(%rbp),%eax
  401389:	3c 33                	cmp    $0x33,%al
  40138b:	75 1f                	jne    4013ac <lookPost+0xf9>
  40138d:	bf c0 2b 40 00       	mov    $0x402bc0,%edi
  401392:	e8 99 fc ff ff       	call   401030 <puts@plt>
  401397:	bf b8 2e 40 00       	mov    $0x402eb8,%edi
  40139c:	e8 8f fc ff ff       	call   401030 <puts@plt>
  4013a1:	bf c0 2b 40 00       	mov    $0x402bc0,%edi
  4013a6:	e8 85 fc ff ff       	call   401030 <puts@plt>
  4013ab:	90                   	nop
  4013ac:	90                   	nop
  4013ad:	c9                   	leave  
  4013ae:	c3                   	ret    

00000000004013af <makeComment>:
  4013af:	55                   	push   %rbp
  4013b0:	48 89 e5             	mov    %rsp,%rbp
  4013b3:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  4013ba:	8b 05 8c 3c 00 00    	mov    0x3c8c(%rip),%eax        # 40504c <NUM_COMMENTS>
  4013c0:	85 c0                	test   %eax,%eax
  4013c2:	74 0c                	je     4013d0 <makeComment+0x21>
  4013c4:	bf f8 2f 40 00       	mov    $0x402ff8,%edi
  4013c9:	e8 62 fc ff ff       	call   401030 <puts@plt>
  4013ce:	eb 53                	jmp    401423 <makeComment+0x74>
  4013d0:	bf 18 30 40 00       	mov    $0x403018,%edi
  4013d5:	e8 56 fc ff ff       	call   401030 <puts@plt>
  4013da:	48 8b 15 4f 3c 00 00 	mov    0x3c4f(%rip),%rdx        # 405030 <stdin@GLIBC_2.2.5>
  4013e1:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
  4013e8:	be 00 01 00 00       	mov    $0x100,%esi
  4013ed:	48 89 c7             	mov    %rax,%rdi
  4013f0:	e8 6b fc ff ff       	call   401060 <fgets@plt>
  4013f5:	bf 40 30 40 00       	mov    $0x403040,%edi
  4013fa:	e8 31 fc ff ff       	call   401030 <puts@plt>
  4013ff:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
  401406:	48 89 c7             	mov    %rax,%rdi
  401409:	b8 00 00 00 00       	mov    $0x0,%eax
  40140e:	e8 2d fc ff ff       	call   401040 <printf@plt>
  401413:	8b 05 33 3c 00 00    	mov    0x3c33(%rip),%eax        # 40504c <NUM_COMMENTS>
  401419:	83 c0 01             	add    $0x1,%eax
  40141c:	89 05 2a 3c 00 00    	mov    %eax,0x3c2a(%rip)        # 40504c <NUM_COMMENTS>
  401422:	90                   	nop
  401423:	c9                   	leave  
  401424:	c3                   	ret    
  401425:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40142c:	00 00 00 
  40142f:	90                   	nop

0000000000401430 <__libc_csu_init>:
  401430:	41 57                	push   %r15
  401432:	49 89 d7             	mov    %rdx,%r15
  401435:	41 56                	push   %r14
  401437:	49 89 f6             	mov    %rsi,%r14
  40143a:	41 55                	push   %r13
  40143c:	41 89 fd             	mov    %edi,%r13d
  40143f:	41 54                	push   %r12
  401441:	4c 8d 25 38 39 00 00 	lea    0x3938(%rip),%r12        # 404d80 <__frame_dummy_init_array_entry>
  401448:	55                   	push   %rbp
  401449:	48 8d 2d 38 39 00 00 	lea    0x3938(%rip),%rbp        # 404d88 <__do_global_dtors_aux_fini_array_entry>
  401450:	53                   	push   %rbx
  401451:	4c 29 e5             	sub    %r12,%rbp
  401454:	48 83 ec 08          	sub    $0x8,%rsp
  401458:	e8 a3 fb ff ff       	call   401000 <_init>
  40145d:	48 c1 fd 03          	sar    $0x3,%rbp
  401461:	74 1b                	je     40147e <__libc_csu_init+0x4e>
  401463:	31 db                	xor    %ebx,%ebx
  401465:	0f 1f 00             	nopl   (%rax)
  401468:	4c 89 fa             	mov    %r15,%rdx
  40146b:	4c 89 f6             	mov    %r14,%rsi
  40146e:	44 89 ef             	mov    %r13d,%edi
  401471:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  401475:	48 83 c3 01          	add    $0x1,%rbx
  401479:	48 39 dd             	cmp    %rbx,%rbp
  40147c:	75 ea                	jne    401468 <__libc_csu_init+0x38>
  40147e:	48 83 c4 08          	add    $0x8,%rsp
  401482:	5b                   	pop    %rbx
  401483:	5d                   	pop    %rbp
  401484:	41 5c                	pop    %r12
  401486:	41 5d                	pop    %r13
  401488:	41 5e                	pop    %r14
  40148a:	41 5f                	pop    %r15
  40148c:	c3                   	ret    
  40148d:	0f 1f 00             	nopl   (%rax)

0000000000401490 <__libc_csu_fini>:
  401490:	c3                   	ret    

Disassembly of section .fini:

0000000000401494 <_fini>:
  401494:	48 83 ec 08          	sub    $0x8,%rsp
  401498:	48 83 c4 08          	add    $0x8,%rsp
  40149c:	c3                   	ret    
