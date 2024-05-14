
task:     file format elf64-x86-64


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

00000000000010a0 <getenv@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 3fa8 <getenv@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <puts@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 3fb0 <puts@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <printf@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 3fb8 <printf@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <fflush@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fc0 <fflush@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <__isoc99_scanf@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3fc8 <__isoc99_scanf@GLIBC_2.7>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <sleep@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 3fd0 <sleep@GLIBC_2.2.5>
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
    1118:	48 8d 3d 30 01 00 00 	lea    0x130(%rip),%rdi        # 124f <main>
    111f:	ff 15 b3 2e 00 00    	call   *0x2eb3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1125:	f4                   	hlt    
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 

0000000000001130 <deregister_tm_clones>:
    1130:	48 8d 3d d1 31 00 00 	lea    0x31d1(%rip),%rdi        # 4308 <stdout@GLIBC_2.2.5>
    1137:	48 8d 05 ca 31 00 00 	lea    0x31ca(%rip),%rax        # 4308 <stdout@GLIBC_2.2.5>
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
    1160:	48 8d 3d a1 31 00 00 	lea    0x31a1(%rip),%rdi        # 4308 <stdout@GLIBC_2.2.5>
    1167:	48 8d 35 9a 31 00 00 	lea    0x319a(%rip),%rsi        # 4308 <stdout@GLIBC_2.2.5>
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
    11a4:	80 3d 65 31 00 00 00 	cmpb   $0x0,0x3165(%rip)        # 4310 <completed.0>
    11ab:	75 2b                	jne    11d8 <__do_global_dtors_aux+0x38>
    11ad:	55                   	push   %rbp
    11ae:	48 83 3d 42 2e 00 00 	cmpq   $0x0,0x2e42(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11b5:	00 
    11b6:	48 89 e5             	mov    %rsp,%rbp
    11b9:	74 0c                	je     11c7 <__do_global_dtors_aux+0x27>
    11bb:	48 8b 3d 46 2e 00 00 	mov    0x2e46(%rip),%rdi        # 4008 <__dso_handle>
    11c2:	e8 c9 fe ff ff       	call   1090 <__cxa_finalize@plt>
    11c7:	e8 64 ff ff ff       	call   1130 <deregister_tm_clones>
    11cc:	c6 05 3d 31 00 00 01 	movb   $0x1,0x313d(%rip)        # 4310 <completed.0>
    11d3:	5d                   	pop    %rbp
    11d4:	c3                   	ret    
    11d5:	0f 1f 00             	nopl   (%rax)
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <frame_dummy>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	e9 77 ff ff ff       	jmp    1160 <register_tm_clones>

00000000000011e9 <print_capy>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	55                   	push   %rbp
    11ee:	48 89 e5             	mov    %rsp,%rbp
    11f1:	48 8d 05 48 2e 00 00 	lea    0x2e48(%rip),%rax        # 4040 <capy>
    11f8:	48 89 c7             	mov    %rax,%rdi
    11fb:	e8 b0 fe ff ff       	call   10b0 <puts@plt>
    1200:	90                   	nop
    1201:	5d                   	pop    %rbp
    1202:	c3                   	ret    

0000000000001203 <print_flag>:
    1203:	f3 0f 1e fa          	endbr64 
    1207:	55                   	push   %rbp
    1208:	48 89 e5             	mov    %rsp,%rbp
    120b:	48 83 ec 10          	sub    $0x10,%rsp
    120f:	48 8d 05 f2 0d 00 00 	lea    0xdf2(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1216:	48 89 c7             	mov    %rax,%rdi
    1219:	e8 82 fe ff ff       	call   10a0 <getenv@plt>
    121e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1222:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1226:	48 89 c6             	mov    %rax,%rsi
    1229:	48 8d 05 dd 0d 00 00 	lea    0xddd(%rip),%rax        # 200d <_IO_stdin_used+0xd>
    1230:	48 89 c7             	mov    %rax,%rdi
    1233:	b8 00 00 00 00       	mov    $0x0,%eax
    1238:	e8 83 fe ff ff       	call   10c0 <printf@plt>
    123d:	48 8b 05 c4 30 00 00 	mov    0x30c4(%rip),%rax        # 4308 <stdout@GLIBC_2.2.5>
    1244:	48 89 c7             	mov    %rax,%rdi
    1247:	e8 84 fe ff ff       	call   10d0 <fflush@plt>
    124c:	90                   	nop
    124d:	c9                   	leave  
    124e:	c3                   	ret    

000000000000124f <main>:
    124f:	f3 0f 1e fa          	endbr64 
    1253:	55                   	push   %rbp
    1254:	48 89 e5             	mov    %rsp,%rbp
    1257:	b8 00 00 00 00       	mov    $0x0,%eax
    125c:	e8 88 ff ff ff       	call   11e9 <print_capy>
    1261:	48 8d 05 b8 0d 00 00 	lea    0xdb8(%rip),%rax        # 2020 <_IO_stdin_used+0x20>
    1268:	48 89 c7             	mov    %rax,%rdi
    126b:	e8 40 fe ff ff       	call   10b0 <puts@plt>
    1270:	48 8d 05 e4 0d 00 00 	lea    0xde4(%rip),%rax        # 205b <_IO_stdin_used+0x5b>
    1277:	48 89 c7             	mov    %rax,%rdi
    127a:	b8 00 00 00 00       	mov    $0x0,%eax
    127f:	e8 3c fe ff ff       	call   10c0 <printf@plt>
    1284:	48 8b 05 7d 30 00 00 	mov    0x307d(%rip),%rax        # 4308 <stdout@GLIBC_2.2.5>
    128b:	48 89 c7             	mov    %rax,%rdi
    128e:	e8 3d fe ff ff       	call   10d0 <fflush@plt>
    1293:	48 8d 05 86 2d 00 00 	lea    0x2d86(%rip),%rax        # 4020 <str>
    129a:	48 89 c6             	mov    %rax,%rsi
    129d:	48 8d 05 bb 0d 00 00 	lea    0xdbb(%rip),%rax        # 205f <_IO_stdin_used+0x5f>
    12a4:	48 89 c7             	mov    %rax,%rdi
    12a7:	b8 00 00 00 00       	mov    $0x0,%eax
    12ac:	e8 2f fe ff ff       	call   10e0 <__isoc99_scanf@plt>
    12b1:	8b 05 7d 2d 00 00    	mov    0x2d7d(%rip),%eax        # 4034 <secret>
    12b7:	3d 21 4e 57 50       	cmp    $0x50574e21,%eax
    12bc:	75 2a                	jne    12e8 <main+0x99>
    12be:	48 8d 05 9d 0d 00 00 	lea    0xd9d(%rip),%rax        # 2062 <_IO_stdin_used+0x62>
    12c5:	48 89 c7             	mov    %rax,%rdi
    12c8:	e8 e3 fd ff ff       	call   10b0 <puts@plt>
    12cd:	bf 01 00 00 00       	mov    $0x1,%edi
    12d2:	e8 19 fe ff ff       	call   10f0 <sleep@plt>
    12d7:	b8 00 00 00 00       	mov    $0x0,%eax
    12dc:	e8 22 ff ff ff       	call   1203 <print_flag>
    12e1:	b8 00 00 00 00       	mov    $0x0,%eax
    12e6:	eb 14                	jmp    12fc <main+0xad>
    12e8:	48 8d 05 84 0d 00 00 	lea    0xd84(%rip),%rax        # 2073 <_IO_stdin_used+0x73>
    12ef:	48 89 c7             	mov    %rax,%rdi
    12f2:	e8 b9 fd ff ff       	call   10b0 <puts@plt>
    12f7:	b8 00 00 00 00       	mov    $0x0,%eax
    12fc:	5d                   	pop    %rbp
    12fd:	c3                   	ret    

Disassembly of section .fini:

0000000000001300 <_fini>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	48 83 ec 08          	sub    $0x8,%rsp
    1308:	48 83 c4 08          	add    $0x8,%rsp
    130c:	c3                   	ret    
