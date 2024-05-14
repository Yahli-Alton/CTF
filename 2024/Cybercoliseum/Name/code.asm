
task:     file format elf64-x86-64


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

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 2f 00 00 	bnd jmp *0x2fe3(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010af:	90                   	nop

Disassembly of section .plt.sec:

00000000004010b0 <puts@plt>:
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	f2 ff 25 5d 2f 00 00 	bnd jmp *0x2f5d(%rip)        # 404018 <puts@GLIBC_2.2.5>
  4010bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010c0 <write@plt>:
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	f2 ff 25 55 2f 00 00 	bnd jmp *0x2f55(%rip)        # 404020 <write@GLIBC_2.2.5>
  4010cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010d0 <printf@plt>:
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	f2 ff 25 4d 2f 00 00 	bnd jmp *0x2f4d(%rip)        # 404028 <printf@GLIBC_2.2.5>
  4010db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010e0 <read@plt>:
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	f2 ff 25 45 2f 00 00 	bnd jmp *0x2f45(%rip)        # 404030 <read@GLIBC_2.2.5>
  4010eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010f0 <srand@plt>:
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	f2 ff 25 3d 2f 00 00 	bnd jmp *0x2f3d(%rip)        # 404038 <srand@GLIBC_2.2.5>
  4010fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401100 <putc@plt>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	f2 ff 25 35 2f 00 00 	bnd jmp *0x2f35(%rip)        # 404040 <putc@GLIBC_2.2.5>
  40110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401110 <time@plt>:
  401110:	f3 0f 1e fa          	endbr64 
  401114:	f2 ff 25 2d 2f 00 00 	bnd jmp *0x2f2d(%rip)        # 404048 <time@GLIBC_2.2.5>
  40111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401120 <fflush@plt>:
  401120:	f3 0f 1e fa          	endbr64 
  401124:	f2 ff 25 25 2f 00 00 	bnd jmp *0x2f25(%rip)        # 404050 <fflush@GLIBC_2.2.5>
  40112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401130 <_start>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	31 ed                	xor    %ebp,%ebp
  401136:	49 89 d1             	mov    %rdx,%r9
  401139:	5e                   	pop    %rsi
  40113a:	48 89 e2             	mov    %rsp,%rdx
  40113d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401141:	50                   	push   %rax
  401142:	54                   	push   %rsp
  401143:	45 31 c0             	xor    %r8d,%r8d
  401146:	31 c9                	xor    %ecx,%ecx
  401148:	48 c7 c7 ca 12 40 00 	mov    $0x4012ca,%rdi
  40114f:	ff 15 9b 2e 00 00    	call   *0x2e9b(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  401155:	f4                   	hlt    
  401156:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40115d:	00 00 00 

0000000000401160 <_dl_relocate_static_pie>:
  401160:	f3 0f 1e fa          	endbr64 
  401164:	c3                   	ret    
  401165:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40116c:	00 00 00 
  40116f:	90                   	nop

0000000000401170 <deregister_tm_clones>:
  401170:	b8 a8 52 40 00       	mov    $0x4052a8,%eax
  401175:	48 3d a8 52 40 00    	cmp    $0x4052a8,%rax
  40117b:	74 13                	je     401190 <deregister_tm_clones+0x20>
  40117d:	b8 00 00 00 00       	mov    $0x0,%eax
  401182:	48 85 c0             	test   %rax,%rax
  401185:	74 09                	je     401190 <deregister_tm_clones+0x20>
  401187:	bf a8 52 40 00       	mov    $0x4052a8,%edi
  40118c:	ff e0                	jmp    *%rax
  40118e:	66 90                	xchg   %ax,%ax
  401190:	c3                   	ret    
  401191:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401198:	00 00 00 00 
  40119c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011a0 <register_tm_clones>:
  4011a0:	be a8 52 40 00       	mov    $0x4052a8,%esi
  4011a5:	48 81 ee a8 52 40 00 	sub    $0x4052a8,%rsi
  4011ac:	48 89 f0             	mov    %rsi,%rax
  4011af:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4011b3:	48 c1 f8 03          	sar    $0x3,%rax
  4011b7:	48 01 c6             	add    %rax,%rsi
  4011ba:	48 d1 fe             	sar    %rsi
  4011bd:	74 11                	je     4011d0 <register_tm_clones+0x30>
  4011bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4011c4:	48 85 c0             	test   %rax,%rax
  4011c7:	74 07                	je     4011d0 <register_tm_clones+0x30>
  4011c9:	bf a8 52 40 00       	mov    $0x4052a8,%edi
  4011ce:	ff e0                	jmp    *%rax
  4011d0:	c3                   	ret    
  4011d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4011d8:	00 00 00 00 
  4011dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011e0 <__do_global_dtors_aux>:
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	80 3d c5 40 00 00 00 	cmpb   $0x0,0x40c5(%rip)        # 4052b0 <completed.0>
  4011eb:	75 13                	jne    401200 <__do_global_dtors_aux+0x20>
  4011ed:	55                   	push   %rbp
  4011ee:	48 89 e5             	mov    %rsp,%rbp
  4011f1:	e8 7a ff ff ff       	call   401170 <deregister_tm_clones>
  4011f6:	c6 05 b3 40 00 00 01 	movb   $0x1,0x40b3(%rip)        # 4052b0 <completed.0>
  4011fd:	5d                   	pop    %rbp
  4011fe:	c3                   	ret    
  4011ff:	90                   	nop
  401200:	c3                   	ret    
  401201:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401208:	00 00 00 00 
  40120c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401210 <frame_dummy>:
  401210:	f3 0f 1e fa          	endbr64 
  401214:	eb 8a                	jmp    4011a0 <register_tm_clones>

0000000000401216 <print_logo>:
  401216:	f3 0f 1e fa          	endbr64 
  40121a:	55                   	push   %rbp
  40121b:	48 89 e5             	mov    %rsp,%rbp
  40121e:	ba 87 11 00 00       	mov    $0x1187,%edx
  401223:	48 8d 05 56 2e 00 00 	lea    0x2e56(%rip),%rax        # 404080 <logo>
  40122a:	48 89 c6             	mov    %rax,%rsi
  40122d:	bf 01 00 00 00       	mov    $0x1,%edi
  401232:	e8 89 fe ff ff       	call   4010c0 <write@plt>
  401237:	48 8b 05 6a 40 00 00 	mov    0x406a(%rip),%rax        # 4052a8 <stdout@GLIBC_2.2.5>
  40123e:	48 89 c6             	mov    %rax,%rsi
  401241:	bf 0a 00 00 00       	mov    $0xa,%edi
  401246:	e8 b5 fe ff ff       	call   401100 <putc@plt>
  40124b:	90                   	nop
  40124c:	5d                   	pop    %rbp
  40124d:	c3                   	ret    
  40124e:	5f                   	pop    %rdi
  40124f:	c3                   	ret    
  401250:	5e                   	pop    %rsi
  401251:	c3                   	ret    
  401252:	5a                   	pop    %rdx
  401253:	c3                   	ret    

0000000000401254 <enter_name>:
  401254:	f3 0f 1e fa          	endbr64 
  401258:	55                   	push   %rbp
  401259:	48 89 e5             	mov    %rsp,%rbp
  40125c:	48 83 ec 10          	sub    $0x10,%rsp
  401260:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  401267:	00 
  401268:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  40126f:	00 
  401270:	48 8d 05 8d 0d 00 00 	lea    0xd8d(%rip),%rax        # 402004 <_IO_stdin_used+0x4>
  401277:	48 89 c7             	mov    %rax,%rdi
  40127a:	b8 00 00 00 00       	mov    $0x0,%eax
  40127f:	e8 4c fe ff ff       	call   4010d0 <printf@plt>
  401284:	48 8b 05 1d 40 00 00 	mov    0x401d(%rip),%rax        # 4052a8 <stdout@GLIBC_2.2.5>
  40128b:	48 89 c7             	mov    %rax,%rdi
  40128e:	e8 8d fe ff ff       	call   401120 <fflush@plt>
  401293:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  401297:	ba 00 01 00 00       	mov    $0x100,%edx
  40129c:	48 89 c6             	mov    %rax,%rsi
  40129f:	bf 00 00 00 00       	mov    $0x0,%edi
  4012a4:	e8 37 fe ff ff       	call   4010e0 <read@plt>
  4012a9:	48 8d 05 66 0d 00 00 	lea    0xd66(%rip),%rax        # 402016 <_IO_stdin_used+0x16>
  4012b0:	48 89 c7             	mov    %rax,%rdi
  4012b3:	e8 f8 fd ff ff       	call   4010b0 <puts@plt>
  4012b8:	48 8b 05 e9 3f 00 00 	mov    0x3fe9(%rip),%rax        # 4052a8 <stdout@GLIBC_2.2.5>
  4012bf:	48 89 c7             	mov    %rax,%rdi
  4012c2:	e8 59 fe ff ff       	call   401120 <fflush@plt>
  4012c7:	90                   	nop
  4012c8:	c9                   	leave  
  4012c9:	c3                   	ret    

00000000004012ca <main>:
  4012ca:	f3 0f 1e fa          	endbr64 
  4012ce:	55                   	push   %rbp
  4012cf:	48 89 e5             	mov    %rsp,%rbp
  4012d2:	bf 00 00 00 00       	mov    $0x0,%edi
  4012d7:	e8 34 fe ff ff       	call   401110 <time@plt>
  4012dc:	89 c7                	mov    %eax,%edi
  4012de:	e8 0d fe ff ff       	call   4010f0 <srand@plt>
  4012e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4012e8:	e8 29 ff ff ff       	call   401216 <print_logo>
  4012ed:	48 8d 05 2c 3f 00 00 	lea    0x3f2c(%rip),%rax        # 405220 <to_print>
  4012f4:	48 89 c6             	mov    %rax,%rsi
  4012f7:	48 8d 05 23 0d 00 00 	lea    0xd23(%rip),%rax        # 402021 <_IO_stdin_used+0x21>
  4012fe:	48 89 c7             	mov    %rax,%rdi
  401301:	b8 00 00 00 00       	mov    $0x0,%eax
  401306:	e8 c5 fd ff ff       	call   4010d0 <printf@plt>
  40130b:	b8 00 00 00 00       	mov    $0x0,%eax
  401310:	e8 3f ff ff ff       	call   401254 <enter_name>
  401315:	48 8d 05 0a 0d 00 00 	lea    0xd0a(%rip),%rax        # 402026 <_IO_stdin_used+0x26>
  40131c:	48 89 c7             	mov    %rax,%rdi
  40131f:	e8 8c fd ff ff       	call   4010b0 <puts@plt>
  401324:	b8 00 00 00 00       	mov    $0x0,%eax
  401329:	5d                   	pop    %rbp
  40132a:	c3                   	ret    

Disassembly of section .fini:

000000000040132c <_fini>:
  40132c:	f3 0f 1e fa          	endbr64 
  401330:	48 83 ec 08          	sub    $0x8,%rsp
  401334:	48 83 c4 08          	add    $0x8,%rsp
  401338:	c3                   	ret    
