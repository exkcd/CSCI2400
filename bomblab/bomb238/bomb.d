
bomb:     file format elf64-x86-64


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
    1020:	ff 35 d2 3e 00 00    	push   0x3ed2(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 d3 3e 00 00 	bnd jmp *0x3ed3(%rip)        # 4f00 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop

Disassembly of section .plt.got:

00000000000011d0 <__cxa_finalize@plt>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	f2 ff 25 1d 3e 00 00 	bnd jmp *0x3e1d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011e0 <getenv@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 1d 3d 00 00 	bnd jmp *0x3d1d(%rip)        # 4f08 <getenv@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011f0 <__errno_location@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 15 3d 00 00 	bnd jmp *0x3d15(%rip)        # 4f10 <__errno_location@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <strcpy@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 0d 3d 00 00 	bnd jmp *0x3d0d(%rip)        # 4f18 <strcpy@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <puts@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 05 3d 00 00 	bnd jmp *0x3d05(%rip)        # 4f20 <puts@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <write@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 fd 3c 00 00 	bnd jmp *0x3cfd(%rip)        # 4f28 <write@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <strlen@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 f5 3c 00 00 	bnd jmp *0x3cf5(%rip)        # 4f30 <strlen@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <alarm@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 ed 3c 00 00 	bnd jmp *0x3ced(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <close@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 e5 3c 00 00 	bnd jmp *0x3ce5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <read@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 dd 3c 00 00 	bnd jmp *0x3cdd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <fgets@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 d5 3c 00 00 	bnd jmp *0x3cd5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <strcmp@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 cd 3c 00 00 	bnd jmp *0x3ccd(%rip)        # 4f58 <strcmp@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <signal@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 c5 3c 00 00 	bnd jmp *0x3cc5(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <gethostbyname@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 bd 3c 00 00 	bnd jmp *0x3cbd(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <__memmove_chk@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 b5 3c 00 00 	bnd jmp *0x3cb5(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <strtol@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 ad 3c 00 00 	bnd jmp *0x3cad(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <fflush@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 a5 3c 00 00 	bnd jmp *0x3ca5(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <__isoc99_sscanf@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 9d 3c 00 00 	bnd jmp *0x3c9d(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <__printf_chk@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 95 3c 00 00 	bnd jmp *0x3c95(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <fopen@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 8d 3c 00 00 	bnd jmp *0x3c8d(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <exit@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 85 3c 00 00 	bnd jmp *0x3c85(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <connect@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 7d 3c 00 00 	bnd jmp *0x3c7d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <__fprintf_chk@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 75 3c 00 00 	bnd jmp *0x3c75(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <sleep@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 6d 3c 00 00 	bnd jmp *0x3c6d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__ctype_b_loc@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 65 3c 00 00 	bnd jmp *0x3c65(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <__sprintf_chk@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 5d 3c 00 00 	bnd jmp *0x3c5d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <socket@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 55 3c 00 00 	bnd jmp *0x3c55(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001380 <_start>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	31 ed                	xor    %ebp,%ebp
    1386:	49 89 d1             	mov    %rdx,%r9
    1389:	5e                   	pop    %rsi
    138a:	48 89 e2             	mov    %rsp,%rdx
    138d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1391:	50                   	push   %rax
    1392:	54                   	push   %rsp
    1393:	45 31 c0             	xor    %r8d,%r8d
    1396:	31 c9                	xor    %ecx,%ecx
    1398:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1469 <main>
    139f:	ff 15 33 3c 00 00    	call   *0x3c33(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    13a5:	f4                   	hlt    
    13a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13ad:	00 00 00 

00000000000013b0 <deregister_tm_clones>:
    13b0:	48 8d 3d c9 46 00 00 	lea    0x46c9(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    13b7:	48 8d 05 c2 46 00 00 	lea    0x46c2(%rip),%rax        # 5a80 <stdout@GLIBC_2.2.5>
    13be:	48 39 f8             	cmp    %rdi,%rax
    13c1:	74 15                	je     13d8 <deregister_tm_clones+0x28>
    13c3:	48 8b 05 16 3c 00 00 	mov    0x3c16(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    13ca:	48 85 c0             	test   %rax,%rax
    13cd:	74 09                	je     13d8 <deregister_tm_clones+0x28>
    13cf:	ff e0                	jmp    *%rax
    13d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13d8:	c3                   	ret    
    13d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013e0 <register_tm_clones>:
    13e0:	48 8d 3d 99 46 00 00 	lea    0x4699(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    13e7:	48 8d 35 92 46 00 00 	lea    0x4692(%rip),%rsi        # 5a80 <stdout@GLIBC_2.2.5>
    13ee:	48 29 fe             	sub    %rdi,%rsi
    13f1:	48 89 f0             	mov    %rsi,%rax
    13f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    13f8:	48 c1 f8 03          	sar    $0x3,%rax
    13fc:	48 01 c6             	add    %rax,%rsi
    13ff:	48 d1 fe             	sar    %rsi
    1402:	74 14                	je     1418 <register_tm_clones+0x38>
    1404:	48 8b 05 e5 3b 00 00 	mov    0x3be5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    140b:	48 85 c0             	test   %rax,%rax
    140e:	74 08                	je     1418 <register_tm_clones+0x38>
    1410:	ff e0                	jmp    *%rax
    1412:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1418:	c3                   	ret    
    1419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001420 <__do_global_dtors_aux>:
    1420:	f3 0f 1e fa          	endbr64 
    1424:	80 3d 7d 46 00 00 00 	cmpb   $0x0,0x467d(%rip)        # 5aa8 <completed.0>
    142b:	75 2b                	jne    1458 <__do_global_dtors_aux+0x38>
    142d:	55                   	push   %rbp
    142e:	48 83 3d c2 3b 00 00 	cmpq   $0x0,0x3bc2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1435:	00 
    1436:	48 89 e5             	mov    %rsp,%rbp
    1439:	74 0c                	je     1447 <__do_global_dtors_aux+0x27>
    143b:	48 8b 3d c6 3b 00 00 	mov    0x3bc6(%rip),%rdi        # 5008 <__dso_handle>
    1442:	e8 89 fd ff ff       	call   11d0 <__cxa_finalize@plt>
    1447:	e8 64 ff ff ff       	call   13b0 <deregister_tm_clones>
    144c:	c6 05 55 46 00 00 01 	movb   $0x1,0x4655(%rip)        # 5aa8 <completed.0>
    1453:	5d                   	pop    %rbp
    1454:	c3                   	ret    
    1455:	0f 1f 00             	nopl   (%rax)
    1458:	c3                   	ret    
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <frame_dummy>:
    1460:	f3 0f 1e fa          	endbr64 
    1464:	e9 77 ff ff ff       	jmp    13e0 <register_tm_clones>

0000000000001469 <main>:
    1469:	f3 0f 1e fa          	endbr64 
    146d:	53                   	push   %rbx
    146e:	83 ff 01             	cmp    $0x1,%edi
    1471:	0f 84 f8 00 00 00    	je     156f <main+0x106>
    1477:	48 89 f3             	mov    %rsi,%rbx
    147a:	83 ff 02             	cmp    $0x2,%edi
    147d:	0f 85 21 01 00 00    	jne    15a4 <main+0x13b>
    1483:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1487:	48 8d 35 76 1b 00 00 	lea    0x1b76(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    148e:	e8 6d fe ff ff       	call   1300 <fopen@plt>
    1493:	48 89 05 16 46 00 00 	mov    %rax,0x4616(%rip)        # 5ab0 <infile>
    149a:	48 85 c0             	test   %rax,%rax
    149d:	0f 84 df 00 00 00    	je     1582 <main+0x119>
    14a3:	e8 96 06 00 00       	call   1b3e <initialize_bomb>
    14a8:	48 8d 3d d9 1b 00 00 	lea    0x1bd9(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    14af:	e8 5c fd ff ff       	call   1210 <puts@plt>
    14b4:	48 8d 3d 0d 1c 00 00 	lea    0x1c0d(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    14bb:	e8 50 fd ff ff       	call   1210 <puts@plt>
    14c0:	e8 b2 08 00 00       	call   1d77 <read_line>
    14c5:	48 89 c7             	mov    %rax,%rdi
    14c8:	e8 fa 00 00 00       	call   15c7 <phase_1>
    14cd:	e8 d4 09 00 00       	call   1ea6 <phase_defused>
    14d2:	48 8d 3d 1f 1c 00 00 	lea    0x1c1f(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    14d9:	e8 32 fd ff ff       	call   1210 <puts@plt>
    14de:	e8 94 08 00 00       	call   1d77 <read_line>
    14e3:	48 89 c7             	mov    %rax,%rdi
    14e6:	e8 00 01 00 00       	call   15eb <phase_2>
    14eb:	e8 b6 09 00 00       	call   1ea6 <phase_defused>
    14f0:	48 8d 3d 46 1b 00 00 	lea    0x1b46(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    14f7:	e8 14 fd ff ff       	call   1210 <puts@plt>
    14fc:	e8 76 08 00 00       	call   1d77 <read_line>
    1501:	48 89 c7             	mov    %rax,%rdi
    1504:	e8 31 01 00 00       	call   163a <phase_3>
    1509:	e8 98 09 00 00       	call   1ea6 <phase_defused>
    150e:	48 8d 3d 46 1b 00 00 	lea    0x1b46(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    1515:	e8 f6 fc ff ff       	call   1210 <puts@plt>
    151a:	e8 58 08 00 00       	call   1d77 <read_line>
    151f:	48 89 c7             	mov    %rax,%rdi
    1522:	e8 af 02 00 00       	call   17d6 <phase_4>
    1527:	e8 7a 09 00 00       	call   1ea6 <phase_defused>
    152c:	48 8d 3d f5 1b 00 00 	lea    0x1bf5(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    1533:	e8 d8 fc ff ff       	call   1210 <puts@plt>
    1538:	e8 3a 08 00 00       	call   1d77 <read_line>
    153d:	48 89 c7             	mov    %rax,%rdi
    1540:	e8 ea 02 00 00       	call   182f <phase_5>
    1545:	e8 5c 09 00 00       	call   1ea6 <phase_defused>
    154a:	48 8d 3d 19 1b 00 00 	lea    0x1b19(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    1551:	e8 ba fc ff ff       	call   1210 <puts@plt>
    1556:	e8 1c 08 00 00       	call   1d77 <read_line>
    155b:	48 89 c7             	mov    %rax,%rdi
    155e:	e8 18 03 00 00       	call   187b <phase_6>
    1563:	e8 3e 09 00 00       	call   1ea6 <phase_defused>
    1568:	b8 00 00 00 00       	mov    $0x0,%eax
    156d:	5b                   	pop    %rbx
    156e:	c3                   	ret    
    156f:	48 8b 05 1a 45 00 00 	mov    0x451a(%rip),%rax        # 5a90 <stdin@GLIBC_2.2.5>
    1576:	48 89 05 33 45 00 00 	mov    %rax,0x4533(%rip)        # 5ab0 <infile>
    157d:	e9 21 ff ff ff       	jmp    14a3 <main+0x3a>
    1582:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1586:	48 8b 13             	mov    (%rbx),%rdx
    1589:	48 8d 35 76 1a 00 00 	lea    0x1a76(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    1590:	bf 01 00 00 00       	mov    $0x1,%edi
    1595:	e8 56 fd ff ff       	call   12f0 <__printf_chk@plt>
    159a:	bf 08 00 00 00       	mov    $0x8,%edi
    159f:	e8 6c fd ff ff       	call   1310 <exit@plt>
    15a4:	48 8b 16             	mov    (%rsi),%rdx
    15a7:	48 8d 35 75 1a 00 00 	lea    0x1a75(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    15ae:	bf 01 00 00 00       	mov    $0x1,%edi
    15b3:	b8 00 00 00 00       	mov    $0x0,%eax
    15b8:	e8 33 fd ff ff       	call   12f0 <__printf_chk@plt>
    15bd:	bf 08 00 00 00       	mov    $0x8,%edi
    15c2:	e8 49 fd ff ff       	call   1310 <exit@plt>

00000000000015c7 <phase_1>:
    15c7:	f3 0f 1e fa          	endbr64 
    15cb:	48 83 ec 08          	sub    $0x8,%rsp
    15cf:	48 8d 35 7a 1b 00 00 	lea    0x1b7a(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    15d6:	e8 f1 04 00 00       	call   1acc <strings_not_equal>
    15db:	85 c0                	test   %eax,%eax
    15dd:	75 05                	jne    15e4 <phase_1+0x1d>
    15df:	48 83 c4 08          	add    $0x8,%rsp
    15e3:	c3                   	ret    
    15e4:	e8 fc 06 00 00       	call   1ce5 <explode_bomb>
    15e9:	eb f4                	jmp    15df <phase_1+0x18>

00000000000015eb <phase_2>:
    15eb:	f3 0f 1e fa          	endbr64 
    15ef:	55                   	push   %rbp
    15f0:	53                   	push   %rbx
    15f1:	48 83 ec 28          	sub    $0x28,%rsp
    15f5:	48 89 e6             	mov    %rsp,%rsi
    15f8:	e8 35 07 00 00       	call   1d32 <read_six_numbers>
    15fd:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1601:	75 07                	jne    160a <phase_2+0x1f>
    1603:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    1608:	74 05                	je     160f <phase_2+0x24>
    160a:	e8 d6 06 00 00       	call   1ce5 <explode_bomb>
    160f:	48 89 e3             	mov    %rsp,%rbx
    1612:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    1617:	eb 09                	jmp    1622 <phase_2+0x37>
    1619:	48 83 c3 04          	add    $0x4,%rbx
    161d:	48 39 eb             	cmp    %rbp,%rbx
    1620:	74 11                	je     1633 <phase_2+0x48>
    1622:	8b 43 04             	mov    0x4(%rbx),%eax
    1625:	03 03                	add    (%rbx),%eax
    1627:	39 43 08             	cmp    %eax,0x8(%rbx)
    162a:	74 ed                	je     1619 <phase_2+0x2e>
    162c:	e8 b4 06 00 00       	call   1ce5 <explode_bomb>
    1631:	eb e6                	jmp    1619 <phase_2+0x2e>
    1633:	48 83 c4 28          	add    $0x28,%rsp
    1637:	5b                   	pop    %rbx
    1638:	5d                   	pop    %rbp
    1639:	c3                   	ret    

000000000000163a <phase_3>:
    163a:	f3 0f 1e fa          	endbr64 
    163e:	48 83 ec 18          	sub    $0x18,%rsp
    1642:	48 8d 4c 24 07       	lea    0x7(%rsp),%rcx
    1647:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    164c:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    1651:	48 8d 35 6e 1b 00 00 	lea    0x1b6e(%rip),%rsi        # 31c6 <_IO_stdin_used+0x1c6>
    1658:	b8 00 00 00 00       	mov    $0x0,%eax
    165d:	e8 7e fc ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1662:	83 f8 02             	cmp    $0x2,%eax
    1665:	7e 20                	jle    1687 <phase_3+0x4d>
    1667:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
    166c:	0f 87 0d 01 00 00    	ja     177f <phase_3+0x145>
    1672:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1676:	48 8d 15 63 1b 00 00 	lea    0x1b63(%rip),%rdx        # 31e0 <_IO_stdin_used+0x1e0>
    167d:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1681:	48 01 d0             	add    %rdx,%rax
    1684:	3e ff e0             	notrack jmp *%rax
    1687:	e8 59 06 00 00       	call   1ce5 <explode_bomb>
    168c:	eb d9                	jmp    1667 <phase_3+0x2d>
    168e:	b8 66 00 00 00       	mov    $0x66,%eax
    1693:	81 7c 24 08 af 03 00 	cmpl   $0x3af,0x8(%rsp)
    169a:	00 
    169b:	0f 84 e8 00 00 00    	je     1789 <phase_3+0x14f>
    16a1:	e8 3f 06 00 00       	call   1ce5 <explode_bomb>
    16a6:	b8 66 00 00 00       	mov    $0x66,%eax
    16ab:	e9 d9 00 00 00       	jmp    1789 <phase_3+0x14f>
    16b0:	b8 6d 00 00 00       	mov    $0x6d,%eax
    16b5:	81 7c 24 08 33 01 00 	cmpl   $0x133,0x8(%rsp)
    16bc:	00 
    16bd:	0f 84 c6 00 00 00    	je     1789 <phase_3+0x14f>
    16c3:	e8 1d 06 00 00       	call   1ce5 <explode_bomb>
    16c8:	b8 6d 00 00 00       	mov    $0x6d,%eax
    16cd:	e9 b7 00 00 00       	jmp    1789 <phase_3+0x14f>
    16d2:	b8 6a 00 00 00       	mov    $0x6a,%eax
    16d7:	81 7c 24 08 29 02 00 	cmpl   $0x229,0x8(%rsp)
    16de:	00 
    16df:	0f 84 a4 00 00 00    	je     1789 <phase_3+0x14f>
    16e5:	e8 fb 05 00 00       	call   1ce5 <explode_bomb>
    16ea:	b8 6a 00 00 00       	mov    $0x6a,%eax
    16ef:	e9 95 00 00 00       	jmp    1789 <phase_3+0x14f>
    16f4:	b8 74 00 00 00       	mov    $0x74,%eax
    16f9:	81 7c 24 08 47 03 00 	cmpl   $0x347,0x8(%rsp)
    1700:	00 
    1701:	0f 84 82 00 00 00    	je     1789 <phase_3+0x14f>
    1707:	e8 d9 05 00 00       	call   1ce5 <explode_bomb>
    170c:	b8 74 00 00 00       	mov    $0x74,%eax
    1711:	eb 76                	jmp    1789 <phase_3+0x14f>
    1713:	b8 66 00 00 00       	mov    $0x66,%eax
    1718:	81 7c 24 08 ba 00 00 	cmpl   $0xba,0x8(%rsp)
    171f:	00 
    1720:	74 67                	je     1789 <phase_3+0x14f>
    1722:	e8 be 05 00 00       	call   1ce5 <explode_bomb>
    1727:	b8 66 00 00 00       	mov    $0x66,%eax
    172c:	eb 5b                	jmp    1789 <phase_3+0x14f>
    172e:	b8 65 00 00 00       	mov    $0x65,%eax
    1733:	81 7c 24 08 6a 01 00 	cmpl   $0x16a,0x8(%rsp)
    173a:	00 
    173b:	74 4c                	je     1789 <phase_3+0x14f>
    173d:	e8 a3 05 00 00       	call   1ce5 <explode_bomb>
    1742:	b8 65 00 00 00       	mov    $0x65,%eax
    1747:	eb 40                	jmp    1789 <phase_3+0x14f>
    1749:	b8 61 00 00 00       	mov    $0x61,%eax
    174e:	81 7c 24 08 04 03 00 	cmpl   $0x304,0x8(%rsp)
    1755:	00 
    1756:	74 31                	je     1789 <phase_3+0x14f>
    1758:	e8 88 05 00 00       	call   1ce5 <explode_bomb>
    175d:	b8 61 00 00 00       	mov    $0x61,%eax
    1762:	eb 25                	jmp    1789 <phase_3+0x14f>
    1764:	b8 71 00 00 00       	mov    $0x71,%eax
    1769:	81 7c 24 08 da 01 00 	cmpl   $0x1da,0x8(%rsp)
    1770:	00 
    1771:	74 16                	je     1789 <phase_3+0x14f>
    1773:	e8 6d 05 00 00       	call   1ce5 <explode_bomb>
    1778:	b8 71 00 00 00       	mov    $0x71,%eax
    177d:	eb 0a                	jmp    1789 <phase_3+0x14f>
    177f:	e8 61 05 00 00       	call   1ce5 <explode_bomb>
    1784:	b8 62 00 00 00       	mov    $0x62,%eax
    1789:	38 44 24 07          	cmp    %al,0x7(%rsp)
    178d:	75 05                	jne    1794 <phase_3+0x15a>
    178f:	48 83 c4 18          	add    $0x18,%rsp
    1793:	c3                   	ret    
    1794:	e8 4c 05 00 00       	call   1ce5 <explode_bomb>
    1799:	eb f4                	jmp    178f <phase_3+0x155>

000000000000179b <func4>:
    179b:	f3 0f 1e fa          	endbr64 
    179f:	b8 00 00 00 00       	mov    $0x0,%eax
    17a4:	85 ff                	test   %edi,%edi
    17a6:	7e 2d                	jle    17d5 <func4+0x3a>
    17a8:	41 54                	push   %r12
    17aa:	55                   	push   %rbp
    17ab:	53                   	push   %rbx
    17ac:	89 fb                	mov    %edi,%ebx
    17ae:	89 f5                	mov    %esi,%ebp
    17b0:	89 f0                	mov    %esi,%eax
    17b2:	83 ff 01             	cmp    $0x1,%edi
    17b5:	74 19                	je     17d0 <func4+0x35>
    17b7:	8d 7f ff             	lea    -0x1(%rdi),%edi
    17ba:	e8 dc ff ff ff       	call   179b <func4>
    17bf:	44 8d 24 28          	lea    (%rax,%rbp,1),%r12d
    17c3:	8d 7b fe             	lea    -0x2(%rbx),%edi
    17c6:	89 ee                	mov    %ebp,%esi
    17c8:	e8 ce ff ff ff       	call   179b <func4>
    17cd:	44 01 e0             	add    %r12d,%eax
    17d0:	5b                   	pop    %rbx
    17d1:	5d                   	pop    %rbp
    17d2:	41 5c                	pop    %r12
    17d4:	c3                   	ret    
    17d5:	c3                   	ret    

00000000000017d6 <phase_4>:
    17d6:	f3 0f 1e fa          	endbr64 
    17da:	48 83 ec 18          	sub    $0x18,%rsp
    17de:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    17e3:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    17e8:	48 8d 35 f7 1b 00 00 	lea    0x1bf7(%rip),%rsi        # 33e6 <array.0+0x1e6>
    17ef:	b8 00 00 00 00       	mov    $0x0,%eax
    17f4:	e8 e7 fa ff ff       	call   12e0 <__isoc99_sscanf@plt>
    17f9:	83 f8 02             	cmp    $0x2,%eax
    17fc:	75 0c                	jne    180a <phase_4+0x34>
    17fe:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1802:	83 e8 02             	sub    $0x2,%eax
    1805:	83 f8 02             	cmp    $0x2,%eax
    1808:	76 05                	jbe    180f <phase_4+0x39>
    180a:	e8 d6 04 00 00       	call   1ce5 <explode_bomb>
    180f:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    1813:	bf 05 00 00 00       	mov    $0x5,%edi
    1818:	e8 7e ff ff ff       	call   179b <func4>
    181d:	39 44 24 08          	cmp    %eax,0x8(%rsp)
    1821:	75 05                	jne    1828 <phase_4+0x52>
    1823:	48 83 c4 18          	add    $0x18,%rsp
    1827:	c3                   	ret    
    1828:	e8 b8 04 00 00       	call   1ce5 <explode_bomb>
    182d:	eb f4                	jmp    1823 <phase_4+0x4d>

000000000000182f <phase_5>:
    182f:	f3 0f 1e fa          	endbr64 
    1833:	53                   	push   %rbx
    1834:	48 89 fb             	mov    %rdi,%rbx
    1837:	e8 6f 02 00 00       	call   1aab <string_length>
    183c:	83 f8 06             	cmp    $0x6,%eax
    183f:	75 2c                	jne    186d <phase_5+0x3e>
    1841:	48 89 d8             	mov    %rbx,%rax
    1844:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    1848:	b9 00 00 00 00       	mov    $0x0,%ecx
    184d:	48 8d 35 ac 19 00 00 	lea    0x19ac(%rip),%rsi        # 3200 <array.0>
    1854:	0f b6 10             	movzbl (%rax),%edx
    1857:	83 e2 0f             	and    $0xf,%edx
    185a:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    185d:	48 83 c0 01          	add    $0x1,%rax
    1861:	48 39 f8             	cmp    %rdi,%rax
    1864:	75 ee                	jne    1854 <phase_5+0x25>
    1866:	83 f9 21             	cmp    $0x21,%ecx
    1869:	75 09                	jne    1874 <phase_5+0x45>
    186b:	5b                   	pop    %rbx
    186c:	c3                   	ret    
    186d:	e8 73 04 00 00       	call   1ce5 <explode_bomb>
    1872:	eb cd                	jmp    1841 <phase_5+0x12>
    1874:	e8 6c 04 00 00       	call   1ce5 <explode_bomb>
    1879:	eb f0                	jmp    186b <phase_5+0x3c>

000000000000187b <phase_6>:
    187b:	f3 0f 1e fa          	endbr64 
    187f:	41 56                	push   %r14
    1881:	41 55                	push   %r13
    1883:	41 54                	push   %r12
    1885:	55                   	push   %rbp
    1886:	53                   	push   %rbx
    1887:	48 83 ec 50          	sub    $0x50,%rsp
    188b:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    1890:	4c 89 ee             	mov    %r13,%rsi
    1893:	e8 9a 04 00 00       	call   1d32 <read_six_numbers>
    1898:	41 be 01 00 00 00    	mov    $0x1,%r14d
    189e:	4d 89 ec             	mov    %r13,%r12
    18a1:	eb 28                	jmp    18cb <phase_6+0x50>
    18a3:	e8 3d 04 00 00       	call   1ce5 <explode_bomb>
    18a8:	eb 30                	jmp    18da <phase_6+0x5f>
    18aa:	48 83 c3 01          	add    $0x1,%rbx
    18ae:	83 fb 05             	cmp    $0x5,%ebx
    18b1:	7f 10                	jg     18c3 <phase_6+0x48>
    18b3:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    18b7:	39 45 00             	cmp    %eax,0x0(%rbp)
    18ba:	75 ee                	jne    18aa <phase_6+0x2f>
    18bc:	e8 24 04 00 00       	call   1ce5 <explode_bomb>
    18c1:	eb e7                	jmp    18aa <phase_6+0x2f>
    18c3:	49 83 c6 01          	add    $0x1,%r14
    18c7:	49 83 c5 04          	add    $0x4,%r13
    18cb:	4c 89 ed             	mov    %r13,%rbp
    18ce:	41 8b 45 00          	mov    0x0(%r13),%eax
    18d2:	83 e8 01             	sub    $0x1,%eax
    18d5:	83 f8 05             	cmp    $0x5,%eax
    18d8:	77 c9                	ja     18a3 <phase_6+0x28>
    18da:	41 83 fe 05          	cmp    $0x5,%r14d
    18de:	7f 05                	jg     18e5 <phase_6+0x6a>
    18e0:	4c 89 f3             	mov    %r14,%rbx
    18e3:	eb ce                	jmp    18b3 <phase_6+0x38>
    18e5:	be 00 00 00 00       	mov    $0x0,%esi
    18ea:	8b 4c b4 30          	mov    0x30(%rsp,%rsi,4),%ecx
    18ee:	b8 01 00 00 00       	mov    $0x1,%eax
    18f3:	48 8d 15 36 3d 00 00 	lea    0x3d36(%rip),%rdx        # 5630 <node1>
    18fa:	83 f9 01             	cmp    $0x1,%ecx
    18fd:	7e 0b                	jle    190a <phase_6+0x8f>
    18ff:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1903:	83 c0 01             	add    $0x1,%eax
    1906:	39 c8                	cmp    %ecx,%eax
    1908:	75 f5                	jne    18ff <phase_6+0x84>
    190a:	48 89 14 f4          	mov    %rdx,(%rsp,%rsi,8)
    190e:	48 83 c6 01          	add    $0x1,%rsi
    1912:	48 83 fe 06          	cmp    $0x6,%rsi
    1916:	75 d2                	jne    18ea <phase_6+0x6f>
    1918:	48 8b 1c 24          	mov    (%rsp),%rbx
    191c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1921:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1925:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    192a:	48 89 50 08          	mov    %rdx,0x8(%rax)
    192e:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1933:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1937:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    193c:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1940:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1945:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1949:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1950:	00 
    1951:	bd 05 00 00 00       	mov    $0x5,%ebp
    1956:	eb 09                	jmp    1961 <phase_6+0xe6>
    1958:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    195c:	83 ed 01             	sub    $0x1,%ebp
    195f:	74 11                	je     1972 <phase_6+0xf7>
    1961:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1965:	8b 00                	mov    (%rax),%eax
    1967:	39 03                	cmp    %eax,(%rbx)
    1969:	7d ed                	jge    1958 <phase_6+0xdd>
    196b:	e8 75 03 00 00       	call   1ce5 <explode_bomb>
    1970:	eb e6                	jmp    1958 <phase_6+0xdd>
    1972:	48 83 c4 50          	add    $0x50,%rsp
    1976:	5b                   	pop    %rbx
    1977:	5d                   	pop    %rbp
    1978:	41 5c                	pop    %r12
    197a:	41 5d                	pop    %r13
    197c:	41 5e                	pop    %r14
    197e:	c3                   	ret    

000000000000197f <fun7>:
    197f:	f3 0f 1e fa          	endbr64 
    1983:	48 85 ff             	test   %rdi,%rdi
    1986:	74 32                	je     19ba <fun7+0x3b>
    1988:	48 83 ec 08          	sub    $0x8,%rsp
    198c:	8b 17                	mov    (%rdi),%edx
    198e:	39 f2                	cmp    %esi,%edx
    1990:	7f 0c                	jg     199e <fun7+0x1f>
    1992:	b8 00 00 00 00       	mov    $0x0,%eax
    1997:	75 12                	jne    19ab <fun7+0x2c>
    1999:	48 83 c4 08          	add    $0x8,%rsp
    199d:	c3                   	ret    
    199e:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    19a2:	e8 d8 ff ff ff       	call   197f <fun7>
    19a7:	01 c0                	add    %eax,%eax
    19a9:	eb ee                	jmp    1999 <fun7+0x1a>
    19ab:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    19af:	e8 cb ff ff ff       	call   197f <fun7>
    19b4:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    19b8:	eb df                	jmp    1999 <fun7+0x1a>
    19ba:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    19bf:	c3                   	ret    

00000000000019c0 <secret_phase>:
    19c0:	f3 0f 1e fa          	endbr64 
    19c4:	53                   	push   %rbx
    19c5:	e8 ad 03 00 00       	call   1d77 <read_line>
    19ca:	48 89 c7             	mov    %rax,%rdi
    19cd:	ba 0a 00 00 00       	mov    $0xa,%edx
    19d2:	be 00 00 00 00       	mov    $0x0,%esi
    19d7:	e8 e4 f8 ff ff       	call   12c0 <strtol@plt>
    19dc:	89 c3                	mov    %eax,%ebx
    19de:	83 e8 01             	sub    $0x1,%eax
    19e1:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    19e6:	77 26                	ja     1a0e <secret_phase+0x4e>
    19e8:	89 de                	mov    %ebx,%esi
    19ea:	48 8d 3d 5f 3b 00 00 	lea    0x3b5f(%rip),%rdi        # 5550 <n1>
    19f1:	e8 89 ff ff ff       	call   197f <fun7>
    19f6:	83 f8 05             	cmp    $0x5,%eax
    19f9:	75 1a                	jne    1a15 <secret_phase+0x55>
    19fb:	48 8d 3d 9e 17 00 00 	lea    0x179e(%rip),%rdi        # 31a0 <_IO_stdin_used+0x1a0>
    1a02:	e8 09 f8 ff ff       	call   1210 <puts@plt>
    1a07:	e8 9a 04 00 00       	call   1ea6 <phase_defused>
    1a0c:	5b                   	pop    %rbx
    1a0d:	c3                   	ret    
    1a0e:	e8 d2 02 00 00       	call   1ce5 <explode_bomb>
    1a13:	eb d3                	jmp    19e8 <secret_phase+0x28>
    1a15:	e8 cb 02 00 00       	call   1ce5 <explode_bomb>
    1a1a:	eb df                	jmp    19fb <secret_phase+0x3b>

0000000000001a1c <sig_handler>:
    1a1c:	f3 0f 1e fa          	endbr64 
    1a20:	50                   	push   %rax
    1a21:	58                   	pop    %rax
    1a22:	48 83 ec 08          	sub    $0x8,%rsp
    1a26:	48 8d 3d 13 18 00 00 	lea    0x1813(%rip),%rdi        # 3240 <array.0+0x40>
    1a2d:	e8 de f7 ff ff       	call   1210 <puts@plt>
    1a32:	bf 03 00 00 00       	mov    $0x3,%edi
    1a37:	e8 04 f9 ff ff       	call   1340 <sleep@plt>
    1a3c:	48 8d 35 2e 19 00 00 	lea    0x192e(%rip),%rsi        # 3371 <array.0+0x171>
    1a43:	bf 01 00 00 00       	mov    $0x1,%edi
    1a48:	b8 00 00 00 00       	mov    $0x0,%eax
    1a4d:	e8 9e f8 ff ff       	call   12f0 <__printf_chk@plt>
    1a52:	48 8b 3d 27 40 00 00 	mov    0x4027(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    1a59:	e8 72 f8 ff ff       	call   12d0 <fflush@plt>
    1a5e:	bf 01 00 00 00       	mov    $0x1,%edi
    1a63:	e8 d8 f8 ff ff       	call   1340 <sleep@plt>
    1a68:	48 8d 3d 0a 19 00 00 	lea    0x190a(%rip),%rdi        # 3379 <array.0+0x179>
    1a6f:	e8 9c f7 ff ff       	call   1210 <puts@plt>
    1a74:	bf 10 00 00 00       	mov    $0x10,%edi
    1a79:	e8 92 f8 ff ff       	call   1310 <exit@plt>

0000000000001a7e <invalid_phase>:
    1a7e:	f3 0f 1e fa          	endbr64 
    1a82:	50                   	push   %rax
    1a83:	58                   	pop    %rax
    1a84:	48 83 ec 08          	sub    $0x8,%rsp
    1a88:	48 89 fa             	mov    %rdi,%rdx
    1a8b:	48 8d 35 ef 18 00 00 	lea    0x18ef(%rip),%rsi        # 3381 <array.0+0x181>
    1a92:	bf 01 00 00 00       	mov    $0x1,%edi
    1a97:	b8 00 00 00 00       	mov    $0x0,%eax
    1a9c:	e8 4f f8 ff ff       	call   12f0 <__printf_chk@plt>
    1aa1:	bf 08 00 00 00       	mov    $0x8,%edi
    1aa6:	e8 65 f8 ff ff       	call   1310 <exit@plt>

0000000000001aab <string_length>:
    1aab:	f3 0f 1e fa          	endbr64 
    1aaf:	80 3f 00             	cmpb   $0x0,(%rdi)
    1ab2:	74 12                	je     1ac6 <string_length+0x1b>
    1ab4:	b8 00 00 00 00       	mov    $0x0,%eax
    1ab9:	48 83 c7 01          	add    $0x1,%rdi
    1abd:	83 c0 01             	add    $0x1,%eax
    1ac0:	80 3f 00             	cmpb   $0x0,(%rdi)
    1ac3:	75 f4                	jne    1ab9 <string_length+0xe>
    1ac5:	c3                   	ret    
    1ac6:	b8 00 00 00 00       	mov    $0x0,%eax
    1acb:	c3                   	ret    

0000000000001acc <strings_not_equal>:
    1acc:	f3 0f 1e fa          	endbr64 
    1ad0:	41 54                	push   %r12
    1ad2:	55                   	push   %rbp
    1ad3:	53                   	push   %rbx
    1ad4:	48 89 fb             	mov    %rdi,%rbx
    1ad7:	48 89 f5             	mov    %rsi,%rbp
    1ada:	e8 cc ff ff ff       	call   1aab <string_length>
    1adf:	41 89 c4             	mov    %eax,%r12d
    1ae2:	48 89 ef             	mov    %rbp,%rdi
    1ae5:	e8 c1 ff ff ff       	call   1aab <string_length>
    1aea:	89 c2                	mov    %eax,%edx
    1aec:	b8 01 00 00 00       	mov    $0x1,%eax
    1af1:	41 39 d4             	cmp    %edx,%r12d
    1af4:	75 31                	jne    1b27 <strings_not_equal+0x5b>
    1af6:	0f b6 13             	movzbl (%rbx),%edx
    1af9:	84 d2                	test   %dl,%dl
    1afb:	74 1e                	je     1b1b <strings_not_equal+0x4f>
    1afd:	b8 00 00 00 00       	mov    $0x0,%eax
    1b02:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1b06:	75 1a                	jne    1b22 <strings_not_equal+0x56>
    1b08:	48 83 c0 01          	add    $0x1,%rax
    1b0c:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1b10:	84 d2                	test   %dl,%dl
    1b12:	75 ee                	jne    1b02 <strings_not_equal+0x36>
    1b14:	b8 00 00 00 00       	mov    $0x0,%eax
    1b19:	eb 0c                	jmp    1b27 <strings_not_equal+0x5b>
    1b1b:	b8 00 00 00 00       	mov    $0x0,%eax
    1b20:	eb 05                	jmp    1b27 <strings_not_equal+0x5b>
    1b22:	b8 01 00 00 00       	mov    $0x1,%eax
    1b27:	5b                   	pop    %rbx
    1b28:	5d                   	pop    %rbp
    1b29:	41 5c                	pop    %r12
    1b2b:	c3                   	ret    

0000000000001b2c <strings_are_equal>:
    1b2c:	f3 0f 1e fa          	endbr64 
    1b30:	e8 97 ff ff ff       	call   1acc <strings_not_equal>
    1b35:	85 c0                	test   %eax,%eax
    1b37:	0f 94 c0             	sete   %al
    1b3a:	0f b6 c0             	movzbl %al,%eax
    1b3d:	c3                   	ret    

0000000000001b3e <initialize_bomb>:
    1b3e:	f3 0f 1e fa          	endbr64 
    1b42:	48 83 ec 08          	sub    $0x8,%rsp
    1b46:	48 8d 35 cf fe ff ff 	lea    -0x131(%rip),%rsi        # 1a1c <sig_handler>
    1b4d:	bf 02 00 00 00       	mov    $0x2,%edi
    1b52:	e8 39 f7 ff ff       	call   1290 <signal@plt>
    1b57:	48 8d 3d 34 18 00 00 	lea    0x1834(%rip),%rdi        # 3392 <array.0+0x192>
    1b5e:	e8 7d f6 ff ff       	call   11e0 <getenv@plt>
    1b63:	48 85 c0             	test   %rax,%rax
    1b66:	0f 95 c0             	setne  %al
    1b69:	0f b6 c0             	movzbl %al,%eax
    1b6c:	89 05 2e 49 00 00    	mov    %eax,0x492e(%rip)        # 64a0 <grade_bomb>
    1b72:	48 83 c4 08          	add    $0x8,%rsp
    1b76:	c3                   	ret    

0000000000001b77 <initialize_bomb_solve>:
    1b77:	f3 0f 1e fa          	endbr64 
    1b7b:	c3                   	ret    

0000000000001b7c <blank_line>:
    1b7c:	f3 0f 1e fa          	endbr64 
    1b80:	55                   	push   %rbp
    1b81:	53                   	push   %rbx
    1b82:	48 83 ec 08          	sub    $0x8,%rsp
    1b86:	48 89 fd             	mov    %rdi,%rbp
    1b89:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1b8d:	84 db                	test   %bl,%bl
    1b8f:	74 1e                	je     1baf <blank_line+0x33>
    1b91:	e8 ba f7 ff ff       	call   1350 <__ctype_b_loc@plt>
    1b96:	48 83 c5 01          	add    $0x1,%rbp
    1b9a:	48 0f be db          	movsbq %bl,%rbx
    1b9e:	48 8b 00             	mov    (%rax),%rax
    1ba1:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1ba6:	75 e1                	jne    1b89 <blank_line+0xd>
    1ba8:	b8 00 00 00 00       	mov    $0x0,%eax
    1bad:	eb 05                	jmp    1bb4 <blank_line+0x38>
    1baf:	b8 01 00 00 00       	mov    $0x1,%eax
    1bb4:	48 83 c4 08          	add    $0x8,%rsp
    1bb8:	5b                   	pop    %rbx
    1bb9:	5d                   	pop    %rbp
    1bba:	c3                   	ret    

0000000000001bbb <skip>:
    1bbb:	f3 0f 1e fa          	endbr64 
    1bbf:	55                   	push   %rbp
    1bc0:	53                   	push   %rbx
    1bc1:	48 83 ec 08          	sub    $0x8,%rsp
    1bc5:	48 8d 2d 74 3f 00 00 	lea    0x3f74(%rip),%rbp        # 5b40 <input_strings>
    1bcc:	48 63 15 65 3f 00 00 	movslq 0x3f65(%rip),%rdx        # 5b38 <num_input_strings>
    1bd3:	48 89 d0             	mov    %rdx,%rax
    1bd6:	48 c1 e0 04          	shl    $0x4,%rax
    1bda:	48 29 d0             	sub    %rdx,%rax
    1bdd:	48 8d 7c c5 00       	lea    0x0(%rbp,%rax,8),%rdi
    1be2:	48 8b 15 c7 3e 00 00 	mov    0x3ec7(%rip),%rdx        # 5ab0 <infile>
    1be9:	be 78 00 00 00       	mov    $0x78,%esi
    1bee:	e8 7d f6 ff ff       	call   1270 <fgets@plt>
    1bf3:	48 89 c3             	mov    %rax,%rbx
    1bf6:	48 85 c0             	test   %rax,%rax
    1bf9:	74 0c                	je     1c07 <skip+0x4c>
    1bfb:	48 89 c7             	mov    %rax,%rdi
    1bfe:	e8 79 ff ff ff       	call   1b7c <blank_line>
    1c03:	85 c0                	test   %eax,%eax
    1c05:	75 c5                	jne    1bcc <skip+0x11>
    1c07:	48 89 d8             	mov    %rbx,%rax
    1c0a:	48 83 c4 08          	add    $0x8,%rsp
    1c0e:	5b                   	pop    %rbx
    1c0f:	5d                   	pop    %rbp
    1c10:	c3                   	ret    

0000000000001c11 <send_msg>:
    1c11:	f3 0f 1e fa          	endbr64 
    1c15:	53                   	push   %rbx
    1c16:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1c1d:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1c22:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1c29:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1c2e:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1c35:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1c3a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1c41:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1c46:	8b 0d ec 3e 00 00    	mov    0x3eec(%rip),%ecx        # 5b38 <num_input_strings>
    1c4c:	8d 41 ff             	lea    -0x1(%rcx),%eax
    1c4f:	48 98                	cltq   
    1c51:	48 89 c2             	mov    %rax,%rdx
    1c54:	48 c1 e2 04          	shl    $0x4,%rdx
    1c58:	48 29 c2             	sub    %rax,%rdx
    1c5b:	48 8d 05 de 3e 00 00 	lea    0x3ede(%rip),%rax        # 5b40 <input_strings>
    1c62:	48 8d 04 d0          	lea    (%rax,%rdx,8),%rax
    1c66:	85 ff                	test   %edi,%edi
    1c68:	4c 8d 0d 2e 17 00 00 	lea    0x172e(%rip),%r9        # 339d <array.0+0x19d>
    1c6f:	48 8d 15 2f 17 00 00 	lea    0x172f(%rip),%rdx        # 33a5 <array.0+0x1a5>
    1c76:	4c 0f 44 ca          	cmove  %rdx,%r9
    1c7a:	48 8d 9c 24 00 20 00 	lea    0x2000(%rsp),%rbx
    1c81:	00 
    1c82:	50                   	push   %rax
    1c83:	51                   	push   %rcx
    1c84:	44 8b 05 b5 38 00 00 	mov    0x38b5(%rip),%r8d        # 5540 <bomb_id>
    1c8b:	48 8d 0d 1c 17 00 00 	lea    0x171c(%rip),%rcx        # 33ae <array.0+0x1ae>
    1c92:	ba 00 20 00 00       	mov    $0x2000,%edx
    1c97:	be 01 00 00 00       	mov    $0x1,%esi
    1c9c:	48 89 df             	mov    %rbx,%rdi
    1c9f:	b8 00 00 00 00       	mov    $0x0,%eax
    1ca4:	e8 b7 f6 ff ff       	call   1360 <__sprintf_chk@plt>
    1ca9:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    1cae:	ba 00 00 00 00       	mov    $0x0,%edx
    1cb3:	48 89 de             	mov    %rbx,%rsi
    1cb6:	48 8d 3d 83 34 00 00 	lea    0x3483(%rip),%rdi        # 5140 <userid>
    1cbd:	e8 77 0d 00 00       	call   2a39 <driver_post>
    1cc2:	48 83 c4 10          	add    $0x10,%rsp
    1cc6:	85 c0                	test   %eax,%eax
    1cc8:	78 09                	js     1cd3 <send_msg+0xc2>
    1cca:	48 81 c4 00 40 00 00 	add    $0x4000,%rsp
    1cd1:	5b                   	pop    %rbx
    1cd2:	c3                   	ret    
    1cd3:	48 89 e7             	mov    %rsp,%rdi
    1cd6:	e8 35 f5 ff ff       	call   1210 <puts@plt>
    1cdb:	bf 00 00 00 00       	mov    $0x0,%edi
    1ce0:	e8 2b f6 ff ff       	call   1310 <exit@plt>

0000000000001ce5 <explode_bomb>:
    1ce5:	f3 0f 1e fa          	endbr64 
    1ce9:	50                   	push   %rax
    1cea:	58                   	pop    %rax
    1ceb:	48 83 ec 08          	sub    $0x8,%rsp
    1cef:	48 8d 3d c4 16 00 00 	lea    0x16c4(%rip),%rdi        # 33ba <array.0+0x1ba>
    1cf6:	e8 15 f5 ff ff       	call   1210 <puts@plt>
    1cfb:	48 8d 3d c1 16 00 00 	lea    0x16c1(%rip),%rdi        # 33c3 <array.0+0x1c3>
    1d02:	e8 09 f5 ff ff       	call   1210 <puts@plt>
    1d07:	83 3d 92 47 00 00 00 	cmpl   $0x0,0x4792(%rip)        # 64a0 <grade_bomb>
    1d0e:	74 0a                	je     1d1a <explode_bomb+0x35>
    1d10:	bf 08 00 00 00       	mov    $0x8,%edi
    1d15:	e8 f6 f5 ff ff       	call   1310 <exit@plt>
    1d1a:	bf 00 00 00 00       	mov    $0x0,%edi
    1d1f:	e8 ed fe ff ff       	call   1c11 <send_msg>
    1d24:	48 8d 3d 4d 15 00 00 	lea    0x154d(%rip),%rdi        # 3278 <array.0+0x78>
    1d2b:	e8 e0 f4 ff ff       	call   1210 <puts@plt>
    1d30:	eb de                	jmp    1d10 <explode_bomb+0x2b>

0000000000001d32 <read_six_numbers>:
    1d32:	f3 0f 1e fa          	endbr64 
    1d36:	48 83 ec 08          	sub    $0x8,%rsp
    1d3a:	48 89 f2             	mov    %rsi,%rdx
    1d3d:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1d41:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1d45:	50                   	push   %rax
    1d46:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1d4a:	50                   	push   %rax
    1d4b:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1d4f:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1d53:	48 8d 35 80 16 00 00 	lea    0x1680(%rip),%rsi        # 33da <array.0+0x1da>
    1d5a:	b8 00 00 00 00       	mov    $0x0,%eax
    1d5f:	e8 7c f5 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1d64:	48 83 c4 10          	add    $0x10,%rsp
    1d68:	83 f8 05             	cmp    $0x5,%eax
    1d6b:	7e 05                	jle    1d72 <read_six_numbers+0x40>
    1d6d:	48 83 c4 08          	add    $0x8,%rsp
    1d71:	c3                   	ret    
    1d72:	e8 6e ff ff ff       	call   1ce5 <explode_bomb>

0000000000001d77 <read_line>:
    1d77:	f3 0f 1e fa          	endbr64 
    1d7b:	55                   	push   %rbp
    1d7c:	53                   	push   %rbx
    1d7d:	48 83 ec 08          	sub    $0x8,%rsp
    1d81:	b8 00 00 00 00       	mov    $0x0,%eax
    1d86:	e8 30 fe ff ff       	call   1bbb <skip>
    1d8b:	48 85 c0             	test   %rax,%rax
    1d8e:	74 63                	je     1df3 <read_line+0x7c>
    1d90:	8b 1d a2 3d 00 00    	mov    0x3da2(%rip),%ebx        # 5b38 <num_input_strings>
    1d96:	48 63 d3             	movslq %ebx,%rdx
    1d99:	48 89 d0             	mov    %rdx,%rax
    1d9c:	48 c1 e0 04          	shl    $0x4,%rax
    1da0:	48 29 d0             	sub    %rdx,%rax
    1da3:	48 8d 15 96 3d 00 00 	lea    0x3d96(%rip),%rdx        # 5b40 <input_strings>
    1daa:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    1dae:	48 89 ef             	mov    %rbp,%rdi
    1db1:	e8 7a f4 ff ff       	call   1230 <strlen@plt>
    1db6:	83 f8 76             	cmp    $0x76,%eax
    1db9:	0f 8f 9d 00 00 00    	jg     1e5c <read_line+0xe5>
    1dbf:	83 e8 01             	sub    $0x1,%eax
    1dc2:	48 98                	cltq   
    1dc4:	48 63 cb             	movslq %ebx,%rcx
    1dc7:	48 89 ca             	mov    %rcx,%rdx
    1dca:	48 c1 e2 04          	shl    $0x4,%rdx
    1dce:	48 29 ca             	sub    %rcx,%rdx
    1dd1:	48 8d 0d 68 3d 00 00 	lea    0x3d68(%rip),%rcx        # 5b40 <input_strings>
    1dd8:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    1ddc:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1de0:	83 c3 01             	add    $0x1,%ebx
    1de3:	89 1d 4f 3d 00 00    	mov    %ebx,0x3d4f(%rip)        # 5b38 <num_input_strings>
    1de9:	48 89 e8             	mov    %rbp,%rax
    1dec:	48 83 c4 08          	add    $0x8,%rsp
    1df0:	5b                   	pop    %rbx
    1df1:	5d                   	pop    %rbp
    1df2:	c3                   	ret    
    1df3:	48 8b 05 96 3c 00 00 	mov    0x3c96(%rip),%rax        # 5a90 <stdin@GLIBC_2.2.5>
    1dfa:	48 39 05 af 3c 00 00 	cmp    %rax,0x3caf(%rip)        # 5ab0 <infile>
    1e01:	74 13                	je     1e16 <read_line+0x9f>
    1e03:	83 3d 96 46 00 00 00 	cmpl   $0x0,0x4696(%rip)        # 64a0 <grade_bomb>
    1e0a:	74 20                	je     1e2c <read_line+0xb5>
    1e0c:	bf 00 00 00 00       	mov    $0x0,%edi
    1e11:	e8 fa f4 ff ff       	call   1310 <exit@plt>
    1e16:	48 8d 3d cf 15 00 00 	lea    0x15cf(%rip),%rdi        # 33ec <array.0+0x1ec>
    1e1d:	e8 ee f3 ff ff       	call   1210 <puts@plt>
    1e22:	bf 08 00 00 00       	mov    $0x8,%edi
    1e27:	e8 e4 f4 ff ff       	call   1310 <exit@plt>
    1e2c:	48 89 05 7d 3c 00 00 	mov    %rax,0x3c7d(%rip)        # 5ab0 <infile>
    1e33:	b8 00 00 00 00       	mov    $0x0,%eax
    1e38:	e8 7e fd ff ff       	call   1bbb <skip>
    1e3d:	48 85 c0             	test   %rax,%rax
    1e40:	0f 85 4a ff ff ff    	jne    1d90 <read_line+0x19>
    1e46:	48 8d 3d 9f 15 00 00 	lea    0x159f(%rip),%rdi        # 33ec <array.0+0x1ec>
    1e4d:	e8 be f3 ff ff       	call   1210 <puts@plt>
    1e52:	bf 00 00 00 00       	mov    $0x0,%edi
    1e57:	e8 b4 f4 ff ff       	call   1310 <exit@plt>
    1e5c:	48 8d 3d a7 15 00 00 	lea    0x15a7(%rip),%rdi        # 340a <array.0+0x20a>
    1e63:	e8 a8 f3 ff ff       	call   1210 <puts@plt>
    1e68:	8b 05 ca 3c 00 00    	mov    0x3cca(%rip),%eax        # 5b38 <num_input_strings>
    1e6e:	8d 50 01             	lea    0x1(%rax),%edx
    1e71:	89 15 c1 3c 00 00    	mov    %edx,0x3cc1(%rip)        # 5b38 <num_input_strings>
    1e77:	48 98                	cltq   
    1e79:	48 6b c0 78          	imul   $0x78,%rax,%rax
    1e7d:	48 8d 15 bc 3c 00 00 	lea    0x3cbc(%rip),%rdx        # 5b40 <input_strings>
    1e84:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1e8b:	75 6e 63 
    1e8e:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1e95:	2a 2a 00 
    1e98:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1e9c:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1ea1:	e8 3f fe ff ff       	call   1ce5 <explode_bomb>

0000000000001ea6 <phase_defused>:
    1ea6:	f3 0f 1e fa          	endbr64 
    1eaa:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1eb1:	83 3d e8 45 00 00 00 	cmpl   $0x0,0x45e8(%rip)        # 64a0 <grade_bomb>
    1eb8:	74 11                	je     1ecb <phase_defused+0x25>
    1eba:	83 3d 77 3c 00 00 06 	cmpl   $0x6,0x3c77(%rip)        # 5b38 <num_input_strings>
    1ec1:	74 14                	je     1ed7 <phase_defused+0x31>
    1ec3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    1eca:	c3                   	ret    
    1ecb:	bf 01 00 00 00       	mov    $0x1,%edi
    1ed0:	e8 3c fd ff ff       	call   1c11 <send_msg>
    1ed5:	eb e3                	jmp    1eba <phase_defused+0x14>
    1ed7:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1edc:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1ee1:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1ee6:	48 8d 35 38 15 00 00 	lea    0x1538(%rip),%rsi        # 3425 <array.0+0x225>
    1eed:	48 8d 3d b4 3d 00 00 	lea    0x3db4(%rip),%rdi        # 5ca8 <input_strings+0x168>
    1ef4:	b8 00 00 00 00       	mov    $0x0,%eax
    1ef9:	e8 e2 f3 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1efe:	83 f8 03             	cmp    $0x3,%eax
    1f01:	74 23                	je     1f26 <phase_defused+0x80>
    1f03:	48 8d 3d f6 13 00 00 	lea    0x13f6(%rip),%rdi        # 3300 <array.0+0x100>
    1f0a:	e8 01 f3 ff ff       	call   1210 <puts@plt>
    1f0f:	83 3d 8a 45 00 00 00 	cmpl   $0x0,0x458a(%rip)        # 64a0 <grade_bomb>
    1f16:	75 ab                	jne    1ec3 <phase_defused+0x1d>
    1f18:	48 8d 3d 11 14 00 00 	lea    0x1411(%rip),%rdi        # 3330 <array.0+0x130>
    1f1f:	e8 ec f2 ff ff       	call   1210 <puts@plt>
    1f24:	eb 9d                	jmp    1ec3 <phase_defused+0x1d>
    1f26:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1f2b:	48 8d 35 fc 14 00 00 	lea    0x14fc(%rip),%rsi        # 342e <array.0+0x22e>
    1f32:	e8 95 fb ff ff       	call   1acc <strings_not_equal>
    1f37:	85 c0                	test   %eax,%eax
    1f39:	75 c8                	jne    1f03 <phase_defused+0x5d>
    1f3b:	48 8d 3d 5e 13 00 00 	lea    0x135e(%rip),%rdi        # 32a0 <array.0+0xa0>
    1f42:	e8 c9 f2 ff ff       	call   1210 <puts@plt>
    1f47:	48 8d 3d 7a 13 00 00 	lea    0x137a(%rip),%rdi        # 32c8 <array.0+0xc8>
    1f4e:	e8 bd f2 ff ff       	call   1210 <puts@plt>
    1f53:	b8 00 00 00 00       	mov    $0x0,%eax
    1f58:	e8 63 fa ff ff       	call   19c0 <secret_phase>
    1f5d:	eb a4                	jmp    1f03 <phase_defused+0x5d>

0000000000001f5f <sigalrm_handler>:
    1f5f:	f3 0f 1e fa          	endbr64 
    1f63:	50                   	push   %rax
    1f64:	58                   	pop    %rax
    1f65:	48 83 ec 08          	sub    $0x8,%rsp
    1f69:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f6e:	48 8d 15 13 15 00 00 	lea    0x1513(%rip),%rdx        # 3488 <array.0+0x288>
    1f75:	be 01 00 00 00       	mov    $0x1,%esi
    1f7a:	48 8b 3d 1f 3b 00 00 	mov    0x3b1f(%rip),%rdi        # 5aa0 <stderr@GLIBC_2.2.5>
    1f81:	b8 00 00 00 00       	mov    $0x0,%eax
    1f86:	e8 a5 f3 ff ff       	call   1330 <__fprintf_chk@plt>
    1f8b:	bf 01 00 00 00       	mov    $0x1,%edi
    1f90:	e8 7b f3 ff ff       	call   1310 <exit@plt>

0000000000001f95 <rio_readlineb>:
    1f95:	41 56                	push   %r14
    1f97:	41 55                	push   %r13
    1f99:	41 54                	push   %r12
    1f9b:	55                   	push   %rbp
    1f9c:	53                   	push   %rbx
    1f9d:	49 89 f4             	mov    %rsi,%r12
    1fa0:	48 83 fa 01          	cmp    $0x1,%rdx
    1fa4:	0f 86 92 00 00 00    	jbe    203c <rio_readlineb+0xa7>
    1faa:	48 89 fb             	mov    %rdi,%rbx
    1fad:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1fb2:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1fb8:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1fbc:	eb 56                	jmp    2014 <rio_readlineb+0x7f>
    1fbe:	e8 2d f2 ff ff       	call   11f0 <__errno_location@plt>
    1fc3:	83 38 04             	cmpl   $0x4,(%rax)
    1fc6:	75 55                	jne    201d <rio_readlineb+0x88>
    1fc8:	ba 00 20 00 00       	mov    $0x2000,%edx
    1fcd:	48 89 ee             	mov    %rbp,%rsi
    1fd0:	8b 3b                	mov    (%rbx),%edi
    1fd2:	e8 89 f2 ff ff       	call   1260 <read@plt>
    1fd7:	89 c2                	mov    %eax,%edx
    1fd9:	89 43 04             	mov    %eax,0x4(%rbx)
    1fdc:	85 c0                	test   %eax,%eax
    1fde:	78 de                	js     1fbe <rio_readlineb+0x29>
    1fe0:	85 c0                	test   %eax,%eax
    1fe2:	74 42                	je     2026 <rio_readlineb+0x91>
    1fe4:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1fe8:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1fec:	0f b6 08             	movzbl (%rax),%ecx
    1fef:	48 83 c0 01          	add    $0x1,%rax
    1ff3:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1ff7:	83 ea 01             	sub    $0x1,%edx
    1ffa:	89 53 04             	mov    %edx,0x4(%rbx)
    1ffd:	49 83 c4 01          	add    $0x1,%r12
    2001:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    2006:	80 f9 0a             	cmp    $0xa,%cl
    2009:	74 3c                	je     2047 <rio_readlineb+0xb2>
    200b:	41 83 c5 01          	add    $0x1,%r13d
    200f:	4d 39 f4             	cmp    %r14,%r12
    2012:	74 30                	je     2044 <rio_readlineb+0xaf>
    2014:	8b 53 04             	mov    0x4(%rbx),%edx
    2017:	85 d2                	test   %edx,%edx
    2019:	7e ad                	jle    1fc8 <rio_readlineb+0x33>
    201b:	eb cb                	jmp    1fe8 <rio_readlineb+0x53>
    201d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2024:	eb 05                	jmp    202b <rio_readlineb+0x96>
    2026:	b8 00 00 00 00       	mov    $0x0,%eax
    202b:	85 c0                	test   %eax,%eax
    202d:	75 29                	jne    2058 <rio_readlineb+0xc3>
    202f:	b8 00 00 00 00       	mov    $0x0,%eax
    2034:	41 83 fd 01          	cmp    $0x1,%r13d
    2038:	75 0d                	jne    2047 <rio_readlineb+0xb2>
    203a:	eb 13                	jmp    204f <rio_readlineb+0xba>
    203c:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2042:	eb 03                	jmp    2047 <rio_readlineb+0xb2>
    2044:	4d 89 f4             	mov    %r14,%r12
    2047:	41 c6 04 24 00       	movb   $0x0,(%r12)
    204c:	49 63 c5             	movslq %r13d,%rax
    204f:	5b                   	pop    %rbx
    2050:	5d                   	pop    %rbp
    2051:	41 5c                	pop    %r12
    2053:	41 5d                	pop    %r13
    2055:	41 5e                	pop    %r14
    2057:	c3                   	ret    
    2058:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    205f:	eb ee                	jmp    204f <rio_readlineb+0xba>

0000000000002061 <submitr>:
    2061:	f3 0f 1e fa          	endbr64 
    2065:	41 57                	push   %r15
    2067:	41 56                	push   %r14
    2069:	41 55                	push   %r13
    206b:	41 54                	push   %r12
    206d:	55                   	push   %rbp
    206e:	53                   	push   %rbx
    206f:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    2076:	ff 
    2077:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    207e:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2083:	4c 39 dc             	cmp    %r11,%rsp
    2086:	75 ef                	jne    2077 <submitr+0x16>
    2088:	48 83 ec 68          	sub    $0x68,%rsp
    208c:	49 89 fd             	mov    %rdi,%r13
    208f:	89 f5                	mov    %esi,%ebp
    2091:	48 89 14 24          	mov    %rdx,(%rsp)
    2095:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    209a:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    209f:	4c 89 cb             	mov    %r9,%rbx
    20a2:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
    20a9:	00 
    20aa:	c7 84 24 3c 20 00 00 	movl   $0x0,0x203c(%rsp)
    20b1:	00 00 00 00 
    20b5:	ba 00 00 00 00       	mov    $0x0,%edx
    20ba:	be 01 00 00 00       	mov    $0x1,%esi
    20bf:	bf 02 00 00 00       	mov    $0x2,%edi
    20c4:	e8 a7 f2 ff ff       	call   1370 <socket@plt>
    20c9:	85 c0                	test   %eax,%eax
    20cb:	0f 88 20 01 00 00    	js     21f1 <submitr+0x190>
    20d1:	41 89 c4             	mov    %eax,%r12d
    20d4:	4c 89 ef             	mov    %r13,%rdi
    20d7:	e8 c4 f1 ff ff       	call   12a0 <gethostbyname@plt>
    20dc:	48 85 c0             	test   %rax,%rax
    20df:	0f 84 5c 01 00 00    	je     2241 <submitr+0x1e0>
    20e5:	4c 8d ac 24 50 a0 00 	lea    0xa050(%rsp),%r13
    20ec:	00 
    20ed:	48 c7 84 24 50 a0 00 	movq   $0x0,0xa050(%rsp)
    20f4:	00 00 00 00 00 
    20f9:	48 c7 84 24 58 a0 00 	movq   $0x0,0xa058(%rsp)
    2100:	00 00 00 00 00 
    2105:	66 c7 84 24 50 a0 00 	movw   $0x2,0xa050(%rsp)
    210c:	00 02 00 
    210f:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2113:	48 8b 40 18          	mov    0x18(%rax),%rax
    2117:	48 8d bc 24 54 a0 00 	lea    0xa054(%rsp),%rdi
    211e:	00 
    211f:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2124:	48 8b 30             	mov    (%rax),%rsi
    2127:	e8 84 f1 ff ff       	call   12b0 <__memmove_chk@plt>
    212c:	66 c1 c5 08          	rol    $0x8,%bp
    2130:	66 89 ac 24 52 a0 00 	mov    %bp,0xa052(%rsp)
    2137:	00 
    2138:	ba 10 00 00 00       	mov    $0x10,%edx
    213d:	4c 89 ee             	mov    %r13,%rsi
    2140:	44 89 e7             	mov    %r12d,%edi
    2143:	e8 d8 f1 ff ff       	call   1320 <connect@plt>
    2148:	85 c0                	test   %eax,%eax
    214a:	0f 88 5c 01 00 00    	js     22ac <submitr+0x24b>
    2150:	48 89 df             	mov    %rbx,%rdi
    2153:	e8 d8 f0 ff ff       	call   1230 <strlen@plt>
    2158:	48 89 c5             	mov    %rax,%rbp
    215b:	48 8b 3c 24          	mov    (%rsp),%rdi
    215f:	e8 cc f0 ff ff       	call   1230 <strlen@plt>
    2164:	49 89 c6             	mov    %rax,%r14
    2167:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    216c:	e8 bf f0 ff ff       	call   1230 <strlen@plt>
    2171:	49 89 c5             	mov    %rax,%r13
    2174:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2179:	e8 b2 f0 ff ff       	call   1230 <strlen@plt>
    217e:	48 89 c2             	mov    %rax,%rdx
    2181:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    2188:	00 
    2189:	48 01 d0             	add    %rdx,%rax
    218c:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    2191:	48 01 d0             	add    %rdx,%rax
    2194:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    219a:	0f 87 69 01 00 00    	ja     2309 <submitr+0x2a8>
    21a0:	48 8d 94 24 40 40 00 	lea    0x4040(%rsp),%rdx
    21a7:	00 
    21a8:	b9 00 04 00 00       	mov    $0x400,%ecx
    21ad:	b8 00 00 00 00       	mov    $0x0,%eax
    21b2:	48 89 d7             	mov    %rdx,%rdi
    21b5:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    21b8:	48 89 df             	mov    %rbx,%rdi
    21bb:	e8 70 f0 ff ff       	call   1230 <strlen@plt>
    21c0:	85 c0                	test   %eax,%eax
    21c2:	0f 84 e1 04 00 00    	je     26a9 <submitr+0x648>
    21c8:	8d 40 ff             	lea    -0x1(%rax),%eax
    21cb:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    21d0:	48 8d ac 24 40 40 00 	lea    0x4040(%rsp),%rbp
    21d7:	00 
    21d8:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
    21dd:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    21e2:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    21e9:	00 20 00 
    21ec:	e9 a6 01 00 00       	jmp    2397 <submitr+0x336>
    21f1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    21f8:	3a 20 43 
    21fb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2202:	20 75 6e 
    2205:	49 89 07             	mov    %rax,(%r15)
    2208:	49 89 57 08          	mov    %rdx,0x8(%r15)
    220c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2213:	74 6f 20 
    2216:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    221d:	65 20 73 
    2220:	49 89 47 10          	mov    %rax,0x10(%r15)
    2224:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2228:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    222f:	65 
    2230:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    2237:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    223c:	e9 f7 02 00 00       	jmp    2538 <submitr+0x4d7>
    2241:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2248:	3a 20 44 
    224b:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2252:	20 75 6e 
    2255:	49 89 07             	mov    %rax,(%r15)
    2258:	49 89 57 08          	mov    %rdx,0x8(%r15)
    225c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2263:	74 6f 20 
    2266:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    226d:	76 65 20 
    2270:	49 89 47 10          	mov    %rax,0x10(%r15)
    2274:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2278:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    227f:	72 20 61 
    2282:	49 89 47 20          	mov    %rax,0x20(%r15)
    2286:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    228d:	65 
    228e:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    2295:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    229a:	44 89 e7             	mov    %r12d,%edi
    229d:	e8 ae ef ff ff       	call   1250 <close@plt>
    22a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22a7:	e9 8c 02 00 00       	jmp    2538 <submitr+0x4d7>
    22ac:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    22b3:	3a 20 55 
    22b6:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    22bd:	20 74 6f 
    22c0:	49 89 07             	mov    %rax,(%r15)
    22c3:	49 89 57 08          	mov    %rdx,0x8(%r15)
    22c7:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    22ce:	65 63 74 
    22d1:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    22d8:	68 65 20 
    22db:	49 89 47 10          	mov    %rax,0x10(%r15)
    22df:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22e3:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    22ea:	76 
    22eb:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    22f2:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    22f7:	44 89 e7             	mov    %r12d,%edi
    22fa:	e8 51 ef ff ff       	call   1250 <close@plt>
    22ff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2304:	e9 2f 02 00 00       	jmp    2538 <submitr+0x4d7>
    2309:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2310:	3a 20 52 
    2313:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    231a:	20 73 74 
    231d:	49 89 07             	mov    %rax,(%r15)
    2320:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2324:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    232b:	74 6f 6f 
    232e:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2335:	65 2e 20 
    2338:	49 89 47 10          	mov    %rax,0x10(%r15)
    233c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2340:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2347:	61 73 65 
    234a:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2351:	49 54 52 
    2354:	49 89 47 20          	mov    %rax,0x20(%r15)
    2358:	49 89 57 28          	mov    %rdx,0x28(%r15)
    235c:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2363:	55 46 00 
    2366:	49 89 47 30          	mov    %rax,0x30(%r15)
    236a:	44 89 e7             	mov    %r12d,%edi
    236d:	e8 de ee ff ff       	call   1250 <close@plt>
    2372:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2377:	e9 bc 01 00 00       	jmp    2538 <submitr+0x4d7>
    237c:	49 0f a3 c6          	bt     %rax,%r14
    2380:	73 21                	jae    23a3 <submitr+0x342>
    2382:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2386:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    238a:	48 83 c3 01          	add    $0x1,%rbx
    238e:	4c 39 eb             	cmp    %r13,%rbx
    2391:	0f 84 12 03 00 00    	je     26a9 <submitr+0x648>
    2397:	44 0f b6 03          	movzbl (%rbx),%r8d
    239b:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    239f:	3c 35                	cmp    $0x35,%al
    23a1:	76 d9                	jbe    237c <submitr+0x31b>
    23a3:	44 89 c0             	mov    %r8d,%eax
    23a6:	83 e0 df             	and    $0xffffffdf,%eax
    23a9:	83 e8 41             	sub    $0x41,%eax
    23ac:	3c 19                	cmp    $0x19,%al
    23ae:	76 d2                	jbe    2382 <submitr+0x321>
    23b0:	41 80 f8 20          	cmp    $0x20,%r8b
    23b4:	74 54                	je     240a <submitr+0x3a9>
    23b6:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    23ba:	3c 5f                	cmp    $0x5f,%al
    23bc:	76 0a                	jbe    23c8 <submitr+0x367>
    23be:	41 80 f8 09          	cmp    $0x9,%r8b
    23c2:	0f 85 54 02 00 00    	jne    261c <submitr+0x5bb>
    23c8:	45 0f b6 c0          	movzbl %r8b,%r8d
    23cc:	48 8d 0d 83 11 00 00 	lea    0x1183(%rip),%rcx        # 3556 <array.0+0x356>
    23d3:	ba 08 00 00 00       	mov    $0x8,%edx
    23d8:	be 01 00 00 00       	mov    $0x1,%esi
    23dd:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    23e2:	b8 00 00 00 00       	mov    $0x0,%eax
    23e7:	e8 74 ef ff ff       	call   1360 <__sprintf_chk@plt>
    23ec:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
    23f1:	88 45 00             	mov    %al,0x0(%rbp)
    23f4:	0f b6 44 24 29       	movzbl 0x29(%rsp),%eax
    23f9:	88 45 01             	mov    %al,0x1(%rbp)
    23fc:	0f b6 44 24 2a       	movzbl 0x2a(%rsp),%eax
    2401:	88 45 02             	mov    %al,0x2(%rbp)
    2404:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2408:	eb 80                	jmp    238a <submitr+0x329>
    240a:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    240e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2412:	e9 73 ff ff ff       	jmp    238a <submitr+0x329>
    2417:	48 01 c5             	add    %rax,%rbp
    241a:	48 29 c3             	sub    %rax,%rbx
    241d:	0f 84 e9 02 00 00    	je     270c <submitr+0x6ab>
    2423:	48 89 da             	mov    %rbx,%rdx
    2426:	48 89 ee             	mov    %rbp,%rsi
    2429:	44 89 e7             	mov    %r12d,%edi
    242c:	e8 ef ed ff ff       	call   1220 <write@plt>
    2431:	48 85 c0             	test   %rax,%rax
    2434:	7f e1                	jg     2417 <submitr+0x3b6>
    2436:	e8 b5 ed ff ff       	call   11f0 <__errno_location@plt>
    243b:	83 38 04             	cmpl   $0x4,(%rax)
    243e:	0f 85 79 01 00 00    	jne    25bd <submitr+0x55c>
    2444:	4c 89 e8             	mov    %r13,%rax
    2447:	eb ce                	jmp    2417 <submitr+0x3b6>
    2449:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2450:	3a 20 43 
    2453:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    245a:	20 75 6e 
    245d:	49 89 07             	mov    %rax,(%r15)
    2460:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2464:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    246b:	74 6f 20 
    246e:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2475:	66 69 72 
    2478:	49 89 47 10          	mov    %rax,0x10(%r15)
    247c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2480:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2487:	61 64 65 
    248a:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2491:	6d 20 73 
    2494:	49 89 47 20          	mov    %rax,0x20(%r15)
    2498:	49 89 57 28          	mov    %rdx,0x28(%r15)
    249c:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    24a3:	65 
    24a4:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    24ab:	44 89 e7             	mov    %r12d,%edi
    24ae:	e8 9d ed ff ff       	call   1250 <close@plt>
    24b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24b8:	eb 7e                	jmp    2538 <submitr+0x4d7>
    24ba:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
    24bf:	48 8d 0d ea 0f 00 00 	lea    0xfea(%rip),%rcx        # 34b0 <array.0+0x2b0>
    24c6:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    24cd:	be 01 00 00 00       	mov    $0x1,%esi
    24d2:	4c 89 ff             	mov    %r15,%rdi
    24d5:	b8 00 00 00 00       	mov    $0x0,%eax
    24da:	e8 81 ee ff ff       	call   1360 <__sprintf_chk@plt>
    24df:	44 89 e7             	mov    %r12d,%edi
    24e2:	e8 69 ed ff ff       	call   1250 <close@plt>
    24e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24ec:	eb 4a                	jmp    2538 <submitr+0x4d7>
    24ee:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    24f5:	00 
    24f6:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    24fd:	00 
    24fe:	ba 00 20 00 00       	mov    $0x2000,%edx
    2503:	e8 8d fa ff ff       	call   1f95 <rio_readlineb>
    2508:	48 85 c0             	test   %rax,%rax
    250b:	7e 3d                	jle    254a <submitr+0x4e9>
    250d:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    2514:	00 
    2515:	4c 89 ff             	mov    %r15,%rdi
    2518:	e8 e3 ec ff ff       	call   1200 <strcpy@plt>
    251d:	44 89 e7             	mov    %r12d,%edi
    2520:	e8 2b ed ff ff       	call   1250 <close@plt>
    2525:	48 8d 35 45 10 00 00 	lea    0x1045(%rip),%rsi        # 3571 <array.0+0x371>
    252c:	4c 89 ff             	mov    %r15,%rdi
    252f:	e8 4c ed ff ff       	call   1280 <strcmp@plt>
    2534:	f7 d8                	neg    %eax
    2536:	19 c0                	sbb    %eax,%eax
    2538:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    253f:	5b                   	pop    %rbx
    2540:	5d                   	pop    %rbp
    2541:	41 5c                	pop    %r12
    2543:	41 5d                	pop    %r13
    2545:	41 5e                	pop    %r14
    2547:	41 5f                	pop    %r15
    2549:	c3                   	ret    
    254a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2551:	3a 20 43 
    2554:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    255b:	20 75 6e 
    255e:	49 89 07             	mov    %rax,(%r15)
    2561:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2565:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    256c:	74 6f 20 
    256f:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2576:	73 74 61 
    2579:	49 89 47 10          	mov    %rax,0x10(%r15)
    257d:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2581:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2588:	65 73 73 
    258b:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2592:	72 6f 6d 
    2595:	49 89 47 20          	mov    %rax,0x20(%r15)
    2599:	49 89 57 28          	mov    %rdx,0x28(%r15)
    259d:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    25a4:	65 72 00 
    25a7:	49 89 47 30          	mov    %rax,0x30(%r15)
    25ab:	44 89 e7             	mov    %r12d,%edi
    25ae:	e8 9d ec ff ff       	call   1250 <close@plt>
    25b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25b8:	e9 7b ff ff ff       	jmp    2538 <submitr+0x4d7>
    25bd:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    25c4:	3a 20 43 
    25c7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    25ce:	20 75 6e 
    25d1:	49 89 07             	mov    %rax,(%r15)
    25d4:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25d8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    25df:	74 6f 20 
    25e2:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    25e9:	20 74 6f 
    25ec:	49 89 47 10          	mov    %rax,0x10(%r15)
    25f0:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25f4:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    25fb:	73 65 72 
    25fe:	49 89 47 20          	mov    %rax,0x20(%r15)
    2602:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2609:	00 
    260a:	44 89 e7             	mov    %r12d,%edi
    260d:	e8 3e ec ff ff       	call   1250 <close@plt>
    2612:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2617:	e9 1c ff ff ff       	jmp    2538 <submitr+0x4d7>
    261c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2623:	3a 20 52 
    2626:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    262d:	20 73 74 
    2630:	49 89 07             	mov    %rax,(%r15)
    2633:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2637:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    263e:	63 6f 6e 
    2641:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2648:	20 61 6e 
    264b:	49 89 47 10          	mov    %rax,0x10(%r15)
    264f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2653:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    265a:	67 61 6c 
    265d:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2664:	6e 70 72 
    2667:	49 89 47 20          	mov    %rax,0x20(%r15)
    266b:	49 89 57 28          	mov    %rdx,0x28(%r15)
    266f:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2676:	6c 65 20 
    2679:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2680:	63 74 65 
    2683:	49 89 47 30          	mov    %rax,0x30(%r15)
    2687:	49 89 57 38          	mov    %rdx,0x38(%r15)
    268b:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2692:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2697:	44 89 e7             	mov    %r12d,%edi
    269a:	e8 b1 eb ff ff       	call   1250 <close@plt>
    269f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26a4:	e9 8f fe ff ff       	jmp    2538 <submitr+0x4d7>
    26a9:	48 8d 9c 24 40 60 00 	lea    0x6040(%rsp),%rbx
    26b0:	00 
    26b1:	48 8d 84 24 40 40 00 	lea    0x4040(%rsp),%rax
    26b8:	00 
    26b9:	50                   	push   %rax
    26ba:	ff 74 24 18          	push   0x18(%rsp)
    26be:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    26c3:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    26c8:	48 8d 0d 11 0e 00 00 	lea    0xe11(%rip),%rcx        # 34e0 <array.0+0x2e0>
    26cf:	ba 00 20 00 00       	mov    $0x2000,%edx
    26d4:	be 01 00 00 00       	mov    $0x1,%esi
    26d9:	48 89 df             	mov    %rbx,%rdi
    26dc:	b8 00 00 00 00       	mov    $0x0,%eax
    26e1:	e8 7a ec ff ff       	call   1360 <__sprintf_chk@plt>
    26e6:	48 89 df             	mov    %rbx,%rdi
    26e9:	e8 42 eb ff ff       	call   1230 <strlen@plt>
    26ee:	48 89 c3             	mov    %rax,%rbx
    26f1:	48 83 c4 10          	add    $0x10,%rsp
    26f5:	48 8d ac 24 40 60 00 	lea    0x6040(%rsp),%rbp
    26fc:	00 
    26fd:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    2703:	48 85 c0             	test   %rax,%rax
    2706:	0f 85 17 fd ff ff    	jne    2423 <submitr+0x3c2>
    270c:	44 89 a4 24 40 80 00 	mov    %r12d,0x8040(%rsp)
    2713:	00 
    2714:	c7 84 24 44 80 00 00 	movl   $0x0,0x8044(%rsp)
    271b:	00 00 00 00 
    271f:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    2726:	00 
    2727:	48 8d 84 24 50 80 00 	lea    0x8050(%rsp),%rax
    272e:	00 
    272f:	48 89 84 24 48 80 00 	mov    %rax,0x8048(%rsp)
    2736:	00 
    2737:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    273e:	00 
    273f:	ba 00 20 00 00       	mov    $0x2000,%edx
    2744:	e8 4c f8 ff ff       	call   1f95 <rio_readlineb>
    2749:	48 85 c0             	test   %rax,%rax
    274c:	0f 8e f7 fc ff ff    	jle    2449 <submitr+0x3e8>
    2752:	48 8d 8c 24 3c 20 00 	lea    0x203c(%rsp),%rcx
    2759:	00 
    275a:	48 8d 94 24 40 20 00 	lea    0x2040(%rsp),%rdx
    2761:	00 
    2762:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    2769:	00 
    276a:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    276f:	48 8d 35 e7 0d 00 00 	lea    0xde7(%rip),%rsi        # 355d <array.0+0x35d>
    2776:	b8 00 00 00 00       	mov    $0x0,%eax
    277b:	e8 60 eb ff ff       	call   12e0 <__isoc99_sscanf@plt>
    2780:	44 8b 84 24 3c 20 00 	mov    0x203c(%rsp),%r8d
    2787:	00 
    2788:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    278f:	0f 85 25 fd ff ff    	jne    24ba <submitr+0x459>
    2795:	48 8d 1d d2 0d 00 00 	lea    0xdd2(%rip),%rbx        # 356e <array.0+0x36e>
    279c:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    27a3:	00 
    27a4:	48 89 de             	mov    %rbx,%rsi
    27a7:	e8 d4 ea ff ff       	call   1280 <strcmp@plt>
    27ac:	85 c0                	test   %eax,%eax
    27ae:	0f 84 3a fd ff ff    	je     24ee <submitr+0x48d>
    27b4:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    27bb:	00 
    27bc:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    27c3:	00 
    27c4:	ba 00 20 00 00       	mov    $0x2000,%edx
    27c9:	e8 c7 f7 ff ff       	call   1f95 <rio_readlineb>
    27ce:	48 85 c0             	test   %rax,%rax
    27d1:	7f c9                	jg     279c <submitr+0x73b>
    27d3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    27da:	3a 20 43 
    27dd:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    27e4:	20 75 6e 
    27e7:	49 89 07             	mov    %rax,(%r15)
    27ea:	49 89 57 08          	mov    %rdx,0x8(%r15)
    27ee:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27f5:	74 6f 20 
    27f8:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    27ff:	68 65 61 
    2802:	49 89 47 10          	mov    %rax,0x10(%r15)
    2806:	49 89 57 18          	mov    %rdx,0x18(%r15)
    280a:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2811:	66 72 6f 
    2814:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    281b:	76 65 72 
    281e:	49 89 47 20          	mov    %rax,0x20(%r15)
    2822:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2826:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    282b:	44 89 e7             	mov    %r12d,%edi
    282e:	e8 1d ea ff ff       	call   1250 <close@plt>
    2833:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2838:	e9 fb fc ff ff       	jmp    2538 <submitr+0x4d7>

000000000000283d <init_timeout>:
    283d:	f3 0f 1e fa          	endbr64 
    2841:	85 ff                	test   %edi,%edi
    2843:	75 01                	jne    2846 <init_timeout+0x9>
    2845:	c3                   	ret    
    2846:	53                   	push   %rbx
    2847:	89 fb                	mov    %edi,%ebx
    2849:	48 8d 35 0f f7 ff ff 	lea    -0x8f1(%rip),%rsi        # 1f5f <sigalrm_handler>
    2850:	bf 0e 00 00 00       	mov    $0xe,%edi
    2855:	e8 36 ea ff ff       	call   1290 <signal@plt>
    285a:	85 db                	test   %ebx,%ebx
    285c:	b8 00 00 00 00       	mov    $0x0,%eax
    2861:	0f 49 c3             	cmovns %ebx,%eax
    2864:	89 c7                	mov    %eax,%edi
    2866:	e8 d5 e9 ff ff       	call   1240 <alarm@plt>
    286b:	5b                   	pop    %rbx
    286c:	c3                   	ret    

000000000000286d <init_driver>:
    286d:	f3 0f 1e fa          	endbr64 
    2871:	41 54                	push   %r12
    2873:	55                   	push   %rbp
    2874:	53                   	push   %rbx
    2875:	48 83 ec 10          	sub    $0x10,%rsp
    2879:	48 89 fd             	mov    %rdi,%rbp
    287c:	be 01 00 00 00       	mov    $0x1,%esi
    2881:	bf 0d 00 00 00       	mov    $0xd,%edi
    2886:	e8 05 ea ff ff       	call   1290 <signal@plt>
    288b:	be 01 00 00 00       	mov    $0x1,%esi
    2890:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2895:	e8 f6 e9 ff ff       	call   1290 <signal@plt>
    289a:	be 01 00 00 00       	mov    $0x1,%esi
    289f:	bf 1d 00 00 00       	mov    $0x1d,%edi
    28a4:	e8 e7 e9 ff ff       	call   1290 <signal@plt>
    28a9:	ba 00 00 00 00       	mov    $0x0,%edx
    28ae:	be 01 00 00 00       	mov    $0x1,%esi
    28b3:	bf 02 00 00 00       	mov    $0x2,%edi
    28b8:	e8 b3 ea ff ff       	call   1370 <socket@plt>
    28bd:	85 c0                	test   %eax,%eax
    28bf:	0f 88 88 00 00 00    	js     294d <init_driver+0xe0>
    28c5:	89 c3                	mov    %eax,%ebx
    28c7:	48 8d 3d a6 0c 00 00 	lea    0xca6(%rip),%rdi        # 3574 <array.0+0x374>
    28ce:	e8 cd e9 ff ff       	call   12a0 <gethostbyname@plt>
    28d3:	48 85 c0             	test   %rax,%rax
    28d6:	0f 84 bd 00 00 00    	je     2999 <init_driver+0x12c>
    28dc:	49 89 e4             	mov    %rsp,%r12
    28df:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    28e6:	00 
    28e7:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    28ee:	00 00 
    28f0:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    28f6:	48 63 50 14          	movslq 0x14(%rax),%rdx
    28fa:	48 8b 40 18          	mov    0x18(%rax),%rax
    28fe:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2903:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2908:	48 8b 30             	mov    (%rax),%rsi
    290b:	e8 a0 e9 ff ff       	call   12b0 <__memmove_chk@plt>
    2910:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    2917:	ba 10 00 00 00       	mov    $0x10,%edx
    291c:	4c 89 e6             	mov    %r12,%rsi
    291f:	89 df                	mov    %ebx,%edi
    2921:	e8 fa e9 ff ff       	call   1320 <connect@plt>
    2926:	85 c0                	test   %eax,%eax
    2928:	0f 88 d3 00 00 00    	js     2a01 <init_driver+0x194>
    292e:	89 df                	mov    %ebx,%edi
    2930:	e8 1b e9 ff ff       	call   1250 <close@plt>
    2935:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    293b:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    293f:	b8 00 00 00 00       	mov    $0x0,%eax
    2944:	48 83 c4 10          	add    $0x10,%rsp
    2948:	5b                   	pop    %rbx
    2949:	5d                   	pop    %rbp
    294a:	41 5c                	pop    %r12
    294c:	c3                   	ret    
    294d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2954:	3a 20 43 
    2957:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    295e:	20 75 6e 
    2961:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2965:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2969:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2970:	74 6f 20 
    2973:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    297a:	65 20 73 
    297d:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2981:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2985:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    298c:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2992:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2997:	eb ab                	jmp    2944 <init_driver+0xd7>
    2999:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    29a0:	3a 20 44 
    29a3:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    29aa:	20 75 6e 
    29ad:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29b1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29b5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29bc:	74 6f 20 
    29bf:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    29c6:	76 65 20 
    29c9:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29cd:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29d1:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    29d8:	72 20 61 
    29db:	48 89 45 20          	mov    %rax,0x20(%rbp)
    29df:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    29e6:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    29ec:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    29f0:	89 df                	mov    %ebx,%edi
    29f2:	e8 59 e8 ff ff       	call   1250 <close@plt>
    29f7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29fc:	e9 43 ff ff ff       	jmp    2944 <init_driver+0xd7>
    2a01:	4c 8d 05 6c 0b 00 00 	lea    0xb6c(%rip),%r8        # 3574 <array.0+0x374>
    2a08:	48 8d 0d 21 0b 00 00 	lea    0xb21(%rip),%rcx        # 3530 <array.0+0x330>
    2a0f:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2a16:	be 01 00 00 00       	mov    $0x1,%esi
    2a1b:	48 89 ef             	mov    %rbp,%rdi
    2a1e:	b8 00 00 00 00       	mov    $0x0,%eax
    2a23:	e8 38 e9 ff ff       	call   1360 <__sprintf_chk@plt>
    2a28:	89 df                	mov    %ebx,%edi
    2a2a:	e8 21 e8 ff ff       	call   1250 <close@plt>
    2a2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a34:	e9 0b ff ff ff       	jmp    2944 <init_driver+0xd7>

0000000000002a39 <driver_post>:
    2a39:	f3 0f 1e fa          	endbr64 
    2a3d:	53                   	push   %rbx
    2a3e:	48 89 cb             	mov    %rcx,%rbx
    2a41:	85 d2                	test   %edx,%edx
    2a43:	75 17                	jne    2a5c <driver_post+0x23>
    2a45:	48 85 ff             	test   %rdi,%rdi
    2a48:	74 05                	je     2a4f <driver_post+0x16>
    2a4a:	80 3f 00             	cmpb   $0x0,(%rdi)
    2a4d:	75 36                	jne    2a85 <driver_post+0x4c>
    2a4f:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a54:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a58:	89 d0                	mov    %edx,%eax
    2a5a:	5b                   	pop    %rbx
    2a5b:	c3                   	ret    
    2a5c:	48 89 f2             	mov    %rsi,%rdx
    2a5f:	48 8d 35 25 0b 00 00 	lea    0xb25(%rip),%rsi        # 358b <array.0+0x38b>
    2a66:	bf 01 00 00 00       	mov    $0x1,%edi
    2a6b:	b8 00 00 00 00       	mov    $0x0,%eax
    2a70:	e8 7b e8 ff ff       	call   12f0 <__printf_chk@plt>
    2a75:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a7a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a7e:	b8 00 00 00 00       	mov    $0x0,%eax
    2a83:	eb d5                	jmp    2a5a <driver_post+0x21>
    2a85:	48 83 ec 08          	sub    $0x8,%rsp
    2a89:	51                   	push   %rcx
    2a8a:	49 89 f1             	mov    %rsi,%r9
    2a8d:	4c 8d 05 0e 0b 00 00 	lea    0xb0e(%rip),%r8        # 35a2 <array.0+0x3a2>
    2a94:	48 89 f9             	mov    %rdi,%rcx
    2a97:	48 8d 15 11 0b 00 00 	lea    0xb11(%rip),%rdx        # 35af <array.0+0x3af>
    2a9e:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2aa3:	48 8d 3d ca 0a 00 00 	lea    0xaca(%rip),%rdi        # 3574 <array.0+0x374>
    2aaa:	e8 b2 f5 ff ff       	call   2061 <submitr>
    2aaf:	48 83 c4 10          	add    $0x10,%rsp
    2ab3:	eb a5                	jmp    2a5a <driver_post+0x21>

Disassembly of section .fini:

0000000000002ab8 <_fini>:
    2ab8:	f3 0f 1e fa          	endbr64 
    2abc:	48 83 ec 08          	sub    $0x8,%rsp
    2ac0:	48 83 c4 08          	add    $0x8,%rsp
    2ac4:	c3                   	ret    
