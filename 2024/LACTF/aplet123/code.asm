
aplet123:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    $0x8,%rsp
  401004:	48 8b 05 d5 2f 00 00 	mov    0x2fd5(%rip),%rax        # 403fe0 <__gmon_start__@Base>
  40100b:	48 85 c0             	test   %rax,%rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	call   *%rax
  401012:	48 83 c4 08          	add    $0x8,%rsp
  401016:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <puts@plt-0x10>:
  401020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <puts@plt>:
  401030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 404000 <puts@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <__stack_chk_fail@plt>:
  401040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 404008 <__stack_chk_fail@GLIBC_2.4>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <setbuf@plt>:
  401050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 404010 <setbuf@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <printf@plt>:
  401060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 404018 <printf@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <srand@plt>:
  401070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 404020 <srand@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <fgets@plt>:
  401080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 404028 <fgets@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <strcmp@plt>:
  401090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 404030 <strcmp@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <time@plt>:
  4010a0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 404038 <time@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <gets@plt>:
  4010b0:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 404040 <gets@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <fopen@plt>:
  4010c0:	ff 25 82 2f 00 00    	jmp    *0x2f82(%rip)        # 404048 <fopen@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <sleep@plt>:
  4010d0:	ff 25 7a 2f 00 00    	jmp    *0x2f7a(%rip)        # 404050 <sleep@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <strstr@plt>:
  4010e0:	ff 25 72 2f 00 00    	jmp    *0x2f72(%rip)        # 404058 <strstr@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <rand@plt>:
  4010f0:	ff 25 6a 2f 00 00    	jmp    *0x2f6a(%rip)        # 404060 <rand@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401100 <_start>:
  401100:	31 ed                	xor    %ebp,%ebp
  401102:	49 89 d1             	mov    %rdx,%r9
  401105:	5e                   	pop    %rsi
  401106:	48 89 e2             	mov    %rsp,%rdx
  401109:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40110d:	50                   	push   %rax
  40110e:	54                   	push   %rsp
  40110f:	45 31 c0             	xor    %r8d,%r8d
  401112:	31 c9                	xor    %ecx,%ecx
  401114:	48 c7 c7 61 12 40 00 	mov    $0x401261,%rdi
  40111b:	ff 15 b7 2e 00 00    	call   *0x2eb7(%rip)        # 403fd8 <__libc_start_main@GLIBC_2.34>
  401121:	f4                   	hlt    
  401122:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  401129:	00 00 00 
  40112c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401130 <_dl_relocate_static_pie>:
  401130:	c3                   	ret    
  401131:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  401138:	00 00 00 
  40113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401140 <deregister_tm_clones>:
  401140:	b8 78 40 40 00       	mov    $0x404078,%eax
  401145:	48 3d 78 40 40 00    	cmp    $0x404078,%rax
  40114b:	74 13                	je     401160 <deregister_tm_clones+0x20>
  40114d:	b8 00 00 00 00       	mov    $0x0,%eax
  401152:	48 85 c0             	test   %rax,%rax
  401155:	74 09                	je     401160 <deregister_tm_clones+0x20>
  401157:	bf 78 40 40 00       	mov    $0x404078,%edi
  40115c:	ff e0                	jmp    *%rax
  40115e:	66 90                	xchg   %ax,%ax
  401160:	c3                   	ret    
  401161:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401168:	00 00 00 00 
  40116c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401170 <register_tm_clones>:
  401170:	be 78 40 40 00       	mov    $0x404078,%esi
  401175:	48 81 ee 78 40 40 00 	sub    $0x404078,%rsi
  40117c:	48 89 f0             	mov    %rsi,%rax
  40117f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401183:	48 c1 f8 03          	sar    $0x3,%rax
  401187:	48 01 c6             	add    %rax,%rsi
  40118a:	48 d1 fe             	sar    %rsi
  40118d:	74 11                	je     4011a0 <register_tm_clones+0x30>
  40118f:	b8 00 00 00 00       	mov    $0x0,%eax
  401194:	48 85 c0             	test   %rax,%rax
  401197:	74 07                	je     4011a0 <register_tm_clones+0x30>
  401199:	bf 78 40 40 00       	mov    $0x404078,%edi
  40119e:	ff e0                	jmp    *%rax
  4011a0:	c3                   	ret    
  4011a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4011a8:	00 00 00 00 
  4011ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011b0 <__do_global_dtors_aux>:
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	80 3d c5 2e 00 00 00 	cmpb   $0x0,0x2ec5(%rip)        # 404080 <completed.0>
  4011bb:	75 13                	jne    4011d0 <__do_global_dtors_aux+0x20>
  4011bd:	55                   	push   %rbp
  4011be:	48 89 e5             	mov    %rsp,%rbp
  4011c1:	e8 7a ff ff ff       	call   401140 <deregister_tm_clones>
  4011c6:	c6 05 b3 2e 00 00 01 	movb   $0x1,0x2eb3(%rip)        # 404080 <completed.0>
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

