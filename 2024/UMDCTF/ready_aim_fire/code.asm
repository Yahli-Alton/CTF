
ready_aim_fire:     file format elf64-x86-64


Disassembly of section .init:

0000000000402000 <_init>:
  402000:	f3 0f 1e fa          	endbr64 
  402004:	48 83 ec 08          	sub    $0x8,%rsp
  402008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 404fe8 <__gmon_start__@Base>
  40200f:	48 85 c0             	test   %rax,%rax
  402012:	74 02                	je     402016 <_init+0x16>
  402014:	ff d0                	call   *%rax
  402016:	48 83 c4 08          	add    $0x8,%rsp
  40201a:	c3                   	ret    

Disassembly of section .plt:

0000000000402020 <.plt>:
  402020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 405008 <_GLOBAL_OFFSET_TABLE_+0x8>
  402026:	f2 ff 25 e3 2f 00 00 	bnd jmp *0x2fe3(%rip)        # 405010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40202d:	0f 1f 00             	nopl   (%rax)
  402030:	f3 0f 1e fa          	endbr64 
  402034:	68 00 00 00 00       	push   $0x0
  402039:	f2 e9 e1 ff ff ff    	bnd jmp 402020 <_init+0x20>
  40203f:	90                   	nop
  402040:	f3 0f 1e fa          	endbr64 
  402044:	68 01 00 00 00       	push   $0x1
  402049:	f2 e9 d1 ff ff ff    	bnd jmp 402020 <_init+0x20>
  40204f:	90                   	nop
  402050:	f3 0f 1e fa          	endbr64 
  402054:	68 02 00 00 00       	push   $0x2
  402059:	f2 e9 c1 ff ff ff    	bnd jmp 402020 <_init+0x20>
  40205f:	90                   	nop
  402060:	f3 0f 1e fa          	endbr64 
  402064:	68 03 00 00 00       	push   $0x3
  402069:	f2 e9 b1 ff ff ff    	bnd jmp 402020 <_init+0x20>
  40206f:	90                   	nop
  402070:	f3 0f 1e fa          	endbr64 
  402074:	68 04 00 00 00       	push   $0x4
  402079:	f2 e9 a1 ff ff ff    	bnd jmp 402020 <_init+0x20>
  40207f:	90                   	nop
  402080:	f3 0f 1e fa          	endbr64 
  402084:	68 05 00 00 00       	push   $0x5
  402089:	f2 e9 91 ff ff ff    	bnd jmp 402020 <_init+0x20>
  40208f:	90                   	nop
  402090:	f3 0f 1e fa          	endbr64 
  402094:	68 06 00 00 00       	push   $0x6
  402099:	f2 e9 81 ff ff ff    	bnd jmp 402020 <_init+0x20>
  40209f:	90                   	nop
  4020a0:	f3 0f 1e fa          	endbr64 
  4020a4:	68 07 00 00 00       	push   $0x7
  4020a9:	f2 e9 71 ff ff ff    	bnd jmp 402020 <_init+0x20>
  4020af:	90                   	nop
  4020b0:	f3 0f 1e fa          	endbr64 
  4020b4:	68 08 00 00 00       	push   $0x8
  4020b9:	f2 e9 61 ff ff ff    	bnd jmp 402020 <_init+0x20>
  4020bf:	90                   	nop
  4020c0:	f3 0f 1e fa          	endbr64 
  4020c4:	68 09 00 00 00       	push   $0x9
  4020c9:	f2 e9 51 ff ff ff    	bnd jmp 402020 <_init+0x20>
  4020cf:	90                   	nop
  4020d0:	f3 0f 1e fa          	endbr64 
  4020d4:	68 0a 00 00 00       	push   $0xa
  4020d9:	f2 e9 41 ff ff ff    	bnd jmp 402020 <_init+0x20>
  4020df:	90                   	nop
  4020e0:	f3 0f 1e fa          	endbr64 
  4020e4:	68 0b 00 00 00       	push   $0xb
  4020e9:	f2 e9 31 ff ff ff    	bnd jmp 402020 <_init+0x20>
  4020ef:	90                   	nop
  4020f0:	f3 0f 1e fa          	endbr64 
  4020f4:	68 0c 00 00 00       	push   $0xc
  4020f9:	f2 e9 21 ff ff ff    	bnd jmp 402020 <_init+0x20>
  4020ff:	90                   	nop
  402100:	f3 0f 1e fa          	endbr64 
  402104:	68 0d 00 00 00       	push   $0xd
  402109:	f2 e9 11 ff ff ff    	bnd jmp 402020 <_init+0x20>
  40210f:	90                   	nop
  402110:	f3 0f 1e fa          	endbr64 
  402114:	68 0e 00 00 00       	push   $0xe
  402119:	f2 e9 01 ff ff ff    	bnd jmp 402020 <_init+0x20>
  40211f:	90                   	nop
  402120:	f3 0f 1e fa          	endbr64 
  402124:	68 0f 00 00 00       	push   $0xf
  402129:	f2 e9 f1 fe ff ff    	bnd jmp 402020 <_init+0x20>
  40212f:	90                   	nop
  402130:	f3 0f 1e fa          	endbr64 
  402134:	68 10 00 00 00       	push   $0x10
  402139:	f2 e9 e1 fe ff ff    	bnd jmp 402020 <_init+0x20>
  40213f:	90                   	nop
  402140:	f3 0f 1e fa          	endbr64 
  402144:	68 11 00 00 00       	push   $0x11
  402149:	f2 e9 d1 fe ff ff    	bnd jmp 402020 <_init+0x20>
  40214f:	90                   	nop
  402150:	f3 0f 1e fa          	endbr64 
  402154:	68 12 00 00 00       	push   $0x12
  402159:	f2 e9 c1 fe ff ff    	bnd jmp 402020 <_init+0x20>
  40215f:	90                   	nop
  402160:	f3 0f 1e fa          	endbr64 
  402164:	68 13 00 00 00       	push   $0x13
  402169:	f2 e9 b1 fe ff ff    	bnd jmp 402020 <_init+0x20>
  40216f:	90                   	nop
  402170:	f3 0f 1e fa          	endbr64 
  402174:	68 14 00 00 00       	push   $0x14
  402179:	f2 e9 a1 fe ff ff    	bnd jmp 402020 <_init+0x20>
  40217f:	90                   	nop
  402180:	f3 0f 1e fa          	endbr64 
  402184:	68 15 00 00 00       	push   $0x15
  402189:	f2 e9 91 fe ff ff    	bnd jmp 402020 <_init+0x20>
  40218f:	90                   	nop

