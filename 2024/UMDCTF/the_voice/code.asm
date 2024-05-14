
the_voice:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 c9 2f 00 00 	mov    0x2fc9(%rip),%rax        # 403fd8 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	e9 e2 ff ff ff       	jmp    401020 <_init+0x20>
  40103e:	66 90                	xchg   %ax,%ax
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	e9 d2 ff ff ff       	jmp    401020 <_init+0x20>
  40104e:	66 90                	xchg   %ax,%ax
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	e9 c2 ff ff ff       	jmp    401020 <_init+0x20>
  40105e:	66 90                	xchg   %ax,%ax
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	e9 b2 ff ff ff       	jmp    401020 <_init+0x20>
  40106e:	66 90                	xchg   %ax,%ax
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	e9 a2 ff ff ff       	jmp    401020 <_init+0x20>
  40107e:	66 90                	xchg   %ax,%ax
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	e9 92 ff ff ff       	jmp    401020 <_init+0x20>
  40108e:	66 90                	xchg   %ax,%ax
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	e9 82 ff ff ff       	jmp    401020 <_init+0x20>
  40109e:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.sec:

00000000004010a0 <.plt.sec>:
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	ff 25 56 2f 00 00    	jmp    *0x2f56(%rip)        # 404000 <puts@GLIBC_2.2.5>
  4010aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	ff 25 4e 2f 00 00    	jmp    *0x2f4e(%rip)        # 404008 <__stack_chk_fail@GLIBC_2.4>
  4010ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	ff 25 46 2f 00 00    	jmp    *0x2f46(%rip)        # 404010 <setbuf@GLIBC_2.2.5>
  4010ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	ff 25 3e 2f 00 00    	jmp    *0x2f3e(%rip)        # 404018 <fgets@GLIBC_2.2.5>
  4010da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	ff 25 36 2f 00 00    	jmp    *0x2f36(%rip)        # 404020 <gets@GLIBC_2.2.5>
  4010ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	ff 25 2e 2f 00 00    	jmp    *0x2f2e(%rip)        # 404028 <fopen@GLIBC_2.2.5>
  4010fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401100:	f3 0f 1e fa          	endbr64 
  401104:	ff 25 26 2f 00 00    	jmp    *0x2f26(%rip)        # 404030 <atoi@GLIBC_2.2.5>
  40110a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401110 <_start>:
  401110:	f3 0f 1e fa          	endbr64 
  401114:	31 ed                	xor    %ebp,%ebp
  401116:	49 89 d1             	mov    %rdx,%r9
  401119:	5e                   	pop    %rsi
  40111a:	48 89 e2             	mov    %rsp,%rdx
  40111d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401121:	50                   	push   %rax
  401122:	54                   	push   %rsp
  401123:	45 31 c0             	xor    %r8d,%r8d
  401126:	31 c9                	xor    %ecx,%ecx
  401128:	48 c7 c7 66 12 40 00 	mov    $0x401266,%rdi
  40112f:	ff 15 9b 2e 00 00    	call   *0x2e9b(%rip)        # 403fd0 <__libc_start_main@GLIBC_2.34>
  401135:	f4                   	hlt    
  401136:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40113d:	00 00 00 

0000000000401140 <_dl_relocate_static_pie>:
  401140:	f3 0f 1e fa          	endbr64 
  401144:	c3                   	ret    
  401145:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40114c:	00 00 00 
  40114f:	90                   	nop

0000000000401150 <deregister_tm_clones>:
  401150:	b8 48 40 40 00       	mov    $0x404048,%eax
  401155:	48 3d 48 40 40 00    	cmp    $0x404048,%rax
  40115b:	74 13                	je     401170 <deregister_tm_clones+0x20>
  40115d:	b8 00 00 00 00       	mov    $0x0,%eax
  401162:	48 85 c0             	test   %rax,%rax
  401165:	74 09                	je     401170 <deregister_tm_clones+0x20>
  401167:	bf 48 40 40 00       	mov    $0x404048,%edi
  40116c:	ff e0                	jmp    *%rax
  40116e:	66 90                	xchg   %ax,%ax
  401170:	c3                   	ret    
  401171:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401178:	00 00 00 00 
  40117c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401180 <register_tm_clones>:
  401180:	be 48 40 40 00       	mov    $0x404048,%esi
  401185:	48 81 ee 48 40 40 00 	sub    $0x404048,%rsi
  40118c:	48 89 f0             	mov    %rsi,%rax
  40118f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401193:	48 c1 f8 03          	sar    $0x3,%rax
  401197:	48 01 c6             	add    %rax,%rsi
  40119a:	48 d1 fe             	sar    %rsi
  40119d:	74 11                	je     4011b0 <register_tm_clones+0x30>
  40119f:	b8 00 00 00 00       	mov    $0x0,%eax
  4011a4:	48 85 c0             	test   %rax,%rax
  4011a7:	74 07                	je     4011b0 <register_tm_clones+0x30>
  4011a9:	bf 48 40 40 00       	mov    $0x404048,%edi
  4011ae:	ff e0                	jmp    *%rax
  4011b0:	c3                   	ret    
  4011b1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4011b8:	00 00 00 00 
  4011bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011c0 <__do_global_dtors_aux>:
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	80 3d bd 2e 00 00 00 	cmpb   $0x0,0x2ebd(%rip)        # 404088 <completed.0>
  4011cb:	75 13                	jne    4011e0 <__do_global_dtors_aux+0x20>
  4011cd:	55                   	push   %rbp
  4011ce:	48 89 e5             	mov    %rsp,%rbp
  4011d1:	e8 7a ff ff ff       	call   401150 <deregister_tm_clones>
  4011d6:	c6 05 ab 2e 00 00 01 	movb   $0x1,0x2eab(%rip)        # 404088 <completed.0>
  4011dd:	5d                   	pop    %rbp
  4011de:	c3                   	ret    
  4011df:	90                   	nop
  4011e0:	c3                   	ret    
  4011e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4011e8:	00 00 00 00 
  4011ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011f0 <frame_dummy>:
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	eb 8a                	jmp    401180 <register_tm_clones>