00000000004011e6 <print_flag>:
  4011e6:	55                   	push   %rbp
  4011e7:	48 89 e5             	mov    %rsp,%rbp
  4011ea:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  4011f1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4011f8:	00 00 
  4011fa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4011fe:	31 c0                	xor    %eax,%eax
  401200:	48 8d 05 fd 0d 00 00 	lea    0xdfd(%rip),%rax        # 402004 <_IO_stdin_used+0x4>
  401207:	48 89 c6             	mov    %rax,%rsi
  40120a:	48 8d 05 f5 0d 00 00 	lea    0xdf5(%rip),%rax        # 402006 <_IO_stdin_used+0x6>
  401211:	48 89 c7             	mov    %rax,%rdi
  401214:	e8 a7 fe ff ff       	call   4010c0 <fopen@plt>
  401219:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
  401220:	48 8b 95 e8 fe ff ff 	mov    -0x118(%rbp),%rdx
  401227:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40122e:	be 00 01 00 00       	mov    $0x100,%esi
  401233:	48 89 c7             	mov    %rax,%rdi
  401236:	e8 45 fe ff ff       	call   401080 <fgets@plt>
  40123b:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401242:	48 89 c7             	mov    %rax,%rdi
  401245:	e8 e6 fd ff ff       	call   401030 <puts@plt>
  40124a:	90                   	nop
  40124b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40124f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401256:	00 00 
  401258:	74 05                	je     40125f <print_flag+0x79>
  40125a:	e8 e1 fd ff ff       	call   401040 <__stack_chk_fail@plt>
  40125f:	c9                   	leave  
  401260:	c3                   	ret    