Disassembly of section .plt.got:

0000000000402190 <_ZNSt9exceptionD1Ev@plt>:
  402190:	f3 0f 1e fa          	endbr64 
  402194:	f2 ff 25 55 2e 00 00 	bnd jmp *0x2e55(%rip)        # 404ff0 <_ZNSt9exceptionD1Ev@GLIBCXX_3.4>
  40219b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000004021a0 <_ZNSt12out_of_rangeC1EPKc@plt>:
  4021a0:	f3 0f 1e fa          	endbr64 
  4021a4:	f2 ff 25 6d 2e 00 00 	bnd jmp *0x2e6d(%rip)        # 405018 <_ZNSt12out_of_rangeC1EPKc@GLIBCXX_3.4.21>
  4021ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004021b0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>:
  4021b0:	f3 0f 1e fa          	endbr64 
  4021b4:	f2 ff 25 65 2e 00 00 	bnd jmp *0x2e65(%rip)        # 405020 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  4021bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004021c0 <__cxa_begin_catch@plt>:
  4021c0:	f3 0f 1e fa          	endbr64 
  4021c4:	f2 ff 25 5d 2e 00 00 	bnd jmp *0x2e5d(%rip)        # 405028 <__cxa_begin_catch@CXXABI_1.3>
  4021cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004021d0 <__cxa_allocate_exception@plt>:
  4021d0:	f3 0f 1e fa          	endbr64 
  4021d4:	f2 ff 25 55 2e 00 00 	bnd jmp *0x2e55(%rip)        # 405030 <__cxa_allocate_exception@CXXABI_1.3>
  4021db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004021e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>:
  4021e0:	f3 0f 1e fa          	endbr64 
  4021e4:	f2 ff 25 4d 2e 00 00 	bnd jmp *0x2e4d(%rip)        # 405038 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GLIBCXX_3.4.21>
  4021eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004021f0 <__cxa_free_exception@plt>:
  4021f0:	f3 0f 1e fa          	endbr64 
  4021f4:	f2 ff 25 45 2e 00 00 	bnd jmp *0x2e45(%rip)        # 405040 <__cxa_free_exception@CXXABI_1.3>
  4021fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402200 <_ZNSolsEPKv@plt>:
  402200:	f3 0f 1e fa          	endbr64 
  402204:	f2 ff 25 3d 2e 00 00 	bnd jmp *0x2e3d(%rip)        # 405048 <_ZNSolsEPKv@GLIBCXX_3.4>
  40220b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402210 <__cxa_atexit@plt>:
  402210:	f3 0f 1e fa          	endbr64 
  402214:	f2 ff 25 35 2e 00 00 	bnd jmp *0x2e35(%rip)        # 405050 <__cxa_atexit@GLIBC_2.2.5>
  40221b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402220 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>:
  402220:	f3 0f 1e fa          	endbr64 
  402224:	f2 ff 25 2d 2e 00 00 	bnd jmp *0x2e2d(%rip)        # 405058 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@GLIBCXX_3.4.21>
  40222b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402230 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  402230:	f3 0f 1e fa          	endbr64 
  402234:	f2 ff 25 25 2e 00 00 	bnd jmp *0x2e25(%rip)        # 405060 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  40223b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402240 <_ZNSolsEPFRSoS_E@plt>:
  402240:	f3 0f 1e fa          	endbr64 
  402244:	f2 ff 25 1d 2e 00 00 	bnd jmp *0x2e1d(%rip)        # 405068 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
  40224b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402250 <__cxa_get_exception_ptr@plt>:
  402250:	f3 0f 1e fa          	endbr64 
  402254:	f2 ff 25 15 2e 00 00 	bnd jmp *0x2e15(%rip)        # 405070 <__cxa_get_exception_ptr@CXXABI_1.3.1>
  40225b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402260 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>:
  402260:	f3 0f 1e fa          	endbr64 
  402264:	f2 ff 25 0d 2e 00 00 	bnd jmp *0x2e0d(%rip)        # 405078 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@GLIBCXX_3.4.21>
  40226b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402270 <_ZNSi3getERc@plt>:
  402270:	f3 0f 1e fa          	endbr64 
  402274:	f2 ff 25 05 2e 00 00 	bnd jmp *0x2e05(%rip)        # 405080 <_ZNSi3getERc@GLIBCXX_3.4>
  40227b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402280 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@plt>:
  402280:	f3 0f 1e fa          	endbr64 
  402284:	f2 ff 25 fd 2d 00 00 	bnd jmp *0x2dfd(%rip)        # 405088 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@GLIBCXX_3.4.21>
  40228b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402290 <setbuf@plt>:
  402290:	f3 0f 1e fa          	endbr64 
  402294:	f2 ff 25 f5 2d 00 00 	bnd jmp *0x2df5(%rip)        # 405090 <setbuf@GLIBC_2.2.5>
  40229b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004022a0 <_ZNSt8ios_base4InitC1Ev@plt>:
  4022a0:	f3 0f 1e fa          	endbr64 
  4022a4:	f2 ff 25 ed 2d 00 00 	bnd jmp *0x2ded(%rip)        # 405098 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  4022ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004022b0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv@plt>:
  4022b0:	f3 0f 1e fa          	endbr64 
  4022b4:	f2 ff 25 e5 2d 00 00 	bnd jmp *0x2de5(%rip)        # 4050a0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv@GLIBCXX_3.4>
  4022bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004022c0 <__cxa_end_catch@plt>:
  4022c0:	f3 0f 1e fa          	endbr64 
  4022c4:	f2 ff 25 dd 2d 00 00 	bnd jmp *0x2ddd(%rip)        # 4050a8 <__cxa_end_catch@CXXABI_1.3>
  4022cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004022d0 <__cxa_throw@plt>:
  4022d0:	f3 0f 1e fa          	endbr64 
  4022d4:	f2 ff 25 d5 2d 00 00 	bnd jmp *0x2dd5(%rip)        # 4050b0 <__cxa_throw@CXXABI_1.3>
  4022db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004022e0 <_Unwind_Resume@plt>:
  4022e0:	f3 0f 1e fa          	endbr64 
  4022e4:	f2 ff 25 cd 2d 00 00 	bnd jmp *0x2dcd(%rip)        # 4050b8 <_Unwind_Resume@GCC_3.0>
  4022eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004022f0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@plt>:
  4022f0:	f3 0f 1e fa          	endbr64 
  4022f4:	f2 ff 25 c5 2d 00 00 	bnd jmp *0x2dc5(%rip)        # 4050c0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@GLIBCXX_3.4>
  4022fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000402300 <_start>:
  402300:	f3 0f 1e fa          	endbr64 
  402304:	31 ed                	xor    %ebp,%ebp
  402306:	49 89 d1             	mov    %rdx,%r9
  402309:	5e                   	pop    %rsi
  40230a:	48 89 e2             	mov    %rsp,%rdx
  40230d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402311:	50                   	push   %rax
  402312:	54                   	push   %rsp
  402313:	45 31 c0             	xor    %r8d,%r8d
  402316:	31 c9                	xor    %ecx,%ecx
  402318:	48 c7 c7 1d 26 40 00 	mov    $0x40261d,%rdi
  40231f:	ff 15 b3 2c 00 00    	call   *0x2cb3(%rip)        # 404fd8 <__libc_start_main@GLIBC_2.34>
  402325:	f4                   	hlt    
  402326:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40232d:	00 00 00 