00000000004011f6 <give_flag>:
  4011f6:	f3 0f 1e fa          	endbr64 
  4011fa:	55                   	push   %rbp
  4011fb:	48 89 e5             	mov    %rsp,%rbp
  4011fe:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401202:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401209:	00 00 
  40120b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40120f:	31 c0                	xor    %eax,%eax
  401211:	48 8d 05 f0 0d 00 00 	lea    0xdf0(%rip),%rax        # 402008 <_IO_stdin_used+0x8>
  401218:	48 89 c6             	mov    %rax,%rsi
  40121b:	48 8d 05 e8 0d 00 00 	lea    0xde8(%rip),%rax        # 40200a <_IO_stdin_used+0xa>
  401222:	48 89 c7             	mov    %rax,%rdi
  401225:	e8 c6 fe ff ff       	call   4010f0 <_init+0xf0>
  40122a:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  40122e:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  401232:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  401236:	be 64 00 00 00       	mov    $0x64,%esi
  40123b:	48 89 c7             	mov    %rax,%rdi
  40123e:	e8 8d fe ff ff       	call   4010d0 <_init+0xd0>
  401243:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  401247:	48 89 c7             	mov    %rax,%rdi
  40124a:	e8 51 fe ff ff       	call   4010a0 <_init+0xa0>
  40124f:	90                   	nop
  401250:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401254:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40125b:	00 00 
  40125d:	74 05                	je     401264 <give_flag+0x6e>
  40125f:	e8 4c fe ff ff       	call   4010b0 <_init+0xb0>
  401264:	c9                   	leave  
  401265:	c3                   	ret    

0000000000401266 <main>:
  401266:	f3 0f 1e fa          	endbr64 
  40126a:	55                   	push   %rbp
  40126b:	48 89 e5             	mov    %rsp,%rbp
  40126e:	48 83 ec 20          	sub    $0x20,%rsp
  401272:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401279:	00 00 
  40127b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40127f:	31 c0                	xor    %eax,%eax
  401281:	48 8b 05 e8 2d 00 00 	mov    0x2de8(%rip),%rax        # 404070 <stdin@GLIBC_2.2.5>
  401288:	be 00 00 00 00       	mov    $0x0,%esi
  40128d:	48 89 c7             	mov    %rax,%rdi
  401290:	e8 2b fe ff ff       	call   4010c0 <_init+0xc0>
  401295:	48 8b 05 c4 2d 00 00 	mov    0x2dc4(%rip),%rax        # 404060 <stdout@GLIBC_2.2.5>
  40129c:	be 00 00 00 00       	mov    $0x0,%esi
  4012a1:	48 89 c7             	mov    %rax,%rdi
  4012a4:	e8 17 fe ff ff       	call   4010c0 <_init+0xc0>
  4012a9:	48 8b 05 d0 2d 00 00 	mov    0x2dd0(%rip),%rax        # 404080 <stderr@GLIBC_2.2.5>
  4012b0:	be 00 00 00 00       	mov    $0x0,%esi
  4012b5:	48 89 c7             	mov    %rax,%rdi
  4012b8:	e8 03 fe ff ff       	call   4010c0 <_init+0xc0>
  4012bd:	48 8d 05 54 0d 00 00 	lea    0xd54(%rip),%rax        # 402018 <_IO_stdin_used+0x18>
  4012c4:	48 89 c7             	mov    %rax,%rdi
  4012c7:	e8 d4 fd ff ff       	call   4010a0 <_init+0xa0>
  4012cc:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4012d0:	48 89 c7             	mov    %rax,%rdi
  4012d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d8:	e8 03 fe ff ff       	call   4010e0 <_init+0xe0>
  4012dd:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4012e1:	48 89 c7             	mov    %rax,%rdi
  4012e4:	e8 17 fe ff ff       	call   401100 <_init+0x100>
  4012e9:	48 98                	cltq   
  4012eb:	64 48 c7 04 c5 b0 ff 	movq   $0x27cf,%fs:-0x50(,%rax,8)
  4012f2:	ff ff cf 27 00 00 
  4012f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4012fd:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401301:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401308:	00 00 
  40130a:	74 05                	je     401311 <main+0xab>
  40130c:	e8 9f fd ff ff       	call   4010b0 <_init+0xb0>
  401311:	c9                   	leave  
  401312:	c3                   	ret    

Disassembly of section .fini:

0000000000401314 <_fini>:
  401314:	f3 0f 1e fa          	endbr64 
  401318:	48 83 ec 08          	sub    $0x8,%rsp
  40131c:	48 83 c4 08          	add    $0x8,%rsp
  401320:	c3                   	ret    