0000000000401261 <main>:
  401261:	55                   	push   %rbp
  401262:	48 89 e5             	mov    %rsp,%rbp
  401265:	48 83 ec 60          	sub    $0x60,%rsp
  401269:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401270:	00 00 
  401272:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401276:	31 c0                	xor    %eax,%eax
  401278:	48 8b 05 f9 2d 00 00 	mov    0x2df9(%rip),%rax        # 404078 <stdout@GLIBC_2.2.5>
  40127f:	be 00 00 00 00       	mov    $0x0,%esi
  401284:	48 89 c7             	mov    %rax,%rdi
  401287:	e8 c4 fd ff ff       	call   401050 <setbuf@plt>
  40128c:	bf 00 00 00 00       	mov    $0x0,%edi
  401291:	e8 0a fe ff ff       	call   4010a0 <time@plt>
  401296:	89 c7                	mov    %eax,%edi
  401298:	e8 d3 fd ff ff       	call   401070 <srand@plt>
  40129d:	48 8d 05 5f 0e 00 00 	lea    0xe5f(%rip),%rax        # 402103 <_IO_stdin_used+0x103>
  4012a4:	48 89 c7             	mov    %rax,%rdi
  4012a7:	e8 84 fd ff ff       	call   401030 <puts@plt>
  4012ac:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  4012b0:	48 89 c7             	mov    %rax,%rdi
  4012b3:	e8 f8 fd ff ff       	call   4010b0 <gets@plt>
  4012b8:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  4012bc:	48 8d 15 46 0e 00 00 	lea    0xe46(%rip),%rdx        # 402109 <_IO_stdin_used+0x109>
  4012c3:	48 89 d6             	mov    %rdx,%rsi
  4012c6:	48 89 c7             	mov    %rax,%rdi
  4012c9:	e8 12 fe ff ff       	call   4010e0 <strstr@plt>
  4012ce:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  4012d2:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  4012d7:	74 21                	je     4012fa <main+0x99>
  4012d9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4012dd:	48 83 c0 04          	add    $0x4,%rax
  4012e1:	48 89 c6             	mov    %rax,%rsi
  4012e4:	48 8d 05 22 0e 00 00 	lea    0xe22(%rip),%rax        # 40210d <_IO_stdin_used+0x10d>
  4012eb:	48 89 c7             	mov    %rax,%rdi
  4012ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f3:	e8 68 fd ff ff       	call   401060 <printf@plt>
  4012f8:	eb b2                	jmp    4012ac <main+0x4b>
  4012fa:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  4012fe:	48 8d 15 1d 0e 00 00 	lea    0xe1d(%rip),%rdx        # 402122 <_IO_stdin_used+0x122>
  401305:	48 89 d6             	mov    %rdx,%rsi
  401308:	48 89 c7             	mov    %rax,%rdi
  40130b:	e8 80 fd ff ff       	call   401090 <strcmp@plt>
  401310:	85 c0                	test   %eax,%eax
  401312:	75 2d                	jne    401341 <main+0xe0>
  401314:	48 8d 05 1f 0e 00 00 	lea    0xe1f(%rip),%rax        # 40213a <_IO_stdin_used+0x13a>
  40131b:	48 89 c7             	mov    %rax,%rdi
  40131e:	e8 0d fd ff ff       	call   401030 <puts@plt>
  401323:	bf 05 00 00 00       	mov    $0x5,%edi
  401328:	e8 a3 fd ff ff       	call   4010d0 <sleep@plt>
  40132d:	48 8d 05 17 0e 00 00 	lea    0xe17(%rip),%rax        # 40214b <_IO_stdin_used+0x14b>
  401334:	48 89 c7             	mov    %rax,%rdi
  401337:	e8 f4 fc ff ff       	call   401030 <puts@plt>
  40133c:	e9 6b ff ff ff       	jmp    4012ac <main+0x4b>
  401341:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  401345:	48 8d 15 02 0e 00 00 	lea    0xe02(%rip),%rdx        # 40214e <_IO_stdin_used+0x14e>
  40134c:	48 89 d6             	mov    %rdx,%rsi
  40134f:	48 89 c7             	mov    %rax,%rdi
  401352:	e8 39 fd ff ff       	call   401090 <strcmp@plt>
  401357:	85 c0                	test   %eax,%eax
  401359:	75 26                	jne    401381 <main+0x120>
  40135b:	48 8d 05 ec 0d 00 00 	lea    0xdec(%rip),%rax        # 40214e <_IO_stdin_used+0x14e>
  401362:	48 89 c7             	mov    %rax,%rdi
  401365:	e8 c6 fc ff ff       	call   401030 <puts@plt>
  40136a:	90                   	nop
  40136b:	b8 00 00 00 00       	mov    $0x0,%eax
  401370:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401374:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40137b:	00 00 
  40137d:	74 55                	je     4013d4 <main+0x173>
  40137f:	eb 4e                	jmp    4013cf <main+0x16e>
  401381:	e8 6a fd ff ff       	call   4010f0 <rand@plt>
  401386:	48 63 c8             	movslq %eax,%rcx
  401389:	48 ba e1 83 0f 3e f8 	movabs $0xf83e0f83e0f83e1,%rdx
  401390:	e0 83 0f 
  401393:	48 89 c8             	mov    %rcx,%rax
  401396:	48 f7 e2             	mul    %rdx
  401399:	48 89 d0             	mov    %rdx,%rax
  40139c:	48 d1 e8             	shr    %rax
  40139f:	48 89 c2             	mov    %rax,%rdx
  4013a2:	48 c1 e2 05          	shl    $0x5,%rdx
  4013a6:	48 01 c2             	add    %rax,%rdx
  4013a9:	48 89 c8             	mov    %rcx,%rax
  4013ac:	48 29 d0             	sub    %rdx,%rax
  4013af:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4013b6:	00 
  4013b7:	48 8d 05 42 29 00 00 	lea    0x2942(%rip),%rax        # 403d00 <responses>
  4013be:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
  4013c2:	48 89 c7             	mov    %rax,%rdi
  4013c5:	e8 66 fc ff ff       	call   401030 <puts@plt>
  4013ca:	e9 dd fe ff ff       	jmp    4012ac <main+0x4b>
  4013cf:	e8 6c fc ff ff       	call   401040 <__stack_chk_fail@plt>
  4013d4:	c9                   	leave  
  4013d5:	c3                   	ret    

Disassembly of section .fini:

00000000004013d8 <_fini>:
  4013d8:	48 83 ec 08          	sub    $0x8,%rsp
  4013dc:	48 83 c4 08          	add    $0x8,%rsp
  4013e0:	c3                   	ret    