0000000000402330 <_dl_relocate_static_pie>:
  402330:	f3 0f 1e fa          	endbr64 
  402334:	c3                   	ret    
  402335:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40233c:	00 00 00 
  40233f:	90                   	nop

0000000000402340 <deregister_tm_clones>:
  402340:	b8 e8 50 40 00       	mov    $0x4050e8,%eax
  402345:	48 3d e8 50 40 00    	cmp    $0x4050e8,%rax
  40234b:	74 13                	je     402360 <deregister_tm_clones+0x20>
  40234d:	b8 00 00 00 00       	mov    $0x0,%eax
  402352:	48 85 c0             	test   %rax,%rax
  402355:	74 09                	je     402360 <deregister_tm_clones+0x20>
  402357:	bf e8 50 40 00       	mov    $0x4050e8,%edi
  40235c:	ff e0                	jmp    *%rax
  40235e:	66 90                	xchg   %ax,%ax
  402360:	c3                   	ret    
  402361:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402368:	00 00 00 00 
  40236c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402370 <register_tm_clones>:
  402370:	be e8 50 40 00       	mov    $0x4050e8,%esi
  402375:	48 81 ee e8 50 40 00 	sub    $0x4050e8,%rsi
  40237c:	48 89 f0             	mov    %rsi,%rax
  40237f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  402383:	48 c1 f8 03          	sar    $0x3,%rax
  402387:	48 01 c6             	add    %rax,%rsi
  40238a:	48 d1 fe             	sar    %rsi
  40238d:	74 11                	je     4023a0 <register_tm_clones+0x30>
  40238f:	b8 00 00 00 00       	mov    $0x0,%eax
  402394:	48 85 c0             	test   %rax,%rax
  402397:	74 07                	je     4023a0 <register_tm_clones+0x30>
  402399:	bf e8 50 40 00       	mov    $0x4050e8,%edi
  40239e:	ff e0                	jmp    *%rax
  4023a0:	c3                   	ret    
  4023a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4023a8:	00 00 00 00 
  4023ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004023b0 <__do_global_dtors_aux>:
  4023b0:	f3 0f 1e fa          	endbr64 
  4023b4:	80 3d dd 2f 00 00 00 	cmpb   $0x0,0x2fdd(%rip)        # 405398 <completed.0>
  4023bb:	75 13                	jne    4023d0 <__do_global_dtors_aux+0x20>
  4023bd:	55                   	push   %rbp
  4023be:	48 89 e5             	mov    %rsp,%rbp
  4023c1:	e8 7a ff ff ff       	call   402340 <deregister_tm_clones>
  4023c6:	c6 05 cb 2f 00 00 01 	movb   $0x1,0x2fcb(%rip)        # 405398 <completed.0>
  4023cd:	5d                   	pop    %rbp
  4023ce:	c3                   	ret    
  4023cf:	90                   	nop
  4023d0:	c3                   	ret    
  4023d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4023d8:	00 00 00 00 
  4023dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004023e0 <frame_dummy>:
  4023e0:	f3 0f 1e fa          	endbr64 
  4023e4:	eb 8a                	jmp    402370 <register_tm_clones>

