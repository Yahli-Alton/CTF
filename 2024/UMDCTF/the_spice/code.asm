
the_spice:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 2f 00 00 	mov    0x2fe9(%rip),%rax        # 403ff8 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <putchar@plt-0x10>:
  401020:	ff 35 52 2f 00 00    	push   0x2f52(%rip)        # 403f78 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 54 2f 00 00    	jmp    *0x2f54(%rip)        # 403f80 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <putchar@plt>:
  401030:	ff 25 52 2f 00 00    	jmp    *0x2f52(%rip)        # 403f88 <putchar@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <puts@plt>:
  401040:	ff 25 4a 2f 00 00    	jmp    *0x2f4a(%rip)        # 403f90 <puts@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <strlen@plt>:
  401050:	ff 25 42 2f 00 00    	jmp    *0x2f42(%rip)        # 403f98 <strlen@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <__stack_chk_fail@plt>:
  401060:	ff 25 3a 2f 00 00    	jmp    *0x2f3a(%rip)        # 403fa0 <__stack_chk_fail@GLIBC_2.4>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <setbuf@plt>:
  401070:	ff 25 32 2f 00 00    	jmp    *0x2f32(%rip)        # 403fa8 <setbuf@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <printf@plt>:
  401080:	ff 25 2a 2f 00 00    	jmp    *0x2f2a(%rip)        # 403fb0 <printf@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <memset@plt>:
  401090:	ff 25 22 2f 00 00    	jmp    *0x2f22(%rip)        # 403fb8 <memset@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <strcspn@plt>:
  4010a0:	ff 25 1a 2f 00 00    	jmp    *0x2f1a(%rip)        # 403fc0 <strcspn@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <srand@plt>:
  4010b0:	ff 25 12 2f 00 00    	jmp    *0x2f12(%rip)        # 403fc8 <srand@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <fgets@plt>:
  4010c0:	ff 25 0a 2f 00 00    	jmp    *0x2f0a(%rip)        # 403fd0 <fgets@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <time@plt>:
  4010d0:	ff 25 02 2f 00 00    	jmp    *0x2f02(%rip)        # 403fd8 <time@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <atoi@plt>:
  4010e0:	ff 25 fa 2e 00 00    	jmp    *0x2efa(%rip)        # 403fe0 <atoi@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <rand@plt>:
  4010f0:	ff 25 f2 2e 00 00    	jmp    *0x2ef2(%rip)        # 403fe8 <rand@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401100 <_start>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	31 ed                	xor    %ebp,%ebp
  401106:	49 89 d1             	mov    %rdx,%r9
  401109:	5e                   	pop    %rsi
  40110a:	48 89 e2             	mov    %rsp,%rdx
  40110d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401111:	50                   	push   %rax
  401112:	54                   	push   %rsp
  401113:	45 31 c0             	xor    %r8d,%r8d
  401116:	31 c9                	xor    %ecx,%ecx
  401118:	48 c7 c7 8d 12 40 00 	mov    $0x40128d,%rdi
  40111f:	ff 15 cb 2e 00 00    	call   *0x2ecb(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  401125:	f4                   	hlt    
  401126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <_dl_relocate_static_pie>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	c3                   	ret    
  401135:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40113c:	00 00 00 
  40113f:	90                   	nop

0000000000401140 <deregister_tm_clones>:
  401140:	b8 08 40 40 00       	mov    $0x404008,%eax
  401145:	48 3d 08 40 40 00    	cmp    $0x404008,%rax
  40114b:	74 13                	je     401160 <deregister_tm_clones+0x20>
  40114d:	b8 00 00 00 00       	mov    $0x0,%eax
  401152:	48 85 c0             	test   %rax,%rax
  401155:	74 09                	je     401160 <deregister_tm_clones+0x20>
  401157:	bf 08 40 40 00       	mov    $0x404008,%edi
  40115c:	ff e0                	jmp    *%rax
  40115e:	66 90                	xchg   %ax,%ax
  401160:	c3                   	ret    
  401161:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401168:	00 00 00 00 
  40116c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401170 <register_tm_clones>:
  401170:	be 08 40 40 00       	mov    $0x404008,%esi
  401175:	48 81 ee 08 40 40 00 	sub    $0x404008,%rsi
  40117c:	48 89 f0             	mov    %rsi,%rax
  40117f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401183:	48 c1 f8 03          	sar    $0x3,%rax
  401187:	48 01 c6             	add    %rax,%rsi
  40118a:	48 d1 fe             	sar    %rsi
  40118d:	74 11                	je     4011a0 <register_tm_clones+0x30>
  40118f:	b8 00 00 00 00       	mov    $0x0,%eax
  401194:	48 85 c0             	test   %rax,%rax
  401197:	74 07                	je     4011a0 <register_tm_clones+0x30>
  401199:	bf 08 40 40 00       	mov    $0x404008,%edi
  40119e:	ff e0                	jmp    *%rax
  4011a0:	c3                   	ret    
  4011a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4011a8:	00 00 00 00 
  4011ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011b0 <__do_global_dtors_aux>:
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	80 3d 6d 2e 00 00 00 	cmpb   $0x0,0x2e6d(%rip)        # 404028 <completed.0>
  4011bb:	75 13                	jne    4011d0 <__do_global_dtors_aux+0x20>
  4011bd:	55                   	push   %rbp
  4011be:	48 89 e5             	mov    %rsp,%rbp
  4011c1:	e8 7a ff ff ff       	call   401140 <deregister_tm_clones>
  4011c6:	c6 05 5b 2e 00 00 01 	movb   $0x1,0x2e5b(%rip)        # 404028 <completed.0>
  4011cd:	5d                   	pop    %rbp
  4011ce:	c3                   	ret    
  4011cf:	90                   	nop
  4011d0:	c3                   	ret    
  4011d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4011d8:	00 00 00 00 
  4011dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011e0 <frame_dummy>:
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	eb 8a                	jmp    401170 <register_tm_clones>

00000000004011e6 <spice_amount>:
  4011e6:	55                   	push   %rbp
  4011e7:	48 89 e5             	mov    %rsp,%rbp
  4011ea:	48 83 ec 30          	sub    $0x30,%rsp
  4011ee:	48 8b 45 10          	mov    0x10(%rbp),%rax
  4011f2:	48 8b 55 18          	mov    0x18(%rbp),%rdx
  4011f6:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4011fa:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  4011fe:	48 8b 45 20          	mov    0x20(%rbp),%rax
  401202:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401206:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40120d:	00 00 
  40120f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401213:	31 c0                	xor    %eax,%eax
  401215:	8b 45 d8             	mov    -0x28(%rbp),%eax
  401218:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40121c:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401223:	00 00 
  401225:	74 05                	je     40122c <spice_amount+0x46>
  401227:	e8 34 fe ff ff       	call   401060 <__stack_chk_fail@plt>
  40122c:	c9                   	leave  
  40122d:	c3                   	ret    

000000000040122e <prompt>:
  40122e:	55                   	push   %rbp
  40122f:	48 89 e5             	mov    %rsp,%rbp
  401232:	48 83 ec 10          	sub    $0x10,%rsp
  401236:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40123d:	00 00 
  40123f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401243:	31 c0                	xor    %eax,%eax
  401245:	48 c7 45 f0 10 20 40 	movq   $0x402010,-0x10(%rbp)
  40124c:	00 
  40124d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401251:	48 89 c7             	mov    %rax,%rdi
  401254:	e8 f7 fd ff ff       	call   401050 <strlen@plt>
  401259:	48 89 c1             	mov    %rax,%rcx
  40125c:	4c 8b 45 f0          	mov    -0x10(%rbp),%r8
  401260:	48 c7 c0 01 00 00 00 	mov    $0x1,%rax
  401267:	48 c7 c7 01 00 00 00 	mov    $0x1,%rdi
  40126e:	4c 89 c6             	mov    %r8,%rsi
  401271:	48 89 ca             	mov    %rcx,%rdx
  401274:	0f 05                	syscall 
  401276:	90                   	nop
  401277:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40127b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401282:	00 00 
  401284:	74 05                	je     40128b <prompt+0x5d>
  401286:	e8 d5 fd ff ff       	call   401060 <__stack_chk_fail@plt>
  40128b:	c9                   	leave  
  40128c:	c3                   	ret    

000000000040128d <main>:
  40128d:	55                   	push   %rbp
  40128e:	48 89 e5             	mov    %rsp,%rbp
  401291:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
  401298:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40129f:	00 00 
  4012a1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4012a5:	31 c0                	xor    %eax,%eax
  4012a7:	48 8b 05 72 2d 00 00 	mov    0x2d72(%rip),%rax        # 404020 <stdin@GLIBC_2.2.5>
  4012ae:	be 00 00 00 00       	mov    $0x0,%esi
  4012b3:	48 89 c7             	mov    %rax,%rdi
  4012b6:	e8 b5 fd ff ff       	call   401070 <setbuf@plt>
  4012bb:	48 8b 05 4e 2d 00 00 	mov    0x2d4e(%rip),%rax        # 404010 <stdout@GLIBC_2.2.5>
  4012c2:	be 00 00 00 00       	mov    $0x0,%esi
  4012c7:	48 89 c7             	mov    %rax,%rdi
  4012ca:	e8 a1 fd ff ff       	call   401070 <setbuf@plt>
  4012cf:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
  4012d6:	ba c0 00 00 00       	mov    $0xc0,%edx
  4012db:	be 00 00 00 00       	mov    $0x0,%esi
  4012e0:	48 89 c7             	mov    %rax,%rdi
  4012e3:	e8 a8 fd ff ff       	call   401090 <memset@plt>
  4012e8:	bf 00 00 00 00       	mov    $0x0,%edi
  4012ed:	e8 de fd ff ff       	call   4010d0 <time@plt>
  4012f2:	89 c7                	mov    %eax,%edi
  4012f4:	e8 b7 fd ff ff       	call   4010b0 <srand@plt>
  4012f9:	e8 f2 fd ff ff       	call   4010f0 <rand@plt>
  4012fe:	48 63 d0             	movslq %eax,%rdx
  401301:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  401308:	48 c1 ea 20          	shr    $0x20,%rdx
  40130c:	c1 fa 05             	sar    $0x5,%edx
  40130f:	89 c1                	mov    %eax,%ecx
  401311:	c1 f9 1f             	sar    $0x1f,%ecx
  401314:	29 ca                	sub    %ecx,%edx
  401316:	89 95 14 ff ff ff    	mov    %edx,-0xec(%rbp)
  40131c:	8b 95 14 ff ff ff    	mov    -0xec(%rbp),%edx
  401322:	6b d2 64             	imul   $0x64,%edx,%edx
  401325:	29 d0                	sub    %edx,%eax
  401327:	89 85 14 ff ff ff    	mov    %eax,-0xec(%rbp)
  40132d:	bf 98 20 40 00       	mov    $0x402098,%edi
  401332:	e8 09 fd ff ff       	call   401040 <puts@plt>
  401337:	bf f8 20 40 00       	mov    $0x4020f8,%edi
  40133c:	e8 ff fc ff ff       	call   401040 <puts@plt>
  401341:	bf 48 21 40 00       	mov    $0x402148,%edi
  401346:	e8 f5 fc ff ff       	call   401040 <puts@plt>
  40134b:	bf 0a 00 00 00       	mov    $0xa,%edi
  401350:	e8 db fc ff ff       	call   401030 <putchar@plt>
  401355:	bf b0 21 40 00       	mov    $0x4021b0,%edi
  40135a:	e8 e1 fc ff ff       	call   401040 <puts@plt>
  40135f:	bf f8 21 40 00       	mov    $0x4021f8,%edi
  401364:	e8 d7 fc ff ff       	call   401040 <puts@plt>
  401369:	bf 0a 00 00 00       	mov    $0xa,%edi
  40136e:	e8 bd fc ff ff       	call   401030 <putchar@plt>
  401373:	8b 85 14 ff ff ff    	mov    -0xec(%rbp),%eax
  401379:	89 c6                	mov    %eax,%esi
  40137b:	bf 30 22 40 00       	mov    $0x402230,%edi
  401380:	b8 00 00 00 00       	mov    $0x0,%eax
  401385:	e8 f6 fc ff ff       	call   401080 <printf@plt>
  40138a:	bf 0a 00 00 00       	mov    $0xa,%edi
  40138f:	e8 9c fc ff ff       	call   401030 <putchar@plt>
  401394:	e8 95 fe ff ff       	call   40122e <prompt>
  401399:	bf 86 22 40 00       	mov    $0x402286,%edi
  40139e:	b8 00 00 00 00       	mov    $0x0,%eax
  4013a3:	e8 d8 fc ff ff       	call   401080 <printf@plt>
  4013a8:	48 8b 15 71 2c 00 00 	mov    0x2c71(%rip),%rdx        # 404020 <stdin@GLIBC_2.2.5>
  4013af:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4013b3:	be 10 00 00 00       	mov    $0x10,%esi
  4013b8:	48 89 c7             	mov    %rax,%rdi
  4013bb:	e8 00 fd ff ff       	call   4010c0 <fgets@plt>
  4013c0:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4013c4:	48 89 c7             	mov    %rax,%rdi
  4013c7:	e8 14 fd ff ff       	call   4010e0 <atoi@plt>
  4013cc:	89 85 18 ff ff ff    	mov    %eax,-0xe8(%rbp)
  4013d2:	83 bd 18 ff ff ff 04 	cmpl   $0x4,-0xe8(%rbp)
  4013d9:	0f 84 25 03 00 00    	je     401704 <main+0x477>
  4013df:	83 bd 18 ff ff ff 04 	cmpl   $0x4,-0xe8(%rbp)
  4013e6:	0f 8f 36 03 00 00    	jg     401722 <main+0x495>
  4013ec:	83 bd 18 ff ff ff 03 	cmpl   $0x3,-0xe8(%rbp)
  4013f3:	0f 84 46 02 00 00    	je     40163f <main+0x3b2>
  4013f9:	83 bd 18 ff ff ff 03 	cmpl   $0x3,-0xe8(%rbp)
  401400:	0f 8f 1c 03 00 00    	jg     401722 <main+0x495>
  401406:	83 bd 18 ff ff ff 01 	cmpl   $0x1,-0xe8(%rbp)
  40140d:	74 12                	je     401421 <main+0x194>
  40140f:	83 bd 18 ff ff ff 02 	cmpl   $0x2,-0xe8(%rbp)
  401416:	0f 84 40 01 00 00    	je     40155c <main+0x2cf>
  40141c:	e9 01 03 00 00       	jmp    401722 <main+0x495>
  401421:	bf 89 22 40 00       	mov    $0x402289,%edi
  401426:	b8 00 00 00 00       	mov    $0x0,%eax
  40142b:	e8 50 fc ff ff       	call   401080 <printf@plt>
  401430:	48 8b 15 e9 2b 00 00 	mov    0x2be9(%rip),%rdx        # 404020 <stdin@GLIBC_2.2.5>
  401437:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  40143b:	be 10 00 00 00       	mov    $0x10,%esi
  401440:	48 89 c7             	mov    %rax,%rdi
  401443:	e8 78 fc ff ff       	call   4010c0 <fgets@plt>
  401448:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  40144c:	48 89 c7             	mov    %rax,%rdi
  40144f:	e8 8c fc ff ff       	call   4010e0 <atoi@plt>
  401454:	89 85 18 ff ff ff    	mov    %eax,-0xe8(%rbp)
  40145a:	83 bd 18 ff ff ff 00 	cmpl   $0x0,-0xe8(%rbp)
  401461:	78 09                	js     40146c <main+0x1df>
  401463:	83 bd 18 ff ff ff 07 	cmpl   $0x7,-0xe8(%rbp)
  40146a:	7e 0f                	jle    40147b <main+0x1ee>
  40146c:	bf a1 22 40 00       	mov    $0x4022a1,%edi
  401471:	e8 ca fb ff ff       	call   401040 <puts@plt>
  401476:	e9 5e 03 00 00       	jmp    4017d9 <main+0x54c>
  40147b:	bf b0 22 40 00       	mov    $0x4022b0,%edi
  401480:	b8 00 00 00 00       	mov    $0x0,%eax
  401485:	e8 f6 fb ff ff       	call   401080 <printf@plt>
  40148a:	48 8b 15 8f 2b 00 00 	mov    0x2b8f(%rip),%rdx        # 404020 <stdin@GLIBC_2.2.5>
  401491:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401495:	be 10 00 00 00       	mov    $0x10,%esi
  40149a:	48 89 c7             	mov    %rax,%rdi
  40149d:	e8 1e fc ff ff       	call   4010c0 <fgets@plt>
  4014a2:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4014a6:	48 89 c7             	mov    %rax,%rdi
  4014a9:	e8 32 fc ff ff       	call   4010e0 <atoi@plt>
  4014ae:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%rbp)
  4014b4:	bf cf 22 40 00       	mov    $0x4022cf,%edi
  4014b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4014be:	e8 bd fb ff ff       	call   401080 <printf@plt>
  4014c3:	48 8b 0d 56 2b 00 00 	mov    0x2b56(%rip),%rcx        # 404020 <stdin@GLIBC_2.2.5>
  4014ca:	48 8d b5 20 ff ff ff 	lea    -0xe0(%rbp),%rsi
  4014d1:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
  4014d7:	48 63 d0             	movslq %eax,%rdx
  4014da:	48 89 d0             	mov    %rdx,%rax
  4014dd:	48 01 c0             	add    %rax,%rax
  4014e0:	48 01 d0             	add    %rdx,%rax
  4014e3:	48 c1 e0 03          	shl    $0x3,%rax
  4014e7:	48 01 f0             	add    %rsi,%rax
  4014ea:	48 8d 78 04          	lea    0x4(%rax),%rdi
  4014ee:	8b 85 1c ff ff ff    	mov    -0xe4(%rbp),%eax
  4014f4:	48 89 ca             	mov    %rcx,%rdx
  4014f7:	89 c6                	mov    %eax,%esi
  4014f9:	e8 c2 fb ff ff       	call   4010c0 <fgets@plt>
  4014fe:	48 8d 8d 20 ff ff ff 	lea    -0xe0(%rbp),%rcx
  401505:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
  40150b:	48 63 d0             	movslq %eax,%rdx
  40150e:	48 89 d0             	mov    %rdx,%rax
  401511:	48 01 c0             	add    %rax,%rax
  401514:	48 01 d0             	add    %rdx,%rax
  401517:	48 c1 e0 03          	shl    $0x3,%rax
  40151b:	48 01 c8             	add    %rcx,%rax
  40151e:	48 83 c0 04          	add    $0x4,%rax
  401522:	be e8 22 40 00       	mov    $0x4022e8,%esi
  401527:	48 89 c7             	mov    %rax,%rdi
  40152a:	e8 71 fb ff ff       	call   4010a0 <strcspn@plt>
  40152f:	48 89 c1             	mov    %rax,%rcx
  401532:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
  401538:	48 63 d0             	movslq %eax,%rdx
  40153b:	48 89 d0             	mov    %rdx,%rax
  40153e:	48 01 c0             	add    %rax,%rax
  401541:	48 01 d0             	add    %rdx,%rax
  401544:	48 c1 e0 03          	shl    $0x3,%rax
  401548:	48 01 e8             	add    %rbp,%rax
  40154b:	48 01 c8             	add    %rcx,%rax
  40154e:	48 2d dc 00 00 00    	sub    $0xdc,%rax
  401554:	c6 00 00             	movb   $0x0,(%rax)
  401557:	e9 7d 02 00 00       	jmp    4017d9 <main+0x54c>
  40155c:	bf 89 22 40 00       	mov    $0x402289,%edi
  401561:	b8 00 00 00 00       	mov    $0x0,%eax
  401566:	e8 15 fb ff ff       	call   401080 <printf@plt>
  40156b:	48 8b 15 ae 2a 00 00 	mov    0x2aae(%rip),%rdx        # 404020 <stdin@GLIBC_2.2.5>
  401572:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401576:	be 10 00 00 00       	mov    $0x10,%esi
  40157b:	48 89 c7             	mov    %rax,%rdi
  40157e:	e8 3d fb ff ff       	call   4010c0 <fgets@plt>
  401583:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401587:	48 89 c7             	mov    %rax,%rdi
  40158a:	e8 51 fb ff ff       	call   4010e0 <atoi@plt>
  40158f:	89 85 18 ff ff ff    	mov    %eax,-0xe8(%rbp)
  401595:	83 bd 18 ff ff ff 00 	cmpl   $0x0,-0xe8(%rbp)
  40159c:	78 37                	js     4015d5 <main+0x348>
  40159e:	83 bd 18 ff ff ff 07 	cmpl   $0x7,-0xe8(%rbp)
  4015a5:	7f 2e                	jg     4015d5 <main+0x348>
  4015a7:	48 8d 8d 20 ff ff ff 	lea    -0xe0(%rbp),%rcx
  4015ae:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
  4015b4:	48 63 d0             	movslq %eax,%rdx
  4015b7:	48 89 d0             	mov    %rdx,%rax
  4015ba:	48 01 c0             	add    %rax,%rax
  4015bd:	48 01 d0             	add    %rdx,%rax
  4015c0:	48 c1 e0 03          	shl    $0x3,%rax
  4015c4:	48 01 c8             	add    %rcx,%rax
  4015c7:	48 83 c0 04          	add    $0x4,%rax
  4015cb:	0f b6 00             	movzbl (%rax),%eax
  4015ce:	0f b6 c0             	movzbl %al,%eax
  4015d1:	85 c0                	test   %eax,%eax
  4015d3:	75 0f                	jne    4015e4 <main+0x357>
  4015d5:	bf a1 22 40 00       	mov    $0x4022a1,%edi
  4015da:	e8 61 fa ff ff       	call   401040 <puts@plt>
  4015df:	e9 f5 01 00 00       	jmp    4017d9 <main+0x54c>
  4015e4:	bf f0 22 40 00       	mov    $0x4022f0,%edi
  4015e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4015ee:	e8 8d fa ff ff       	call   401080 <printf@plt>
  4015f3:	48 8b 15 26 2a 00 00 	mov    0x2a26(%rip),%rdx        # 404020 <stdin@GLIBC_2.2.5>
  4015fa:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4015fe:	be 10 00 00 00       	mov    $0x10,%esi
  401603:	48 89 c7             	mov    %rax,%rdi
  401606:	e8 b5 fa ff ff       	call   4010c0 <fgets@plt>
  40160b:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  40160f:	48 89 c7             	mov    %rax,%rdi
  401612:	e8 c9 fa ff ff       	call   4010e0 <atoi@plt>
  401617:	89 c1                	mov    %eax,%ecx
  401619:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
  40161f:	48 63 d0             	movslq %eax,%rdx
  401622:	48 89 d0             	mov    %rdx,%rax
  401625:	48 01 c0             	add    %rax,%rax
  401628:	48 01 d0             	add    %rdx,%rax
  40162b:	48 c1 e0 03          	shl    $0x3,%rax
  40162f:	48 01 e8             	add    %rbp,%rax
  401632:	48 2d e0 00 00 00    	sub    $0xe0,%rax
  401638:	89 08                	mov    %ecx,(%rax)
  40163a:	e9 9a 01 00 00       	jmp    4017d9 <main+0x54c>
  40163f:	bf 89 22 40 00       	mov    $0x402289,%edi
  401644:	b8 00 00 00 00       	mov    $0x0,%eax
  401649:	e8 32 fa ff ff       	call   401080 <printf@plt>
  40164e:	48 8b 15 cb 29 00 00 	mov    0x29cb(%rip),%rdx        # 404020 <stdin@GLIBC_2.2.5>
  401655:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401659:	be 10 00 00 00       	mov    $0x10,%esi
  40165e:	48 89 c7             	mov    %rax,%rdi
  401661:	e8 5a fa ff ff       	call   4010c0 <fgets@plt>
  401666:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  40166a:	48 89 c7             	mov    %rax,%rdi
  40166d:	e8 6e fa ff ff       	call   4010e0 <atoi@plt>
  401672:	89 85 18 ff ff ff    	mov    %eax,-0xe8(%rbp)
  401678:	48 83 ec 08          	sub    $0x8,%rsp
  40167c:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
  401682:	48 63 d0             	movslq %eax,%rdx
  401685:	48 89 d0             	mov    %rdx,%rax
  401688:	48 01 c0             	add    %rax,%rax
  40168b:	48 01 d0             	add    %rdx,%rax
  40168e:	48 c1 e0 03          	shl    $0x3,%rax
  401692:	48 01 e8             	add    %rbp,%rax
  401695:	48 8d 88 20 ff ff ff 	lea    -0xe0(%rax),%rcx
  40169c:	48 83 ec 18          	sub    $0x18,%rsp
  4016a0:	48 89 e6             	mov    %rsp,%rsi
  4016a3:	48 8b 01             	mov    (%rcx),%rax
  4016a6:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  4016aa:	48 89 06             	mov    %rax,(%rsi)
  4016ad:	48 89 56 08          	mov    %rdx,0x8(%rsi)
  4016b1:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4016b5:	48 89 46 10          	mov    %rax,0x10(%rsi)
  4016b9:	e8 28 fb ff ff       	call   4011e6 <spice_amount>
  4016be:	48 83 c4 20          	add    $0x20,%rsp
  4016c2:	89 c1                	mov    %eax,%ecx
  4016c4:	48 8d b5 20 ff ff ff 	lea    -0xe0(%rbp),%rsi
  4016cb:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
  4016d1:	48 63 d0             	movslq %eax,%rdx
  4016d4:	48 89 d0             	mov    %rdx,%rax
  4016d7:	48 01 c0             	add    %rax,%rax
  4016da:	48 01 d0             	add    %rdx,%rax
  4016dd:	48 c1 e0 03          	shl    $0x3,%rax
  4016e1:	48 01 f0             	add    %rsi,%rax
  4016e4:	48 8d 50 04          	lea    0x4(%rax),%rdx
  4016e8:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
  4016ee:	89 c6                	mov    %eax,%esi
  4016f0:	bf 28 23 40 00       	mov    $0x402328,%edi
  4016f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4016fa:	e8 81 f9 ff ff       	call   401080 <printf@plt>
  4016ff:	e9 d5 00 00 00       	jmp    4017d9 <main+0x54c>
  401704:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
  40170b:	48 89 c6             	mov    %rax,%rsi
  40170e:	bf 58 23 40 00       	mov    $0x402358,%edi
  401713:	b8 00 00 00 00       	mov    $0x0,%eax
  401718:	e8 63 f9 ff ff       	call   401080 <printf@plt>
  40171d:	e9 b7 00 00 00       	jmp    4017d9 <main+0x54c>
  401722:	c7 85 10 ff ff ff 00 	movl   $0x0,-0xf0(%rbp)
  401729:	00 00 00 
  40172c:	eb 5f                	jmp    40178d <main+0x500>
  40172e:	48 83 ec 08          	sub    $0x8,%rsp
  401732:	8b 85 10 ff ff ff    	mov    -0xf0(%rbp),%eax
  401738:	48 63 d0             	movslq %eax,%rdx
  40173b:	48 89 d0             	mov    %rdx,%rax
  40173e:	48 01 c0             	add    %rax,%rax
  401741:	48 01 d0             	add    %rdx,%rax
  401744:	48 c1 e0 03          	shl    $0x3,%rax
  401748:	48 01 e8             	add    %rbp,%rax
  40174b:	48 8d 88 20 ff ff ff 	lea    -0xe0(%rax),%rcx
  401752:	48 83 ec 18          	sub    $0x18,%rsp
  401756:	48 89 e6             	mov    %rsp,%rsi
  401759:	48 8b 01             	mov    (%rcx),%rax
  40175c:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  401760:	48 89 06             	mov    %rax,(%rsi)
  401763:	48 89 56 08          	mov    %rdx,0x8(%rsi)
  401767:	48 8b 41 10          	mov    0x10(%rcx),%rax
  40176b:	48 89 46 10          	mov    %rax,0x10(%rsi)
  40176f:	e8 72 fa ff ff       	call   4011e6 <spice_amount>
  401774:	48 83 c4 20          	add    $0x20,%rsp
  401778:	8b 95 14 ff ff ff    	mov    -0xec(%rbp),%edx
  40177e:	29 c2                	sub    %eax,%edx
  401780:	89 95 14 ff ff ff    	mov    %edx,-0xec(%rbp)
  401786:	83 85 10 ff ff ff 01 	addl   $0x1,-0xf0(%rbp)
  40178d:	83 bd 10 ff ff ff 07 	cmpl   $0x7,-0xf0(%rbp)
  401794:	7e 98                	jle    40172e <main+0x4a1>
  401796:	83 bd 14 ff ff ff 00 	cmpl   $0x0,-0xec(%rbp)
  40179d:	79 0c                	jns    4017ab <main+0x51e>
  40179f:	bf b8 23 40 00       	mov    $0x4023b8,%edi
  4017a4:	e8 97 f8 ff ff       	call   401040 <puts@plt>
  4017a9:	eb 33                	jmp    4017de <main+0x551>
  4017ab:	83 bd 14 ff ff ff 00 	cmpl   $0x0,-0xec(%rbp)
  4017b2:	75 0c                	jne    4017c0 <main+0x533>
  4017b4:	bf 30 24 40 00       	mov    $0x402430,%edi
  4017b9:	e8 82 f8 ff ff       	call   401040 <puts@plt>
  4017be:	eb 1e                	jmp    4017de <main+0x551>
  4017c0:	8b 85 14 ff ff ff    	mov    -0xec(%rbp),%eax
  4017c6:	89 c6                	mov    %eax,%esi
  4017c8:	bf a8 24 40 00       	mov    $0x4024a8,%edi
  4017cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4017d2:	e8 a9 f8 ff ff       	call   401080 <printf@plt>
  4017d7:	eb 05                	jmp    4017de <main+0x551>
  4017d9:	e9 b6 fb ff ff       	jmp    401394 <main+0x107>
  4017de:	83 bd 14 ff ff ff 00 	cmpl   $0x0,-0xec(%rbp)
  4017e5:	0f 9e c0             	setle  %al
  4017e8:	0f b6 c0             	movzbl %al,%eax
  4017eb:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4017ef:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4017f6:	00 00 
  4017f8:	74 05                	je     4017ff <main+0x572>
  4017fa:	e8 61 f8 ff ff       	call   401060 <__stack_chk_fail@plt>
  4017ff:	c9                   	leave  
  401800:	c3                   	ret    

Disassembly of section .fini:

0000000000401804 <_fini>:
  401804:	f3 0f 1e fa          	endbr64 
  401808:	48 83 ec 08          	sub    $0x8,%rsp
  40180c:	48 83 c4 08          	add    $0x8,%rsp
  401810:	c3                   	ret    
