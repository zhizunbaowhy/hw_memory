
spec_bench.out：     文件格式 elf64-littleaarch64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	62696c2f 	.inst	0x62696c2f ; undefined
  40023c:	2d646c2f 	ldp	s15, s27, [x1, #-224]
  400240:	756e696c 	.inst	0x756e696c ; undefined
  400244:	61612d78 	.inst	0x61612d78 ; undefined
  400248:	36686372 	tbz	w18, #13, 400eb4 <SwapMesh+0xe8>
  40024c:	6f732e34 	.inst	0x6f732e34 ; undefined
  400250:	地址 0x0000000000400250 越界。


Disassembly of section .note.gnu.build-id:

0000000000400254 <.note.gnu.build-id>:
  400254:	00000004 	udf	#4
  400258:	00000014 	udf	#20
  40025c:	00000003 	udf	#3
  400260:	00554e47 	.inst	0x00554e47 ; undefined
  400264:	07444357 	.inst	0x07444357 ; undefined
  400268:	d57207ab 	.inst	0xd57207ab ; undefined
  40026c:	8fc893d8 	.inst	0x8fc893d8 ; undefined
  400270:	3eae18bf 	.inst	0x3eae18bf ; undefined
  400274:	6418b159 	.inst	0x6418b159 ; undefined

Disassembly of section .note.ABI-tag:

0000000000400278 <__abi_tag>:
  400278:	00000004 	udf	#4
  40027c:	00000010 	udf	#16
  400280:	00000001 	udf	#1
  400284:	00554e47 	.inst	0x00554e47 ; undefined
  400288:	00000000 	udf	#0
  40028c:	00000003 	udf	#3
  400290:	00000007 	udf	#7
  400294:	00000000 	udf	#0

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	00000001 	udf	#1
  40029c:	00000001 	udf	#1
  4002a0:	00000001 	udf	#1
	...

Disassembly of section .dynsym:

00000000004002b8 <.dynsym>:
	...
  4002d0:	00000007 	udf	#7
  4002d4:	00000012 	udf	#18
	...
  4002e8:	00000062 	udf	#98
  4002ec:	00000020 	udf	#32
	...
  400300:	00000027 	udf	#39
  400304:	00000012 	udf	#18
	...
  400318:	00000021 	udf	#33
  40031c:	00000012 	udf	#18
	...
  400330:	0000002e 	udf	#46
  400334:	00000012 	udf	#18
	...
  400348:	0000007e 	udf	#126
  40034c:	00000020 	udf	#32
	...
  400360:	00000035 	udf	#53
  400364:	00000012 	udf	#18
	...
  400378:	0000003b 	udf	#59
  40037c:	00000012 	udf	#18
	...
  400390:	0000008d 	udf	#141
  400394:	00000020 	udf	#32
	...
  4003a8:	0000001a 	udf	#26
  4003ac:	00000012 	udf	#18
	...
  4003c0:	00000019 	udf	#25
  4003c4:	00000012 	udf	#18
	...
  4003d8:	00000001 	udf	#1
  4003dc:	00000012 	udf	#18
	...

Disassembly of section .dynstr:

00000000004003f0 <.dynstr>:
  4003f0:	65676600 	fnmls	z0.h, p1/m, z16.h, z7.h
  4003f4:	5f007374 	.inst	0x5f007374 ; undefined
  4003f8:	62696c5f 	.inst	0x62696c5f ; undefined
  4003fc:	74735f63 	.inst	0x74735f63 ; undefined
  400400:	5f747261 	sqdmlsl	s1, h19, v4.h[3]
  400404:	6e69616d 	rsubhn2	v13.8h, v11.4s, v9.4s
  400408:	72706600 	.inst	0x72706600 ; undefined
  40040c:	66746e69 	.inst	0x66746e69 ; undefined
  400410:	706f6600 	adr	x0, 4df0d3 <__bss_end__+0xa1ba3>
  400414:	66006e65 	.inst	0x66006e65 ; undefined
  400418:	736f6c63 	.inst	0x736f6c63 ; undefined
  40041c:	61720065 	.inst	0x61720065 ; undefined
  400420:	6d6f646e 	ldp	d14, d25, [x3, #-272]
  400424:	6f626100 	umlsl2	v0.4s, v8.8h, v2.h[2]
  400428:	66007472 	.inst	0x66007472 ; undefined
  40042c:	74697277 	.inst	0x74697277 ; undefined
  400430:	696c0065 	ldpsw	x5, x0, [x3, #-160]
  400434:	732e6362 	.inst	0x732e6362 ; undefined
  400438:	00362e6f 	.inst	0x00362e6f ; NYI
  40043c:	42494c47 	.inst	0x42494c47 ; undefined
  400440:	2e325f43 	uqrshl	v3.8b, v26.8b, v18.8b
  400444:	47003731 	.inst	0x47003731 ; undefined
  400448:	4342494c 	.inst	0x4342494c ; undefined
  40044c:	332e325f 	.inst	0x332e325f ; undefined
  400450:	495f0034 	.inst	0x495f0034 ; undefined
  400454:	645f4d54 	fcmla	z20.h, p3/m, z10.h, z31.h, #180
  400458:	67657265 	.inst	0x67657265 ; undefined
  40045c:	65747369 	fnmls	z9.h, p4/m, z27.h, z20.h
  400460:	434d5472 	.inst	0x434d5472 ; undefined
  400464:	656e6f6c 	fnmls	z12.h, p3/m, z27.h, z14.h
  400468:	6c626154 	ldnp	d20, d24, [x10, #-480]
  40046c:	5f5f0065 	.inst	0x5f5f0065 ; undefined
  400470:	6e6f6d67 	umin	v7.8h, v11.8h, v15.8h
  400474:	6174735f 	.inst	0x6174735f ; undefined
  400478:	5f5f7472 	sqshl	d18, d3, #31
  40047c:	54495f00 	b.eq	49305c <__bss_end__+0x55b2c>  // b.none
  400480:	65725f4d 	fnmla	z13.h, p7/m, z26.h, z18.h
  400484:	74736967 	.inst	0x74736967 ; undefined
  400488:	4d547265 	.inst	0x4d547265 ; undefined
  40048c:	6e6f6c43 	umin	v3.8h, v2.8h, v15.8h
  400490:	62615465 	.inst	0x62615465 ; undefined
  400494:	地址 0x0000000000400494 越界。


Disassembly of section .gnu.version:

0000000000400498 <.gnu.version>:
  400498:	00020000 	.inst	0x00020000 ; undefined
  40049c:	00030001 	.inst	0x00030001 ; undefined
  4004a0:	00030003 	.inst	0x00030003 ; undefined
  4004a4:	00030001 	.inst	0x00030001 ; undefined
  4004a8:	00010003 	.inst	0x00010003 ; undefined
  4004ac:	00030003 	.inst	0x00030003 ; undefined
  4004b0:	地址 0x00000000004004b0 越界。


Disassembly of section .gnu.version_r:

00000000004004b8 <.gnu.version_r>:
  4004b8:	00020001 	.inst	0x00020001 ; undefined
  4004bc:	00000042 	udf	#66
  4004c0:	00000010 	udf	#16
  4004c4:	00000000 	udf	#0
  4004c8:	06969197 	.inst	0x06969197 ; undefined
  4004cc:	00030000 	.inst	0x00030000 ; undefined
  4004d0:	0000004c 	udf	#76
  4004d4:	00000010 	udf	#16
  4004d8:	069691b4 	.inst	0x069691b4 ; undefined
  4004dc:	00020000 	.inst	0x00020000 ; undefined
  4004e0:	00000057 	udf	#87
  4004e4:	00000000 	udf	#0

Disassembly of section .rela.dyn:

00000000004004e8 <.rela.dyn>:
  4004e8:	0041ffd0 	.inst	0x0041ffd0 ; undefined
  4004ec:	00000000 	udf	#0
  4004f0:	00000401 	udf	#1025
  4004f4:	00000002 	udf	#2
	...
  400500:	0041ffd8 	.inst	0x0041ffd8 ; undefined
  400504:	00000000 	udf	#0
  400508:	00000401 	udf	#1025
  40050c:	00000006 	udf	#6
	...
  400518:	0041ffe0 	.inst	0x0041ffe0 ; undefined
  40051c:	00000000 	udf	#0
  400520:	00000401 	udf	#1025
  400524:	00000009 	udf	#9
	...

Disassembly of section .rela.plt:

0000000000400530 <.rela.plt>:
  400530:	00420000 	.inst	0x00420000 ; undefined
  400534:	00000000 	udf	#0
  400538:	00000402 	udf	#1026
  40053c:	00000001 	udf	#1
	...
  400548:	00420008 	.inst	0x00420008 ; undefined
  40054c:	00000000 	udf	#0
  400550:	00000402 	udf	#1026
  400554:	00000003 	udf	#3
	...
  400560:	00420010 	.inst	0x00420010 ; undefined
  400564:	00000000 	udf	#0
  400568:	00000402 	udf	#1026
  40056c:	00000004 	udf	#4
	...
  400578:	00420018 	.inst	0x00420018 ; undefined
  40057c:	00000000 	udf	#0
  400580:	00000402 	udf	#1026
  400584:	00000005 	udf	#5
	...
  400590:	00420020 	.inst	0x00420020 ; undefined
  400594:	00000000 	udf	#0
  400598:	00000402 	udf	#1026
  40059c:	00000006 	udf	#6
	...
  4005a8:	00420028 	.inst	0x00420028 ; undefined
  4005ac:	00000000 	udf	#0
  4005b0:	00000402 	udf	#1026
  4005b4:	00000007 	udf	#7
	...
  4005c0:	00420030 	.inst	0x00420030 ; undefined
  4005c4:	00000000 	udf	#0
  4005c8:	00000402 	udf	#1026
  4005cc:	00000008 	udf	#8
	...
  4005d8:	00420038 	.inst	0x00420038 ; undefined
  4005dc:	00000000 	udf	#0
  4005e0:	00000402 	udf	#1026
  4005e4:	0000000a 	udf	#10
	...
  4005f0:	00420040 	.inst	0x00420040 ; undefined
  4005f4:	00000000 	udf	#0
  4005f8:	00000402 	udf	#1026
  4005fc:	0000000b 	udf	#11
	...
  400608:	00420048 	.inst	0x00420048 ; undefined
  40060c:	00000000 	udf	#0
  400610:	00000402 	udf	#1026
  400614:	0000000c 	udf	#12
	...

Disassembly of section .init:

0000000000400620 <_init>:
  400620:	d503201f 	nop
  400624:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400628:	910003fd 	mov	x29, sp
  40062c:	94000046 	bl	400744 <call_weak_fn>
  400630:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400634:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400640 <.plt>:
  400640:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  400644:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1da20>
  400648:	f947fe11 	ldr	x17, [x16, #4088]
  40064c:	913fe210 	add	x16, x16, #0xff8
  400650:	d61f0220 	br	x17
  400654:	d503201f 	nop
  400658:	d503201f 	nop
  40065c:	d503201f 	nop

0000000000400660 <__libc_start_main@plt>:
  400660:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400664:	f9400211 	ldr	x17, [x16]
  400668:	91000210 	add	x16, x16, #0x0
  40066c:	d61f0220 	br	x17

0000000000400670 <fclose@plt>:
  400670:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400674:	f9400611 	ldr	x17, [x16, #8]
  400678:	91002210 	add	x16, x16, #0x8
  40067c:	d61f0220 	br	x17

0000000000400680 <fopen@plt>:
  400680:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400684:	f9400a11 	ldr	x17, [x16, #16]
  400688:	91004210 	add	x16, x16, #0x10
  40068c:	d61f0220 	br	x17

0000000000400690 <random@plt>:
  400690:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400694:	f9400e11 	ldr	x17, [x16, #24]
  400698:	91006210 	add	x16, x16, #0x18
  40069c:	d61f0220 	br	x17

00000000004006a0 <__gmon_start__@plt>:
  4006a0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006a4:	f9401211 	ldr	x17, [x16, #32]
  4006a8:	91008210 	add	x16, x16, #0x20
  4006ac:	d61f0220 	br	x17

00000000004006b0 <abort@plt>:
  4006b0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006b4:	f9401611 	ldr	x17, [x16, #40]
  4006b8:	9100a210 	add	x16, x16, #0x28
  4006bc:	d61f0220 	br	x17

00000000004006c0 <fwrite@plt>:
  4006c0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006c4:	f9401a11 	ldr	x17, [x16, #48]
  4006c8:	9100c210 	add	x16, x16, #0x30
  4006cc:	d61f0220 	br	x17

00000000004006d0 <printf@plt>:
  4006d0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006d4:	f9401e11 	ldr	x17, [x16, #56]
  4006d8:	9100e210 	add	x16, x16, #0x38
  4006dc:	d61f0220 	br	x17

00000000004006e0 <fprintf@plt>:
  4006e0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006e4:	f9402211 	ldr	x17, [x16, #64]
  4006e8:	91010210 	add	x16, x16, #0x40
  4006ec:	d61f0220 	br	x17

00000000004006f0 <fgets@plt>:
  4006f0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006f4:	f9402611 	ldr	x17, [x16, #72]
  4006f8:	91012210 	add	x16, x16, #0x48
  4006fc:	d61f0220 	br	x17

Disassembly of section .text:

0000000000400700 <_start>:
  400700:	d503201f 	nop
  400704:	d280001d 	mov	x29, #0x0                   	// #0
  400708:	d280001e 	mov	x30, #0x0                   	// #0
  40070c:	aa0003e5 	mov	x5, x0
  400710:	f94003e1 	ldr	x1, [sp]
  400714:	910023e2 	add	x2, sp, #0x8
  400718:	910003e6 	mov	x6, sp
  40071c:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400720:	911cd000 	add	x0, x0, #0x734
  400724:	d2800003 	mov	x3, #0x0                   	// #0
  400728:	d2800004 	mov	x4, #0x0                   	// #0
  40072c:	97ffffcd 	bl	400660 <__libc_start_main@plt>
  400730:	97ffffe0 	bl	4006b0 <abort@plt>

0000000000400734 <__wrap_main>:
  400734:	d503201f 	nop
  400738:	14000033 	b	400804 <main>
  40073c:	d503201f 	nop

0000000000400740 <_dl_relocate_static_pie>:
  400740:	d65f03c0 	ret

0000000000400744 <call_weak_fn>:
  400744:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1da20>
  400748:	f947ec00 	ldr	x0, [x0, #4056]
  40074c:	b4000040 	cbz	x0, 400754 <call_weak_fn+0x10>
  400750:	17ffffd4 	b	4006a0 <__gmon_start__@plt>
  400754:	d65f03c0 	ret
  400758:	d503201f 	nop
  40075c:	d503201f 	nop

0000000000400760 <deregister_tm_clones>:
  400760:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400764:	91018000 	add	x0, x0, #0x60
  400768:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40076c:	91018021 	add	x1, x1, #0x60
  400770:	eb00003f 	cmp	x1, x0
  400774:	540000c0 	b.eq	40078c <deregister_tm_clones+0x2c>  // b.none
  400778:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1da20>
  40077c:	f947e821 	ldr	x1, [x1, #4048]
  400780:	b4000061 	cbz	x1, 40078c <deregister_tm_clones+0x2c>
  400784:	aa0103f0 	mov	x16, x1
  400788:	d61f0200 	br	x16
  40078c:	d65f03c0 	ret

0000000000400790 <register_tm_clones>:
  400790:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400794:	91018000 	add	x0, x0, #0x60
  400798:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40079c:	91018021 	add	x1, x1, #0x60
  4007a0:	cb000021 	sub	x1, x1, x0
  4007a4:	d37ffc22 	lsr	x2, x1, #63
  4007a8:	8b810c41 	add	x1, x2, x1, asr #3
  4007ac:	9341fc21 	asr	x1, x1, #1
  4007b0:	b40000c1 	cbz	x1, 4007c8 <register_tm_clones+0x38>
  4007b4:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1da20>
  4007b8:	f947f042 	ldr	x2, [x2, #4064]
  4007bc:	b4000062 	cbz	x2, 4007c8 <register_tm_clones+0x38>
  4007c0:	aa0203f0 	mov	x16, x2
  4007c4:	d61f0200 	br	x16
  4007c8:	d65f03c0 	ret
  4007cc:	d503201f 	nop

00000000004007d0 <__do_global_dtors_aux>:
  4007d0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4007d4:	910003fd 	mov	x29, sp
  4007d8:	f9000bf3 	str	x19, [sp, #16]
  4007dc:	90000113 	adrp	x19, 420000 <__libc_start_main@GLIBC_2.34>
  4007e0:	39418260 	ldrb	w0, [x19, #96]
  4007e4:	35000080 	cbnz	w0, 4007f4 <__do_global_dtors_aux+0x24>
  4007e8:	97ffffde 	bl	400760 <deregister_tm_clones>
  4007ec:	52800020 	mov	w0, #0x1                   	// #1
  4007f0:	39018260 	strb	w0, [x19, #96]
  4007f4:	f9400bf3 	ldr	x19, [sp, #16]
  4007f8:	a8c27bfd 	ldp	x29, x30, [sp], #32
  4007fc:	d65f03c0 	ret

0000000000400800 <frame_dummy>:
  400800:	17ffffe4 	b	400790 <register_tm_clones>

0000000000400804 <main>:
  400804:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
  400808:	910003fd 	mov	x29, sp
  40080c:	b9001fe0 	str	w0, [sp, #28]
  400810:	f9000be1 	str	x1, [sp, #16]
  400814:	940001b5 	bl	400ee8 <LoadData>
  400818:	b9002fff 	str	wzr, [sp, #44]
  40081c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400820:	9101a000 	add	x0, x0, #0x68
  400824:	91402000 	add	x0, x0, #0x8, lsl #12
  400828:	b95c3c00 	ldr	w0, [x0, #7228]
  40082c:	7100001f 	cmp	w0, #0x0
  400830:	54000061 	b.ne	40083c <main+0x38>  // b.any
  400834:	94000013 	bl	400880 <InitializeMesh_1>
  400838:	94000077 	bl	400a14 <InitializeMesh_2>
  40083c:	940000db 	bl	400ba8 <CompareMesh>
  400840:	b9002fe0 	str	w0, [sp, #44]
  400844:	b9402fe0 	ldr	w0, [sp, #44]
  400848:	7100001f 	cmp	w0, #0x0
  40084c:	54000100 	b.eq	40086c <main+0x68>  // b.none
  400850:	9400015f 	bl	400dcc <SwapMesh>
  400854:	b9002fe0 	str	w0, [sp, #44]
  400858:	9400010f 	bl	400c94 <Mesh_dot>
  40085c:	2a0003e1 	mov	w1, w0
  400860:	b00001e0 	adrp	x0, 43d000 <ms3+0x9718>
  400864:	9114a000 	add	x0, x0, #0x528
  400868:	b9000001 	str	w1, [x0]
  40086c:	940001ba 	bl	400f54 <ComplexDataHandle>
  400870:	9400025a 	bl	4011d8 <StoreData>
  400874:	52800000 	mov	w0, #0x0                   	// #0
  400878:	a8c37bfd 	ldp	x29, x30, [sp], #48
  40087c:	d65f03c0 	ret

0000000000400880 <InitializeMesh_1>:
  400880:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400884:	910003fd 	mov	x29, sp
  400888:	b9001bff 	str	wzr, [sp, #24]
  40088c:	1400005b 	b	4009f8 <InitializeMesh_1+0x178>
  400890:	b9001fff 	str	wzr, [sp, #28]
  400894:	14000053 	b	4009e0 <InitializeMesh_1+0x160>
  400898:	97ffff7e 	bl	400690 <random@plt>
  40089c:	2a0003e4 	mov	w4, w0
  4008a0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4008a4:	9101a002 	add	x2, x0, #0x68
  4008a8:	b9801be3 	ldrsw	x3, [sp, #24]
  4008ac:	b9801fe1 	ldrsw	x1, [sp, #28]
  4008b0:	aa0103e0 	mov	x0, x1
  4008b4:	d37ff800 	lsl	x0, x0, #1
  4008b8:	8b010000 	add	x0, x0, x1
  4008bc:	d37df000 	lsl	x0, x0, #3
  4008c0:	8b010000 	add	x0, x0, x1
  4008c4:	d37ef400 	lsl	x0, x0, #2
  4008c8:	8b030000 	add	x0, x0, x3
  4008cc:	b8207844 	str	w4, [x2, x0, lsl #2]
  4008d0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4008d4:	9101a002 	add	x2, x0, #0x68
  4008d8:	b9801be3 	ldrsw	x3, [sp, #24]
  4008dc:	b9801fe1 	ldrsw	x1, [sp, #28]
  4008e0:	aa0103e0 	mov	x0, x1
  4008e4:	d37ff800 	lsl	x0, x0, #1
  4008e8:	8b010000 	add	x0, x0, x1
  4008ec:	d37df000 	lsl	x0, x0, #3
  4008f0:	8b010000 	add	x0, x0, x1
  4008f4:	d37ef400 	lsl	x0, x0, #2
  4008f8:	8b030000 	add	x0, x0, x3
  4008fc:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400900:	b90017e0 	str	w0, [sp, #20]
  400904:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400908:	9101a002 	add	x2, x0, #0x68
  40090c:	b9801be3 	ldrsw	x3, [sp, #24]
  400910:	b9801fe1 	ldrsw	x1, [sp, #28]
  400914:	aa0103e0 	mov	x0, x1
  400918:	d37ff800 	lsl	x0, x0, #1
  40091c:	8b010000 	add	x0, x0, x1
  400920:	d37df000 	lsl	x0, x0, #3
  400924:	8b010000 	add	x0, x0, x1
  400928:	d37ef400 	lsl	x0, x0, #2
  40092c:	8b030000 	add	x0, x0, x3
  400930:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400934:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  400938:	72a00020 	movk	w0, #0x1, lsl #16
  40093c:	6b00003f 	cmp	w1, w0
  400940:	540004ad 	b.le	4009d4 <InitializeMesh_1+0x154>
  400944:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400948:	9101a002 	add	x2, x0, #0x68
  40094c:	b9801be3 	ldrsw	x3, [sp, #24]
  400950:	b9801fe1 	ldrsw	x1, [sp, #28]
  400954:	aa0103e0 	mov	x0, x1
  400958:	d37ff800 	lsl	x0, x0, #1
  40095c:	8b010000 	add	x0, x0, x1
  400960:	d37df000 	lsl	x0, x0, #3
  400964:	8b010000 	add	x0, x0, x1
  400968:	d37ef400 	lsl	x0, x0, #2
  40096c:	8b030000 	add	x0, x0, x3
  400970:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400974:	529555a1 	mov	w1, #0xaaad                	// #43693
  400978:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  40097c:	9b217c01 	smull	x1, w0, w1
  400980:	d360fc21 	lsr	x1, x1, #32
  400984:	0b010001 	add	w1, w0, w1
  400988:	13107c22 	asr	w2, w1, #16
  40098c:	131f7c01 	asr	w1, w0, #31
  400990:	4b010041 	sub	w1, w2, w1
  400994:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  400998:	72a00022 	movk	w2, #0x1, lsl #16
  40099c:	1b027c21 	mul	w1, w1, w2
  4009a0:	4b010001 	sub	w1, w0, w1
  4009a4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4009a8:	9101a003 	add	x3, x0, #0x68
  4009ac:	b9801be4 	ldrsw	x4, [sp, #24]
  4009b0:	b9801fe2 	ldrsw	x2, [sp, #28]
  4009b4:	aa0203e0 	mov	x0, x2
  4009b8:	d37ff800 	lsl	x0, x0, #1
  4009bc:	8b020000 	add	x0, x0, x2
  4009c0:	d37df000 	lsl	x0, x0, #3
  4009c4:	8b020000 	add	x0, x0, x2
  4009c8:	d37ef400 	lsl	x0, x0, #2
  4009cc:	8b040000 	add	x0, x0, x4
  4009d0:	b8207861 	str	w1, [x3, x0, lsl #2]
  4009d4:	b9401fe0 	ldr	w0, [sp, #28]
  4009d8:	11000400 	add	w0, w0, #0x1
  4009dc:	b9001fe0 	str	w0, [sp, #28]
  4009e0:	b9401fe0 	ldr	w0, [sp, #28]
  4009e4:	71018c1f 	cmp	w0, #0x63
  4009e8:	54fff58d 	b.le	400898 <InitializeMesh_1+0x18>
  4009ec:	b9401be0 	ldr	w0, [sp, #24]
  4009f0:	11000400 	add	w0, w0, #0x1
  4009f4:	b9001be0 	str	w0, [sp, #24]
  4009f8:	b9401be0 	ldr	w0, [sp, #24]
  4009fc:	71018c1f 	cmp	w0, #0x63
  400a00:	54fff48d 	b.le	400890 <InitializeMesh_1+0x10>
  400a04:	d503201f 	nop
  400a08:	d503201f 	nop
  400a0c:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400a10:	d65f03c0 	ret

0000000000400a14 <InitializeMesh_2>:
  400a14:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400a18:	910003fd 	mov	x29, sp
  400a1c:	b9001bff 	str	wzr, [sp, #24]
  400a20:	1400005b 	b	400b8c <InitializeMesh_2+0x178>
  400a24:	b9001fff 	str	wzr, [sp, #28]
  400a28:	14000053 	b	400b74 <InitializeMesh_2+0x160>
  400a2c:	97ffff19 	bl	400690 <random@plt>
  400a30:	2a0003e4 	mov	w4, w0
  400a34:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400a38:	9132a002 	add	x2, x0, #0xca8
  400a3c:	b9801be3 	ldrsw	x3, [sp, #24]
  400a40:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a44:	aa0103e0 	mov	x0, x1
  400a48:	d37ff800 	lsl	x0, x0, #1
  400a4c:	8b010000 	add	x0, x0, x1
  400a50:	d37df000 	lsl	x0, x0, #3
  400a54:	8b010000 	add	x0, x0, x1
  400a58:	d37ef400 	lsl	x0, x0, #2
  400a5c:	8b030000 	add	x0, x0, x3
  400a60:	b8207844 	str	w4, [x2, x0, lsl #2]
  400a64:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400a68:	9132a002 	add	x2, x0, #0xca8
  400a6c:	b9801be3 	ldrsw	x3, [sp, #24]
  400a70:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a74:	aa0103e0 	mov	x0, x1
  400a78:	d37ff800 	lsl	x0, x0, #1
  400a7c:	8b010000 	add	x0, x0, x1
  400a80:	d37df000 	lsl	x0, x0, #3
  400a84:	8b010000 	add	x0, x0, x1
  400a88:	d37ef400 	lsl	x0, x0, #2
  400a8c:	8b030000 	add	x0, x0, x3
  400a90:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400a94:	b90017e0 	str	w0, [sp, #20]
  400a98:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400a9c:	9132a002 	add	x2, x0, #0xca8
  400aa0:	b9801be3 	ldrsw	x3, [sp, #24]
  400aa4:	b9801fe1 	ldrsw	x1, [sp, #28]
  400aa8:	aa0103e0 	mov	x0, x1
  400aac:	d37ff800 	lsl	x0, x0, #1
  400ab0:	8b010000 	add	x0, x0, x1
  400ab4:	d37df000 	lsl	x0, x0, #3
  400ab8:	8b010000 	add	x0, x0, x1
  400abc:	d37ef400 	lsl	x0, x0, #2
  400ac0:	8b030000 	add	x0, x0, x3
  400ac4:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400ac8:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  400acc:	72a00020 	movk	w0, #0x1, lsl #16
  400ad0:	6b00003f 	cmp	w1, w0
  400ad4:	540004ad 	b.le	400b68 <InitializeMesh_2+0x154>
  400ad8:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400adc:	9132a002 	add	x2, x0, #0xca8
  400ae0:	b9801be3 	ldrsw	x3, [sp, #24]
  400ae4:	b9801fe1 	ldrsw	x1, [sp, #28]
  400ae8:	aa0103e0 	mov	x0, x1
  400aec:	d37ff800 	lsl	x0, x0, #1
  400af0:	8b010000 	add	x0, x0, x1
  400af4:	d37df000 	lsl	x0, x0, #3
  400af8:	8b010000 	add	x0, x0, x1
  400afc:	d37ef400 	lsl	x0, x0, #2
  400b00:	8b030000 	add	x0, x0, x3
  400b04:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400b08:	529555a1 	mov	w1, #0xaaad                	// #43693
  400b0c:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  400b10:	9b217c01 	smull	x1, w0, w1
  400b14:	d360fc21 	lsr	x1, x1, #32
  400b18:	0b010001 	add	w1, w0, w1
  400b1c:	13107c22 	asr	w2, w1, #16
  400b20:	131f7c01 	asr	w1, w0, #31
  400b24:	4b010041 	sub	w1, w2, w1
  400b28:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  400b2c:	72a00022 	movk	w2, #0x1, lsl #16
  400b30:	1b027c21 	mul	w1, w1, w2
  400b34:	4b010001 	sub	w1, w0, w1
  400b38:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400b3c:	9132a003 	add	x3, x0, #0xca8
  400b40:	b9801be4 	ldrsw	x4, [sp, #24]
  400b44:	b9801fe2 	ldrsw	x2, [sp, #28]
  400b48:	aa0203e0 	mov	x0, x2
  400b4c:	d37ff800 	lsl	x0, x0, #1
  400b50:	8b020000 	add	x0, x0, x2
  400b54:	d37df000 	lsl	x0, x0, #3
  400b58:	8b020000 	add	x0, x0, x2
  400b5c:	d37ef400 	lsl	x0, x0, #2
  400b60:	8b040000 	add	x0, x0, x4
  400b64:	b8207861 	str	w1, [x3, x0, lsl #2]
  400b68:	b9401fe0 	ldr	w0, [sp, #28]
  400b6c:	11000400 	add	w0, w0, #0x1
  400b70:	b9001fe0 	str	w0, [sp, #28]
  400b74:	b9401fe0 	ldr	w0, [sp, #28]
  400b78:	71018c1f 	cmp	w0, #0x63
  400b7c:	54fff58d 	b.le	400a2c <InitializeMesh_2+0x18>
  400b80:	b9401be0 	ldr	w0, [sp, #24]
  400b84:	11000400 	add	w0, w0, #0x1
  400b88:	b9001be0 	str	w0, [sp, #24]
  400b8c:	b9401be0 	ldr	w0, [sp, #24]
  400b90:	71018c1f 	cmp	w0, #0x63
  400b94:	54fff48d 	b.le	400a24 <InitializeMesh_2+0x10>
  400b98:	d503201f 	nop
  400b9c:	d503201f 	nop
  400ba0:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400ba4:	d65f03c0 	ret

0000000000400ba8 <CompareMesh>:
  400ba8:	d10043ff 	sub	sp, sp, #0x10
  400bac:	b9000fff 	str	wzr, [sp, #12]
  400bb0:	b90007ff 	str	wzr, [sp, #4]
  400bb4:	1400002d 	b	400c68 <CompareMesh+0xc0>
  400bb8:	b9000bff 	str	wzr, [sp, #8]
  400bbc:	14000025 	b	400c50 <CompareMesh+0xa8>
  400bc0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400bc4:	9101a002 	add	x2, x0, #0x68
  400bc8:	b98007e3 	ldrsw	x3, [sp, #4]
  400bcc:	b9800be1 	ldrsw	x1, [sp, #8]
  400bd0:	aa0103e0 	mov	x0, x1
  400bd4:	d37ff800 	lsl	x0, x0, #1
  400bd8:	8b010000 	add	x0, x0, x1
  400bdc:	d37df000 	lsl	x0, x0, #3
  400be0:	8b010000 	add	x0, x0, x1
  400be4:	d37ef400 	lsl	x0, x0, #2
  400be8:	8b030000 	add	x0, x0, x3
  400bec:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400bf0:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400bf4:	9132a003 	add	x3, x0, #0xca8
  400bf8:	b98007e4 	ldrsw	x4, [sp, #4]
  400bfc:	b9800be1 	ldrsw	x1, [sp, #8]
  400c00:	aa0103e0 	mov	x0, x1
  400c04:	d37ff800 	lsl	x0, x0, #1
  400c08:	8b010000 	add	x0, x0, x1
  400c0c:	d37df000 	lsl	x0, x0, #3
  400c10:	8b010000 	add	x0, x0, x1
  400c14:	d37ef400 	lsl	x0, x0, #2
  400c18:	8b040000 	add	x0, x0, x4
  400c1c:	b8607860 	ldr	w0, [x3, x0, lsl #2]
  400c20:	6b00005f 	cmp	w2, w0
  400c24:	540000ad 	b.le	400c38 <CompareMesh+0x90>
  400c28:	b9400fe0 	ldr	w0, [sp, #12]
  400c2c:	11000400 	add	w0, w0, #0x1
  400c30:	b9000fe0 	str	w0, [sp, #12]
  400c34:	14000004 	b	400c44 <CompareMesh+0x9c>
  400c38:	b9400fe0 	ldr	w0, [sp, #12]
  400c3c:	51000400 	sub	w0, w0, #0x1
  400c40:	b9000fe0 	str	w0, [sp, #12]
  400c44:	b9400be0 	ldr	w0, [sp, #8]
  400c48:	11000400 	add	w0, w0, #0x1
  400c4c:	b9000be0 	str	w0, [sp, #8]
  400c50:	b9400be0 	ldr	w0, [sp, #8]
  400c54:	71018c1f 	cmp	w0, #0x63
  400c58:	54fffb4d 	b.le	400bc0 <CompareMesh+0x18>
  400c5c:	b94007e0 	ldr	w0, [sp, #4]
  400c60:	11000400 	add	w0, w0, #0x1
  400c64:	b90007e0 	str	w0, [sp, #4]
  400c68:	b94007e0 	ldr	w0, [sp, #4]
  400c6c:	71018c1f 	cmp	w0, #0x63
  400c70:	54fffa4d 	b.le	400bb8 <CompareMesh+0x10>
  400c74:	b9400fe0 	ldr	w0, [sp, #12]
  400c78:	7100001f 	cmp	w0, #0x0
  400c7c:	5400006b 	b.lt	400c88 <CompareMesh+0xe0>  // b.tstop
  400c80:	52800020 	mov	w0, #0x1                   	// #1
  400c84:	14000002 	b	400c8c <CompareMesh+0xe4>
  400c88:	52800000 	mov	w0, #0x0                   	// #0
  400c8c:	910043ff 	add	sp, sp, #0x10
  400c90:	d65f03c0 	ret

0000000000400c94 <Mesh_dot>:
  400c94:	d10043ff 	sub	sp, sp, #0x10
  400c98:	b9000fff 	str	wzr, [sp, #12]
  400c9c:	14000046 	b	400db4 <Mesh_dot+0x120>
  400ca0:	b9000bff 	str	wzr, [sp, #8]
  400ca4:	1400003e 	b	400d9c <Mesh_dot+0x108>
  400ca8:	b90007ff 	str	wzr, [sp, #4]
  400cac:	14000036 	b	400d84 <Mesh_dot+0xf0>
  400cb0:	f0000180 	adrp	x0, 433000 <ms2+0x9358>
  400cb4:	9123a002 	add	x2, x0, #0x8e8
  400cb8:	b9800be3 	ldrsw	x3, [sp, #8]
  400cbc:	b9800fe1 	ldrsw	x1, [sp, #12]
  400cc0:	aa0103e0 	mov	x0, x1
  400cc4:	d37ff800 	lsl	x0, x0, #1
  400cc8:	8b010000 	add	x0, x0, x1
  400ccc:	d37df000 	lsl	x0, x0, #3
  400cd0:	8b010000 	add	x0, x0, x1
  400cd4:	d37ef400 	lsl	x0, x0, #2
  400cd8:	8b030000 	add	x0, x0, x3
  400cdc:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400ce0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400ce4:	9101a003 	add	x3, x0, #0x68
  400ce8:	b98007e4 	ldrsw	x4, [sp, #4]
  400cec:	b9800fe1 	ldrsw	x1, [sp, #12]
  400cf0:	aa0103e0 	mov	x0, x1
  400cf4:	d37ff800 	lsl	x0, x0, #1
  400cf8:	8b010000 	add	x0, x0, x1
  400cfc:	d37df000 	lsl	x0, x0, #3
  400d00:	8b010000 	add	x0, x0, x1
  400d04:	d37ef400 	lsl	x0, x0, #2
  400d08:	8b040000 	add	x0, x0, x4
  400d0c:	b8607863 	ldr	w3, [x3, x0, lsl #2]
  400d10:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400d14:	9132a004 	add	x4, x0, #0xca8
  400d18:	b9800be5 	ldrsw	x5, [sp, #8]
  400d1c:	b98007e1 	ldrsw	x1, [sp, #4]
  400d20:	aa0103e0 	mov	x0, x1
  400d24:	d37ff800 	lsl	x0, x0, #1
  400d28:	8b010000 	add	x0, x0, x1
  400d2c:	d37df000 	lsl	x0, x0, #3
  400d30:	8b010000 	add	x0, x0, x1
  400d34:	d37ef400 	lsl	x0, x0, #2
  400d38:	8b050000 	add	x0, x0, x5
  400d3c:	b8607880 	ldr	w0, [x4, x0, lsl #2]
  400d40:	1b007c60 	mul	w0, w3, w0
  400d44:	0b000043 	add	w3, w2, w0
  400d48:	f0000180 	adrp	x0, 433000 <ms2+0x9358>
  400d4c:	9123a002 	add	x2, x0, #0x8e8
  400d50:	b9800be4 	ldrsw	x4, [sp, #8]
  400d54:	b9800fe1 	ldrsw	x1, [sp, #12]
  400d58:	aa0103e0 	mov	x0, x1
  400d5c:	d37ff800 	lsl	x0, x0, #1
  400d60:	8b010000 	add	x0, x0, x1
  400d64:	d37df000 	lsl	x0, x0, #3
  400d68:	8b010000 	add	x0, x0, x1
  400d6c:	d37ef400 	lsl	x0, x0, #2
  400d70:	8b040000 	add	x0, x0, x4
  400d74:	b8207843 	str	w3, [x2, x0, lsl #2]
  400d78:	b94007e0 	ldr	w0, [sp, #4]
  400d7c:	11000400 	add	w0, w0, #0x1
  400d80:	b90007e0 	str	w0, [sp, #4]
  400d84:	b94007e0 	ldr	w0, [sp, #4]
  400d88:	71018c1f 	cmp	w0, #0x63
  400d8c:	54fff92d 	b.le	400cb0 <Mesh_dot+0x1c>
  400d90:	b9400be0 	ldr	w0, [sp, #8]
  400d94:	11000400 	add	w0, w0, #0x1
  400d98:	b9000be0 	str	w0, [sp, #8]
  400d9c:	b9400be0 	ldr	w0, [sp, #8]
  400da0:	71018c1f 	cmp	w0, #0x63
  400da4:	54fff82d 	b.le	400ca8 <Mesh_dot+0x14>
  400da8:	b9400fe0 	ldr	w0, [sp, #12]
  400dac:	11000400 	add	w0, w0, #0x1
  400db0:	b9000fe0 	str	w0, [sp, #12]
  400db4:	b9400fe0 	ldr	w0, [sp, #12]
  400db8:	71018c1f 	cmp	w0, #0x63
  400dbc:	54fff72d 	b.le	400ca0 <Mesh_dot+0xc>
  400dc0:	52800000 	mov	w0, #0x0                   	// #0
  400dc4:	910043ff 	add	sp, sp, #0x10
  400dc8:	d65f03c0 	ret

0000000000400dcc <SwapMesh>:
  400dcc:	d10043ff 	sub	sp, sp, #0x10
  400dd0:	b90007ff 	str	wzr, [sp, #4]
  400dd4:	b9000bff 	str	wzr, [sp, #8]
  400dd8:	1400003e 	b	400ed0 <SwapMesh+0x104>
  400ddc:	b9000fff 	str	wzr, [sp, #12]
  400de0:	14000036 	b	400eb8 <SwapMesh+0xec>
  400de4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400de8:	9101a002 	add	x2, x0, #0x68
  400dec:	b9800be3 	ldrsw	x3, [sp, #8]
  400df0:	b9800fe1 	ldrsw	x1, [sp, #12]
  400df4:	aa0103e0 	mov	x0, x1
  400df8:	d37ff800 	lsl	x0, x0, #1
  400dfc:	8b010000 	add	x0, x0, x1
  400e00:	d37df000 	lsl	x0, x0, #3
  400e04:	8b010000 	add	x0, x0, x1
  400e08:	d37ef400 	lsl	x0, x0, #2
  400e0c:	8b030000 	add	x0, x0, x3
  400e10:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400e14:	b90003e0 	str	w0, [sp]
  400e18:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400e1c:	9132a002 	add	x2, x0, #0xca8
  400e20:	b9800be3 	ldrsw	x3, [sp, #8]
  400e24:	b9800fe1 	ldrsw	x1, [sp, #12]
  400e28:	aa0103e0 	mov	x0, x1
  400e2c:	d37ff800 	lsl	x0, x0, #1
  400e30:	8b010000 	add	x0, x0, x1
  400e34:	d37df000 	lsl	x0, x0, #3
  400e38:	8b010000 	add	x0, x0, x1
  400e3c:	d37ef400 	lsl	x0, x0, #2
  400e40:	8b030000 	add	x0, x0, x3
  400e44:	b8607843 	ldr	w3, [x2, x0, lsl #2]
  400e48:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400e4c:	9101a002 	add	x2, x0, #0x68
  400e50:	b9800be4 	ldrsw	x4, [sp, #8]
  400e54:	b9800fe1 	ldrsw	x1, [sp, #12]
  400e58:	aa0103e0 	mov	x0, x1
  400e5c:	d37ff800 	lsl	x0, x0, #1
  400e60:	8b010000 	add	x0, x0, x1
  400e64:	d37df000 	lsl	x0, x0, #3
  400e68:	8b010000 	add	x0, x0, x1
  400e6c:	d37ef400 	lsl	x0, x0, #2
  400e70:	8b040000 	add	x0, x0, x4
  400e74:	b8207843 	str	w3, [x2, x0, lsl #2]
  400e78:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400e7c:	9132a002 	add	x2, x0, #0xca8
  400e80:	b9800be3 	ldrsw	x3, [sp, #8]
  400e84:	b9800fe1 	ldrsw	x1, [sp, #12]
  400e88:	aa0103e0 	mov	x0, x1
  400e8c:	d37ff800 	lsl	x0, x0, #1
  400e90:	8b010000 	add	x0, x0, x1
  400e94:	d37df000 	lsl	x0, x0, #3
  400e98:	8b010000 	add	x0, x0, x1
  400e9c:	d37ef400 	lsl	x0, x0, #2
  400ea0:	8b030000 	add	x0, x0, x3
  400ea4:	b94003e1 	ldr	w1, [sp]
  400ea8:	b8207841 	str	w1, [x2, x0, lsl #2]
  400eac:	b9400fe0 	ldr	w0, [sp, #12]
  400eb0:	11000400 	add	w0, w0, #0x1
  400eb4:	b9000fe0 	str	w0, [sp, #12]
  400eb8:	b9400fe0 	ldr	w0, [sp, #12]
  400ebc:	71018c1f 	cmp	w0, #0x63
  400ec0:	54fff92d 	b.le	400de4 <SwapMesh+0x18>
  400ec4:	b9400be0 	ldr	w0, [sp, #8]
  400ec8:	11000400 	add	w0, w0, #0x1
  400ecc:	b9000be0 	str	w0, [sp, #8]
  400ed0:	b9400be0 	ldr	w0, [sp, #8]
  400ed4:	71018c1f 	cmp	w0, #0x63
  400ed8:	54fff82d 	b.le	400ddc <SwapMesh+0x10>
  400edc:	52800000 	mov	w0, #0x0                   	// #0
  400ee0:	910043ff 	add	sp, sp, #0x10
  400ee4:	d65f03c0 	ret

0000000000400ee8 <LoadData>:
  400ee8:	a9ae7bfd 	stp	x29, x30, [sp, #-288]!
  400eec:	910003fd 	mov	x29, sp
  400ef0:	f9008fff 	str	xzr, [sp, #280]
  400ef4:	b0000000 	adrp	x0, 401000 <ManiplateData1+0x88>
  400ef8:	910b8001 	add	x1, x0, #0x2e0
  400efc:	b0000000 	adrp	x0, 401000 <ManiplateData1+0x88>
  400f00:	910ba000 	add	x0, x0, #0x2e8
  400f04:	97fffddf 	bl	400680 <fopen@plt>
  400f08:	f9008fe0 	str	x0, [sp, #280]
  400f0c:	910063e0 	add	x0, sp, #0x18
  400f10:	f9408fe2 	ldr	x2, [sp, #280]
  400f14:	52801fe1 	mov	w1, #0xff                  	// #255
  400f18:	97fffdf6 	bl	4006f0 <fgets@plt>
  400f1c:	910063e0 	add	x0, sp, #0x18
  400f20:	aa0003e1 	mov	x1, x0
  400f24:	b0000000 	adrp	x0, 401000 <ManiplateData1+0x88>
  400f28:	910d4000 	add	x0, x0, #0x350
  400f2c:	97fffde9 	bl	4006d0 <printf@plt>
  400f30:	910063e0 	add	x0, sp, #0x18
  400f34:	f9408fe2 	ldr	x2, [sp, #280]
  400f38:	52801fe1 	mov	w1, #0xff                  	// #255
  400f3c:	97fffded 	bl	4006f0 <fgets@plt>
  400f40:	f9408fe0 	ldr	x0, [sp, #280]
  400f44:	97fffdcb 	bl	400670 <fclose@plt>
  400f48:	52800000 	mov	w0, #0x0                   	// #0
  400f4c:	a8d27bfd 	ldp	x29, x30, [sp], #288
  400f50:	d65f03c0 	ret

0000000000400f54 <ComplexDataHandle>:
  400f54:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400f58:	910003fd 	mov	x29, sp
  400f5c:	94000007 	bl	400f78 <ManiplateData1>
  400f60:	b9001fe0 	str	w0, [sp, #28]
  400f64:	94000051 	bl	4010a8 <ManiplateData2>
  400f68:	b9001fe0 	str	w0, [sp, #28]
  400f6c:	52800000 	mov	w0, #0x0                   	// #0
  400f70:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400f74:	d65f03c0 	ret

0000000000400f78 <ManiplateData1>:
  400f78:	d10043ff 	sub	sp, sp, #0x10
  400f7c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400f80:	9101a000 	add	x0, x0, #0x68
  400f84:	52800281 	mov	w1, #0x14                  	// #20
  400f88:	b9019401 	str	w1, [x0, #404]
  400f8c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400f90:	9101a000 	add	x0, x0, #0x68
  400f94:	b9419400 	ldr	w0, [x0, #404]
  400f98:	b9000fe0 	str	w0, [sp, #12]
  400f9c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fa0:	9101a000 	add	x0, x0, #0x68
  400fa4:	528003c1 	mov	w1, #0x1e                  	// #30
  400fa8:	b9019401 	str	w1, [x0, #404]
  400fac:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fb0:	9101a000 	add	x0, x0, #0x68
  400fb4:	b9419400 	ldr	w0, [x0, #404]
  400fb8:	b9000fe0 	str	w0, [sp, #12]
  400fbc:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fc0:	9101a000 	add	x0, x0, #0x68
  400fc4:	b9419400 	ldr	w0, [x0, #404]
  400fc8:	b9000fe0 	str	w0, [sp, #12]
  400fcc:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fd0:	9101a000 	add	x0, x0, #0x68
  400fd4:	52800641 	mov	w1, #0x32                  	// #50
  400fd8:	b9032401 	str	w1, [x0, #804]
  400fdc:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fe0:	9101a000 	add	x0, x0, #0x68
  400fe4:	52800781 	mov	w1, #0x3c                  	// #60
  400fe8:	b9032401 	str	w1, [x0, #804]
  400fec:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400ff0:	9101a000 	add	x0, x0, #0x68
  400ff4:	528008c1 	mov	w1, #0x46                  	// #70
  400ff8:	b9032401 	str	w1, [x0, #804]
  400ffc:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401000:	9101a000 	add	x0, x0, #0x68
  401004:	b9432400 	ldr	w0, [x0, #804]
  401008:	b9000fe0 	str	w0, [sp, #12]
  40100c:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401010:	9101a000 	add	x0, x0, #0x68
  401014:	b9432400 	ldr	w0, [x0, #804]
  401018:	b9000fe0 	str	w0, [sp, #12]
  40101c:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401020:	9101a000 	add	x0, x0, #0x68
  401024:	52800c61 	mov	w1, #0x63                  	// #99
  401028:	b9032401 	str	w1, [x0, #804]
  40102c:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401030:	9101a000 	add	x0, x0, #0x68
  401034:	b9432400 	ldr	w0, [x0, #804]
  401038:	b9000fe0 	str	w0, [sp, #12]
  40103c:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401040:	9101a000 	add	x0, x0, #0x68
  401044:	52800501 	mov	w1, #0x28                  	// #40
  401048:	b9019801 	str	w1, [x0, #408]
  40104c:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401050:	9101a000 	add	x0, x0, #0x68
  401054:	b9419400 	ldr	w0, [x0, #404]
  401058:	b9000fe0 	str	w0, [sp, #12]
  40105c:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401060:	9101a000 	add	x0, x0, #0x68
  401064:	528003c1 	mov	w1, #0x1e                  	// #30
  401068:	b9019801 	str	w1, [x0, #408]
  40106c:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401070:	9101a000 	add	x0, x0, #0x68
  401074:	b9419800 	ldr	w0, [x0, #408]
  401078:	b9000fe0 	str	w0, [sp, #12]
  40107c:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401080:	9101a000 	add	x0, x0, #0x68
  401084:	b9419800 	ldr	w0, [x0, #408]
  401088:	b9000fe0 	str	w0, [sp, #12]
  40108c:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401090:	9101a000 	add	x0, x0, #0x68
  401094:	52800641 	mov	w1, #0x32                  	// #50
  401098:	b9019801 	str	w1, [x0, #408]
  40109c:	52800000 	mov	w0, #0x0                   	// #0
  4010a0:	910043ff 	add	sp, sp, #0x10
  4010a4:	d65f03c0 	ret

00000000004010a8 <ManiplateData2>:
  4010a8:	d10043ff 	sub	sp, sp, #0x10
  4010ac:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010b0:	9132a000 	add	x0, x0, #0xca8
  4010b4:	52800281 	mov	w1, #0x14                  	// #20
  4010b8:	b9019401 	str	w1, [x0, #404]
  4010bc:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010c0:	9132a000 	add	x0, x0, #0xca8
  4010c4:	b9419400 	ldr	w0, [x0, #404]
  4010c8:	b9000fe0 	str	w0, [sp, #12]
  4010cc:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010d0:	9132a000 	add	x0, x0, #0xca8
  4010d4:	528003c1 	mov	w1, #0x1e                  	// #30
  4010d8:	b9019401 	str	w1, [x0, #404]
  4010dc:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010e0:	9132a000 	add	x0, x0, #0xca8
  4010e4:	b9419400 	ldr	w0, [x0, #404]
  4010e8:	b9000fe0 	str	w0, [sp, #12]
  4010ec:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010f0:	9132a000 	add	x0, x0, #0xca8
  4010f4:	b9419400 	ldr	w0, [x0, #404]
  4010f8:	b9000fe0 	str	w0, [sp, #12]
  4010fc:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401100:	9132a000 	add	x0, x0, #0xca8
  401104:	52800641 	mov	w1, #0x32                  	// #50
  401108:	b9032401 	str	w1, [x0, #804]
  40110c:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401110:	9132a000 	add	x0, x0, #0xca8
  401114:	52800781 	mov	w1, #0x3c                  	// #60
  401118:	b9032401 	str	w1, [x0, #804]
  40111c:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401120:	9132a000 	add	x0, x0, #0xca8
  401124:	528008c1 	mov	w1, #0x46                  	// #70
  401128:	b9032401 	str	w1, [x0, #804]
  40112c:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401130:	9132a000 	add	x0, x0, #0xca8
  401134:	b9432400 	ldr	w0, [x0, #804]
  401138:	b9000fe0 	str	w0, [sp, #12]
  40113c:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401140:	9132a000 	add	x0, x0, #0xca8
  401144:	b9432400 	ldr	w0, [x0, #804]
  401148:	b9000fe0 	str	w0, [sp, #12]
  40114c:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401150:	9132a000 	add	x0, x0, #0xca8
  401154:	52800c61 	mov	w1, #0x63                  	// #99
  401158:	b9032401 	str	w1, [x0, #804]
  40115c:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401160:	9132a000 	add	x0, x0, #0xca8
  401164:	b9432400 	ldr	w0, [x0, #804]
  401168:	b9000fe0 	str	w0, [sp, #12]
  40116c:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401170:	9132a000 	add	x0, x0, #0xca8
  401174:	52800501 	mov	w1, #0x28                  	// #40
  401178:	b9019801 	str	w1, [x0, #408]
  40117c:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401180:	9132a000 	add	x0, x0, #0xca8
  401184:	b9419800 	ldr	w0, [x0, #408]
  401188:	b9000fe0 	str	w0, [sp, #12]
  40118c:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401190:	9132a000 	add	x0, x0, #0xca8
  401194:	528003c1 	mov	w1, #0x1e                  	// #30
  401198:	b9019801 	str	w1, [x0, #408]
  40119c:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4011a0:	9132a000 	add	x0, x0, #0xca8
  4011a4:	b9419800 	ldr	w0, [x0, #408]
  4011a8:	b9000fe0 	str	w0, [sp, #12]
  4011ac:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4011b0:	9132a000 	add	x0, x0, #0xca8
  4011b4:	b9419800 	ldr	w0, [x0, #408]
  4011b8:	b9000fe0 	str	w0, [sp, #12]
  4011bc:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4011c0:	9132a000 	add	x0, x0, #0xca8
  4011c4:	52800641 	mov	w1, #0x32                  	// #50
  4011c8:	b9019801 	str	w1, [x0, #408]
  4011cc:	52800000 	mov	w0, #0x0                   	// #0
  4011d0:	910043ff 	add	sp, sp, #0x10
  4011d4:	d65f03c0 	ret

00000000004011d8 <StoreData>:
  4011d8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4011dc:	910003fd 	mov	x29, sp
  4011e0:	f9000bff 	str	xzr, [sp, #16]
  4011e4:	90000000 	adrp	x0, 401000 <ManiplateData1+0x88>
  4011e8:	910d6001 	add	x1, x0, #0x358
  4011ec:	90000000 	adrp	x0, 401000 <ManiplateData1+0x88>
  4011f0:	910ba000 	add	x0, x0, #0x2e8
  4011f4:	97fffd23 	bl	400680 <fopen@plt>
  4011f8:	f9000be0 	str	x0, [sp, #16]
  4011fc:	f9400be3 	ldr	x3, [sp, #16]
  401200:	d28000e2 	mov	x2, #0x7                   	// #7
  401204:	d2800021 	mov	x1, #0x1                   	// #1
  401208:	90000000 	adrp	x0, 401000 <ManiplateData1+0x88>
  40120c:	910d8000 	add	x0, x0, #0x360
  401210:	97fffd2c 	bl	4006c0 <fwrite@plt>
  401214:	b9001fff 	str	wzr, [sp, #28]
  401218:	1400001d 	b	40128c <StoreData+0xb4>
  40121c:	b9001bff 	str	wzr, [sp, #24]
  401220:	14000015 	b	401274 <StoreData+0x9c>
  401224:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401228:	9101a002 	add	x2, x0, #0x68
  40122c:	b9801be3 	ldrsw	x3, [sp, #24]
  401230:	b9801fe1 	ldrsw	x1, [sp, #28]
  401234:	aa0103e0 	mov	x0, x1
  401238:	d37ff800 	lsl	x0, x0, #1
  40123c:	8b010000 	add	x0, x0, x1
  401240:	d37df000 	lsl	x0, x0, #3
  401244:	8b010000 	add	x0, x0, x1
  401248:	d37ef400 	lsl	x0, x0, #2
  40124c:	8b030000 	add	x0, x0, x3
  401250:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  401254:	2a0003e2 	mov	w2, w0
  401258:	90000000 	adrp	x0, 401000 <ManiplateData1+0x88>
  40125c:	910da001 	add	x1, x0, #0x368
  401260:	f9400be0 	ldr	x0, [sp, #16]
  401264:	97fffd1f 	bl	4006e0 <fprintf@plt>
  401268:	b9401be0 	ldr	w0, [sp, #24]
  40126c:	11000400 	add	w0, w0, #0x1
  401270:	b9001be0 	str	w0, [sp, #24]
  401274:	b9401be0 	ldr	w0, [sp, #24]
  401278:	71018c1f 	cmp	w0, #0x63
  40127c:	54fffd4d 	b.le	401224 <StoreData+0x4c>
  401280:	b9401fe0 	ldr	w0, [sp, #28]
  401284:	11000400 	add	w0, w0, #0x1
  401288:	b9001fe0 	str	w0, [sp, #28]
  40128c:	b9401fe0 	ldr	w0, [sp, #28]
  401290:	71018c1f 	cmp	w0, #0x63
  401294:	54fffc4d 	b.le	40121c <StoreData+0x44>
  401298:	f9400be3 	ldr	x3, [sp, #16]
  40129c:	d2800042 	mov	x2, #0x2                   	// #2
  4012a0:	d2800021 	mov	x1, #0x1                   	// #1
  4012a4:	90000000 	adrp	x0, 401000 <ManiplateData1+0x88>
  4012a8:	910dc000 	add	x0, x0, #0x370
  4012ac:	97fffd05 	bl	4006c0 <fwrite@plt>
  4012b0:	f9400be0 	ldr	x0, [sp, #16]
  4012b4:	97fffcef 	bl	400670 <fclose@plt>
  4012b8:	52800000 	mov	w0, #0x0                   	// #0
  4012bc:	a8c27bfd 	ldp	x29, x30, [sp], #32
  4012c0:	d65f03c0 	ret

Disassembly of section .fini:

00000000004012c4 <_fini>:
  4012c4:	d503201f 	nop
  4012c8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  4012cc:	910003fd 	mov	x29, sp
  4012d0:	a8c17bfd 	ldp	x29, x30, [sp], #16
  4012d4:	d65f03c0 	ret

Disassembly of section .rodata:

00000000004012d8 <_IO_stdin_used>:
  4012d8:	00020001 	.inst	0x00020001 ; undefined
  4012dc:	00000000 	udf	#0
  4012e0:	00000072 	udf	#114
  4012e4:	00000000 	udf	#0
  4012e8:	6573552f 	fnmla	z15.h, p5/m, z9.h, z19.h
  4012ec:	672f7372 	.inst	0x672f7372 ; undefined
  4012f0:	6a756775 	bics	w21, w27, w21, lsr #25
  4012f4:	61697869 	.inst	0x61697869 ; undefined
  4012f8:	6f772f6f 	.inst	0x6f772f6f ; undefined
  4012fc:	70736b72 	adr	x18, 4e806b <__bss_end__+0xaab3b>
  401300:	2f656361 	umlsl	v1.4s, v27.4h, v5.h[2]
  401304:	6a6f7270 	bics	w16, w19, w15, lsr #28
  401308:	2f746365 	umlsl	v5.4s, v27.4h, v4.h[3]
  40130c:	654d5748 	fcmge	p8.h, p5/z, z26.h, z13.h
  401310:	79726f6d 	ldrh	w13, [x27, #6454]
  401314:	646f432f 	bfdot	z15.s, z25.h, z7.h[1]
  401318:	65622f65 	fmls	z5.h, p3/m, z27.h, z2.h
  40131c:	6d68636e 	ldp	d14, d24, [x27, #-384]
  401320:	2f6b7261 	fcmla	v1.4h, v19.4h, v11.h[1], #270
  401324:	63657073 	.inst	0x63657073 ; undefined
  401328:	6e65625f 	rsubhn2	v31.8h, v18.4s, v5.4s
  40132c:	616d6863 	.inst	0x616d6863 ; undefined
  401330:	732f6b72 	.inst	0x732f6b72 ; undefined
  401334:	5f636570 	.inst	0x5f636570 ; undefined
  401338:	636e6562 	.inst	0x636e6562 ; undefined
  40133c:	72616d68 	.inst	0x72616d68 ; undefined
  401340:	65742f6b 	fmls	z11.h, p3/m, z27.h, z20.h
  401344:	69667473 	ldpsw	x19, x29, [x3, #-208]
  401348:	742e656c 	.inst	0x742e656c ; undefined
  40134c:	00007478 	udf	#29816
  401350:	25203a31 	.inst	0x25203a31 ; undefined
  401354:	00000a73 	udf	#2675
  401358:	00002b77 	udf	#11127
  40135c:	00000000 	udf	#0
  401360:	3d20736d 	str	b13, [x27, #2076]
  401364:	000a7b20 	.inst	0x000a7b20 ; undefined
  401368:	00096425 	.inst	0x00096425 ; undefined
  40136c:	00000000 	udf	#0
  401370:	地址 0x0000000000401370 越界。


Disassembly of section .eh_frame_hdr:

0000000000401374 <__GNU_EH_FRAME_HDR>:
  401374:	3b031b01 	.inst	0x3b031b01 ; undefined
  401378:	00000090 	udf	#144
  40137c:	00000011 	udf	#17
  401380:	fffff38c 	.inst	0xfffff38c ; undefined
  401384:	000000a8 	udf	#168
  401388:	fffff3cc 	.inst	0xfffff3cc ; undefined
  40138c:	000000bc 	udf	#188
  401390:	fffff3ec 	.inst	0xfffff3ec ; undefined
  401394:	000000d4 	udf	#212
  401398:	fffff41c 	.inst	0xfffff41c ; undefined
  40139c:	000000e8 	udf	#232
  4013a0:	fffff45c 	.inst	0xfffff45c ; undefined
  4013a4:	000000fc 	udf	#252
  4013a8:	fffff48c 	.inst	0xfffff48c ; undefined
  4013ac:	00000120 	udf	#288
  4013b0:	fffff490 	.inst	0xfffff490 ; undefined
  4013b4:	00000134 	udf	#308
  4013b8:	fffff50c 	.inst	0xfffff50c ; undefined
  4013bc:	00000154 	udf	#340
  4013c0:	fffff6a0 	.inst	0xfffff6a0 ; undefined
  4013c4:	00000174 	udf	#372
  4013c8:	fffff834 	.inst	0xfffff834 ; undefined
  4013cc:	00000194 	udf	#404
  4013d0:	fffff920 	.inst	0xfffff920 ; undefined
  4013d4:	000001ac 	udf	#428
  4013d8:	fffffa58 	.inst	0xfffffa58 ; undefined
  4013dc:	000001c4 	udf	#452
  4013e0:	fffffb74 	.inst	0xfffffb74 ; undefined
  4013e4:	000001dc 	udf	#476
  4013e8:	fffffbe0 	.inst	0xfffffbe0 ; undefined
  4013ec:	000001fc 	udf	#508
  4013f0:	fffffc04 	.inst	0xfffffc04 ; undefined
  4013f4:	0000021c 	udf	#540
  4013f8:	fffffd34 	.inst	0xfffffd34 ; undefined
  4013fc:	00000234 	udf	#564
  401400:	fffffe64 	.inst	0xfffffe64 ; undefined
  401404:	0000024c 	udf	#588

Disassembly of section .eh_frame:

0000000000401408 <__FRAME_END__-0x1d8>:
  401408:	00000010 	udf	#16
  40140c:	00000000 	udf	#0
  401410:	00527a01 	.inst	0x00527a01 ; undefined
  401414:	011e7804 	.inst	0x011e7804 ; undefined
  401418:	001f0c1b 	.inst	0x001f0c1b ; undefined
  40141c:	00000010 	udf	#16
  401420:	00000018 	udf	#24
  401424:	fffff2dc 	.inst	0xfffff2dc ; undefined
  401428:	0000003c 	udf	#60
  40142c:	1e074100 	.inst	0x1e074100 ; undefined
  401430:	00000014 	udf	#20
  401434:	0000002c 	udf	#44
  401438:	fffff308 	.inst	0xfffff308 ; undefined
  40143c:	00000004 	udf	#4
	...
  401448:	00000010 	udf	#16
  40144c:	00000044 	udf	#68
  401450:	fffff310 	.inst	0xfffff310 ; undefined
  401454:	00000030 	udf	#48
  401458:	00000000 	udf	#0
  40145c:	00000010 	udf	#16
  401460:	00000058 	udf	#88
  401464:	fffff32c 	.inst	0xfffff32c ; undefined
  401468:	0000003c 	udf	#60
  40146c:	00000000 	udf	#0
  401470:	00000020 	udf	#32
  401474:	0000006c 	udf	#108
  401478:	fffff358 	.inst	0xfffff358 ; undefined
  40147c:	00000030 	udf	#48
  401480:	200e4100 	.inst	0x200e4100 ; undefined
  401484:	039e049d 	.inst	0x039e049d ; undefined
  401488:	48029342 	stlxrh	w2, w2, [x26]
  40148c:	0ed3ddde 	.inst	0x0ed3ddde ; undefined
  401490:	00000000 	udf	#0
  401494:	00000010 	udf	#16
  401498:	00000090 	udf	#144
  40149c:	fffff364 	.inst	0xfffff364 ; undefined
  4014a0:	00000004 	udf	#4
  4014a4:	00000000 	udf	#0
  4014a8:	0000001c 	udf	#28
  4014ac:	000000a4 	udf	#164
  4014b0:	fffff354 	.inst	0xfffff354 ; undefined
  4014b4:	0000007c 	udf	#124
  4014b8:	300e4100 	adr	x0, 41dcd9 <__FRAME_END__+0x1c6f9>
  4014bc:	059e069d 	mov	z29.s, p14/z, #52
  4014c0:	0eddde5d 	.inst	0x0eddde5d ; undefined
  4014c4:	00000000 	udf	#0
  4014c8:	0000001c 	udf	#28
  4014cc:	000000c4 	udf	#196
  4014d0:	fffff3b0 	.inst	0xfffff3b0 ; undefined
  4014d4:	00000194 	udf	#404
  4014d8:	200e4100 	.inst	0x200e4100 ; undefined
  4014dc:	039e049d 	.inst	0x039e049d ; undefined
  4014e0:	ddde6302 	.inst	0xddde6302 ; undefined
  4014e4:	0000000e 	udf	#14
  4014e8:	0000001c 	udf	#28
  4014ec:	000000e4 	udf	#228
  4014f0:	fffff524 	.inst	0xfffff524 ; undefined
  4014f4:	00000194 	udf	#404
  4014f8:	200e4100 	.inst	0x200e4100 ; undefined
  4014fc:	039e049d 	.inst	0x039e049d ; undefined
  401500:	ddde6302 	.inst	0xddde6302 ; undefined
  401504:	0000000e 	udf	#14
  401508:	00000014 	udf	#20
  40150c:	00000104 	udf	#260
  401510:	fffff698 	.inst	0xfffff698 ; undefined
  401514:	000000ec 	udf	#236
  401518:	100e4100 	adr	x0, 41dd38 <__FRAME_END__+0x1c758>
  40151c:	00000e79 	udf	#3705
  401520:	00000014 	udf	#20
  401524:	0000011c 	udf	#284
  401528:	fffff76c 	.inst	0xfffff76c ; undefined
  40152c:	00000138 	udf	#312
  401530:	100e4100 	adr	x0, 41dd50 <__FRAME_END__+0x1c770>
  401534:	000e4c02 	.inst	0x000e4c02 ; undefined
  401538:	00000014 	udf	#20
  40153c:	00000134 	udf	#308
  401540:	fffff88c 	.inst	0xfffff88c ; undefined
  401544:	0000011c 	udf	#284
  401548:	100e4100 	adr	x0, 41dd68 <__FRAME_END__+0x1c788>
  40154c:	000e4502 	.inst	0x000e4502 ; undefined
  401550:	0000001c 	udf	#28
  401554:	0000014c 	udf	#332
  401558:	fffff990 	.inst	0xfffff990 ; undefined
  40155c:	0000006c 	udf	#108
  401560:	a00e4100 	.inst	0xa00e4100 ; undefined
  401564:	9e249d02 	.inst	0x9e249d02 ; undefined
  401568:	ddde5923 	.inst	0xddde5923 ; undefined
  40156c:	0000000e 	udf	#14
  401570:	0000001c 	udf	#28
  401574:	0000016c 	udf	#364
  401578:	fffff9dc 	.inst	0xfffff9dc ; undefined
  40157c:	00000024 	udf	#36
  401580:	200e4100 	.inst	0x200e4100 ; undefined
  401584:	039e049d 	.inst	0x039e049d ; undefined
  401588:	0eddde47 	.inst	0x0eddde47 ; undefined
  40158c:	00000000 	udf	#0
  401590:	00000014 	udf	#20
  401594:	0000018c 	udf	#396
  401598:	fffff9e0 	.inst	0xfffff9e0 ; undefined
  40159c:	00000130 	udf	#304
  4015a0:	100e4100 	adr	x0, 41ddc0 <__FRAME_END__+0x1c7e0>
  4015a4:	000e4a02 	.inst	0x000e4a02 ; undefined
  4015a8:	00000014 	udf	#20
  4015ac:	000001a4 	udf	#420
  4015b0:	fffffaf8 	.inst	0xfffffaf8 ; undefined
  4015b4:	00000130 	udf	#304
  4015b8:	100e4100 	adr	x0, 41ddd8 <__FRAME_END__+0x1c7f8>
  4015bc:	000e4a02 	.inst	0x000e4a02 ; undefined
  4015c0:	0000001c 	udf	#28
  4015c4:	000001bc 	udf	#444
  4015c8:	fffffc10 	.inst	0xfffffc10 ; undefined
  4015cc:	000000ec 	udf	#236
  4015d0:	200e4100 	.inst	0x200e4100 ; undefined
  4015d4:	039e049d 	.inst	0x039e049d ; undefined
  4015d8:	0eddde79 	.inst	0x0eddde79 ; undefined
  4015dc:	00000000 	udf	#0

00000000004015e0 <__FRAME_END__>:
  4015e0:	00000000 	udf	#0

Disassembly of section .init_array:

000000000041fde8 <__frame_dummy_init_array_entry>:
  41fde8:	00400800 	.inst	0x00400800 ; undefined
  41fdec:	00000000 	udf	#0

Disassembly of section .fini_array:

000000000041fdf0 <__do_global_dtors_aux_fini_array_entry>:
  41fdf0:	004007d0 	.inst	0x004007d0 ; undefined
  41fdf4:	00000000 	udf	#0

Disassembly of section .dynamic:

000000000041fdf8 <_DYNAMIC>:
  41fdf8:	00000001 	udf	#1
  41fdfc:	00000000 	udf	#0
  41fe00:	00000042 	udf	#66
  41fe04:	00000000 	udf	#0
  41fe08:	0000000c 	udf	#12
  41fe0c:	00000000 	udf	#0
  41fe10:	00400620 	.inst	0x00400620 ; undefined
  41fe14:	00000000 	udf	#0
  41fe18:	0000000d 	udf	#13
  41fe1c:	00000000 	udf	#0
  41fe20:	004012c4 	.inst	0x004012c4 ; undefined
  41fe24:	00000000 	udf	#0
  41fe28:	00000019 	udf	#25
  41fe2c:	00000000 	udf	#0
  41fe30:	0041fde8 	.inst	0x0041fde8 ; undefined
  41fe34:	00000000 	udf	#0
  41fe38:	0000001b 	udf	#27
  41fe3c:	00000000 	udf	#0
  41fe40:	00000008 	udf	#8
  41fe44:	00000000 	udf	#0
  41fe48:	0000001a 	udf	#26
  41fe4c:	00000000 	udf	#0
  41fe50:	0041fdf0 	.inst	0x0041fdf0 ; undefined
  41fe54:	00000000 	udf	#0
  41fe58:	0000001c 	udf	#28
  41fe5c:	00000000 	udf	#0
  41fe60:	00000008 	udf	#8
  41fe64:	00000000 	udf	#0
  41fe68:	6ffffef5 	.inst	0x6ffffef5 ; undefined
  41fe6c:	00000000 	udf	#0
  41fe70:	00400298 	.inst	0x00400298 ; undefined
  41fe74:	00000000 	udf	#0
  41fe78:	00000005 	udf	#5
  41fe7c:	00000000 	udf	#0
  41fe80:	004003f0 	.inst	0x004003f0 ; undefined
  41fe84:	00000000 	udf	#0
  41fe88:	00000006 	udf	#6
  41fe8c:	00000000 	udf	#0
  41fe90:	004002b8 	.inst	0x004002b8 ; undefined
  41fe94:	00000000 	udf	#0
  41fe98:	0000000a 	udf	#10
  41fe9c:	00000000 	udf	#0
  41fea0:	000000a7 	udf	#167
  41fea4:	00000000 	udf	#0
  41fea8:	0000000b 	udf	#11
  41feac:	00000000 	udf	#0
  41feb0:	00000018 	udf	#24
  41feb4:	00000000 	udf	#0
  41feb8:	00000015 	udf	#21
	...
  41fec8:	00000003 	udf	#3
  41fecc:	00000000 	udf	#0
  41fed0:	0041ffe8 	.inst	0x0041ffe8 ; undefined
  41fed4:	00000000 	udf	#0
  41fed8:	00000002 	udf	#2
  41fedc:	00000000 	udf	#0
  41fee0:	000000f0 	udf	#240
  41fee4:	00000000 	udf	#0
  41fee8:	00000014 	udf	#20
  41feec:	00000000 	udf	#0
  41fef0:	00000007 	udf	#7
  41fef4:	00000000 	udf	#0
  41fef8:	00000017 	udf	#23
  41fefc:	00000000 	udf	#0
  41ff00:	00400530 	.inst	0x00400530 ; undefined
  41ff04:	00000000 	udf	#0
  41ff08:	00000007 	udf	#7
  41ff0c:	00000000 	udf	#0
  41ff10:	004004e8 	.inst	0x004004e8 ; undefined
  41ff14:	00000000 	udf	#0
  41ff18:	00000008 	udf	#8
  41ff1c:	00000000 	udf	#0
  41ff20:	00000048 	udf	#72
  41ff24:	00000000 	udf	#0
  41ff28:	00000009 	udf	#9
  41ff2c:	00000000 	udf	#0
  41ff30:	00000018 	udf	#24
  41ff34:	00000000 	udf	#0
  41ff38:	6ffffffe 	.inst	0x6ffffffe ; undefined
  41ff3c:	00000000 	udf	#0
  41ff40:	004004b8 	.inst	0x004004b8 ; undefined
  41ff44:	00000000 	udf	#0
  41ff48:	6fffffff 	.inst	0x6fffffff ; undefined
  41ff4c:	00000000 	udf	#0
  41ff50:	00000001 	udf	#1
  41ff54:	00000000 	udf	#0
  41ff58:	6ffffff0 	.inst	0x6ffffff0 ; undefined
  41ff5c:	00000000 	udf	#0
  41ff60:	00400498 	.inst	0x00400498 ; undefined
	...

Disassembly of section .got:

000000000041ffc8 <_GLOBAL_OFFSET_TABLE_>:
  41ffc8:	0041fdf8 	.inst	0x0041fdf8 ; undefined
	...

Disassembly of section .got.plt:

000000000041ffe8 <.got.plt>:
	...
  420000:	00400640 	.inst	0x00400640 ; undefined
  420004:	00000000 	udf	#0
  420008:	00400640 	.inst	0x00400640 ; undefined
  42000c:	00000000 	udf	#0
  420010:	00400640 	.inst	0x00400640 ; undefined
  420014:	00000000 	udf	#0
  420018:	00400640 	.inst	0x00400640 ; undefined
  42001c:	00000000 	udf	#0
  420020:	00400640 	.inst	0x00400640 ; undefined
  420024:	00000000 	udf	#0
  420028:	00400640 	.inst	0x00400640 ; undefined
  42002c:	00000000 	udf	#0
  420030:	00400640 	.inst	0x00400640 ; undefined
  420034:	00000000 	udf	#0
  420038:	00400640 	.inst	0x00400640 ; undefined
  42003c:	00000000 	udf	#0
  420040:	00400640 	.inst	0x00400640 ; undefined
  420044:	00000000 	udf	#0
  420048:	00400640 	.inst	0x00400640 ; undefined
  42004c:	00000000 	udf	#0

Disassembly of section .data:

0000000000420050 <__data_start>:
	...

0000000000420058 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000420060 <completed.0>:
	...

0000000000420068 <ms1>:
	...

0000000000429ca8 <ms2>:
	...

00000000004338e8 <ms3>:
	...

000000000043d528 <ms4>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347 	ccmn	w26, w3, #0x7, mi  // mi = first
   4:	4e472820 	trn1	v0.8h, v1.8h, v7.8h
   8:	31202955 	adds	w21, w10, #0x80a
   c:	2e332e30 	uqsub	v16.8b, v17.8b, v19.8b
  10:	地址 0x0000000000000010 越界。


Disassembly of section .gnu.build.attributes:

000000000043d530 <.gnu.build.attributes>:
  43d530:	00000008 	udf	#8
  43d534:	00000010 	udf	#16
  43d538:	00000100 	udf	#256
  43d53c:	01244147 	.inst	0x01244147 ; undefined
  43d540:	00316133 	.inst	0x00316133 ; NYI
  43d544:	00400700 	.inst	0x00400700 ; undefined
  43d548:	00000000 	udf	#0
  43d54c:	0040073c 	.inst	0x0040073c ; undefined
  43d550:	00000000 	udf	#0
  43d554:	00000008 	udf	#8
  43d558:	00000010 	udf	#16
  43d55c:	00000100 	udf	#256
  43d560:	01244147 	.inst	0x01244147 ; undefined
  43d564:	00316133 	.inst	0x00316133 ; NYI
  43d568:	00400744 	.inst	0x00400744 ; undefined
  43d56c:	00000000 	udf	#0
  43d570:	00400758 	.inst	0x00400758 ; undefined
  43d574:	00000000 	udf	#0
  43d578:	00000008 	udf	#8
  43d57c:	00000010 	udf	#16
  43d580:	00000100 	udf	#256
  43d584:	01244147 	.inst	0x01244147 ; undefined
  43d588:	00316133 	.inst	0x00316133 ; NYI
  43d58c:	00400620 	.inst	0x00400620 ; undefined
  43d590:	00000000 	udf	#0
  43d594:	00400630 	.inst	0x00400630 ; undefined
  43d598:	00000000 	udf	#0
  43d59c:	00000008 	udf	#8
  43d5a0:	00000010 	udf	#16
  43d5a4:	00000100 	udf	#256
  43d5a8:	01244147 	.inst	0x01244147 ; undefined
  43d5ac:	00316133 	.inst	0x00316133 ; NYI
  43d5b0:	004012c4 	.inst	0x004012c4 ; undefined
  43d5b4:	00000000 	udf	#0
  43d5b8:	004012d0 	.inst	0x004012d0 ; undefined
  43d5bc:	00000000 	udf	#0
  43d5c0:	00000008 	udf	#8
  43d5c4:	00000010 	udf	#16
  43d5c8:	00000100 	udf	#256
  43d5cc:	01244147 	.inst	0x01244147 ; undefined
  43d5d0:	00316133 	.inst	0x00316133 ; NYI
  43d5d4:	004012c4 	.inst	0x004012c4 ; undefined
  43d5d8:	00000000 	udf	#0
  43d5dc:	004012c4 	.inst	0x004012c4 ; undefined
  43d5e0:	00000000 	udf	#0
  43d5e4:	00000008 	udf	#8
  43d5e8:	00000010 	udf	#16
  43d5ec:	00000100 	udf	#256
  43d5f0:	01244147 	.inst	0x01244147 ; undefined
  43d5f4:	00316133 	.inst	0x00316133 ; NYI
  43d5f8:	00400630 	.inst	0x00400630 ; undefined
  43d5fc:	00000000 	udf	#0
  43d600:	00400638 	.inst	0x00400638 ; undefined
  43d604:	00000000 	udf	#0
  43d608:	00000008 	udf	#8
  43d60c:	00000010 	udf	#16
  43d610:	00000100 	udf	#256
  43d614:	01244147 	.inst	0x01244147 ; undefined
  43d618:	00316133 	.inst	0x00316133 ; NYI
  43d61c:	004012d0 	.inst	0x004012d0 ; undefined
  43d620:	00000000 	udf	#0
  43d624:	004012d8 	.inst	0x004012d8 ; undefined
  43d628:	00000000 	udf	#0

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	0000002c 	udf	#44
   4:	00000002 	udf	#2
   8:	00080000 	.inst	0x00080000 ; undefined
   c:	00000000 	udf	#0
  10:	00400804 	.inst	0x00400804 ; undefined
  14:	00000000 	udf	#0
  18:	00000ac0 	udf	#2752
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	000006b9 	udf	#1721
   4:	00000004 	udf	#4
   8:	01080000 	.inst	0x01080000 ; undefined
   c:	000002a1 	udf	#673
  10:	0001550c 	.inst	0x0001550c ; undefined
  14:	00000000 	udf	#0
  18:	40080400 	.inst	0x40080400 ; undefined
  1c:	00000000 	udf	#0
  20:	000ac000 	.inst	0x000ac000 ; undefined
	...
  2c:	00560200 	.inst	0x00560200 ; undefined
  30:	d1020000 	sub	x0, x0, #0x80
  34:	00003917 	udf	#14615
  38:	07080300 	.inst	0x07080300 ; undefined
  3c:	00000167 	udf	#359
  40:	04050804 	.inst	0x04050804 ; undefined
  44:	746e6905 	.inst	0x746e6905 ; undefined
  48:	08010300 	stxrb	w1, w0, [x24]
  4c:	00000134 	udf	#308
  50:	f4070203 	.inst	0xf4070203 ; undefined
  54:	03000001 	.inst	0x03000001 ; undefined
  58:	016c0704 	.inst	0x016c0704 ; undefined
  5c:	01030000 	.inst	0x01030000 ; undefined
  60:	00013606 	.inst	0x00013606 ; undefined
  64:	05020300 	orr	z0.d, z0.d, #0x1ffffff
  68:	0000004c 	udf	#76
  6c:	f1050803 	subs	x3, x0, #0x142
  70:	02000000 	.inst	0x02000000 ; undefined
  74:	00000258 	udf	#600
  78:	6c199803 	stnp	d3, d6, [x0, #408]
  7c:	02000000 	.inst	0x02000000 ; undefined
  80:	0000022b 	udf	#555
  84:	6c1b9903 	stnp	d3, d6, [x8, #440]
  88:	06000000 	.inst	0x06000000 ; undefined
  8c:	00009108 	udf	#37128
  90:	08010300 	stxrb	w1, w0, [x24]
  94:	0000013d 	udf	#317
  98:	00009107 	udf	#37127
  9c:	00220800 	.inst	0x00220800 ; NYI
  a0:	04d80000 	orr	z0.d, p0/m, z0.d, z0.d
  a4:	02240831 	.inst	0x02240831 ; undefined
  a8:	6b090000 	subs	w0, w0, w9
  ac:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  b0:	00420733 	.inst	0x00420733 ; undefined
  b4:	09000000 	.inst	0x09000000 ; undefined
  b8:	000001a6 	udf	#422
  bc:	8b093604 	add	x4, x16, x9, lsl #13
  c0:	08000000 	stxrb	w0, w0, [x0]
  c4:	0000af09 	udf	#44809
  c8:	09370400 	.inst	0x09370400 ; undefined
  cc:	0000008b 	udf	#139
  d0:	02840910 	.inst	0x02840910 ; undefined
  d4:	38040000 	sturb	w0, [x0, #64]
  d8:	00008b09 	udf	#35593
  dc:	8e091800 	.inst	0x8e091800 ; undefined
  e0:	04000001 	add	z1.b, p0/m, z1.b, z0.b
  e4:	008b0939 	.inst	0x008b0939 ; undefined
  e8:	09200000 	.inst	0x09200000 ; undefined
  ec:	0000005d 	udf	#93
  f0:	8b093a04 	add	x4, x16, x9, lsl #14
  f4:	28000000 	stnp	w0, w0, [x0]
  f8:	00021d09 	.inst	0x00021d09 ; undefined
  fc:	093b0400 	.inst	0x093b0400 ; undefined
 100:	0000008b 	udf	#139
 104:	00770930 	.inst	0x00770930 ; undefined
 108:	3c040000 	stur	b0, [x0, #64]
 10c:	00008b09 	udf	#35593
 110:	b3093800 	.inst	0xb3093800 ; undefined
 114:	04000001 	add	z1.b, p0/m, z1.b, z0.b
 118:	008b093d 	.inst	0x008b093d ; undefined
 11c:	09400000 	.inst	0x09400000 ; undefined
 120:	00000147 	udf	#327
 124:	8b094004 	add	x4, x0, x9, lsl #16
 128:	48000000 	stxrh	w0, w0, [x0]
 12c:	00026009 	.inst	0x00026009 ; undefined
 130:	09410400 	.inst	0x09410400 ; undefined
 134:	0000008b 	udf	#139
 138:	02100950 	.inst	0x02100950 ; undefined
 13c:	42040000 	.inst	0x42040000 ; undefined
 140:	00008b09 	udf	#35593
 144:	a6095800 	.inst	0xa6095800 ; undefined
 148:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 14c:	023d1644 	.inst	0x023d1644 ; undefined
 150:	09600000 	.inst	0x09600000 ; undefined
 154:	0000023d 	udf	#573
 158:	43144604 	.inst	0x43144604 ; undefined
 15c:	68000002 	.inst	0x68000002 ; undefined
 160:	00023509 	.inst	0x00023509 ; undefined
 164:	07480400 	.inst	0x07480400 ; undefined
 168:	00000042 	udf	#66
 16c:	02700970 	.inst	0x02700970 ; undefined
 170:	49040000 	.inst	0x49040000 ; undefined
 174:	00004207 	udf	#16903
 178:	16097400 	b	fffffffff825d178 <__bss_end__+0xfffffffff7e1fc48>
 17c:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 180:	00730b4a 	.inst	0x00730b4a ; undefined
 184:	09780000 	.inst	0x09780000 ; undefined
 188:	00000105 	udf	#261
 18c:	50124d04 	adr	x4, 24b2e <__abi_tag-0x3db74a>
 190:	80000000 	.inst	0x80000000 ; undefined
 194:	00029209 	.inst	0x00029209 ; undefined
 198:	0f4e0400 	.inst	0x0f4e0400 ; undefined
 19c:	0000005e 	udf	#94
 1a0:	01840982 	.inst	0x01840982 ; undefined
 1a4:	4f040000 	.inst	0x4f040000 ; undefined
 1a8:	00024908 	.inst	0x00024908 ; undefined
 1ac:	ff098300 	.inst	0xff098300 ; undefined
 1b0:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 1b4:	02590f51 	.inst	0x02590f51 ; undefined
 1b8:	09880000 	.inst	0x09880000 ; undefined
 1bc:	0000001a 	udf	#26
 1c0:	7f0d5904 	.inst	0x7f0d5904 ; undefined
 1c4:	90000000 	adrp	x0, 0 <__abi_tag-0x400278>
 1c8:	00027b09 	.inst	0x00027b09 ; undefined
 1cc:	175b0400 	b	fffffffffd6c11cc <__bss_end__+0xfffffffffd283c9c>
 1d0:	00000264 	udf	#612
 1d4:	02470998 	.inst	0x02470998 ; undefined
 1d8:	5c040000 	ldr	d0, 81d8 <__abi_tag-0x3f80a0>
 1dc:	00026f19 	.inst	0x00026f19 ; undefined
 1e0:	c409a000 	.inst	0xc409a000 ; undefined
 1e4:	04000001 	add	z1.b, p0/m, z1.b, z0.b
 1e8:	0243145d 	.inst	0x0243145d ; undefined
 1ec:	09a80000 	.inst	0x09a80000 ; undefined
 1f0:	000000bc 	udf	#188
 1f4:	40095e04 	.inst	0x40095e04 ; undefined
 1f8:	b0000000 	adrp	x0, 1000 <__abi_tag-0x3ff278>
 1fc:	0001db09 	.inst	0x0001db09 ; undefined
 200:	0a5f0400 	and	w0, w0, wzr, lsr #1
 204:	0000002d 	udf	#45
 208:	025209b8 	.inst	0x025209b8 ; undefined
 20c:	60040000 	.inst	0x60040000 ; undefined
 210:	00004207 	udf	#16903
 214:	9d09c000 	.inst	0x9d09c000 ; undefined
 218:	04000001 	add	z1.b, p0/m, z1.b, z0.b
 21c:	02750862 	.inst	0x02750862 ; undefined
 220:	00c40000 	.inst	0x00c40000 ; undefined
 224:	00002602 	udf	#9730
 228:	19070500 	.inst	0x19070500 ; undefined
 22c:	0000009d 	udf	#157
 230:	0002d50a 	.inst	0x0002d50a ; undefined
 234:	0e2b0400 	shadd	v0.8b, v0.8b, v11.8b
 238:	0001790b 	.inst	0x0001790b ; undefined
 23c:	38080600 	strb	w0, [x16], #128
 240:	06000002 	.inst	0x06000002 ; undefined
 244:	00009d08 	udf	#40200
 248:	00910c00 	.inst	0x00910c00 ; undefined
 24c:	02590000 	.inst	0x02590000 ; undefined
 250:	390d0000 	strb	w0, [x0, #832]
 254:	00000000 	udf	#0
 258:	30080600 	adr	x0, 10319 <__abi_tag-0x3eff5f>
 25c:	0b000002 	add	w2, w0, w0
 260:	00000278 	udf	#632
 264:	025f0806 	.inst	0x025f0806 ; undefined
 268:	440b0000 	.inst	0x440b0000 ; undefined
 26c:	06000002 	.inst	0x06000002 ; undefined
 270:	00026a08 	.inst	0x00026a08 ; undefined
 274:	00910c00 	.inst	0x00910c00 ; undefined
 278:	02850000 	.inst	0x02850000 ; undefined
 27c:	390d0000 	strb	w0, [x0, #832]
 280:	13000000 	sbfx	w0, w0, #0, #1
 284:	24080600 	cmphs	p0.b, p1/z, z16.b, z8.b
 288:	03000002 	.inst	0x03000002 ; undefined
 28c:	00ec0508 	.inst	0x00ec0508 ; undefined
 290:	08030000 	stxrb	w3, w0, [x0]
 294:	00016207 	.inst	0x00016207 ; undefined
 298:	98080600 	ldrsw	x0, 10358 <__abi_tag-0x3eff20>
 29c:	03000000 	.inst	0x03000000 ; undefined
 2a0:	002b0710 	.inst	0x002b0710 ; NYI
 2a4:	04030000 	subr	z0.b, p0/m, z0.b, z0.b
 2a8:	0000e604 	udf	#58884
 2ac:	04080300 	smax	z0.b, p0/m, z0.b, z24.b
 2b0:	000002ce 	udf	#718
 2b4:	0000fa02 	udf	#64002
 2b8:	0d320100 	.inst	0x0d320100 ; undefined
 2bc:	000002c0 	udf	#704
 2c0:	0000420c 	udf	#16908
 2c4:	0002d600 	.inst	0x0002d600 ; undefined
 2c8:	00390d00 	.inst	0x00390d00 ; NYI
 2cc:	0d630000 	.inst	0x0d630000 ; undefined
 2d0:	00000039 	udf	#57
 2d4:	6d0e0063 	stp	d3, d0, [x3, #224]
 2d8:	01003173 	.inst	0x01003173 ; undefined
 2dc:	02b4064a 	.inst	0x02b4064a ; undefined
 2e0:	03090000 	.inst	0x03090000 ; undefined
 2e4:	00420068 	.inst	0x00420068 ; undefined
 2e8:	00000000 	udf	#0
 2ec:	32736d0e 	.inst	0x32736d0e ; undefined
 2f0:	0a4a0100 	and	w0, w8, w10, lsr #0
 2f4:	000002b4 	udf	#692
 2f8:	9ca80309 	ldr	q9, fffffffffff50358 <__bss_end__+0xffffffffffb12e28>
 2fc:	00000042 	udf	#66
 300:	6d0e0000 	stp	d0, d0, [x0, #224]
 304:	01003373 	.inst	0x01003373 ; undefined
 308:	02b40e4a 	.inst	0x02b40e4a ; undefined
 30c:	03090000 	.inst	0x03090000 ; undefined
 310:	004338e8 	.inst	0x004338e8 ; undefined
 314:	00000000 	udf	#0
 318:	34736d0e 	cbz	w14, e70b8 <__abi_tag-0x3191c0>
 31c:	054b0100 	.inst	0x054b0100 ; undefined
 320:	00000042 	udf	#66
 324:	d5280309 	sysl	x9, #0, C0, C3, #0
 328:	00000043 	udf	#67
 32c:	3d0f0000 	str	b0, [x0, #960]
 330:	01000000 	.inst	0x01000000 ; undefined
 334:	4205010d 	.inst	0x4205010d ; undefined
 338:	d8000000 	prfm	pldl1keep, 338 <__abi_tag-0x3fff40>
 33c:	00004011 	udf	#16401
 340:	ec000000 	.inst	0xec000000 ; undefined
 344:	00000000 	udf	#0
 348:	01000000 	.inst	0x01000000 ; undefined
 34c:	0003889c 	.inst	0x0003889c ; undefined
 350:	70661000 	adr	x0, cc553 <__abi_tag-0x333d25>
 354:	010f0100 	.inst	0x010f0100 ; undefined
 358:	0002850b 	.inst	0x0002850b ; undefined
 35c:	70910200 	adr	x0, fffffffffff2239f <__bss_end__+0xffffffffffae4e6f>
 360:	01007810 	.inst	0x01007810 ; undefined
 364:	42090113 	.inst	0x42090113 ; undefined
 368:	02000000 	.inst	0x02000000 ; undefined
 36c:	79107c91 	strh	w17, [x4, #2110]
 370:	01130100 	.inst	0x01130100 ; undefined
 374:	0000420d 	udf	#16909
 378:	78910200 	ldursh	x0, [x16, #-240]
 37c:	01007a11 	.inst	0x01007a11 ; undefined
 380:	42110113 	.inst	0x42110113 ; undefined
 384:	00000000 	udf	#0
 388:	00012512 	.inst	0x00012512 ; undefined
 38c:	05f40100 	.inst	0x05f40100 ; undefined
 390:	00000042 	udf	#66
 394:	004010a8 	.inst	0x004010a8 ; undefined
 398:	00000000 	udf	#0
 39c:	00000130 	udf	#304
 3a0:	00000000 	udf	#0
 3a4:	03ba9c01 	.inst	0x03ba9c01 ; undefined
 3a8:	47130000 	.inst	0x47130000 ; undefined
 3ac:	01000000 	.inst	0x01000000 ; undefined
 3b0:	004209f7 	.inst	0x004209f7 ; undefined
 3b4:	91020000 	add	x0, x0, #0x80
 3b8:	1612007c 	b	fffffffff84805a8 <__bss_end__+0xfffffffff8043078>
 3bc:	01000001 	.inst	0x01000001 ; undefined
 3c0:	004205db 	.inst	0x004205db ; undefined
 3c4:	0f780000 	.inst	0x0f780000 ; undefined
 3c8:	00000040 	udf	#64
 3cc:	01300000 	.inst	0x01300000 ; undefined
 3d0:	00000000 	udf	#0
 3d4:	9c010000 	ldr	q0, 23d4 <__abi_tag-0x3fdea4>
 3d8:	000003ec 	udf	#1004
 3dc:	00004713 	udf	#18195
 3e0:	09de0100 	.inst	0x09de0100 ; undefined
 3e4:	00000042 	udf	#66
 3e8:	007c9102 	.inst	0x007c9102 ; undefined
 3ec:	0001e214 	.inst	0x0001e214 ; undefined
 3f0:	05d30100 	mov	z0.d, p3/z, #8
 3f4:	00000042 	udf	#66
 3f8:	00400f54 	.inst	0x00400f54 ; undefined
 3fc:	00000000 	udf	#0
 400:	00000024 	udf	#36
 404:	00000000 	udf	#0
 408:	041e9c01 	.inst	0x041e9c01 ; undefined
 40c:	72150000 	ands	w0, w0, #0x800
 410:	01007365 	.inst	0x01007365 ; undefined
 414:	004209d5 	.inst	0x004209d5 ; undefined
 418:	91020000 	add	x0, x0, #0x80
 41c:	d214007c 	eor	x28, x3, #0x100000001000
 420:	01000001 	.inst	0x01000001 ; undefined
 424:	004205c3 	.inst	0x004205c3 ; undefined
 428:	0ee80000 	.inst	0x0ee80000 ; undefined
 42c:	00000040 	udf	#64
 430:	006c0000 	.inst	0x006c0000 ; undefined
 434:	00000000 	udf	#0
 438:	9c010000 	ldr	q0, 2438 <__abi_tag-0x3fde40>
 43c:	0000045f 	udf	#1119
 440:	00706615 	.inst	0x00706615 ; undefined
 444:	850bc501 	prfw	pldl1strm, p1, [x8, x11, lsl #2]
 448:	02000002 	.inst	0x02000002 ; undefined
 44c:	72137891 	ands	w17, w4, #0xffffefff
 450:	01000000 	.inst	0x01000000 ; undefined
 454:	045f0ac6 	.inst	0x045f0ac6 ; undefined
 458:	91030000 	add	x0, x0, #0xc0
 45c:	0c007df8 	st1	{v24.1d}, [x15]
 460:	00000091 	udf	#145
 464:	0000046f 	udf	#1135
 468:	0000390d 	udf	#14605
 46c:	1200fe00 	.inst	0x1200fe00 ; undefined
 470:	000000c9 	udf	#201
 474:	4205b301 	.inst	0x4205b301 ; undefined
 478:	cc000000 	.inst	0xcc000000 ; undefined
 47c:	0000400d 	udf	#16397
 480:	1c000000 	ldr	s0, 480 <__abi_tag-0x3ffdf8>
 484:	00000001 	udf	#1
 488:	01000000 	.inst	0x01000000 ; undefined
 48c:	0004e69c 	.inst	0x0004e69c ; undefined
 490:	00de1300 	.inst	0x00de1300 ; undefined
 494:	b5010000 	cbnz	x0, 2494 <__abi_tag-0x3fdde4>
 498:	00004209 	udf	#16905
 49c:	74910200 	.inst	0x74910200 ; undefined
 4a0:	01007815 	.inst	0x01007815 ; undefined
 4a4:	004209b6 	.inst	0x004209b6 ; undefined
 4a8:	91020000 	add	x0, x0, #0x80
 4ac:	0079157c 	.inst	0x0079157c ; undefined
 4b0:	420db601 	.inst	0x420db601 ; undefined
 4b4:	02000000 	.inst	0x02000000 ; undefined
 4b8:	7a167891 	.inst	0x7a167891 ; undefined
 4bc:	11b60100 	.inst	0x11b60100 ; undefined
 4c0:	00000042 	udf	#66
 4c4:	400de417 	.inst	0x400de417 ; undefined
 4c8:	00000000 	udf	#0
 4cc:	0000c800 	udf	#51200
 4d0:	00000000 	udf	#0
 4d4:	6d741500 	ldp	d0, d5, [x8, #-192]
 4d8:	bb010070 	.inst	0xbb010070 ; undefined
 4dc:	00004215 	udf	#16917
 4e0:	70910200 	adr	x0, fffffffffff22523 <__bss_end__+0xffffffffffae4ff3>
 4e4:	07120000 	.inst	0x07120000 ; undefined
 4e8:	01000002 	.inst	0x01000002 ; undefined
 4ec:	004205a5 	.inst	0x004205a5 ; undefined
 4f0:	0c940000 	st4	{v0.8b-v3.8b}, [x0], x20
 4f4:	00000040 	udf	#64
 4f8:	01380000 	.inst	0x01380000 ; undefined
 4fc:	00000000 	udf	#0
 500:	9c010000 	ldr	q0, 2500 <__abi_tag-0x3fdd78>
 504:	00000566 	udf	#1382
 508:	400c9817 	.inst	0x400c9817 ; undefined
 50c:	00000000 	udf	#0
 510:	00012800 	.inst	0x00012800 ; undefined
 514:	00000000 	udf	#0
 518:	00691500 	.inst	0x00691500 ; undefined
 51c:	420ea701 	.inst	0x420ea701 ; undefined
 520:	02000000 	.inst	0x02000000 ; undefined
 524:	a0177c91 	.inst	0xa0177c91 ; undefined
 528:	0000400c 	udf	#16396
 52c:	08000000 	stxrb	w0, w0, [x0]
 530:	00000001 	udf	#1
 534:	15000000 	b	4000534 <__bss_end__+0x3bc3004>
 538:	a901006a 	stp	x10, x0, [x3, #16]
 53c:	00004216 	udf	#16918
 540:	78910200 	ldursh	x0, [x16, #-240]
 544:	400ca817 	.inst	0x400ca817 ; undefined
 548:	00000000 	udf	#0
 54c:	0000e800 	udf	#59392
 550:	00000000 	udf	#0
 554:	006b1500 	.inst	0x006b1500 ; undefined
 558:	421aab01 	.inst	0x421aab01 ; undefined
 55c:	02000000 	.inst	0x02000000 ; undefined
 560:	00007491 	udf	#29841
 564:	d2120000 	eor	x0, x0, #0x400000004000
 568:	01000000 	.inst	0x01000000 ; undefined
 56c:	0042058d 	.inst	0x0042058d ; undefined
 570:	0ba80000 	.inst	0x0ba80000 ; undefined
 574:	00000040 	udf	#64
 578:	00ec0000 	.inst	0x00ec0000 ; undefined
 57c:	00000000 	udf	#0
 580:	9c010000 	ldr	q0, 2580 <__abi_tag-0x3fdcf8>
 584:	000005b2 	udf	#1458
 588:	0000de13 	udf	#56851
 58c:	098f0100 	.inst	0x098f0100 ; undefined
 590:	00000042 	udf	#66
 594:	157c9102 	b	5f2499c <__bss_end__+0x5ae746c>
 598:	90010078 	adrp	x24, 200c000 <__bss_end__+0x1bcead0>
 59c:	00004209 	udf	#16905
 5a0:	78910200 	ldursh	x0, [x16, #-240]
 5a4:	01007915 	.inst	0x01007915 ; undefined
 5a8:	00420d90 	.inst	0x00420d90 ; undefined
 5ac:	91020000 	add	x0, x0, #0x80
 5b0:	95180074 	bl	4600780 <__bss_end__+0x41c3250>
 5b4:	01000000 	.inst	0x01000000 ; undefined
 5b8:	0a14067c 	and	w28, w19, w20, lsl #1
 5bc:	00000040 	udf	#64
 5c0:	01940000 	.inst	0x01940000 ; undefined
 5c4:	00000000 	udf	#0
 5c8:	9c010000 	ldr	q0, 25c8 <__abi_tag-0x3fdcb0>
 5cc:	0000060c 	udf	#1548
 5d0:	01007815 	.inst	0x01007815 ; undefined
 5d4:	0042097e 	.inst	0x0042097e ; undefined
 5d8:	91020000 	add	x0, x0, #0x80
 5dc:	0079157c 	.inst	0x0079157c ; undefined
 5e0:	420d7e01 	.inst	0x420d7e01 ; undefined
 5e4:	02000000 	.inst	0x02000000 ; undefined
 5e8:	2c177891 	stnp	s17, s30, [x4, #184]
 5ec:	0000400a 	udf	#16394
 5f0:	3c000000 	stur	b0, [x0]
 5f4:	00000001 	udf	#1
 5f8:	13000000 	sbfx	w0, w0, #0, #1
 5fc:	00000047 	udf	#71
 600:	42158401 	.inst	0x42158401 ; undefined
 604:	02000000 	.inst	0x02000000 ; undefined
 608:	00007491 	udf	#29841
 60c:	00008418 	udf	#33816
 610:	066a0100 	.inst	0x066a0100 ; undefined
 614:	00400880 	.inst	0x00400880 ; undefined
 618:	00000000 	udf	#0
 61c:	00000194 	udf	#404
 620:	00000000 	udf	#0
 624:	06669c01 	.inst	0x06669c01 ; undefined
 628:	78150000 	sturh	w0, [x0, #-176]
 62c:	096c0100 	.inst	0x096c0100 ; undefined
 630:	00000042 	udf	#66
 634:	157c9102 	b	5f24a3c <__bss_end__+0x5ae750c>
 638:	6c010079 	stnp	d25, d0, [x3, #16]
 63c:	0000420d 	udf	#16909
 640:	78910200 	ldursh	x0, [x16, #-240]
 644:	40089817 	.inst	0x40089817 ; undefined
 648:	00000000 	udf	#0
 64c:	00013c00 	.inst	0x00013c00 ; undefined
 650:	00000000 	udf	#0
 654:	00471300 	.inst	0x00471300 ; undefined
 658:	73010000 	.inst	0x73010000 ; undefined
 65c:	00004215 	udf	#16917
 660:	74910200 	.inst	0x74910200 ; undefined
 664:	bf140000 	.inst	0xbf140000 ; undefined
 668:	01000001 	.inst	0x01000001 ; undefined
 66c:	0042054d 	.inst	0x0042054d ; undefined
 670:	08040000 	stxrb	w4, w0, [x0]
 674:	00000040 	udf	#64
 678:	007c0000 	.inst	0x007c0000 ; undefined
 67c:	00000000 	udf	#0
 680:	9c010000 	ldr	q0, 2680 <__abi_tag-0x3fdbf8>
 684:	000006b6 	udf	#1718
 688:	00014219 	.inst	0x00014219 ; undefined
 68c:	0e4d0100 	.inst	0x0e4d0100 ; undefined
 690:	00000042 	udf	#66
 694:	196c9102 	.inst	0x196c9102 ; undefined
 698:	00000111 	udf	#273
 69c:	b6214d01 	tbz	x1, #36, 303c <__abi_tag-0x3fd23c>
 6a0:	02000006 	.inst	0x02000006 ; undefined
 6a4:	72156091 	ands	w17, w4, #0xfffff80f
 6a8:	01007365 	.inst	0x01007365 ; undefined
 6ac:	00420953 	.inst	0x00420953 ; undefined
 6b0:	91020000 	add	x0, x0, #0x80
 6b4:	0806007c 	stxrb	w6, w28, [x3]
 6b8:	00000299 	udf	#665
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
   4:	030b130e 	.inst	0x030b130e ; undefined
   8:	110e1b0e 	add	w14, w24, #0x386
   c:	10071201 	adr	x1, e24c <__abi_tag-0x3f202c>
  10:	02000017 	.inst	0x02000017 ; undefined
  14:	0e030016 	tbl	v22.8b, {v0.16b}, v3.8b
  18:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  1c:	13490b39 	.inst	0x13490b39 ; undefined
  20:	24030000 	cmphs	p0.b, p0/z, z0.b, z3.b
  24:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
  28:	000e030b 	.inst	0x000e030b ; undefined
  2c:	000f0400 	.inst	0x000f0400 ; undefined
  30:	00000b0b 	udf	#2827
  34:	0b002405 	add	w5, w0, w0, lsl #9
  38:	030b3e0b 	.inst	0x030b3e0b ; undefined
  3c:	06000008 	.inst	0x06000008 ; undefined
  40:	0b0b000f 	add	w15, w0, w11
  44:	00001349 	udf	#4937
  48:	49002607 	.inst	0x49002607 ; undefined
  4c:	08000013 	stxrb	w0, w19, [x0]
  50:	0e030113 	tbl	v19.8b, {v8.16b}, v3.8b
  54:	0b3a0b0b 	add	w11, w24, w26, uxtb #2
  58:	0b390b3b 	add	w27, w25, w25, uxtb #2
  5c:	00001301 	udf	#4865
  60:	03000d09 	.inst	0x03000d09 ; undefined
  64:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  68:	490b390b 	.inst	0x490b390b ; undefined
  6c:	000b3813 	.inst	0x000b3813 ; undefined
  70:	00160a00 	.inst	0x00160a00 ; undefined
  74:	0b3a0e03 	add	w3, w16, w26, uxtb #3
  78:	0b390b3b 	add	w27, w25, w25, uxtb #2
  7c:	130b0000 	sbfiz	w0, w0, #21, #1
  80:	3c0e0300 	stur	b0, [x24, #224]
  84:	0c000019 	st4	{v25.8b-v28.8b}, [x0]
  88:	13490101 	.inst	0x13490101 ; undefined
  8c:	00001301 	udf	#4865
  90:	4900210d 	.inst	0x4900210d ; undefined
  94:	000b2f13 	.inst	0x000b2f13 ; undefined
  98:	00340e00 	.inst	0x00340e00 ; NYI
  9c:	0b3a0803 	add	w3, w0, w26, uxtb #2
  a0:	0b390b3b 	add	w27, w25, w25, uxtb #2
  a4:	193f1349 	.inst	0x193f1349 ; undefined
  a8:	00001802 	udf	#6146
  ac:	3f012e0f 	.inst	0x3f012e0f ; undefined
  b0:	3a0e0319 	adcs	w25, w24, w14
  b4:	39053b0b 	strb	w11, [x24, #334]
  b8:	4919270b 	.inst	0x4919270b ; undefined
  bc:	12011113 	and	w19, w8, #0x8000000f
  c0:	96184007 	bl	fffffffff86100dc <__bss_end__+0xfffffffff81d2bac>
  c4:	13011942 	sbfx	w2, w10, #1, #6
  c8:	34100000 	cbz	w0, 200c8 <__abi_tag-0x3e01b0>
  cc:	3a080300 	adcs	w0, w24, w8
  d0:	39053b0b 	strb	w11, [x24, #334]
  d4:	0213490b 	.inst	0x0213490b ; undefined
  d8:	11000018 	add	w24, w0, #0x0
  dc:	08030034 	stxrb	w3, w20, [x1]
  e0:	053b0b3a 	ext	z26.b, z26.b, z25.b, #218
  e4:	13490b39 	.inst	0x13490b39 ; undefined
  e8:	2e120000 	ext	v0.8b, v0.8b, v18.8b, #0
  ec:	03193f01 	.inst	0x03193f01 ; undefined
  f0:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  f4:	270b390b 	.inst	0x270b390b ; undefined
  f8:	11134919 	add	w25, w8, #0x4d2
  fc:	40071201 	.inst	0x40071201 ; undefined
 100:	19429718 	.inst	0x19429718 ; undefined
 104:	00001301 	udf	#4865
 108:	03003413 	.inst	0x03003413 ; undefined
 10c:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 110:	490b390b 	.inst	0x490b390b ; undefined
 114:	00180213 	.inst	0x00180213 ; undefined
 118:	012e1400 	.inst	0x012e1400 ; undefined
 11c:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
 120:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 124:	19270b39 	.inst	0x19270b39 ; undefined
 128:	01111349 	.inst	0x01111349 ; undefined
 12c:	18400712 	ldr	w18, 8020c <__abi_tag-0x38006c>
 130:	01194296 	.inst	0x01194296 ; undefined
 134:	15000013 	b	4000180 <__bss_end__+0x3bc2c50>
 138:	08030034 	stxrb	w3, w20, [x1]
 13c:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 140:	13490b39 	.inst	0x13490b39 ; undefined
 144:	00001802 	udf	#6146
 148:	03003416 	.inst	0x03003416 ; undefined
 14c:	3b0b3a08 	.inst	0x3b0b3a08 ; undefined
 150:	490b390b 	.inst	0x490b390b ; undefined
 154:	17000013 	b	fffffffffc0001a0 <__bss_end__+0xfffffffffbbc2c70>
 158:	0111010b 	.inst	0x0111010b ; undefined
 15c:	00000712 	udf	#1810
 160:	3f012e18 	.inst	0x3f012e18 ; undefined
 164:	3a0e0319 	adcs	w25, w24, w14
 168:	390b3b0b 	strb	w11, [x24, #718]
 16c:	1119270b 	add	w11, w24, #0x649
 170:	40071201 	.inst	0x40071201 ; undefined
 174:	19429618 	.inst	0x19429618 ; undefined
 178:	00001301 	udf	#4865
 17c:	03000519 	.inst	0x03000519 ; undefined
 180:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 184:	490b390b 	.inst	0x490b390b ; undefined
 188:	00180213 	.inst	0x00180213 ; undefined
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	0000033c 	udf	#828
   4:	00ad0003 	.inst	0x00ad0003 ; undefined
   8:	01040000 	.inst	0x01040000 ; undefined
   c:	000d0efb 	.inst	0x000d0efb ; undefined
  10:	01010101 	.inst	0x01010101 ; undefined
  14:	01000000 	.inst	0x01000000 ; undefined
  18:	2f010000 	.inst	0x2f010000 ; undefined
  1c:	2f727375 	fcmla	v21.4h, v27.4h, v18.h[1], #270
  20:	2f62696c 	umlsl	v12.4s, v11.4h, v2.h[6]
  24:	2f636367 	umlsl	v7.4s, v27.4h, v3.h[2]
  28:	63726161 	.inst	0x63726161 ; undefined
  2c:	2d343668 	stp	s8, s13, [x19, #-96]
  30:	756e696c 	.inst	0x756e696c ; undefined
  34:	6e672d78 	uqsub	v24.8h, v11.8h, v7.8h
  38:	30312f75 	adr	x21, 62625 <__abi_tag-0x39dc53>
  3c:	312e332e 	adds	w14, w25, #0xb8c
  40:	636e692f 	.inst	0x636e692f ; undefined
  44:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
  48:	73752f00 	.inst	0x73752f00 ; undefined
  4c:	6e692f72 	uqsub	v18.8h, v27.8h, v9.8h
  50:	64756c63 	.inst	0x64756c63 ; undefined
  54:	69622f65 	ldpsw	x5, x11, [x27, #-240]
  58:	2f007374 	.inst	0x2f007374 ; undefined
  5c:	2f727375 	fcmla	v21.4h, v27.4h, v18.h[1], #270
  60:	6c636e69 	ldnp	d9, d27, [x19, #-464]
  64:	2f656475 	.inst	0x2f656475 ; undefined
  68:	73746962 	.inst	0x73746962 ; undefined
  6c:	7079742f 	adr	x15, f2ef3 <__abi_tag-0x30d385>
  70:	00007365 	udf	#29541
  74:	63657073 	.inst	0x63657073 ; undefined
  78:	6e65625f 	rsubhn2	v31.8h, v18.4s, v5.4s
  7c:	632e6863 	.inst	0x632e6863 ; undefined
  80:	00000000 	udf	#0
  84:	64647473 	.inst	0x64647473 ; undefined
  88:	682e6665 	.inst	0x682e6665 ; undefined
  8c:	00000100 	udf	#256
  90:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
  94:	00682e73 	.inst	0x00682e73 ; undefined
  98:	73000002 	.inst	0x73000002 ; undefined
  9c:	63757274 	.inst	0x63757274 ; undefined
  a0:	49465f74 	.inst	0x49465f74 ; undefined
  a4:	682e454c 	.inst	0x682e454c ; undefined
  a8:	00000300 	udf	#768
  ac:	454c4946 	uaddwb	z6.h, z10.h, z12.b
  b0:	0300682e 	.inst	0x0300682e ; undefined
  b4:	05000000 	orr	z0.s, z0.s, #0x1
  b8:	02090001 	.inst	0x02090001 ; undefined
  bc:	00400804 	.inst	0x00400804 ; undefined
  c0:	00000000 	udf	#0
  c4:	0100cd03 	.inst	0x0100cd03 ; undefined
  c8:	054d0505 	.inst	0x054d0505 ; undefined
  cc:	19052209 	stlurb	w9, [x16, #82]
  d0:	4a080521 	eor	w1, w9, w8, lsl #1
  d4:	21300905 	.inst	0x21300905 ; undefined
  d8:	05240b05 	ext	z5.b, z5.b, z24.b, #34
  dc:	0f052f08 	.inst	0x0f052f08 ; undefined
  e0:	0d05303e 	.inst	0x0d05303e ; undefined
  e4:	3f05052e 	.inst	0x3f05052e ; undefined
  e8:	220c0521 	.inst	0x220c0521 ; undefined
  ec:	32210105 	orr	w5, w8, #0x80000000
  f0:	05301005 	ext	z5.b, z5.b, z0.b, #132
  f4:	14052009 	b	148118 <__abi_tag-0x2b8160>
  f8:	200d0522 	.inst	0x200d0522 ; undefined
  fc:	05231d05 	ext	z5.b, z5.b, z8.b, #31
 100:	1505201b 	b	414816c <__bss_end__+0x3d0ac3c>
 104:	c91a05c9 	.inst	0xc91a05c9 ; undefined
 108:	05ba1305 	.inst	0x05ba1305 ; undefined
 10c:	26054c1f 	.inst	0x26054c1f ; undefined
 110:	02040200 	.inst	0x02040200 ; undefined
 114:	24027903 	cmplt	p3.b, p6/z, z8.b, z2.d
 118:	000d0501 	.inst	0x000d0501 ; undefined
 11c:	3c010402 	str	b2, [x0], #16
 120:	02002205 	.inst	0x02002205 ; undefined
 124:	053a0204 	ext	z4.b, z4.b, z16.b, #208
 128:	04020009 	.inst	0x04020009 ; undefined
 12c:	01053c01 	.inst	0x01053c01 ; undefined
 130:	4d3c0d03 	.inst	0x4d3c0d03 ; undefined
 134:	05301005 	ext	z5.b, z5.b, z0.b, #132
 138:	14052009 	b	14815c <__abi_tag-0x2b811c>
 13c:	200d0522 	.inst	0x200d0522 ; undefined
 140:	05221d05 	ext	z5.b, z5.b, z8.b, #23
 144:	1505201b 	b	41481b0 <__bss_end__+0x3d0ac80>
 148:	c91a05c9 	.inst	0xc91a05c9 ; undefined
 14c:	05ba1305 	.inst	0x05ba1305 ; undefined
 150:	26054c1f 	.inst	0x26054c1f ; undefined
 154:	02040200 	.inst	0x02040200 ; undefined
 158:	24027a03 	cmplt	p3.b, p6/z, z16.b, z2.d
 15c:	000d0501 	.inst	0x000d0501 ; undefined
 160:	3c010402 	str	b2, [x0], #16
 164:	02002205 	.inst	0x02002205 ; undefined
 168:	053a0204 	ext	z4.b, z4.b, z16.b, #208
 16c:	04020009 	.inst	0x04020009 ; undefined
 170:	01053c01 	.inst	0x01053c01 ; undefined
 174:	4d3c0c03 	.inst	0x4d3c0c03 ; undefined
 178:	05210905 	ext	z5.b, z5.b, z8.b, #10
 17c:	09052210 	.inst	0x09052210 ; undefined
 180:	22140520 	.inst	0x22140520 ; undefined
 184:	05200d05 	ext	z5.b, z5.b, z8.b, #3
 188:	2405221a 	cmpne	p10.b, p0/z, z16.b, z5.d
 18c:	ba1305ba 	.inst	0xba1305ba ; undefined
 190:	4e301d05 	and	v5.16b, v8.16b, v16.16b
 194:	02002605 	.inst	0x02002605 ; undefined
 198:	78030204 	sturh	w4, [x16, #48]
 19c:	000d053c 	.inst	0x000d053c ; undefined
 1a0:	3c010402 	str	b2, [x0], #16
 1a4:	02002205 	.inst	0x02002205 ; undefined
 1a8:	053a0204 	ext	z4.b, z4.b, z16.b, #208
 1ac:	04020009 	.inst	0x04020009 ; undefined
 1b0:	07053c01 	.inst	0x07053c01 ; undefined
 1b4:	053c0e03 	ext	z3.b, z3.b, z16.b, #227
 1b8:	05303d0d 	.inst	0x05303d0d ; undefined
 1bc:	05312101 	mov	z1.b, z8.b[8]
 1c0:	0505210e 	.inst	0x0505210e ; undefined
 1c4:	22160520 	.inst	0x22160520 ; undefined
 1c8:	05200d05 	ext	z5.b, z5.b, z8.b, #3
 1cc:	1105221a 	add	w26, w16, #0x148
 1d0:	001f0520 	.inst	0x001f0520 ; undefined
 1d4:	21030402 	.inst	0x21030402 ; undefined
 1d8:	02002805 	.inst	0x02002805 ; undefined
 1dc:	05ba0304 	zip1	z4.q, z24.q, z26.q
 1e0:	04020034 	.inst	0x04020034 ; undefined
 1e4:	2c05ba03 	stnp	s3, s14, [x16, #44]
 1e8:	03040200 	.inst	0x03040200 ; undefined
 1ec:	001f05ba 	.inst	0x001f05ba ; undefined
 1f0:	20030402 	.inst	0x20030402 ; undefined
 1f4:	02002e05 	.inst	0x02002e05 ; undefined
 1f8:	05c70304 	.inst	0x05c70304 ; undefined
 1fc:	04020011 	.inst	0x04020011 ; undefined
 200:	2a053c01 	orr	w1, w0, w5, lsl #15
 204:	02040200 	.inst	0x02040200 ; undefined
 208:	000d053a 	.inst	0x000d053a ; undefined
 20c:	3c010402 	str	b2, [x0], #16
 210:	02002205 	.inst	0x02002205 ; undefined
 214:	053a0204 	ext	z4.b, z4.b, z16.b, #208
 218:	04020005 	.inst	0x04020005 ; undefined
 21c:	0c053c01 	.inst	0x0c053c01 ; undefined
 220:	053c0903 	ext	z3.b, z3.b, z8.b, #226
 224:	05312101 	mov	z1.b, z8.b[8]
 228:	10052109 	adr	x9, a648 <__abi_tag-0x3f5c30>
 22c:	20090522 	.inst	0x20090522 ; undefined
 230:	05221405 	ext	z5.b, z5.b, z0.b, #21
 234:	1505200d 	b	4148268 <__bss_end__+0x3d0ad38>
 238:	03040200 	.inst	0x03040200 ; undefined
 23c:	00230522 	.inst	0x00230522 ; NYI
 240:	c9030402 	.inst	0xc9030402 ; undefined
 244:	02001b05 	.inst	0x02001b05 ; undefined
 248:	00ba0304 	.inst	0x00ba0304 ; undefined
 24c:	bb030402 	.inst	0xbb030402 ; undefined
 250:	02002605 	.inst	0x02002605 ; undefined
 254:	05c40304 	.inst	0x05c40304 ; undefined
 258:	0402000d 	.inst	0x0402000d ; undefined
 25c:	22053c01 	.inst	0x22053c01 ; undefined
 260:	02040200 	.inst	0x02040200 ; undefined
 264:	0009053a 	.inst	0x0009053a ; undefined
 268:	3c010402 	str	b2, [x0], #16
 26c:	09030c05 	.inst	0x09030c05 ; undefined
 270:	2101053c 	.inst	0x2101053c ; undefined
 274:	2f0b0531 	ushr	v17.8b, v9.8b, #5
 278:	05230a05 	ext	z5.b, z5.b, z16.b, #26
 27c:	594b6705 	.inst	0x594b6705 ; undefined
 280:	300c054c 	adr	x12, 18329 <__abi_tag-0x3e7f4f>
 284:	31220105 	adds	w5, w8, #0x880
 288:	052f0f05 	ext	z5.b, z5.b, z24.b, #123
 28c:	0d052f0b 	.inst	0x0d052f0b ; undefined
 290:	21010530 	.inst	0x21010530 ; undefined
 294:	210f0531 	.inst	0x210f0531 ; undefined
 298:	054b0905 	.inst	0x054b0905 ; undefined
 29c:	0a054b0f 	and	w15, w24, w5, lsl #18
 2a0:	0f054b4b 	.inst	0x0f054b4b ; undefined
 2a4:	054b4b4b 	.inst	0x054b4b4b ; undefined
 2a8:	054b4b0a 	.inst	0x054b4b0a ; undefined
 2ac:	0a054b0f 	and	w15, w24, w5, lsl #18
 2b0:	4c0f054b 	.inst	0x4c0f054b ; undefined
 2b4:	054b0a05 	.inst	0x054b0a05 ; undefined
 2b8:	0a054b0f 	and	w15, w24, w5, lsl #18
 2bc:	0f054b4b 	.inst	0x0f054b4b ; undefined
 2c0:	4c0c054b 	.inst	0x4c0c054b ; undefined
 2c4:	31210105 	adds	w5, w8, #0x840
 2c8:	05210f05 	ext	z5.b, z5.b, z24.b, #11
 2cc:	0f054b09 	.inst	0x0f054b09 ; undefined
 2d0:	4b0a054b 	sub	w11, w10, w10, lsl #1
 2d4:	4b0f054b 	sub	w11, w10, w15, lsl #1
 2d8:	0a054b4b 	and	w11, w26, w5, lsl #18
 2dc:	0f054b4b 	.inst	0x0f054b4b ; undefined
 2e0:	4b0a054b 	sub	w11, w10, w10, lsl #1
 2e4:	054c0f05 	.inst	0x054c0f05 ; undefined
 2e8:	0f054b0a 	.inst	0x0f054b0a ; undefined
 2ec:	4b0a054b 	sub	w11, w10, w10, lsl #1
 2f0:	4b0f054b 	sub	w11, w10, w15, lsl #1
 2f4:	054c0c05 	.inst	0x054c0c05 ; undefined
 2f8:	05312101 	mov	z1.b, z8.b[8]
 2fc:	0a052f0b 	and	w11, w24, w5, lsl #11
 300:	69050522 	stgp	x2, x1, [x9, #160]
 304:	05670c05 	ext	z5.b, {z0.b, z1.b}, #59
 308:	10052005 	adr	x5, a708 <__abi_tag-0x3f5b70>
 30c:	20090522 	.inst	0x20090522 ; undefined
 310:	02000d05 	.inst	0x02000d05 ; undefined
 314:	05220304 	ext	z4.b, z4.b, z24.b, #16
 318:	04020022 	.inst	0x04020022 ; undefined
 31c:	0905fe03 	.inst	0x0905fe03 ; undefined
 320:	01040200 	.inst	0x01040200 ; undefined
 324:	001e053c 	.inst	0x001e053c ; undefined
 328:	3a020402 	.inst	0x3a020402 ; undefined
 32c:	02000505 	.inst	0x02000505 ; undefined
 330:	433c0104 	.inst	0x433c0104 ; undefined
 334:	2f0c0568 	ushr	v8.8b, v11.8b, #4
 338:	02220105 	.inst	0x02220105 ; undefined
 33c:	01010002 	.inst	0x01010002 ; undefined

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6d6f682f 	ldp	d15, d26, [x1, #-272]
   4:	69662f65 	ldpsw	x5, x11, [x27, #-208]
   8:	5f6c616e 	.inst	0x5f6c616e ; undefined
   c:	636e6562 	.inst	0x636e6562 ; undefined
  10:	72616d68 	.inst	0x72616d68 ; undefined
  14:	6f5f006b 	mla	v11.8h, v3.8h, v15.h[1]
  18:	6f5f646c 	sqshlu	v12.2d, v3.2d, #31
  1c:	65736666 	fnmls	z6.h, p1/m, z19.h, z19.h
  20:	495f0074 	.inst	0x495f0074 ; undefined
  24:	49465f4f 	.inst	0x49465f4f ; undefined
  28:	5f00454c 	.inst	0x5f00454c ; undefined
  2c:	746e695f 	.inst	0x746e695f ; undefined
  30:	20383231 	.inst	0x20383231 ; undefined
  34:	69736e75 	ldpsw	x21, x27, [x19, #-104]
  38:	64656e67 	.inst	0x64656e67 ; undefined
  3c:	6f745300 	fcmla	v0.8h, v24.8h, v20.h[1], #180
  40:	61446572 	.inst	0x61446572 ; undefined
  44:	74006174 	.inst	0x74006174 ; undefined
  48:	00706d65 	.inst	0x00706d65 ; undefined
  4c:	726f6873 	.inst	0x726f6873 ; undefined
  50:	6e692074 	usubl2	v20.4s, v3.8h, v9.8h
  54:	69730074 	ldpsw	x20, x0, [x3, #-104]
  58:	745f657a 	.inst	0x745f657a ; undefined
  5c:	4f495f00 	.inst	0x4f495f00 ; undefined
  60:	6972775f 	ldpsw	xzr, x29, [x26, #-112]
  64:	705f6574 	adr	x20, bed13 <__abi_tag-0x341565>
  68:	5f007274 	.inst	0x5f007274 ; undefined
  6c:	67616c66 	.inst	0x67616c66 ; undefined
  70:	75620073 	.inst	0x75620073 ; undefined
  74:	5f006666 	.inst	0x5f006666 ; undefined
  78:	625f4f49 	.inst	0x625f4f49 ; undefined
  7c:	625f6675 	.inst	0x625f6675 ; undefined
  80:	00657361 	.inst	0x00657361 ; undefined
  84:	74696e49 	.inst	0x74696e49 ; undefined
  88:	696c6169 	ldpsw	x9, x24, [x11, #-160]
  8c:	654d657a 	fcmne	p10.h, p1/z, z11.h, z13.h
  90:	315f6873 	adds	w19, w3, #0x7da, lsl #12
  94:	696e4900 	ldpsw	x0, x18, [x8, #-144]
  98:	6c616974 	ldnp	d20, d26, [x11, #-496]
  9c:	4d657a69 	.inst	0x4d657a69 ; undefined
  a0:	5f687365 	sqdmlsl	s5, h27, v8.h[2]
  a4:	6d5f0032 	ldp	d18, d0, [x1, #496]
  a8:	656b7261 	fnmls	z1.h, p4/m, z19.h, z11.h
  ac:	5f007372 	.inst	0x5f007372 ; undefined
  b0:	725f4f49 	.inst	0x725f4f49 ; undefined
  b4:	5f646165 	.inst	0x5f646165 ; undefined
  b8:	00646e65 	.inst	0x00646e65 ; undefined
  bc:	6572665f 	fnmls	z31.h, p1/m, z18.h, z18.h
  c0:	73657265 	.inst	0x73657265 ; undefined
  c4:	6675625f 	.inst	0x6675625f ; undefined
  c8:	61775300 	.inst	0x61775300 ; undefined
  cc:	73654d70 	.inst	0x73654d70 ; undefined
  d0:	6f430068 	mla	v8.8h, v3.8h, v3.h[0]
  d4:	7261706d 	.inst	0x7261706d ; undefined
  d8:	73654d65 	.inst	0x73654d65 ; undefined
  dc:	736d0068 	.inst	0x736d0068 ; undefined
  e0:	69625f31 	ldpsw	x17, x23, [x25, #-240]
  e4:	6c660067 	ldnp	d7, d0, [x3, #-416]
  e8:	0074616f 	.inst	0x0074616f ; undefined
  ec:	676e6f6c 	.inst	0x676e6f6c ; undefined
  f0:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
  f4:	6e692067 	usubl2	v7.4s, v3.8h, v9.8h
  f8:	656d0074 	fmla	z20.h, p0/m, z3.h, z13.h
  fc:	5f006873 	.inst	0x5f006873 ; undefined
 100:	6b636f6c 	.inst	0x6b636f6c ; undefined
 104:	75635f00 	.inst	0x75635f00 ; undefined
 108:	6f635f72 	.inst	0x6f635f72 ; undefined
 10c:	6e6d756c 	uabd	v12.8h, v11.8h, v13.8h
 110:	67726100 	.inst	0x67726100 ; undefined
 114:	614d0076 	.inst	0x614d0076 ; undefined
 118:	6c70696e 	ldnp	d14, d26, [x11, #-256]
 11c:	44657461 	.inst	0x44657461 ; undefined
 120:	31617461 	adds	w1, w3, #0x85d, lsl #12
 124:	6e614d00 	uqshl	v0.8h, v8.8h, v1.8h
 128:	616c7069 	.inst	0x616c7069 ; undefined
 12c:	61446574 	.inst	0x61446574 ; undefined
 130:	00326174 	.inst	0x00326174 ; NYI
 134:	69736e75 	ldpsw	x21, x27, [x19, #-104]
 138:	64656e67 	.inst	0x64656e67 ; undefined
 13c:	61686320 	.inst	0x61686320 ; undefined
 140:	72610072 	.inst	0x72610072 ; undefined
 144:	5f006367 	.inst	0x5f006367 ; undefined
 148:	735f4f49 	.inst	0x735f4f49 ; undefined
 14c:	5f657661 	sqshl	d1, d19, #37
 150:	65736162 	fnmls	z2.h, p0/m, z11.h, z19.h
 154:	65707300 	fnmls	z0.h, p4/m, z24.h, z16.h
 158:	65625f63 	fnmla	z3.h, p7/m, z27.h, z2.h
 15c:	2e68636e 	rsubhn	v14.4h, v27.4s, v8.4s
 160:	6f6c0063 	mla	v3.8h, v3.8h, v12.h[2]
 164:	6c20676e 	stnp	d14, d25, [x27, #-512]
 168:	20676e6f 	.inst	0x20676e6f ; undefined
 16c:	69736e75 	ldpsw	x21, x27, [x19, #-104]
 170:	64656e67 	.inst	0x64656e67 ; undefined
 174:	746e6920 	.inst	0x746e6920 ; undefined
 178:	4f495f00 	.inst	0x4f495f00 ; undefined
 17c:	72616d5f 	.inst	0x72616d5f ; undefined
 180:	0072656b 	.inst	0x0072656b ; undefined
 184:	6f68735f 	fcmla	v31.8h, v26.8h, v8.h[1], #270
 188:	75627472 	.inst	0x75627472 ; undefined
 18c:	495f0066 	.inst	0x495f0066 ; undefined
 190:	72775f4f 	.inst	0x72775f4f ; undefined
 194:	5f657469 	sqshl	d9, d3, #37
 198:	65736162 	fnmls	z2.h, p0/m, z11.h, z19.h
 19c:	6e755f00 	uqrshl	v0.8h, v24.8h, v21.8h
 1a0:	64657375 	.inst	0x64657375 ; undefined
 1a4:	495f0032 	.inst	0x495f0032 ; undefined
 1a8:	65725f4f 	fnmla	z15.h, p7/m, z26.h, z18.h
 1ac:	705f6461 	adr	x1, bee3b <__abi_tag-0x34143d>
 1b0:	5f007274 	.inst	0x5f007274 ; undefined
 1b4:	625f4f49 	.inst	0x625f4f49 ; undefined
 1b8:	655f6675 	fcmne	p5.h, p1/z, z19.h, z31.h
 1bc:	6d00646e 	stp	d14, d25, [x3]
 1c0:	006e6961 	.inst	0x006e6961 ; undefined
 1c4:	6572665f 	fnmls	z31.h, p1/m, z18.h, z18.h
 1c8:	73657265 	.inst	0x73657265 ; undefined
 1cc:	73696c5f 	.inst	0x73696c5f ; undefined
 1d0:	6f4c0074 	mla	v20.8h, v3.8h, v12.h[0]
 1d4:	61446461 	.inst	0x61446461 ; undefined
 1d8:	5f006174 	.inst	0x5f006174 ; undefined
 1dc:	6461705f 	.inst	0x6461705f ; undefined
 1e0:	6f430035 	mla	v21.8h, v1.8h, v3.h[0]
 1e4:	656c706d 	fnmls	z13.h, p4/m, z3.h, z12.h
 1e8:	74614478 	.inst	0x74614478 ; undefined
 1ec:	6e614861 	uqxtn2	v1.8h, v3.4s
 1f0:	00656c64 	.inst	0x00656c64 ; undefined
 1f4:	726f6873 	.inst	0x726f6873 ; undefined
 1f8:	6e752074 	usubl2	v20.4s, v3.8h, v21.8h
 1fc:	6e676973 	.inst	0x6e676973 ; undefined
 200:	69206465 	stgp	x5, x25, [x3, #-1024]
 204:	4d00746e 	.inst	0x4d00746e ; undefined
 208:	5f687365 	sqdmlsl	s5, h27, v8.h[2]
 20c:	00746f64 	.inst	0x00746f64 ; undefined
 210:	5f4f495f 	.inst	0x5f4f495f ; undefined
 214:	65766173 	fnmls	z19.h, p0/m, z11.h, z22.h
 218:	646e655f 	.inst	0x646e655f ; undefined
 21c:	4f495f00 	.inst	0x4f495f00 ; undefined
 220:	6972775f 	ldpsw	xzr, x29, [x26, #-112]
 224:	655f6574 	fcmne	p4.h, p1/z, z11.h, z31.h
 228:	5f00646e 	.inst	0x5f00646e ; undefined
 22c:	66666f5f 	.inst	0x66666f5f ; undefined
 230:	745f3436 	.inst	0x745f3436 ; undefined
 234:	69665f00 	ldpsw	x0, x23, [x24, #-208]
 238:	6f6e656c 	sqshlu	v12.2d, v11.2d, #46
 23c:	68635f00 	.inst	0x68635f00 ; undefined
 240:	006e6961 	.inst	0x006e6961 ; undefined
 244:	5f4f495f 	.inst	0x5f4f495f ; undefined
 248:	65646977 	fnmls	z23.h, p2/m, z11.h, z4.h
 24c:	7461645f 	.inst	0x7461645f ; undefined
 250:	6d5f0061 	ldp	d1, d0, [x3, #496]
 254:	0065646f 	.inst	0x0065646f ; undefined
 258:	666f5f5f 	.inst	0x666f5f5f ; undefined
 25c:	00745f66 	.inst	0x00745f66 ; undefined
 260:	5f4f495f 	.inst	0x5f4f495f ; undefined
 264:	6b636162 	.inst	0x6b636162 ; undefined
 268:	625f7075 	.inst	0x625f7075 ; undefined
 26c:	00657361 	.inst	0x00657361 ; undefined
 270:	616c665f 	.inst	0x616c665f ; undefined
 274:	00327367 	.inst	0x00327367 ; NYI
 278:	5f4f495f 	.inst	0x5f4f495f ; undefined
 27c:	65646f63 	fnmls	z3.h, p3/m, z27.h, z4.h
 280:	00747663 	.inst	0x00747663 ; undefined
 284:	5f4f495f 	.inst	0x5f4f495f ; undefined
 288:	64616572 	.inst	0x64616572 ; undefined
 28c:	7361625f 	.inst	0x7361625f ; undefined
 290:	765f0065 	.inst	0x765f0065 ; undefined
 294:	6c626174 	ldnp	d20, d24, [x11, #-480]
 298:	666f5f65 	.inst	0x666f5f65 ; undefined
 29c:	74657366 	.inst	0x74657366 ; undefined
 2a0:	554e4700 	.inst	0x554e4700 ; undefined
 2a4:	37314320 	tbnz	w0, #6, 2b08 <__abi_tag-0x3fd770>
 2a8:	2e303120 	usubw	v0.8h, v9.8h, v16.8b
 2ac:	20312e33 	.inst	0x20312e33 ; undefined
 2b0:	696c6d2d 	ldpsw	x13, x27, [x9, #-160]
 2b4:	656c7474 	fnmls	z20.h, p5/m, z3.h, z12.h
 2b8:	646e652d 	.inst	0x646e652d ; undefined
 2bc:	206e6169 	.inst	0x206e6169 ; undefined
 2c0:	62616d2d 	.inst	0x62616d2d ; undefined
 2c4:	706c3d69 	adr	x9, d8a73 <__abi_tag-0x327805>
 2c8:	2d203436 	stp	s22, s13, [x1, #-256]
 2cc:	6f640067 	mla	v7.8h, v3.8h, v4.h[2]
 2d0:	656c6275 	fnmls	z21.h, p0/m, z19.h, z12.h
 2d4:	4f495f00 	.inst	0x4f495f00 ; undefined
 2d8:	636f6c5f 	.inst	0x636f6c5f ; undefined
 2dc:	00745f6b 	.inst	0x00745f6b ; undefined