00000000004023e6 <_Z10print_flagv>:
  4023e6:	f3 0f 1e fa          	endbr64 
  4023ea:	55                   	push   %rbp
  4023eb:	48 89 e5             	mov    %rsp,%rbp
  4023ee:	53                   	push   %rbx
  4023ef:	48 81 ec 38 02 00 00 	sub    $0x238,%rsp
  4023f6:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
  4023fd:	ba 08 00 00 00       	mov    $0x8,%edx
  402402:	48 8d 0d ff 0b 00 00 	lea    0xbff(%rip),%rcx        # 403008 <_IO_stdin_used+0x8>
  402409:	48 89 ce             	mov    %rcx,%rsi
  40240c:	48 89 c7             	mov    %rax,%rdi
  40240f:	e8 dc fe ff ff       	call   4022f0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@plt>
  402414:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
  40241b:	48 89 c7             	mov    %rax,%rdi
  40241e:	e8 8d fe ff ff       	call   4022b0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv@plt>
  402423:	83 f0 01             	xor    $0x1,%eax
  402426:	84 c0                	test   %al,%al
  402428:	74 2d                	je     402457 <_Z10print_flagv+0x71>
  40242a:	48 8d 05 e7 0b 00 00 	lea    0xbe7(%rip),%rax        # 403018 <_IO_stdin_used+0x18>
  402431:	48 89 c6             	mov    %rax,%rsi
  402434:	48 8d 05 05 2d 00 00 	lea    0x2d05(%rip),%rax        # 405140 <_ZSt4cout@GLIBCXX_3.4>
  40243b:	48 89 c7             	mov    %rax,%rdi
  40243e:	e8 ed fd ff ff       	call   402230 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  402443:	48 8b 15 86 2b 00 00 	mov    0x2b86(%rip),%rdx        # 404fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  40244a:	48 89 d6             	mov    %rdx,%rsi
  40244d:	48 89 c7             	mov    %rax,%rdi
  402450:	e8 eb fd ff ff       	call   402240 <_ZNSolsEPFRSoS_E@plt>
  402455:	eb 62                	jmp    4024b9 <_Z10print_flagv+0xd3>
  402457:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
  40245e:	48 89 c7             	mov    %rax,%rdi
  402461:	e8 1a fe ff ff       	call   402280 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@plt>
  402466:	48 8d 95 c0 fd ff ff 	lea    -0x240(%rbp),%rdx
  40246d:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
  402474:	48 89 d6             	mov    %rdx,%rsi
  402477:	48 89 c7             	mov    %rax,%rdi
  40247a:	e8 e1 fd ff ff       	call   402260 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
  40247f:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
  402486:	48 89 c6             	mov    %rax,%rsi
  402489:	48 8d 05 b0 2c 00 00 	lea    0x2cb0(%rip),%rax        # 405140 <_ZSt4cout@GLIBCXX_3.4>
  402490:	48 89 c7             	mov    %rax,%rdi
  402493:	e8 88 fd ff ff       	call   402220 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
  402498:	48 8b 15 31 2b 00 00 	mov    0x2b31(%rip),%rdx        # 404fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  40249f:	48 89 d6             	mov    %rdx,%rsi
  4024a2:	48 89 c7             	mov    %rax,%rdi
  4024a5:	e8 96 fd ff ff       	call   402240 <_ZNSolsEPFRSoS_E@plt>
  4024aa:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
  4024b1:	48 89 c7             	mov    %rax,%rdi
  4024b4:	e8 27 fd ff ff       	call   4021e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  4024b9:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
  4024c0:	48 89 c7             	mov    %rax,%rdi
  4024c3:	e8 e8 fc ff ff       	call   4021b0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>
  4024c8:	eb 39                	jmp    402503 <_Z10print_flagv+0x11d>
  4024ca:	f3 0f 1e fa          	endbr64 
  4024ce:	48 89 c3             	mov    %rax,%rbx
  4024d1:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
  4024d8:	48 89 c7             	mov    %rax,%rdi
  4024db:	e8 00 fd ff ff       	call   4021e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  4024e0:	eb 07                	jmp    4024e9 <_Z10print_flagv+0x103>
  4024e2:	f3 0f 1e fa          	endbr64 
  4024e6:	48 89 c3             	mov    %rax,%rbx
  4024e9:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
  4024f0:	48 89 c7             	mov    %rax,%rdi
  4024f3:	e8 b8 fc ff ff       	call   4021b0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>
  4024f8:	48 89 d8             	mov    %rbx,%rax
  4024fb:	48 89 c7             	mov    %rax,%rdi
  4024fe:	e8 dd fd ff ff       	call   4022e0 <_Unwind_Resume@plt>
  402503:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402507:	c9                   	leave  
  402508:	c3                   	ret    

