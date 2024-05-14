
task:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <.init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 2f 00 00 	mov    0x2fe9(%rip),%rax        # 403ff8 <strcat@plt+0x2e38>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <getenv@plt-0xea>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 404008 <strcat@plt+0x2e48>
  401026:	f2 ff 25 e3 2f 00 00 	bnd jmp *0x2fe3(%rip)        # 404010 <strcat@plt+0x2e50>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	push   $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	push   $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	push   $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	push   $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	push   $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <getenv@plt-0xe0>
  4010ff:	90                   	nop

Disassembly of section .plt.sec:

0000000000401100 <getenv@plt>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	f2 ff 25 0d 2f 00 00 	bnd jmp *0x2f0d(%rip)        # 404018 <strcat@plt+0x2e58>
  40110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401110 <localtime@plt>:
  401110:	f3 0f 1e fa          	endbr64 
  401114:	f2 ff 25 05 2f 00 00 	bnd jmp *0x2f05(%rip)        # 404020 <strcat@plt+0x2e60>
  40111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401120 <puts@plt>:
  401120:	f3 0f 1e fa          	endbr64 
  401124:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 404028 <strcat@plt+0x2e68>
  40112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401130 <strlen@plt>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 404030 <strcat@plt+0x2e70>
  40113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401140 <printf@plt>:
  401140:	f3 0f 1e fa          	endbr64 
  401144:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 404038 <strcat@plt+0x2e78>
  40114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401150 <memset@plt>:
  401150:	f3 0f 1e fa          	endbr64 
  401154:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 404040 <strcat@plt+0x2e80>
  40115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401160 <strcspn@plt>:
  401160:	f3 0f 1e fa          	endbr64 
  401164:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 404048 <strcat@plt+0x2e88>
  40116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401170 <fgets@plt>:
  401170:	f3 0f 1e fa          	endbr64 
  401174:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 404050 <strcat@plt+0x2e90>
  40117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401180 <strcmp@plt>:
  401180:	f3 0f 1e fa          	endbr64 
  401184:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 404058 <strcat@plt+0x2e98>
  40118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401190 <time@plt>:
  401190:	f3 0f 1e fa          	endbr64 
  401194:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 404060 <strcat@plt+0x2ea0>
  40119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011a0 <fflush@plt>:
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	f2 ff 25 bd 2e 00 00 	bnd jmp *0x2ebd(%rip)        # 404068 <strcat@plt+0x2ea8>
  4011ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011b0 <strftime@plt>:
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 404070 <strcat@plt+0x2eb0>
  4011bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011c0 <strcat@plt>:
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	f2 ff 25 ad 2e 00 00 	bnd jmp *0x2ead(%rip)        # 404078 <strcat@plt+0x2eb8>
  4011cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000004011d0 <.text>:
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	31 ed                	xor    %ebp,%ebp
  4011d6:	49 89 d1             	mov    %rdx,%r9
  4011d9:	5e                   	pop    %rsi
  4011da:	48 89 e2             	mov    %rsp,%rdx
  4011dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4011e1:	50                   	push   %rax
  4011e2:	54                   	push   %rsp
  4011e3:	45 31 c0             	xor    %r8d,%r8d
  4011e6:	31 c9                	xor    %ecx,%ecx
  4011e8:	48 c7 c7 02 13 40 00 	mov    $0x401302,%rdi
  4011ef:	ff 15 fb 2d 00 00    	call   *0x2dfb(%rip)        # 403ff0 <strcat@plt+0x2e30>
  4011f5:	f4                   	hlt    
  4011f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4011fd:	00 00 00 
  401200:	f3 0f 1e fa          	endbr64 
  401204:	c3                   	ret    
  401205:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40120c:	00 00 00 
  40120f:	90                   	nop
  401210:	b8 e0 51 40 00       	mov    $0x4051e0,%eax
  401215:	48 3d e0 51 40 00    	cmp    $0x4051e0,%rax
  40121b:	74 13                	je     401230 <strcat@plt+0x70>
  40121d:	b8 00 00 00 00       	mov    $0x0,%eax
  401222:	48 85 c0             	test   %rax,%rax
  401225:	74 09                	je     401230 <strcat@plt+0x70>
  401227:	bf e0 51 40 00       	mov    $0x4051e0,%edi
  40122c:	ff e0                	jmp    *%rax
  40122e:	66 90                	xchg   %ax,%ax
  401230:	c3                   	ret    
  401231:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401238:	00 00 00 00 
  40123c:	0f 1f 40 00          	nopl   0x0(%rax)
  401240:	be e0 51 40 00       	mov    $0x4051e0,%esi
  401245:	48 81 ee e0 51 40 00 	sub    $0x4051e0,%rsi
  40124c:	48 89 f0             	mov    %rsi,%rax
  40124f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401253:	48 c1 f8 03          	sar    $0x3,%rax
  401257:	48 01 c6             	add    %rax,%rsi
  40125a:	48 d1 fe             	sar    %rsi
  40125d:	74 11                	je     401270 <strcat@plt+0xb0>
  40125f:	b8 00 00 00 00       	mov    $0x0,%eax
  401264:	48 85 c0             	test   %rax,%rax
  401267:	74 07                	je     401270 <strcat@plt+0xb0>
  401269:	bf e0 51 40 00       	mov    $0x4051e0,%edi
  40126e:	ff e0                	jmp    *%rax
  401270:	c3                   	ret    
  401271:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401278:	00 00 00 00 
  40127c:	0f 1f 40 00          	nopl   0x0(%rax)
  401280:	f3 0f 1e fa          	endbr64 
  401284:	80 3d 6d 3f 00 00 00 	cmpb   $0x0,0x3f6d(%rip)        # 4051f8 <stdin@GLIBC_2.2.5+0x8>
  40128b:	75 13                	jne    4012a0 <strcat@plt+0xe0>
  40128d:	55                   	push   %rbp
  40128e:	48 89 e5             	mov    %rsp,%rbp
  401291:	e8 7a ff ff ff       	call   401210 <strcat@plt+0x50>
  401296:	c6 05 5b 3f 00 00 01 	movb   $0x1,0x3f5b(%rip)        # 4051f8 <stdin@GLIBC_2.2.5+0x8>
  40129d:	5d                   	pop    %rbp
  40129e:	c3                   	ret    
  40129f:	90                   	nop
  4012a0:	c3                   	ret    
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	eb 8a                	jmp    401240 <strcat@plt+0x80>
  4012b6:	f3 0f 1e fa          	endbr64 
  4012ba:	55                   	push   %rbp
  4012bb:	48 89 e5             	mov    %rsp,%rbp
  4012be:	48 83 ec 10          	sub    $0x10,%rsp
  4012c2:	48 8d 05 3b 0d 00 00 	lea    0xd3b(%rip),%rax        # 402004 <strcat@plt+0xe44>
  4012c9:	48 89 c7             	mov    %rax,%rdi
  4012cc:	e8 2f fe ff ff       	call   401100 <getenv@plt>
  4012d1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4012d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4012d9:	48 89 c6             	mov    %rax,%rsi
  4012dc:	48 8d 05 26 0d 00 00 	lea    0xd26(%rip),%rax        # 402009 <strcat@plt+0xe49>                 Your flag
  4012e3:	48 89 c7             	mov    %rax,%rdi
  4012e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4012eb:	e8 50 fe ff ff       	call   401140 <printf@plt>
  4012f0:	48 8b 05 e9 3e 00 00 	mov    0x3ee9(%rip),%rax        # 4051e0 <stdout@GLIBC_2.2.5>
  4012f7:	48 89 c7             	mov    %rax,%rdi
  4012fa:	e8 a1 fe ff ff       	call   4011a0 <fflush@plt>
  4012ff:	90                   	nop
  401300:	c9                   	leave  
  401301:	c3                   	ret    
  401302:	f3 0f 1e fa          	endbr64 
  401306:	55                   	push   %rbp
  401307:	48 89 e5             	mov    %rsp,%rbp
  40130a:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
  401311:	48 8d 05 88 2d 00 00 	lea    0x2d88(%rip),%rax        # 4040a0 <strcat@plt+0x2ee0>
  401318:	48 89 c7             	mov    %rax,%rdi
  40131b:	e8 00 fe ff ff       	call   401120 <puts@plt>
  401320:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
  401327:	00 
  401328:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  40132f:	00 
  401330:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  401337:	00 00 00 00 
  40133b:	48 c7 85 c8 fe ff ff 	movq   $0x0,-0x138(%rbp)
  401342:	00 00 00 00 
  401346:	48 c7 85 d0 fe ff ff 	movq   $0x0,-0x130(%rbp)
  40134d:	00 00 00 00 
  401351:	48 c7 85 d8 fe ff ff 	movq   $0x0,-0x128(%rbp)
  401358:	00 00 00 00 
  40135c:	48 c7 85 e0 fe ff ff 	movq   $0x0,-0x120(%rbp)
  401363:	00 00 00 00 
  401367:	48 c7 85 e8 fe ff ff 	movq   $0x0,-0x118(%rbp)
  40136e:	00 00 00 00 
  401372:	48 c7 85 f0 fe ff ff 	movq   $0x0,-0x110(%rbp)
  401379:	00 00 00 00 
  40137d:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
  401384:	00 00 00 00 
  401388:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
  40138f:	00 00 00 00 
  401393:	48 c7 85 08 ff ff ff 	movq   $0x0,-0xf8(%rbp)
  40139a:	00 00 00 00 
  40139e:	48 c7 85 10 ff ff ff 	movq   $0x0,-0xf0(%rbp)
  4013a5:	00 00 00 00 
  4013a9:	48 c7 85 18 ff ff ff 	movq   $0x0,-0xe8(%rbp)
  4013b0:	00 00 00 00 
  4013b4:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
  4013bb:	00 00 00 00 
  4013bf:	48 c7 85 28 ff ff ff 	movq   $0x0,-0xd8(%rbp)
  4013c6:	00 00 00 00 
  4013ca:	48 c7 85 30 ff ff ff 	movq   $0x0,-0xd0(%rbp)
  4013d1:	00 00 00 00 
  4013d5:	48 c7 85 38 ff ff ff 	movq   $0x0,-0xc8(%rbp)
  4013dc:	00 00 00 00 
  4013e0:	48 c7 85 40 ff ff ff 	movq   $0x0,-0xc0(%rbp)
  4013e7:	00 00 00 00 
  4013eb:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  4013f2:	00 00 00 00 
  4013f6:	48 c7 85 50 ff ff ff 	movq   $0x0,-0xb0(%rbp)
  4013fd:	00 00 00 00 
  401401:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
  401408:	00 00 00 00 
  40140c:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
  401413:	00 00 00 00 
  401417:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
  40141e:	00 00 00 00 
  401422:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
  401429:	00 00 00 00 
  40142d:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
  401434:	00 00 00 00 
  401438:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
  40143f:	00 
  401440:	48 c7 45 88 00 00 00 	movq   $0x0,-0x78(%rbp)
  401447:	00 
  401448:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
  40144f:	00 
  401450:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
  401457:	00 
  401458:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  40145f:	00 
  401460:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  401467:	00 
  401468:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  40146f:	00 
  401470:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  401477:	00 
  401478:	bf 00 00 00 00       	mov    $0x0,%edi
  40147d:	e8 0e fd ff ff       	call   401190 <time@plt>
  401482:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401486:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  40148a:	48 89 c7             	mov    %rax,%rdi
  40148d:	e8 7e fc ff ff       	call   401110 <localtime@plt>
  401492:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401496:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40149a:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  40149e:	48 89 d1             	mov    %rdx,%rcx
  4014a1:	48 8d 15 70 0b 00 00 	lea    0xb70(%rip),%rdx        # 402018 <strcat@plt+0xe58>
  4014a8:	be 14 00 00 00       	mov    $0x14,%esi
  4014ad:	48 89 c7             	mov    %rax,%rdi
  4014b0:	e8 fb fc ff ff       	call   4011b0 <strftime@plt>
  4014b5:	48 8d 05 69 0b 00 00 	lea    0xb69(%rip),%rax        # 402025 <strcat@plt+0xe65>
  4014bc:	48 89 c7             	mov    %rax,%rdi
  4014bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c4:	e8 77 fc ff ff       	call   401140 <printf@plt>
  4014c9:	48 8b 05 10 3d 00 00 	mov    0x3d10(%rip),%rax        # 4051e0 <stdout@GLIBC_2.2.5>
  4014d0:	48 89 c7             	mov    %rax,%rdi
  4014d3:	e8 c8 fc ff ff       	call   4011a0 <fflush@plt>
  4014d8:	48 8b 15 11 3d 00 00 	mov    0x3d11(%rip),%rdx        # 4051f0 <stdin@GLIBC_2.2.5>
  4014df:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4014e3:	be 10 00 00 00       	mov    $0x10,%esi
  4014e8:	48 89 c7             	mov    %rax,%rdi
  4014eb:	e8 80 fc ff ff       	call   401170 <fgets@plt>
  4014f0:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4014f4:	48 8d 15 3c 0b 00 00 	lea    0xb3c(%rip),%rdx        # 402037 <strcat@plt+0xe77>
  4014fb:	48 89 d6             	mov    %rdx,%rsi
  4014fe:	48 89 c7             	mov    %rax,%rdi
  401501:	e8 5a fc ff ff       	call   401160 <strcspn@plt>
  401506:	c6 44 05 c0 00       	movb   $0x0,-0x40(%rbp,%rax,1)
  40150b:	c6 05 8e 3c 00 00 00 	movb   $0x0,0x3c8e(%rip)        # 4051a0 <strcat@plt+0x3fe0>
  401512:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401516:	48 8d 15 1c 0b 00 00 	lea    0xb1c(%rip),%rdx        # 402039 <strcat@plt+0xe79>
  40151d:	48 89 d1             	mov    %rdx,%rcx
  401520:	48 8d 15 d7 3b 00 00 	lea    0x3bd7(%rip),%rdx        # 4050fe <strcat@plt+0x3f3e>
  401527:	48 89 c6             	mov    %rax,%rsi
  40152a:	48 8d 05 18 0b 00 00 	lea    0xb18(%rip),%rax        # 402049 <strcat@plt+0xe89>
  401531:	48 89 c7             	mov    %rax,%rdi
  401534:	b8 00 00 00 00       	mov    $0x0,%eax
  401539:	e8 02 fc ff ff       	call   401140 <printf@plt>
  40153e:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
  401545:	ba 00 01 00 00       	mov    $0x100,%edx
  40154a:	be 00 00 00 00       	mov    $0x0,%esi
  40154f:	48 89 c7             	mov    %rax,%rdi
  401552:	e8 f9 fb ff ff       	call   401150 <memset@plt>
  401557:	ba 80 00 00 00       	mov    $0x80,%edx
  40155c:	be 00 00 00 00       	mov    $0x0,%esi
  401561:	48 8d 05 b8 3b 00 00 	lea    0x3bb8(%rip),%rax        # 405120 <strcat@plt+0x3f60>
  401568:	48 89 c7             	mov    %rax,%rdi
  40156b:	e8 e0 fb ff ff       	call   401150 <memset@plt>
  401570:	bf 00 00 00 00       	mov    $0x0,%edi
  401575:	e8 16 fc ff ff       	call   401190 <time@plt>
  40157a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40157e:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  401582:	48 89 c7             	mov    %rax,%rdi
  401585:	e8 86 fb ff ff       	call   401110 <localtime@plt>
  40158a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40158e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401592:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401596:	48 89 d1             	mov    %rdx,%rcx
  401599:	48 8d 15 78 0a 00 00 	lea    0xa78(%rip),%rdx        # 402018 <strcat@plt+0xe58>
  4015a0:	be 14 00 00 00       	mov    $0x14,%esi
  4015a5:	48 89 c7             	mov    %rax,%rdi
  4015a8:	e8 03 fc ff ff       	call   4011b0 <strftime@plt>
  4015ad:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  4015b1:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  4015b5:	48 89 c6             	mov    %rax,%rsi
  4015b8:	48 8d 05 97 0a 00 00 	lea    0xa97(%rip),%rax        # 402056 <strcat@plt+0xe96>
  4015bf:	48 89 c7             	mov    %rax,%rdi
  4015c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c7:	e8 74 fb ff ff       	call   401140 <printf@plt>
  4015cc:	48 8b 05 0d 3c 00 00 	mov    0x3c0d(%rip),%rax        # 4051e0 <stdout@GLIBC_2.2.5>
  4015d3:	48 89 c7             	mov    %rax,%rdi
  4015d6:	e8 c5 fb ff ff       	call   4011a0 <fflush@plt>
  4015db:	48 8b 15 0e 3c 00 00 	mov    0x3c0e(%rip),%rdx        # 4051f0 <stdin@GLIBC_2.2.5>
  4015e2:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
  4015e9:	be 00 01 00 00       	mov    $0x100,%esi
  4015ee:	48 89 c7             	mov    %rax,%rdi
  4015f1:	e8 7a fb ff ff       	call   401170 <fgets@plt>
  4015f6:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
  4015fd:	48 8d 15 33 0a 00 00 	lea    0xa33(%rip),%rdx        # 402037 <strcat@plt+0xe77>
  401604:	48 89 d6             	mov    %rdx,%rsi
  401607:	48 89 c7             	mov    %rax,%rdi
  40160a:	e8 51 fb ff ff       	call   401160 <strcspn@plt>
  40160f:	c6 84 05 c0 fe ff ff 	movb   $0x0,-0x140(%rbp,%rax,1)
  401616:	00 
  401617:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax                                        -0x140(%rbp)
  40161e:	48 8d 15 3b 0a 00 00 	lea    0xa3b(%rip),%rdx        # 402060 <strcat@plt+0xea0>      0xa3b(%rip) = q
  401625:	48 89 d6             	mov    %rdx,%rsi
  401628:	48 89 c7             	mov    %rax,%rdi
  40162b:	e8 50 fb ff ff       	call   401180 <strcmp@plt>                                      strcmp
  401630:	85 c0                	test   %eax,%eax
  401632:	0f 84 1b 01 00 00    	je     401753 <strcat@plt+0x593>                                break
  401638:	bf 00 00 00 00       	mov    $0x0,%edi
  40163d:	e8 4e fb ff ff       	call   401190 <time@plt>
  401642:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401646:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  40164a:	48 89 c7             	mov    %rax,%rdi
  40164d:	e8 be fa ff ff       	call   401110 <localtime@plt>
  401652:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401656:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40165a:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  40165e:	48 89 d1             	mov    %rdx,%rcx
  401661:	48 8d 15 b0 09 00 00 	lea    0x9b0(%rip),%rdx        # 402018 <strcat@plt+0xe58>
  401668:	be 14 00 00 00       	mov    $0x14,%esi
  40166d:	48 89 c7             	mov    %rax,%rdi
  401670:	e8 3b fb ff ff       	call   4011b0 <strftime@plt>
  401675:	48 8d 05 a4 3a 00 00 	lea    0x3aa4(%rip),%rax        # 405120 <strcat@plt+0x3f60>
  40167c:	48 89 c7             	mov    %rax,%rdi
  40167f:	e8 ac fa ff ff       	call   401130 <strlen@plt>
  401684:	48 89 c2             	mov    %rax,%rdx
  401687:	48 8d 05 92 3a 00 00 	lea    0x3a92(%rip),%rax        # 405120 <strcat@plt+0x3f60>
  40168e:	48 01 d0             	add    %rdx,%rax
  401691:	48 be 45 76 65 72 79 	movabs $0x656e6f7972657645,%rsi
  401698:	6f 6e 65 
  40169b:	48 bf 20 73 61 79 73 	movabs $0x22207379617320,%rdi
  4016a2:	20 22 00 
  4016a5:	48 89 30             	mov    %rsi,(%rax)
  4016a8:	48 89 78 08          	mov    %rdi,0x8(%rax)
  4016ac:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
  4016b3:	48 89 c6             	mov    %rax,%rsi
  4016b6:	48 8d 05 63 3a 00 00 	lea    0x3a63(%rip),%rax        # 405120 <strcat@plt+0x3f60>
  4016bd:	48 89 c7             	mov    %rax,%rdi
  4016c0:	e8 fb fa ff ff       	call   4011c0 <strcat@plt>
  4016c5:	48 8d 05 54 3a 00 00 	lea    0x3a54(%rip),%rax        # 405120 <strcat@plt+0x3f60>
  4016cc:	48 89 c7             	mov    %rax,%rdi
  4016cf:	e8 5c fa ff ff       	call   401130 <strlen@plt>
  4016d4:	48 89 c2             	mov    %rax,%rdx
  4016d7:	48 8d 05 42 3a 00 00 	lea    0x3a42(%rip),%rax        # 405120 <strcat@plt+0x3f60>
  4016de:	48 01 d0             	add    %rdx,%rax
  4016e1:	48 be 22 2c 20 62 75 	movabs $0x7920747562202c22,%rsi
  4016e8:	74 20 79 
  4016eb:	48 bf 6f 75 20 6e 65 	movabs $0x206465656e20756f,%rdi
  4016f2:	65 64 20 
  4016f5:	48 89 30             	mov    %rsi,(%rax)
  4016f8:	48 89 78 08          	mov    %rdi,0x8(%rax)
  4016fc:	48 be 74 6f 20 62 75 	movabs $0x6120797562206f74,%rsi
  401703:	79 20 61 
  401706:	48 bf 6e 20 65 6c 65 	movabs $0x616870656c65206e,%rdi
  40170d:	70 68 61 
  401710:	48 89 70 10          	mov    %rsi,0x10(%rax)
  401714:	48 89 78 18          	mov    %rdi,0x18(%rax)
  401718:	66 c7 40 20 6e 74    	movw   $0x746e,0x20(%rax)
  40171e:	c6 40 22 00          	movb   $0x0,0x22(%rax)
  401722:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401726:	48 8d 15 f3 39 00 00 	lea    0x39f3(%rip),%rdx        # 405120 <strcat@plt+0x3f60>
  40172d:	48 89 d1             	mov    %rdx,%rcx
  401730:	48 8d 15 c7 39 00 00 	lea    0x39c7(%rip),%rdx        # 4050fe <strcat@plt+0x3f3e>
  401737:	48 89 c6             	mov    %rax,%rsi
  40173a:	48 8d 05 08 09 00 00 	lea    0x908(%rip),%rax        # 402049 <strcat@plt+0xe89>
  401741:	48 89 c7             	mov    %rax,%rdi
  401744:	b8 00 00 00 00       	mov    $0x0,%eax
  401749:	e8 f2 f9 ff ff       	call   401140 <printf@plt>
  40174e:	e9 eb fd ff ff       	jmp    40153e <strcat@plt+0x37e>
  401753:	90                   	nop
  401754:	0f b6 05 45 3a 00 00 	movzbl 0x3a45(%rip),%eax        # 4051a0 <strcat@plt+0x3fe0>
  40175b:	84 c0                	test   %al,%al
  40175d:	74 0a                	je     401769 <strcat@plt+0x5a9>
  40175f:	b8 00 00 00 00       	mov    $0x0,%eax
  401764:	e8 4d fb ff ff       	call   4012b6 <strcat@plt+0xf6>                                  give flag
  401769:	b8 00 00 00 00       	mov    $0x0,%eax
  40176e:	c9                   	leave  
  40176f:	c3                   	ret    

Disassembly of section .fini:

0000000000401770 <.fini>:
  401770:	f3 0f 1e fa          	endbr64 
  401774:	48 83 ec 08          	sub    $0x8,%rsp
  401778:	48 83 c4 08          	add    $0x8,%rsp
  40177c:	c3                   	ret    
