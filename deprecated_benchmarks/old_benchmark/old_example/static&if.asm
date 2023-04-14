
main.out：     文件格式 elf64-littleaarch64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	62696c2f 	.inst	0x62696c2f ; undefined
 23c:	2d646c2f 	ldp	s15, s27, [x1, #-224]
 240:	756e696c 	.inst	0x756e696c ; undefined
 244:	61612d78 	.inst	0x61612d78 ; undefined
 248:	36686372 	tbz	w18, #13, eb4 <__FRAME_END__+0x59c>
 24c:	6f732e34 	.inst	0x6f732e34 ; undefined
 250:	地址 0x0000000000000250 越界。


Disassembly of section .note.gnu.build-id:

0000000000000254 <.note.gnu.build-id>:
 254:	00000004 	.inst	0x00000004 ; undefined
 258:	00000014 	.inst	0x00000014 ; undefined
 25c:	00000003 	.inst	0x00000003 ; undefined
 260:	00554e47 	.inst	0x00554e47 ; undefined
 264:	0b96d76b 	.inst	0x0b96d76b ; undefined
 268:	ce675da1 	.inst	0xce675da1 ; undefined
 26c:	52888c7a 	mov	w26, #0x4463                	// #17507
 270:	590fbab6 	.inst	0x590fbab6 ; undefined
 274:	cd15d8bc 	.inst	0xcd15d8bc ; undefined

Disassembly of section .note.ABI-tag:

0000000000000278 <.note.ABI-tag>:
 278:	00000004 	.inst	0x00000004 ; undefined
 27c:	00000010 	.inst	0x00000010 ; undefined
 280:	00000001 	.inst	0x00000001 ; undefined
 284:	00554e47 	.inst	0x00554e47 ; undefined
 288:	00000000 	.inst	0x00000000 ; undefined
 28c:	00000003 	.inst	0x00000003 ; undefined
 290:	00000007 	.inst	0x00000007 ; undefined
 294:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	00000001 	.inst	0x00000001 ; undefined
 29c:	00000001 	.inst	0x00000001 ; undefined
 2a0:	00000001 	.inst	0x00000001 ; undefined
	...

Disassembly of section .dynsym:

00000000000002b8 <.dynsym>:
	...
 2d4:	000b0003 	.inst	0x000b0003 ; undefined
 2d8:	00000598 	.inst	0x00000598 ; undefined
	...
 2ec:	00160003 	.inst	0x00160003 ; undefined
 2f0:	00011000 	.inst	0x00011000 ; undefined
	...
 300:	0000003d 	.inst	0x0000003d ; undefined
 304:	00000020 	.inst	0x00000020 ; undefined
	...
 318:	00000011 	.inst	0x00000011 ; undefined
 31c:	00000022 	.inst	0x00000022 ; undefined
	...
 330:	00000020 	.inst	0x00000020 ; undefined
 334:	00000012 	.inst	0x00000012 ; undefined
	...
 348:	00000059 	.inst	0x00000059 ; undefined
 34c:	00000020 	.inst	0x00000020 ; undefined
	...
 360:	0000000b 	.inst	0x0000000b ; undefined
 364:	00000012 	.inst	0x00000012 ; undefined
	...
 378:	00000068 	.inst	0x00000068 ; undefined
 37c:	00000020 	.inst	0x00000020 ; undefined
	...

Disassembly of section .dynstr:

0000000000000390 <.dynstr>:
 390:	62696c00 	.inst	0x62696c00 ; undefined
 394:	6f732e63 	.inst	0x6f732e63 ; undefined
 398:	6100362e 	.inst	0x6100362e ; undefined
 39c:	74726f62 	.inst	0x74726f62 ; undefined
 3a0:	635f5f00 	.inst	0x635f5f00 ; undefined
 3a4:	665f6178 	.inst	0x665f6178 ; undefined
 3a8:	6c616e69 	ldnp	d9, d27, [x19, #-496]
 3ac:	00657a69 	.inst	0x00657a69 ; undefined
 3b0:	696c5f5f 	ldpsw	xzr, x23, [x26, #-160]
 3b4:	735f6362 	.inst	0x735f6362 ; undefined
 3b8:	74726174 	.inst	0x74726174 ; undefined
 3bc:	69616d5f 	ldpsw	xzr, x27, [x10, #-248]
 3c0:	4c47006e 	.inst	0x4c47006e ; undefined
 3c4:	5f434249 	.inst	0x5f434249 ; undefined
 3c8:	37312e32 	tbnz	w18, #6, 298c <__FRAME_END__+0x2074>
 3cc:	54495f00 	b.eq	92fac <__bss_end__+0x81f8c>  // b.none
 3d0:	65645f4d 	fnmla	z13.h, p7/m, z26.h, z4.h
 3d4:	69676572 	ldpsw	x18, x25, [x11, #-200]
 3d8:	72657473 	.inst	0x72657473 ; undefined
 3dc:	6c434d54 	ldnp	d20, d19, [x10, #48]
 3e0:	54656e6f 	b.nv	cb1ac <__bss_end__+0xba18c>
 3e4:	656c6261 	fnmls	z1.h, p0/m, z19.h, z12.h
 3e8:	675f5f00 	.inst	0x675f5f00 ; undefined
 3ec:	5f6e6f6d 	.inst	0x5f6e6f6d ; undefined
 3f0:	72617473 	.inst	0x72617473 ; undefined
 3f4:	005f5f74 	.inst	0x005f5f74 ; undefined
 3f8:	4d54495f 	.inst	0x4d54495f ; undefined
 3fc:	6765725f 	.inst	0x6765725f ; undefined
 400:	65747369 	fnmls	z9.h, p4/m, z27.h, z20.h
 404:	434d5472 	.inst	0x434d5472 ; undefined
 408:	656e6f6c 	fnmls	z12.h, p3/m, z27.h, z14.h
 40c:	6c626154 	ldnp	d20, d24, [x10, #-480]
 410:	地址 0x0000000000000410 越界。


Disassembly of section .gnu.version:

0000000000000412 <.gnu.version>:
	...
 41a:	00020002 	.inst	0x00020002 ; undefined
 41e:	00020000 	.inst	0x00020000 ; undefined
	...

Disassembly of section .gnu.version_r:

0000000000000428 <.gnu.version_r>:
 428:	00010001 	.inst	0x00010001 ; undefined
 42c:	00000001 	.inst	0x00000001 ; undefined
 430:	00000010 	.inst	0x00000010 ; undefined
 434:	00000000 	.inst	0x00000000 ; undefined
 438:	06969197 	.inst	0x06969197 ; undefined
 43c:	00020000 	.inst	0x00020000 ; undefined
 440:	00000032 	.inst	0x00000032 ; undefined
 444:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .rela.dyn:

0000000000000448 <.rela.dyn>:
 448:	00010d88 	.inst	0x00010d88 ; undefined
 44c:	00000000 	.inst	0x00000000 ; undefined
 450:	00000403 	.inst	0x00000403 ; undefined
 454:	00000000 	.inst	0x00000000 ; undefined
 458:	00000718 	.inst	0x00000718 ; undefined
 45c:	00000000 	.inst	0x00000000 ; undefined
 460:	00010d90 	.inst	0x00010d90 ; undefined
 464:	00000000 	.inst	0x00000000 ; undefined
 468:	00000403 	.inst	0x00000403 ; undefined
 46c:	00000000 	.inst	0x00000000 ; undefined
 470:	000006d0 	.inst	0x000006d0 ; undefined
 474:	00000000 	.inst	0x00000000 ; undefined
 478:	00010fc8 	.inst	0x00010fc8 ; undefined
 47c:	00000000 	.inst	0x00000000 ; undefined
 480:	00000403 	.inst	0x00000403 ; undefined
 484:	00000000 	.inst	0x00000000 ; undefined
 488:	000007e0 	.inst	0x000007e0 ; undefined
 48c:	00000000 	.inst	0x00000000 ; undefined
 490:	00010fe8 	.inst	0x00010fe8 ; undefined
 494:	00000000 	.inst	0x00000000 ; undefined
 498:	00000403 	.inst	0x00000403 ; undefined
 49c:	00000000 	.inst	0x00000000 ; undefined
 4a0:	00000760 	.inst	0x00000760 ; undefined
 4a4:	00000000 	.inst	0x00000000 ; undefined
 4a8:	00010ff0 	.inst	0x00010ff0 ; undefined
 4ac:	00000000 	.inst	0x00000000 ; undefined
 4b0:	00000403 	.inst	0x00000403 ; undefined
 4b4:	00000000 	.inst	0x00000000 ; undefined
 4b8:	0000071c 	.inst	0x0000071c ; undefined
 4bc:	00000000 	.inst	0x00000000 ; undefined
 4c0:	00011008 	.inst	0x00011008 ; undefined
 4c4:	00000000 	.inst	0x00000000 ; undefined
 4c8:	00000403 	.inst	0x00000403 ; undefined
 4cc:	00000000 	.inst	0x00000000 ; undefined
 4d0:	00011008 	.inst	0x00011008 ; undefined
 4d4:	00000000 	.inst	0x00000000 ; undefined
 4d8:	00010fd0 	.inst	0x00010fd0 ; undefined
 4dc:	00000000 	.inst	0x00000000 ; undefined
 4e0:	00000401 	.inst	0x00000401 ; undefined
 4e4:	00000003 	.inst	0x00000003 ; undefined
	...
 4f0:	00010fd8 	.inst	0x00010fd8 ; undefined
 4f4:	00000000 	.inst	0x00000000 ; undefined
 4f8:	00000401 	.inst	0x00000401 ; undefined
 4fc:	00000004 	.inst	0x00000004 ; undefined
	...
 508:	00010fe0 	.inst	0x00010fe0 ; undefined
 50c:	00000000 	.inst	0x00000000 ; undefined
 510:	00000401 	.inst	0x00000401 ; undefined
 514:	00000006 	.inst	0x00000006 ; undefined
	...
 520:	00010ff8 	.inst	0x00010ff8 ; undefined
 524:	00000000 	.inst	0x00000000 ; undefined
 528:	00000401 	.inst	0x00000401 ; undefined
 52c:	00000008 	.inst	0x00000008 ; undefined
	...

Disassembly of section .rela.plt:

0000000000000538 <.rela.plt>:
 538:	00010fa0 	.inst	0x00010fa0 ; undefined
 53c:	00000000 	.inst	0x00000000 ; undefined
 540:	00000402 	.inst	0x00000402 ; undefined
 544:	00000004 	.inst	0x00000004 ; undefined
	...
 550:	00010fa8 	.inst	0x00010fa8 ; undefined
 554:	00000000 	.inst	0x00000000 ; undefined
 558:	00000402 	.inst	0x00000402 ; undefined
 55c:	00000005 	.inst	0x00000005 ; undefined
	...
 568:	00010fb0 	.inst	0x00010fb0 ; undefined
 56c:	00000000 	.inst	0x00000000 ; undefined
 570:	00000402 	.inst	0x00000402 ; undefined
 574:	00000006 	.inst	0x00000006 ; undefined
	...
 580:	00010fb8 	.inst	0x00010fb8 ; undefined
 584:	00000000 	.inst	0x00000000 ; undefined
 588:	00000402 	.inst	0x00000402 ; undefined
 58c:	00000007 	.inst	0x00000007 ; undefined
	...

Disassembly of section .init:

0000000000000598 <_init>:
 598:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 59c:	910003fd 	mov	x29, sp
 5a0:	9400002a 	bl	648 <call_weak_fn>
 5a4:	a8c17bfd 	ldp	x29, x30, [sp], #16
 5a8:	d65f03c0 	ret

Disassembly of section .plt:

00000000000005b0 <.plt>:
 5b0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 5b4:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf6e8>
 5b8:	f947ce11 	ldr	x17, [x16, #3992]
 5bc:	913e6210 	add	x16, x16, #0xf98
 5c0:	d61f0220 	br	x17
 5c4:	d503201f 	nop
 5c8:	d503201f 	nop
 5cc:	d503201f 	nop

00000000000005d0 <__cxa_finalize@plt>:
 5d0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf6e8>
 5d4:	f947d211 	ldr	x17, [x16, #4000]
 5d8:	913e8210 	add	x16, x16, #0xfa0
 5dc:	d61f0220 	br	x17

00000000000005e0 <__libc_start_main@plt>:
 5e0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf6e8>
 5e4:	f947d611 	ldr	x17, [x16, #4008]
 5e8:	913ea210 	add	x16, x16, #0xfa8
 5ec:	d61f0220 	br	x17

00000000000005f0 <__gmon_start__@plt>:
 5f0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf6e8>
 5f4:	f947da11 	ldr	x17, [x16, #4016]
 5f8:	913ec210 	add	x16, x16, #0xfb0
 5fc:	d61f0220 	br	x17

0000000000000600 <abort@plt>:
 600:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf6e8>
 604:	f947de11 	ldr	x17, [x16, #4024]
 608:	913ee210 	add	x16, x16, #0xfb8
 60c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000000610 <_start>:
 610:	d280001d 	mov	x29, #0x0                   	// #0
 614:	d280001e 	mov	x30, #0x0                   	// #0
 618:	aa0003e5 	mov	x5, x0
 61c:	f94003e1 	ldr	x1, [sp]
 620:	910023e2 	add	x2, sp, #0x8
 624:	910003e6 	mov	x6, sp
 628:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf6e8>
 62c:	f947f800 	ldr	x0, [x0, #4080]
 630:	90000083 	adrp	x3, 10000 <__FRAME_END__+0xf6e8>
 634:	f947f463 	ldr	x3, [x3, #4072]
 638:	90000084 	adrp	x4, 10000 <__FRAME_END__+0xf6e8>
 63c:	f947e484 	ldr	x4, [x4, #4040]
 640:	97ffffe8 	bl	5e0 <__libc_start_main@plt>
 644:	97ffffef 	bl	600 <abort@plt>

0000000000000648 <call_weak_fn>:
 648:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf6e8>
 64c:	f947f000 	ldr	x0, [x0, #4064]
 650:	b4000040 	cbz	x0, 658 <call_weak_fn+0x10>
 654:	17ffffe7 	b	5f0 <__gmon_start__@plt>
 658:	d65f03c0 	ret
 65c:	d503201f 	nop

0000000000000660 <deregister_tm_clones>:
 660:	b0000080 	adrp	x0, 11000 <__data_start>
 664:	91006000 	add	x0, x0, #0x18
 668:	b0000081 	adrp	x1, 11000 <__data_start>
 66c:	91006021 	add	x1, x1, #0x18
 670:	eb00003f 	cmp	x1, x0
 674:	540000c0 	b.eq	68c <deregister_tm_clones+0x2c>  // b.none
 678:	90000081 	adrp	x1, 10000 <__FRAME_END__+0xf6e8>
 67c:	f947e821 	ldr	x1, [x1, #4048]
 680:	b4000061 	cbz	x1, 68c <deregister_tm_clones+0x2c>
 684:	aa0103f0 	mov	x16, x1
 688:	d61f0200 	br	x16
 68c:	d65f03c0 	ret

0000000000000690 <register_tm_clones>:
 690:	b0000080 	adrp	x0, 11000 <__data_start>
 694:	91006000 	add	x0, x0, #0x18
 698:	b0000081 	adrp	x1, 11000 <__data_start>
 69c:	91006021 	add	x1, x1, #0x18
 6a0:	cb000021 	sub	x1, x1, x0
 6a4:	d37ffc22 	lsr	x2, x1, #63
 6a8:	8b810c41 	add	x1, x2, x1, asr #3
 6ac:	eb8107ff 	cmp	xzr, x1, asr #1
 6b0:	9341fc21 	asr	x1, x1, #1
 6b4:	540000c0 	b.eq	6cc <register_tm_clones+0x3c>  // b.none
 6b8:	90000082 	adrp	x2, 10000 <__FRAME_END__+0xf6e8>
 6bc:	f947fc42 	ldr	x2, [x2, #4088]
 6c0:	b4000062 	cbz	x2, 6cc <register_tm_clones+0x3c>
 6c4:	aa0203f0 	mov	x16, x2
 6c8:	d61f0200 	br	x16
 6cc:	d65f03c0 	ret

00000000000006d0 <__do_global_dtors_aux>:
 6d0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 6d4:	910003fd 	mov	x29, sp
 6d8:	f9000bf3 	str	x19, [sp, #16]
 6dc:	b0000093 	adrp	x19, 11000 <__data_start>
 6e0:	39406260 	ldrb	w0, [x19, #24]
 6e4:	35000140 	cbnz	w0, 70c <__do_global_dtors_aux+0x3c>
 6e8:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf6e8>
 6ec:	f947ec00 	ldr	x0, [x0, #4056]
 6f0:	b4000080 	cbz	x0, 700 <__do_global_dtors_aux+0x30>
 6f4:	b0000080 	adrp	x0, 11000 <__data_start>
 6f8:	f9400400 	ldr	x0, [x0, #8]
 6fc:	97ffffb5 	bl	5d0 <__cxa_finalize@plt>
 700:	97ffffd8 	bl	660 <deregister_tm_clones>
 704:	52800020 	mov	w0, #0x1                   	// #1
 708:	39006260 	strb	w0, [x19, #24]
 70c:	f9400bf3 	ldr	x19, [sp, #16]
 710:	a8c27bfd 	ldp	x29, x30, [sp], #32
 714:	d65f03c0 	ret

0000000000000718 <frame_dummy>:
 718:	17ffffde 	b	690 <register_tm_clones>

000000000000071c <main>:
 71c:	d10043ff 	sub	sp, sp, #0x10
 720:	b9000fe0 	str	w0, [sp, #12]
 724:	f90003e1 	str	x1, [sp]
 728:	d503201f 	nop
 72c:	d503201f 	nop
 730:	b0000080 	adrp	x0, 11000 <__data_start>
 734:	91005000 	add	x0, x0, #0x14
 738:	b9400000 	ldr	w0, [x0]
 73c:	7100281f 	cmp	w0, #0xa
 740:	540000a1 	b.ne	754 <main+0x38>  // b.any
 744:	b0000080 	adrp	x0, 11000 <__data_start>
 748:	91004000 	add	x0, x0, #0x10
 74c:	52802581 	mov	w1, #0x12c                 	// #300
 750:	b9000001 	str	w1, [x0]
 754:	52800000 	mov	w0, #0x0                   	// #0
 758:	910043ff 	add	sp, sp, #0x10
 75c:	d65f03c0 	ret

0000000000000760 <__libc_csu_init>:
 760:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 764:	910003fd 	mov	x29, sp
 768:	a90153f3 	stp	x19, x20, [sp, #16]
 76c:	90000094 	adrp	x20, 10000 <__FRAME_END__+0xf6e8>
 770:	91364294 	add	x20, x20, #0xd90
 774:	a9025bf5 	stp	x21, x22, [sp, #32]
 778:	90000095 	adrp	x21, 10000 <__FRAME_END__+0xf6e8>
 77c:	913622b5 	add	x21, x21, #0xd88
 780:	cb150294 	sub	x20, x20, x21
 784:	2a0003f6 	mov	w22, w0
 788:	a90363f7 	stp	x23, x24, [sp, #48]
 78c:	aa0103f7 	mov	x23, x1
 790:	aa0203f8 	mov	x24, x2
 794:	97ffff81 	bl	598 <_init>
 798:	eb940fff 	cmp	xzr, x20, asr #3
 79c:	54000160 	b.eq	7c8 <__libc_csu_init+0x68>  // b.none
 7a0:	9343fe94 	asr	x20, x20, #3
 7a4:	d2800013 	mov	x19, #0x0                   	// #0
 7a8:	f8737aa3 	ldr	x3, [x21, x19, lsl #3]
 7ac:	aa1803e2 	mov	x2, x24
 7b0:	91000673 	add	x19, x19, #0x1
 7b4:	aa1703e1 	mov	x1, x23
 7b8:	2a1603e0 	mov	w0, w22
 7bc:	d63f0060 	blr	x3
 7c0:	eb13029f 	cmp	x20, x19
 7c4:	54ffff21 	b.ne	7a8 <__libc_csu_init+0x48>  // b.any
 7c8:	a94153f3 	ldp	x19, x20, [sp, #16]
 7cc:	a9425bf5 	ldp	x21, x22, [sp, #32]
 7d0:	a94363f7 	ldp	x23, x24, [sp, #48]
 7d4:	a8c47bfd 	ldp	x29, x30, [sp], #64
 7d8:	d65f03c0 	ret
 7dc:	d503201f 	nop

00000000000007e0 <__libc_csu_fini>:
 7e0:	d65f03c0 	ret

Disassembly of section .fini:

00000000000007e4 <_fini>:
 7e4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 7e8:	910003fd 	mov	x29, sp
 7ec:	a8c17bfd 	ldp	x29, x30, [sp], #16
 7f0:	d65f03c0 	ret

Disassembly of section .rodata:

00000000000007f4 <_IO_stdin_used>:
 7f4:	00020001 	.inst	0x00020001 ; undefined

Disassembly of section .eh_frame_hdr:

00000000000007f8 <__GNU_EH_FRAME_HDR>:
 7f8:	3b031b01 	.inst	0x3b031b01 ; undefined
 7fc:	00000044 	.inst	0x00000044 ; undefined
 800:	00000007 	.inst	0x00000007 ; undefined
 804:	fffffe68 	.inst	0xfffffe68 ; undefined
 808:	0000005c 	.inst	0x0000005c ; undefined
 80c:	fffffe98 	.inst	0xfffffe98 ; undefined
 810:	00000070 	.inst	0x00000070 ; undefined
 814:	fffffed8 	.inst	0xfffffed8 ; undefined
 818:	00000084 	.inst	0x00000084 ; undefined
 81c:	ffffff20 	.inst	0xffffff20 ; undefined
 820:	000000a8 	.inst	0x000000a8 ; undefined
 824:	ffffff24 	.inst	0xffffff24 ; undefined
 828:	000000c0 	.inst	0x000000c0 ; undefined
 82c:	ffffff68 	.inst	0xffffff68 ; undefined
 830:	000000d8 	.inst	0x000000d8 ; undefined
 834:	ffffffe8 	.inst	0xffffffe8 ; undefined
 838:	0000010c 	.inst	0x0000010c ; undefined

Disassembly of section .eh_frame:

0000000000000840 <__FRAME_END__-0xd8>:
 840:	00000010 	.inst	0x00000010 ; undefined
 844:	00000000 	.inst	0x00000000 ; undefined
 848:	00527a01 	.inst	0x00527a01 ; undefined
 84c:	011e7804 	.inst	0x011e7804 ; undefined
 850:	001f0c1b 	.inst	0x001f0c1b ; undefined
 854:	00000010 	.inst	0x00000010 ; undefined
 858:	00000018 	.inst	0x00000018 ; undefined
 85c:	fffffe04 	.inst	0xfffffe04 ; undefined
 860:	00000030 	.inst	0x00000030 ; undefined
 864:	00000000 	.inst	0x00000000 ; undefined
 868:	00000010 	.inst	0x00000010 ; undefined
 86c:	0000002c 	.inst	0x0000002c ; undefined
 870:	fffffe20 	.inst	0xfffffe20 ; undefined
 874:	00000040 	.inst	0x00000040 ; undefined
 878:	00000000 	.inst	0x00000000 ; undefined
 87c:	00000020 	.inst	0x00000020 ; undefined
 880:	00000040 	.inst	0x00000040 ; undefined
 884:	fffffe4c 	.inst	0xfffffe4c ; undefined
 888:	00000048 	.inst	0x00000048 ; undefined
 88c:	200e4100 	.inst	0x200e4100 ; undefined
 890:	039e049d 	.inst	0x039e049d ; undefined
 894:	4e029342 	.inst	0x4e029342 ; undefined
 898:	0ed3ddde 	.inst	0x0ed3ddde ; undefined
 89c:	00000000 	.inst	0x00000000 ; undefined
 8a0:	00000014 	.inst	0x00000014 ; undefined
 8a4:	00000064 	.inst	0x00000064 ; undefined
 8a8:	fffffe70 	.inst	0xfffffe70 ; undefined
 8ac:	00000004 	.inst	0x00000004 ; undefined
	...
 8b8:	00000014 	.inst	0x00000014 ; undefined
 8bc:	0000007c 	.inst	0x0000007c ; undefined
 8c0:	fffffe5c 	.inst	0xfffffe5c ; undefined
 8c4:	00000044 	.inst	0x00000044 ; undefined
 8c8:	100e4100 	adr	x0, 1d0e8 <__bss_end__+0xc0c8>
 8cc:	00000e4f 	.inst	0x00000e4f ; undefined
 8d0:	00000030 	.inst	0x00000030 ; undefined
 8d4:	00000094 	.inst	0x00000094 ; undefined
 8d8:	fffffe88 	.inst	0xfffffe88 ; undefined
 8dc:	0000007c 	.inst	0x0000007c ; undefined
 8e0:	400e4100 	.inst	0x400e4100 ; undefined
 8e4:	079e089d 	.inst	0x079e089d ; undefined
 8e8:	94069342 	bl	1a55f0 <__bss_end__+0x1945d0>
 8ec:	04954305 	mla	z5.s, p0/m, z24.s, z21.s
 8f0:	97450396 	bl	fffffffffd141748 <__bss_end__+0xfffffffffd130728>
 8f4:	53019802 	.inst	0x53019802 ; undefined
 8f8:	d8d7ddde 	prfm	#0x1e, fffffffffffb04b0 <__bss_end__+0xfffffffffff9f490>
 8fc:	d4d3d6d5 	.inst	0xd4d3d6d5 ; undefined
 900:	0000000e 	.inst	0x0000000e ; undefined
 904:	00000010 	.inst	0x00000010 ; undefined
 908:	000000c8 	.inst	0x000000c8 ; undefined
 90c:	fffffed4 	.inst	0xfffffed4 ; undefined
 910:	00000004 	.inst	0x00000004 ; undefined
 914:	00000000 	.inst	0x00000000 ; undefined

0000000000000918 <__FRAME_END__>:
 918:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .init_array:

0000000000010d88 <__frame_dummy_init_array_entry>:
   10d88:	00000718 	.inst	0x00000718 ; undefined
   10d8c:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .fini_array:

0000000000010d90 <__do_global_dtors_aux_fini_array_entry>:
   10d90:	000006d0 	.inst	0x000006d0 ; undefined
   10d94:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .dynamic:

0000000000010d98 <.dynamic>:
   10d98:	00000001 	.inst	0x00000001 ; undefined
   10d9c:	00000000 	.inst	0x00000000 ; undefined
   10da0:	00000001 	.inst	0x00000001 ; undefined
   10da4:	00000000 	.inst	0x00000000 ; undefined
   10da8:	0000000c 	.inst	0x0000000c ; undefined
   10dac:	00000000 	.inst	0x00000000 ; undefined
   10db0:	00000598 	.inst	0x00000598 ; undefined
   10db4:	00000000 	.inst	0x00000000 ; undefined
   10db8:	0000000d 	.inst	0x0000000d ; undefined
   10dbc:	00000000 	.inst	0x00000000 ; undefined
   10dc0:	000007e4 	.inst	0x000007e4 ; undefined
   10dc4:	00000000 	.inst	0x00000000 ; undefined
   10dc8:	00000019 	.inst	0x00000019 ; undefined
   10dcc:	00000000 	.inst	0x00000000 ; undefined
   10dd0:	00010d88 	.inst	0x00010d88 ; undefined
   10dd4:	00000000 	.inst	0x00000000 ; undefined
   10dd8:	0000001b 	.inst	0x0000001b ; undefined
   10ddc:	00000000 	.inst	0x00000000 ; undefined
   10de0:	00000008 	.inst	0x00000008 ; undefined
   10de4:	00000000 	.inst	0x00000000 ; undefined
   10de8:	0000001a 	.inst	0x0000001a ; undefined
   10dec:	00000000 	.inst	0x00000000 ; undefined
   10df0:	00010d90 	.inst	0x00010d90 ; undefined
   10df4:	00000000 	.inst	0x00000000 ; undefined
   10df8:	0000001c 	.inst	0x0000001c ; undefined
   10dfc:	00000000 	.inst	0x00000000 ; undefined
   10e00:	00000008 	.inst	0x00000008 ; undefined
   10e04:	00000000 	.inst	0x00000000 ; undefined
   10e08:	6ffffef5 	.inst	0x6ffffef5 ; undefined
   10e0c:	00000000 	.inst	0x00000000 ; undefined
   10e10:	00000298 	.inst	0x00000298 ; undefined
   10e14:	00000000 	.inst	0x00000000 ; undefined
   10e18:	00000005 	.inst	0x00000005 ; undefined
   10e1c:	00000000 	.inst	0x00000000 ; undefined
   10e20:	00000390 	.inst	0x00000390 ; undefined
   10e24:	00000000 	.inst	0x00000000 ; undefined
   10e28:	00000006 	.inst	0x00000006 ; undefined
   10e2c:	00000000 	.inst	0x00000000 ; undefined
   10e30:	000002b8 	.inst	0x000002b8 ; undefined
   10e34:	00000000 	.inst	0x00000000 ; undefined
   10e38:	0000000a 	.inst	0x0000000a ; undefined
   10e3c:	00000000 	.inst	0x00000000 ; undefined
   10e40:	00000082 	.inst	0x00000082 ; undefined
   10e44:	00000000 	.inst	0x00000000 ; undefined
   10e48:	0000000b 	.inst	0x0000000b ; undefined
   10e4c:	00000000 	.inst	0x00000000 ; undefined
   10e50:	00000018 	.inst	0x00000018 ; undefined
   10e54:	00000000 	.inst	0x00000000 ; undefined
   10e58:	00000015 	.inst	0x00000015 ; undefined
	...
   10e68:	00000003 	.inst	0x00000003 ; undefined
   10e6c:	00000000 	.inst	0x00000000 ; undefined
   10e70:	00010f88 	.inst	0x00010f88 ; undefined
   10e74:	00000000 	.inst	0x00000000 ; undefined
   10e78:	00000002 	.inst	0x00000002 ; undefined
   10e7c:	00000000 	.inst	0x00000000 ; undefined
   10e80:	00000060 	.inst	0x00000060 ; undefined
   10e84:	00000000 	.inst	0x00000000 ; undefined
   10e88:	00000014 	.inst	0x00000014 ; undefined
   10e8c:	00000000 	.inst	0x00000000 ; undefined
   10e90:	00000007 	.inst	0x00000007 ; undefined
   10e94:	00000000 	.inst	0x00000000 ; undefined
   10e98:	00000017 	.inst	0x00000017 ; undefined
   10e9c:	00000000 	.inst	0x00000000 ; undefined
   10ea0:	00000538 	.inst	0x00000538 ; undefined
   10ea4:	00000000 	.inst	0x00000000 ; undefined
   10ea8:	00000007 	.inst	0x00000007 ; undefined
   10eac:	00000000 	.inst	0x00000000 ; undefined
   10eb0:	00000448 	.inst	0x00000448 ; undefined
   10eb4:	00000000 	.inst	0x00000000 ; undefined
   10eb8:	00000008 	.inst	0x00000008 ; undefined
   10ebc:	00000000 	.inst	0x00000000 ; undefined
   10ec0:	000000f0 	.inst	0x000000f0 ; undefined
   10ec4:	00000000 	.inst	0x00000000 ; undefined
   10ec8:	00000009 	.inst	0x00000009 ; undefined
   10ecc:	00000000 	.inst	0x00000000 ; undefined
   10ed0:	00000018 	.inst	0x00000018 ; undefined
   10ed4:	00000000 	.inst	0x00000000 ; undefined
   10ed8:	0000001e 	.inst	0x0000001e ; undefined
   10edc:	00000000 	.inst	0x00000000 ; undefined
   10ee0:	00000008 	.inst	0x00000008 ; undefined
   10ee4:	00000000 	.inst	0x00000000 ; undefined
   10ee8:	6ffffffb 	.inst	0x6ffffffb ; undefined
   10eec:	00000000 	.inst	0x00000000 ; undefined
   10ef0:	08000001 	stxrb	w0, w1, [x0]
   10ef4:	00000000 	.inst	0x00000000 ; undefined
   10ef8:	6ffffffe 	.inst	0x6ffffffe ; undefined
   10efc:	00000000 	.inst	0x00000000 ; undefined
   10f00:	00000428 	.inst	0x00000428 ; undefined
   10f04:	00000000 	.inst	0x00000000 ; undefined
   10f08:	6fffffff 	.inst	0x6fffffff ; undefined
   10f0c:	00000000 	.inst	0x00000000 ; undefined
   10f10:	00000001 	.inst	0x00000001 ; undefined
   10f14:	00000000 	.inst	0x00000000 ; undefined
   10f18:	6ffffff0 	.inst	0x6ffffff0 ; undefined
   10f1c:	00000000 	.inst	0x00000000 ; undefined
   10f20:	00000412 	.inst	0x00000412 ; undefined
   10f24:	00000000 	.inst	0x00000000 ; undefined
   10f28:	6ffffff9 	.inst	0x6ffffff9 ; undefined
   10f2c:	00000000 	.inst	0x00000000 ; undefined
   10f30:	00000006 	.inst	0x00000006 ; undefined
	...

Disassembly of section .got:

0000000000010f88 <.got>:
	...
   10fa0:	000005b0 	.inst	0x000005b0 ; undefined
   10fa4:	00000000 	.inst	0x00000000 ; undefined
   10fa8:	000005b0 	.inst	0x000005b0 ; undefined
   10fac:	00000000 	.inst	0x00000000 ; undefined
   10fb0:	000005b0 	.inst	0x000005b0 ; undefined
   10fb4:	00000000 	.inst	0x00000000 ; undefined
   10fb8:	000005b0 	.inst	0x000005b0 ; undefined
   10fbc:	00000000 	.inst	0x00000000 ; undefined
   10fc0:	00010d98 	.inst	0x00010d98 ; undefined
   10fc4:	00000000 	.inst	0x00000000 ; undefined
   10fc8:	000007e0 	.inst	0x000007e0 ; undefined
	...
   10fe8:	00000760 	.inst	0x00000760 ; undefined
   10fec:	00000000 	.inst	0x00000000 ; undefined
   10ff0:	0000071c 	.inst	0x0000071c ; undefined
	...

Disassembly of section .data:

0000000000011000 <__data_start>:
	...

0000000000011008 <__dso_handle>:
   11008:	00011008 	.inst	0x00011008 ; undefined
   1100c:	00000000 	.inst	0x00000000 ; undefined

0000000000011010 <j>:
   11010:	000000c8 	.inst	0x000000c8 ; undefined

0000000000011014 <i.3460>:
   11014:	0000000a 	.inst	0x0000000a ; undefined

Disassembly of section .bss:

0000000000011018 <completed.9189>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347 	ccmn	w26, w3, #0x7, mi  // mi = first
   4:	62552820 	.inst	0x62552820 ; undefined
   8:	75746e75 	.inst	0x75746e75 ; undefined
   c:	342e3920 	cbz	w0, 5c730 <__bss_end__+0x4b710>
  10:	312d302e 	adds	w14, w1, #0xb4c
  14:	6e756275 	rsubhn2	v21.8h, v19.4s, v21.4s
  18:	7e317574 	.inst	0x7e317574 ; undefined
  1c:	302e3032 	adr	x18, 5c621 <__bss_end__+0x4b601>
  20:	29312e34 	stp	w20, w11, [x17, #-120]
  24:	342e3920 	cbz	w0, 5c748 <__bss_end__+0x4b728>
  28:	地址 0x0000000000000028 越界。


Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	0000002c 	.inst	0x0000002c ; undefined
   4:	00000002 	.inst	0x00000002 ; undefined
   8:	00080000 	.inst	0x00080000 ; undefined
   c:	00000000 	.inst	0x00000000 ; undefined
  10:	0000071c 	.inst	0x0000071c ; undefined
  14:	00000000 	.inst	0x00000000 ; undefined
  18:	00000044 	.inst	0x00000044 ; undefined
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	000000b2 	.inst	0x000000b2 ; undefined
   4:	00000004 	.inst	0x00000004 ; undefined
   8:	01080000 	.inst	0x01080000 ; undefined
   c:	00000032 	.inst	0x00000032 ; undefined
  10:	00000a0c 	.inst	0x00000a0c ; undefined
  14:	00001100 	.inst	0x00001100 ; undefined
  18:	00071c00 	.inst	0x00071c00 ; undefined
  1c:	00000000 	.inst	0x00000000 ; undefined
  20:	00004400 	.inst	0x00004400 ; undefined
	...
  2c:	006a0200 	.inst	0x006a0200 ; undefined
  30:	41050301 	.inst	0x41050301 ; undefined
  34:	09000000 	.inst	0x09000000 ; undefined
  38:	01101003 	.inst	0x01101003 ; undefined
  3c:	00000000 	.inst	0x00000000 ; undefined
  40:	05040300 	.inst	0x05040300 ; undefined
  44:	00746e69 	.inst	0x00746e69 ; undefined
  48:	00002d04 	.inst	0x00002d04 ; undefined
  4c:	05040100 	.inst	0x05040100 ; undefined
  50:	00000041 	.inst	0x00000041 ; undefined
  54:	0000071c 	.inst	0x0000071c ; undefined
  58:	00000000 	.inst	0x00000000 ; undefined
  5c:	00000044 	.inst	0x00000044 ; undefined
  60:	00000000 	.inst	0x00000000 ; undefined
  64:	009d9c01 	.inst	0x009d9c01 ; undefined
  68:	00050000 	.inst	0x00050000 ; undefined
  6c:	01000000 	.inst	0x01000000 ; undefined
  70:	00410e04 	.inst	0x00410e04 ; undefined
  74:	91020000 	add	x0, x0, #0x80
  78:	00ad057c 	.inst	0x00ad057c ; undefined
  7c:	04010000 	sub	z0.b, p0/m, z0.b, z0.b
  80:	00009d21 	.inst	0x00009d21 ; undefined
  84:	70910200 	adr	x0, fffffffffff220c7 <__bss_end__+0xfffffffffff110a7>
  88:	01006906 	.inst	0x01006906 ; undefined
  8c:	00411007 	.inst	0x00411007 ; undefined
  90:	03090000 	.inst	0x03090000 ; undefined
  94:	00011014 	.inst	0x00011014 ; undefined
  98:	00000000 	.inst	0x00000000 ; undefined
  9c:	a3080700 	.inst	0xa3080700 ; undefined
  a0:	07000000 	.inst	0x07000000 ; undefined
  a4:	0000b008 	.inst	0x0000b008 ; undefined
  a8:	08010800 	stxrb	w1, w0, [x0]
  ac:	00000005 	.inst	0x00000005 ; undefined
  b0:	0000a909 	.inst	0x0000a909 ; undefined
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
   4:	030b130e 	.inst	0x030b130e ; undefined
   8:	110e1b0e 	add	w14, w24, #0x386
   c:	10071201 	adr	x1, e24c <__FRAME_END__+0xd934>
  10:	02000017 	.inst	0x02000017 ; undefined
  14:	08030034 	stxrb	w3, w20, [x1]
  18:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  1c:	13490b39 	.inst	0x13490b39 ; undefined
  20:	1802193f 	ldr	wzr, 4344 <__FRAME_END__+0x3a2c>
  24:	24030000 	cmphs	p0.b, p0/z, z0.b, z3.b
  28:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
  2c:	0008030b 	.inst	0x0008030b ; undefined
  30:	012e0400 	.inst	0x012e0400 ; undefined
  34:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
  38:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  3c:	19270b39 	.inst	0x19270b39 ; undefined
  40:	01111349 	.inst	0x01111349 ; undefined
  44:	18400712 	ldr	w18, 80124 <__bss_end__+0x6f104>
  48:	01194297 	.inst	0x01194297 ; undefined
  4c:	05000013 	orr	z19.s, z19.s, #0x1
  50:	0e030005 	tbl	v5.8b, {v0.16b}, v3.8b
  54:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  58:	13490b39 	.inst	0x13490b39 ; undefined
  5c:	00001802 	.inst	0x00001802 ; undefined
  60:	03003406 	.inst	0x03003406 ; undefined
  64:	3b0b3a08 	.inst	0x3b0b3a08 ; undefined
  68:	490b390b 	.inst	0x490b390b ; undefined
  6c:	00180213 	.inst	0x00180213 ; undefined
  70:	000f0700 	.inst	0x000f0700 ; undefined
  74:	13490b0b 	.inst	0x13490b0b ; undefined
  78:	24080000 	cmphs	p0.b, p0/z, z0.b, z8.b
  7c:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
  80:	000e030b 	.inst	0x000e030b ; undefined
  84:	00260900 	.inst	0x00260900 ; NYI
  88:	00001349 	.inst	0x00001349 ; undefined
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	00000049 	.inst	0x00000049 ; undefined
   4:	001d0003 	.inst	0x001d0003 ; undefined
   8:	01040000 	.inst	0x01040000 ; undefined
   c:	000d0efb 	.inst	0x000d0efb ; undefined
  10:	01010101 	.inst	0x01010101 ; undefined
  14:	01000000 	.inst	0x01000000 ; undefined
  18:	00010000 	.inst	0x00010000 ; undefined
  1c:	6e69616d 	rsubhn2	v13.8h, v11.4s, v9.4s
  20:	0000632e 	.inst	0x0000632e ; undefined
  24:	05000000 	orr	z0.s, z0.s, #0x1
  28:	02090001 	.inst	0x02090001 ; undefined
  2c:	0000071c 	.inst	0x0000071c ; undefined
  30:	00000000 	.inst	0x00000000 ; undefined
  34:	3d050516 	str	b22, [x8, #321]
  38:	210a0522 	.inst	0x210a0522 ; undefined
  3c:	053c0705 	ext	z5.b, z5.b, z24.b, #225
  40:	0c053008 	.inst	0x0c053008 ; undefined
  44:	2101054e 	.inst	0x2101054e ; undefined
  48:	01000202 	.inst	0x01000202 ; undefined
  4c:	地址 0x000000000000004c 越界。


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	63677261 	.inst	0x63677261 ; undefined
   4:	61686300 	.inst	0x61686300 ; undefined
   8:	616d0072 	.inst	0x616d0072 ; undefined
   c:	632e6e69 	.inst	0x632e6e69 ; undefined
  10:	6e6d2f00 	uqsub	v0.8h, v24.8h, v13.8h
  14:	67682f74 	.inst	0x67682f74 ; undefined
  18:	612f7366 	.inst	0x612f7366 ; undefined
  1c:	79736c6c 	ldrh	w12, [x3, #6582]
  20:	732f636e 	.inst	0x732f636e ; undefined
  24:	69746174 	ldpsw	x20, x24, [x11, #-96]
  28:	66692663 	.inst	0x66692663 ; undefined
  2c:	69616d00 	ldpsw	x0, x27, [x8, #-248]
  30:	4e47006e 	.inst	0x4e47006e ; undefined
  34:	31432055 	adds	w21, w2, #0xc8, lsl #12
  38:	2e392037 	usubl	v23.8h, v1.8b, v25.8b
  3c:	20302e34 	.inst	0x20302e34 ; undefined
  40:	696c6d2d 	ldpsw	x13, x27, [x9, #-160]
  44:	656c7474 	fnmls	z20.h, p5/m, z3.h, z12.h
  48:	646e652d 	.inst	0x646e652d ; undefined
  4c:	206e6169 	.inst	0x206e6169 ; undefined
  50:	62616d2d 	.inst	0x62616d2d ; undefined
  54:	706c3d69 	adr	x9, d8803 <__bss_end__+0xc77e3>
  58:	2d203436 	stp	s22, s13, [x1, #-256]
  5c:	662d2067 	.inst	0x662d2067 ; undefined
  60:	6e797361 	uabdl2	v1.4s, v27.8h, v25.8h
  64:	6f726863 	umlsl2	v3.4s, v3.8h, v2.h[7]
  68:	73756f6e 	.inst	0x73756f6e ; undefined
  6c:	776e752d 	.inst	0x776e752d ; undefined
  70:	2d646e69 	ldp	s9, s27, [x19, #-224]
  74:	6c626174 	ldnp	d20, d24, [x11, #-480]
  78:	2d207365 	stp	s5, s28, [x27, #-256]
  7c:	61747366 	.inst	0x61747366 ; undefined
  80:	702d6b63 	adr	x3, 5adef <__bss_end__+0x49dcf>
  84:	65746f72 	fnmls	z18.h, p3/m, z27.h, z20.h
  88:	726f7463 	.inst	0x726f7463 ; undefined
  8c:	7274732d 	.inst	0x7274732d ; undefined
  90:	20676e6f 	.inst	0x20676e6f ; undefined
  94:	7473662d 	.inst	0x7473662d ; undefined
  98:	2d6b6361 	ldp	s1, s24, [x27, #-168]
  9c:	73616c63 	.inst	0x73616c63 ; undefined
  a0:	72702d68 	.inst	0x72702d68 ; undefined
  a4:	6365746f 	.inst	0x6365746f ; undefined
  a8:	6e6f6974 	.inst	0x6e6f6974 ; undefined
  ac:	67726100 	.inst	0x67726100 ; undefined
  b0:	地址 0x00000000000000b0 越界。