0000000000402509 <_Z10direct_hitv>:
  402509:	f3 0f 1e fa          	endbr64 
  40250d:	55                   	push   %rbp
  40250e:	48 89 e5             	mov    %rsp,%rbp
  402511:	53                   	push   %rbx
  402512:	48 83 ec 18          	sub    $0x18,%rsp
  402516:	bf 08 00 00 00       	mov    $0x8,%edi
  40251b:	e8 b0 fc ff ff       	call   4021d0 <__cxa_allocate_exception@plt>
  402520:	48 89 c3             	mov    %rax,%rbx
  402523:	48 89 df             	mov    %rbx,%rdi
  402526:	e8 e5 02 00 00       	call   402810 <_ZNSt9exceptionC1Ev>
  40252b:	48 8b 05 be 2a 00 00 	mov    0x2abe(%rip),%rax        # 404ff0 <_ZNSt9exceptionD1Ev@GLIBCXX_3.4>
  402532:	48 89 c2             	mov    %rax,%rdx
  402535:	48 8d 05 94 28 00 00 	lea    0x2894(%rip),%rax        # 404dd0 <_ZTISt9exception@GLIBCXX_3.4>
  40253c:	48 89 c6             	mov    %rax,%rsi
  40253f:	48 89 df             	mov    %rbx,%rdi
  402542:	e8 89 fd ff ff       	call   4022d0 <__cxa_throw@plt>
  402547:	f3 0f 1e fa          	endbr64 
  40254b:	48 89 c3             	mov    %rax,%rbx
  40254e:	48 89 d0             	mov    %rdx,%rax
  402551:	48 83 f8 01          	cmp    $0x1,%rax
  402555:	74 0b                	je     402562 <_Z10direct_hitv+0x59>
  402557:	48 89 d8             	mov    %rbx,%rax
  40255a:	48 89 c7             	mov    %rax,%rdi
  40255d:	e8 7e fd ff ff       	call   4022e0 <_Unwind_Resume@plt>
  402562:	48 89 d8             	mov    %rbx,%rax
  402565:	48 89 c7             	mov    %rax,%rdi
  402568:	e8 e3 fc ff ff       	call   402250 <__cxa_get_exception_ptr@plt>
  40256d:	48 89 c2             	mov    %rax,%rdx
  402570:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  402574:	48 89 d6             	mov    %rdx,%rsi
  402577:	48 89 c7             	mov    %rax,%rdi
  40257a:	e8 af 02 00 00       	call   40282e <_ZNSt9exceptionC1ERKS_>
  40257f:	48 89 d8             	mov    %rbx,%rax
  402582:	48 89 c7             	mov    %rax,%rdi
  402585:	e8 36 fc ff ff       	call   4021c0 <__cxa_begin_catch@plt>
  40258a:	48 8d 05 cf 0a 00 00 	lea    0xacf(%rip),%rax        # 403060 <_IO_stdin_used+0x60>
  402591:	48 89 c6             	mov    %rax,%rsi
  402594:	48 8d 05 a5 2b 00 00 	lea    0x2ba5(%rip),%rax        # 405140 <_ZSt4cout@GLIBCXX_3.4>
  40259b:	48 89 c7             	mov    %rax,%rdi
  40259e:	e8 8d fc ff ff       	call   402230 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4025a3:	48 8b 15 26 2a 00 00 	mov    0x2a26(%rip),%rdx        # 404fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  4025aa:	48 89 d6             	mov    %rdx,%rsi
  4025ad:	48 89 c7             	mov    %rax,%rdi
  4025b0:	e8 8b fc ff ff       	call   402240 <_ZNSolsEPFRSoS_E@plt>
  4025b5:	e8 2c fe ff ff       	call   4023e6 <_Z10print_flagv>
  4025ba:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  4025be:	48 89 c7             	mov    %rax,%rdi
  4025c1:	e8 ca fb ff ff       	call   402190 <_ZNSt9exceptionD1Ev@plt>
  4025c6:	e8 f5 fc ff ff       	call   4022c0 <__cxa_end_catch@plt>
  4025cb:	eb 23                	jmp    4025f0 <_Z10direct_hitv+0xe7>
  4025cd:	f3 0f 1e fa          	endbr64 
  4025d1:	48 89 c3             	mov    %rax,%rbx
  4025d4:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  4025d8:	48 89 c7             	mov    %rax,%rdi
  4025db:	e8 b0 fb ff ff       	call   402190 <_ZNSt9exceptionD1Ev@plt>
  4025e0:	e8 db fc ff ff       	call   4022c0 <__cxa_end_catch@plt>
  4025e5:	48 89 d8             	mov    %rbx,%rax
  4025e8:	48 89 c7             	mov    %rax,%rdi
  4025eb:	e8 f0 fc ff ff       	call   4022e0 <_Unwind_Resume@plt>
  4025f0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4025f4:	c9                   	leave  
  4025f5:	c3                   	ret    

00000000004025f6 <_Z11fire_weaponv>:
  4025f6:	f3 0f 1e fa          	endbr64 
  4025fa:	55                   	push   %rbp
  4025fb:	48 89 e5             	mov    %rsp,%rbp
  4025fe:	48 83 ec 30          	sub    $0x30,%rsp
  402602:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  402606:	48 89 c7             	mov    %rax,%rdi
  402609:	e8 42 02 00 00       	call   402850 <_ZN6CannonC1Ev>
  40260e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  402612:	48 89 c7             	mov    %rax,%rdi
  402615:	e8 50 02 00 00       	call   40286a <_ZN6Cannon4fireEv>
  40261a:	90                   	nop
  40261b:	c9                   	leave  
  40261c:	c3                   	ret    

000000000040261d <main>:
  40261d:	f3 0f 1e fa          	endbr64 
  402621:	55                   	push   %rbp
  402622:	48 89 e5             	mov    %rsp,%rbp
  402625:	53                   	push   %rbx
  402626:	48 83 ec 18          	sub    $0x18,%rsp
  40262a:	48 8b 05 df 2a 00 00 	mov    0x2adf(%rip),%rax        # 405110 <stdin@GLIBC_2.2.5>
  402631:	be 00 00 00 00       	mov    $0x0,%esi
  402636:	48 89 c7             	mov    %rax,%rdi
  402639:	e8 52 fc ff ff       	call   402290 <setbuf@plt>
  40263e:	48 8b 05 bb 2a 00 00 	mov    0x2abb(%rip),%rax        # 405100 <stdout@GLIBC_2.2.5>
  402645:	be 00 00 00 00       	mov    $0x0,%esi
  40264a:	48 89 c7             	mov    %rax,%rdi
  40264d:	e8 3e fc ff ff       	call   402290 <setbuf@plt>
  402652:	48 8b 05 07 2c 00 00 	mov    0x2c07(%rip),%rax        # 405260 <stderr@GLIBC_2.2.5>
  402659:	be 00 00 00 00       	mov    $0x0,%esi
  40265e:	48 89 c7             	mov    %rax,%rdi
  402661:	e8 2a fc ff ff       	call   402290 <setbuf@plt>
  402666:	48 8d 05 03 0a 00 00 	lea    0xa03(%rip),%rax        # 403070 <_IO_stdin_used+0x70>
  40266d:	48 89 c6             	mov    %rax,%rsi
  402670:	48 8d 05 c9 2a 00 00 	lea    0x2ac9(%rip),%rax        # 405140 <_ZSt4cout@GLIBCXX_3.4>
  402677:	48 89 c7             	mov    %rax,%rdi
  40267a:	e8 b1 fb ff ff       	call   402230 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40267f:	48 8b 15 4a 29 00 00 	mov    0x294a(%rip),%rdx        # 404fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  402686:	48 89 d6             	mov    %rdx,%rsi
  402689:	48 89 c7             	mov    %rax,%rdi
  40268c:	e8 af fb ff ff       	call   402240 <_ZNSolsEPFRSoS_E@plt>
  402691:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
  402695:	48 89 c6             	mov    %rax,%rsi
  402698:	48 8d 05 a1 2a 00 00 	lea    0x2aa1(%rip),%rax        # 405140 <_ZSt4cout@GLIBCXX_3.4>
  40269f:	48 89 c7             	mov    %rax,%rdi
  4026a2:	e8 59 fb ff ff       	call   402200 <_ZNSolsEPKv@plt>
  4026a7:	48 8b 15 22 29 00 00 	mov    0x2922(%rip),%rdx        # 404fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  4026ae:	48 89 d6             	mov    %rdx,%rsi
  4026b1:	48 89 c7             	mov    %rax,%rdi
  4026b4:	e8 87 fb ff ff       	call   402240 <_ZNSolsEPFRSoS_E@plt>
  4026b9:	e8 38 ff ff ff       	call   4025f6 <_Z11fire_weaponv>
  4026be:	48 8d 05 fb 09 00 00 	lea    0x9fb(%rip),%rax        # 4030c0 <_IO_stdin_used+0xc0>
  4026c5:	48 89 c6             	mov    %rax,%rsi
  4026c8:	48 8d 05 71 2a 00 00 	lea    0x2a71(%rip),%rax        # 405140 <_ZSt4cout@GLIBCXX_3.4>
  4026cf:	48 89 c7             	mov    %rax,%rdi
  4026d2:	e8 59 fb ff ff       	call   402230 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4026d7:	48 8b 15 f2 28 00 00 	mov    0x28f2(%rip),%rdx        # 404fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  4026de:	48 89 d6             	mov    %rdx,%rsi
  4026e1:	48 89 c7             	mov    %rax,%rdi
  4026e4:	e8 57 fb ff ff       	call   402240 <_ZNSolsEPFRSoS_E@plt>
  4026e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4026ee:	e9 a7 00 00 00       	jmp    40279a <main+0x17d>
  4026f3:	f3 0f 1e fa          	endbr64 
  4026f7:	48 89 c3             	mov    %rax,%rbx
  4026fa:	48 89 d0             	mov    %rdx,%rax
  4026fd:	48 83 f8 01          	cmp    $0x1,%rax
  402701:	74 0b                	je     40270e <main+0xf1>
  402703:	48 89 d8             	mov    %rbx,%rax
  402706:	48 89 c7             	mov    %rax,%rdi
  402709:	e8 d2 fb ff ff       	call   4022e0 <_Unwind_Resume@plt>
  40270e:	48 89 d8             	mov    %rbx,%rax
  402711:	48 89 c7             	mov    %rax,%rdi
  402714:	e8 37 fb ff ff       	call   402250 <__cxa_get_exception_ptr@plt>
  402719:	48 89 c2             	mov    %rax,%rdx
  40271c:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402720:	48 89 d6             	mov    %rdx,%rsi
  402723:	48 89 c7             	mov    %rax,%rdi
  402726:	e8 03 01 00 00       	call   40282e <_ZNSt9exceptionC1ERKS_>
  40272b:	48 89 d8             	mov    %rbx,%rax
  40272e:	48 89 c7             	mov    %rax,%rdi
  402731:	e8 8a fa ff ff       	call   4021c0 <__cxa_begin_catch@plt>
  402736:	48 8d 05 b3 09 00 00 	lea    0x9b3(%rip),%rax        # 4030f0 <_IO_stdin_used+0xf0>
  40273d:	48 89 c6             	mov    %rax,%rsi
  402740:	48 8d 05 f9 29 00 00 	lea    0x29f9(%rip),%rax        # 405140 <_ZSt4cout@GLIBCXX_3.4>
  402747:	48 89 c7             	mov    %rax,%rdi
  40274a:	e8 e1 fa ff ff       	call   402230 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40274f:	48 8b 15 7a 28 00 00 	mov    0x287a(%rip),%rdx        # 404fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  402756:	48 89 d6             	mov    %rdx,%rsi
  402759:	48 89 c7             	mov    %rax,%rdi
  40275c:	e8 df fa ff ff       	call   402240 <_ZNSolsEPFRSoS_E@plt>
  402761:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402765:	48 89 c7             	mov    %rax,%rdi
  402768:	e8 23 fa ff ff       	call   402190 <_ZNSt9exceptionD1Ev@plt>
  40276d:	e8 4e fb ff ff       	call   4022c0 <__cxa_end_catch@plt>
  402772:	e9 72 ff ff ff       	jmp    4026e9 <main+0xcc>
  402777:	f3 0f 1e fa          	endbr64 
  40277b:	48 89 c3             	mov    %rax,%rbx
  40277e:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402782:	48 89 c7             	mov    %rax,%rdi
  402785:	e8 06 fa ff ff       	call   402190 <_ZNSt9exceptionD1Ev@plt>
  40278a:	e8 31 fb ff ff       	call   4022c0 <__cxa_end_catch@plt>
  40278f:	48 89 d8             	mov    %rbx,%rax
  402792:	48 89 c7             	mov    %rax,%rdi
  402795:	e8 46 fb ff ff       	call   4022e0 <_Unwind_Resume@plt>
  40279a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40279e:	c9                   	leave  
  40279f:	c3                   	ret    

00000000004027a0 <_Z41__static_initialization_and_destruction_0ii>:
  4027a0:	f3 0f 1e fa          	endbr64 
  4027a4:	55                   	push   %rbp
  4027a5:	48 89 e5             	mov    %rsp,%rbp
  4027a8:	48 83 ec 10          	sub    $0x10,%rsp
  4027ac:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4027af:	89 75 f8             	mov    %esi,-0x8(%rbp)
  4027b2:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  4027b6:	75 3b                	jne    4027f3 <_Z41__static_initialization_and_destruction_0ii+0x53>
  4027b8:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
  4027bf:	75 32                	jne    4027f3 <_Z41__static_initialization_and_destruction_0ii+0x53>
  4027c1:	48 8d 05 d1 2b 00 00 	lea    0x2bd1(%rip),%rax        # 405399 <_ZStL8__ioinit>
  4027c8:	48 89 c7             	mov    %rax,%rdi
  4027cb:	e8 d0 fa ff ff       	call   4022a0 <_ZNSt8ios_base4InitC1Ev@plt>
  4027d0:	48 8d 05 f9 28 00 00 	lea    0x28f9(%rip),%rax        # 4050d0 <__dso_handle>
  4027d7:	48 89 c2             	mov    %rax,%rdx
  4027da:	48 8d 05 b8 2b 00 00 	lea    0x2bb8(%rip),%rax        # 405399 <_ZStL8__ioinit>
  4027e1:	48 89 c6             	mov    %rax,%rsi
  4027e4:	48 8b 05 0d 28 00 00 	mov    0x280d(%rip),%rax        # 404ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  4027eb:	48 89 c7             	mov    %rax,%rdi
  4027ee:	e8 1d fa ff ff       	call   402210 <__cxa_atexit@plt>
  4027f3:	90                   	nop
  4027f4:	c9                   	leave  
  4027f5:	c3                   	ret    

00000000004027f6 <_GLOBAL__sub_I__Z10print_flagv>:
  4027f6:	f3 0f 1e fa          	endbr64 
  4027fa:	55                   	push   %rbp
  4027fb:	48 89 e5             	mov    %rsp,%rbp
  4027fe:	be ff ff 00 00       	mov    $0xffff,%esi
  402803:	bf 01 00 00 00       	mov    $0x1,%edi
  402808:	e8 93 ff ff ff       	call   4027a0 <_Z41__static_initialization_and_destruction_0ii>
  40280d:	5d                   	pop    %rbp
  40280e:	c3                   	ret    
  40280f:	90                   	nop

0000000000402810 <_ZNSt9exceptionC1Ev>:
  402810:	f3 0f 1e fa          	endbr64 
  402814:	55                   	push   %rbp
  402815:	48 89 e5             	mov    %rsp,%rbp
  402818:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40281c:	48 8d 15 7d 25 00 00 	lea    0x257d(%rip),%rdx        # 404da0 <_ZTVSt9exception@GLIBCXX_3.4+0x10>
  402823:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402827:	48 89 10             	mov    %rdx,(%rax)
  40282a:	90                   	nop
  40282b:	5d                   	pop    %rbp
  40282c:	c3                   	ret    
  40282d:	90                   	nop

000000000040282e <_ZNSt9exceptionC1ERKS_>:
  40282e:	f3 0f 1e fa          	endbr64 
  402832:	55                   	push   %rbp
  402833:	48 89 e5             	mov    %rsp,%rbp
  402836:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40283a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40283e:	48 8d 15 5b 25 00 00 	lea    0x255b(%rip),%rdx        # 404da0 <_ZTVSt9exception@GLIBCXX_3.4+0x10>
  402845:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402849:	48 89 10             	mov    %rdx,(%rax)
  40284c:	90                   	nop
  40284d:	5d                   	pop    %rbp
  40284e:	c3                   	ret    
  40284f:	90                   	nop

0000000000402850 <_ZN6CannonC1Ev>:
  402850:	f3 0f 1e fa          	endbr64 
  402854:	55                   	push   %rbp
  402855:	48 89 e5             	mov    %rsp,%rbp
  402858:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40285c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402860:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  402866:	90                   	nop
  402867:	5d                   	pop    %rbp
  402868:	c3                   	ret    
  402869:	90                   	nop

000000000040286a <_ZN6Cannon4fireEv>:
  40286a:	f3 0f 1e fa          	endbr64 
  40286e:	55                   	push   %rbp
  40286f:	48 89 e5             	mov    %rsp,%rbp
  402872:	41 54                	push   %r12
  402874:	53                   	push   %rbx
  402875:	48 83 ec 20          	sub    $0x20,%rsp
  402879:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  40287d:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
  402881:	48 89 c6             	mov    %rax,%rsi
  402884:	48 8d 05 f5 29 00 00 	lea    0x29f5(%rip),%rax        # 405280 <_ZSt3cin@GLIBCXX_3.4>
  40288b:	48 89 c7             	mov    %rax,%rdi
  40288e:	e8 dd f9 ff ff       	call   402270 <_ZNSi3getERc@plt>
  402893:	0f b6 45 ef          	movzbl -0x11(%rbp),%eax
  402897:	3c 0a                	cmp    $0xa,%al
  402899:	74 1f                	je     4028ba <_ZN6Cannon4fireEv+0x50>
  40289b:	0f b6 4d ef          	movzbl -0x11(%rbp),%ecx
  40289f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4028a3:	8b 00                	mov    (%rax),%eax
  4028a5:	8d 70 01             	lea    0x1(%rax),%esi
  4028a8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4028ac:	89 32                	mov    %esi,(%rdx)
  4028ae:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4028b2:	48 98                	cltq   
  4028b4:	88 4c 02 04          	mov    %cl,0x4(%rdx,%rax,1)
  4028b8:	eb c3                	jmp    40287d <_ZN6Cannon4fireEv+0x13>
  4028ba:	90                   	nop
  4028bb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4028bf:	8b 00                	mov    (%rax),%eax
  4028c1:	83 f8 1f             	cmp    $0x1f,%eax
  4028c4:	7e 55                	jle    40291b <_ZN6Cannon4fireEv+0xb1>
  4028c6:	bf 10 00 00 00       	mov    $0x10,%edi
  4028cb:	e8 00 f9 ff ff       	call   4021d0 <__cxa_allocate_exception@plt>
  4028d0:	48 89 c3             	mov    %rax,%rbx
  4028d3:	48 8d 05 92 07 00 00 	lea    0x792(%rip),%rax        # 40306c <_IO_stdin_used+0x6c>
  4028da:	48 89 c6             	mov    %rax,%rsi
  4028dd:	48 89 df             	mov    %rbx,%rdi
  4028e0:	e8 bb f8 ff ff       	call   4021a0 <_ZNSt12out_of_rangeC1EPKc@plt>
  4028e5:	48 8b 05 f4 26 00 00 	mov    0x26f4(%rip),%rax        # 404fe0 <_ZNSt12out_of_rangeD1Ev@GLIBCXX_3.4>
  4028ec:	48 89 c2             	mov    %rax,%rdx
  4028ef:	48 8d 05 c2 24 00 00 	lea    0x24c2(%rip),%rax        # 404db8 <_ZTISt12out_of_range@GLIBCXX_3.4>
  4028f6:	48 89 c6             	mov    %rax,%rsi
  4028f9:	48 89 df             	mov    %rbx,%rdi
  4028fc:	e8 cf f9 ff ff       	call   4022d0 <__cxa_throw@plt>
  402901:	f3 0f 1e fa          	endbr64 
  402905:	49 89 c4             	mov    %rax,%r12
  402908:	48 89 df             	mov    %rbx,%rdi
  40290b:	e8 e0 f8 ff ff       	call   4021f0 <__cxa_free_exception@plt>
  402910:	4c 89 e0             	mov    %r12,%rax
  402913:	48 89 c7             	mov    %rax,%rdi
  402916:	e8 c5 f9 ff ff       	call   4022e0 <_Unwind_Resume@plt>
  40291b:	90                   	nop
  40291c:	48 83 c4 20          	add    $0x20,%rsp
  402920:	5b                   	pop    %rbx
  402921:	41 5c                	pop    %r12
  402923:	5d                   	pop    %rbp
  402924:	c3                   	ret    

Disassembly of section .fini:

0000000000402928 <_fini>:
  402928:	f3 0f 1e fa          	endbr64 
  40292c:	48 83 ec 08          	sub    $0x8,%rsp
  402930:	48 83 c4 08          	add    $0x8,%rsp
  402934:	c3                   	ret    
