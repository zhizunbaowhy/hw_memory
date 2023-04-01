
main.out：     文件格式 elf64-littleaarch64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	62696c2f 	.inst	0x62696c2f ; undefined
 23c:	2d646c2f 	ldp	s15, s27, [x1, #-224]
 240:	756e696c 	.inst	0x756e696c ; undefined
 244:	61612d78 	.inst	0x61612d78 ; undefined
 248:	36686372 	tbz	w18, #13, eb4 <__FRAME_END__+0x464>
 24c:	6f732e34 	.inst	0x6f732e34 ; undefined
 250:	地址 0x0000000000000250 越界。


Disassembly of section .note.gnu.build-id:

0000000000000254 <.note.gnu.build-id>:
 254:	00000004 	.inst	0x00000004 ; undefined
 258:	00000014 	.inst	0x00000014 ; undefined
 25c:	00000003 	.inst	0x00000003 ; undefined
 260:	00554e47 	.inst	0x00554e47 ; undefined
 264:	7b3eda18 	.inst	0x7b3eda18 ; undefined
 268:	e3588b26 	.inst	0xe3588b26 ; undefined
 26c:	07727348 	.inst	0x07727348 ; undefined
 270:	5b561d75 	.inst	0x5b561d75 ; undefined
 274:	3ef00ba5 	.inst	0x3ef00ba5 ; undefined

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
 2d8:	00000658 	.inst	0x00000658 ; undefined
	...
 2ec:	00160003 	.inst	0x00160003 ; undefined
 2f0:	00011000 	.inst	0x00011000 ; undefined
	...
 300:	00000076 	.inst	0x00000076 ; undefined
 304:	00000020 	.inst	0x00000020 ; undefined
	...
 318:	00000022 	.inst	0x00000022 ; undefined
 31c:	00000022 	.inst	0x00000022 ; undefined
	...
 330:	00000031 	.inst	0x00000031 ; undefined
 334:	00000012 	.inst	0x00000012 ; undefined
	...
 348:	0000000b 	.inst	0x0000000b ; undefined
 34c:	00000012 	.inst	0x00000012 ; undefined
	...
 360:	00000092 	.inst	0x00000092 ; undefined
 364:	00000020 	.inst	0x00000020 ; undefined
	...
 378:	00000059 	.inst	0x00000059 ; undefined
 37c:	00000011 	.inst	0x00000011 ; undefined
	...
 390:	0000001c 	.inst	0x0000001c ; undefined
 394:	00000012 	.inst	0x00000012 ; undefined
	...
 3a8:	000000a1 	.inst	0x000000a1 ; undefined
 3ac:	00000020 	.inst	0x00000020 ; undefined
	...

Disassembly of section .dynstr:

00000000000003c0 <.dynstr>:
 3c0:	62696c00 	.inst	0x62696c00 ; undefined
 3c4:	6f732e63 	.inst	0x6f732e63 ; undefined
 3c8:	5f00362e 	.inst	0x5f00362e ; undefined
 3cc:	6174735f 	.inst	0x6174735f ; undefined
 3d0:	635f6b63 	.inst	0x635f6b63 ; undefined
 3d4:	665f6b68 	.inst	0x665f6b68 ; undefined
 3d8:	006c6961 	.inst	0x006c6961 ; undefined
 3dc:	726f6261 	.inst	0x726f6261 ; undefined
 3e0:	5f5f0074 	.inst	0x5f5f0074 ; undefined
 3e4:	5f617863 	sqdmlsl	s3, h3, v1.h[6]
 3e8:	616e6966 	.inst	0x616e6966 ; undefined
 3ec:	657a696c 	fnmls	z12.h, p2/m, z11.h, z26.h
 3f0:	6c5f5f00 	ldnp	d0, d23, [x24, #496]
 3f4:	5f636269 	.inst	0x5f636269 ; undefined
 3f8:	72617473 	.inst	0x72617473 ; undefined
 3fc:	616d5f74 	.inst	0x616d5f74 ; undefined
 400:	6c006e69 	stnp	d9, d27, [x19]
 404:	696c2d64 	ldpsw	x4, x11, [x11, #-160]
 408:	2d78756e 	ldp	s14, s29, [x11, #-64]
 40c:	63726161 	.inst	0x63726161 ; undefined
 410:	2e343668 	cmhi	v8.8b, v19.8b, v20.8b
 414:	312e6f73 	adds	w19, w27, #0xb9b
 418:	735f5f00 	.inst	0x735f5f00 ; undefined
 41c:	6b636174 	.inst	0x6b636174 ; undefined
 420:	6b68635f 	.inst	0x6b68635f ; undefined
 424:	6175675f 	.inst	0x6175675f ; undefined
 428:	47006472 	.inst	0x47006472 ; undefined
 42c:	4342494c 	.inst	0x4342494c ; undefined
 430:	312e325f 	cmn	w18, #0xb8c
 434:	495f0037 	.inst	0x495f0037 ; undefined
 438:	645f4d54 	fcmla	z20.h, p3/m, z10.h, z31.h, #180
 43c:	67657265 	.inst	0x67657265 ; undefined
 440:	65747369 	fnmls	z9.h, p4/m, z27.h, z20.h
 444:	434d5472 	.inst	0x434d5472 ; undefined
 448:	656e6f6c 	fnmls	z12.h, p3/m, z27.h, z14.h
 44c:	6c626154 	ldnp	d20, d24, [x10, #-480]
 450:	5f5f0065 	.inst	0x5f5f0065 ; undefined
 454:	6e6f6d67 	umin	v7.8h, v11.8h, v15.8h
 458:	6174735f 	.inst	0x6174735f ; undefined
 45c:	5f5f7472 	sqshl	d18, d3, #31
 460:	54495f00 	b.eq	93040 <__bss_end__+0x82020>  // b.none
 464:	65725f4d 	fnmla	z13.h, p7/m, z26.h, z18.h
 468:	74736967 	.inst	0x74736967 ; undefined
 46c:	4d547265 	.inst	0x4d547265 ; undefined
 470:	6e6f6c43 	umin	v3.8h, v2.8h, v15.8h
 474:	62615465 	.inst	0x62615465 ; undefined
 478:	地址 0x0000000000000478 越界。


Disassembly of section .gnu.version:

000000000000047c <.gnu.version>:
	...
 484:	00020002 	.inst	0x00020002 ; undefined
 488:	00000002 	.inst	0x00000002 ; undefined
 48c:	00020003 	.inst	0x00020003 ; undefined
	...

Disassembly of section .gnu.version_r:

0000000000000498 <.gnu.version_r>:
 498:	00010001 	.inst	0x00010001 ; undefined
 49c:	00000043 	.inst	0x00000043 ; undefined
 4a0:	00000010 	.inst	0x00000010 ; undefined
 4a4:	00000020 	.inst	0x00000020 ; undefined
 4a8:	06969197 	.inst	0x06969197 ; undefined
 4ac:	00030000 	.inst	0x00030000 ; undefined
 4b0:	0000006b 	.inst	0x0000006b ; undefined
 4b4:	00000000 	.inst	0x00000000 ; undefined
 4b8:	00010001 	.inst	0x00010001 ; undefined
 4bc:	00000001 	.inst	0x00000001 ; undefined
 4c0:	00000010 	.inst	0x00000010 ; undefined
 4c4:	00000000 	.inst	0x00000000 ; undefined
 4c8:	06969197 	.inst	0x06969197 ; undefined
 4cc:	00020000 	.inst	0x00020000 ; undefined
 4d0:	0000006b 	.inst	0x0000006b ; undefined
 4d4:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .rela.dyn:

00000000000004d8 <.rela.dyn>:
 4d8:	00010d68 	.inst	0x00010d68 ; undefined
 4dc:	00000000 	.inst	0x00000000 ; undefined
 4e0:	00000403 	.inst	0x00000403 ; undefined
 4e4:	00000000 	.inst	0x00000000 ; undefined
 4e8:	000007e8 	.inst	0x000007e8 ; undefined
 4ec:	00000000 	.inst	0x00000000 ; undefined
 4f0:	00010d70 	.inst	0x00010d70 ; undefined
 4f4:	00000000 	.inst	0x00000000 ; undefined
 4f8:	00000403 	.inst	0x00000403 ; undefined
 4fc:	00000000 	.inst	0x00000000 ; undefined
 500:	000007a0 	.inst	0x000007a0 ; undefined
 504:	00000000 	.inst	0x00000000 ; undefined
 508:	00010fc0 	.inst	0x00010fc0 ; undefined
 50c:	00000000 	.inst	0x00000000 ; undefined
 510:	00000403 	.inst	0x00000403 ; undefined
 514:	00000000 	.inst	0x00000000 ; undefined
 518:	00000910 	.inst	0x00000910 ; undefined
 51c:	00000000 	.inst	0x00000000 ; undefined
 520:	00010fe8 	.inst	0x00010fe8 ; undefined
 524:	00000000 	.inst	0x00000000 ; undefined
 528:	00000403 	.inst	0x00000403 ; undefined
 52c:	00000000 	.inst	0x00000000 ; undefined
 530:	00000890 	.inst	0x00000890 ; undefined
 534:	00000000 	.inst	0x00000000 ; undefined
 538:	00010ff0 	.inst	0x00010ff0 ; undefined
 53c:	00000000 	.inst	0x00000000 ; undefined
 540:	00000403 	.inst	0x00000403 ; undefined
 544:	00000000 	.inst	0x00000000 ; undefined
 548:	000007ec 	.inst	0x000007ec ; undefined
 54c:	00000000 	.inst	0x00000000 ; undefined
 550:	00011008 	.inst	0x00011008 ; undefined
 554:	00000000 	.inst	0x00000000 ; undefined
 558:	00000403 	.inst	0x00000403 ; undefined
 55c:	00000000 	.inst	0x00000000 ; undefined
 560:	00011008 	.inst	0x00011008 ; undefined
 564:	00000000 	.inst	0x00000000 ; undefined
 568:	00010fc8 	.inst	0x00010fc8 ; undefined
 56c:	00000000 	.inst	0x00000000 ; undefined
 570:	00000401 	.inst	0x00000401 ; undefined
 574:	00000003 	.inst	0x00000003 ; undefined
	...
 580:	00010fd0 	.inst	0x00010fd0 ; undefined
 584:	00000000 	.inst	0x00000000 ; undefined
 588:	00000401 	.inst	0x00000401 ; undefined
 58c:	00000004 	.inst	0x00000004 ; undefined
	...
 598:	00010fd8 	.inst	0x00010fd8 ; undefined
 59c:	00000000 	.inst	0x00000000 ; undefined
 5a0:	00000401 	.inst	0x00000401 ; undefined
 5a4:	00000007 	.inst	0x00000007 ; undefined
	...
 5b0:	00010fe0 	.inst	0x00010fe0 ; undefined
 5b4:	00000000 	.inst	0x00000000 ; undefined
 5b8:	00000401 	.inst	0x00000401 ; undefined
 5bc:	00000008 	.inst	0x00000008 ; undefined
	...
 5c8:	00010ff8 	.inst	0x00010ff8 ; undefined
 5cc:	00000000 	.inst	0x00000000 ; undefined
 5d0:	00000401 	.inst	0x00000401 ; undefined
 5d4:	0000000a 	.inst	0x0000000a ; undefined
	...

Disassembly of section .rela.plt:

00000000000005e0 <.rela.plt>:
 5e0:	00010f90 	.inst	0x00010f90 ; undefined
 5e4:	00000000 	.inst	0x00000000 ; undefined
 5e8:	00000402 	.inst	0x00000402 ; undefined
 5ec:	00000004 	.inst	0x00000004 ; undefined
	...
 5f8:	00010f98 	.inst	0x00010f98 ; undefined
 5fc:	00000000 	.inst	0x00000000 ; undefined
 600:	00000402 	.inst	0x00000402 ; undefined
 604:	00000005 	.inst	0x00000005 ; undefined
	...
 610:	00010fa0 	.inst	0x00010fa0 ; undefined
 614:	00000000 	.inst	0x00000000 ; undefined
 618:	00000402 	.inst	0x00000402 ; undefined
 61c:	00000006 	.inst	0x00000006 ; undefined
	...
 628:	00010fa8 	.inst	0x00010fa8 ; undefined
 62c:	00000000 	.inst	0x00000000 ; undefined
 630:	00000402 	.inst	0x00000402 ; undefined
 634:	00000007 	.inst	0x00000007 ; undefined
	...
 640:	00010fb0 	.inst	0x00010fb0 ; undefined
 644:	00000000 	.inst	0x00000000 ; undefined
 648:	00000402 	.inst	0x00000402 ; undefined
 64c:	00000009 	.inst	0x00000009 ; undefined
	...

Disassembly of section .init:

0000000000000658 <_init>:
 658:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 65c:	910003fd 	mov	x29, sp
 660:	9400002e 	bl	718 <call_weak_fn>
 664:	a8c17bfd 	ldp	x29, x30, [sp], #16
 668:	d65f03c0 	ret

Disassembly of section .plt:

0000000000000670 <.plt>:
 670:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 674:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf5b0>
 678:	f947c611 	ldr	x17, [x16, #3976]
 67c:	913e2210 	add	x16, x16, #0xf88
 680:	d61f0220 	br	x17
 684:	d503201f 	nop
 688:	d503201f 	nop
 68c:	d503201f 	nop

0000000000000690 <__cxa_finalize@plt>:
 690:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf5b0>
 694:	f947ca11 	ldr	x17, [x16, #3984]
 698:	913e4210 	add	x16, x16, #0xf90
 69c:	d61f0220 	br	x17

00000000000006a0 <__libc_start_main@plt>:
 6a0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf5b0>
 6a4:	f947ce11 	ldr	x17, [x16, #3992]
 6a8:	913e6210 	add	x16, x16, #0xf98
 6ac:	d61f0220 	br	x17

00000000000006b0 <__stack_chk_fail@plt>:
 6b0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf5b0>
 6b4:	f947d211 	ldr	x17, [x16, #4000]
 6b8:	913e8210 	add	x16, x16, #0xfa0
 6bc:	d61f0220 	br	x17

00000000000006c0 <__gmon_start__@plt>:
 6c0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf5b0>
 6c4:	f947d611 	ldr	x17, [x16, #4008]
 6c8:	913ea210 	add	x16, x16, #0xfa8
 6cc:	d61f0220 	br	x17

00000000000006d0 <abort@plt>:
 6d0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf5b0>
 6d4:	f947da11 	ldr	x17, [x16, #4016]
 6d8:	913ec210 	add	x16, x16, #0xfb0
 6dc:	d61f0220 	br	x17

Disassembly of section .text:

00000000000006e0 <_start>:
 6e0:	d280001d 	mov	x29, #0x0                   	// #0
 6e4:	d280001e 	mov	x30, #0x0                   	// #0
 6e8:	aa0003e5 	mov	x5, x0
 6ec:	f94003e1 	ldr	x1, [sp]
 6f0:	910023e2 	add	x2, sp, #0x8
 6f4:	910003e6 	mov	x6, sp
 6f8:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf5b0>
 6fc:	f947f800 	ldr	x0, [x0, #4080]
 700:	90000083 	adrp	x3, 10000 <__FRAME_END__+0xf5b0>
 704:	f947f463 	ldr	x3, [x3, #4072]
 708:	90000084 	adrp	x4, 10000 <__FRAME_END__+0xf5b0>
 70c:	f947e084 	ldr	x4, [x4, #4032]
 710:	97ffffe4 	bl	6a0 <__libc_start_main@plt>
 714:	97ffffef 	bl	6d0 <abort@plt>

0000000000000718 <call_weak_fn>:
 718:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf5b0>
 71c:	f947ec00 	ldr	x0, [x0, #4056]
 720:	b4000040 	cbz	x0, 728 <call_weak_fn+0x10>
 724:	17ffffe7 	b	6c0 <__gmon_start__@plt>
 728:	d65f03c0 	ret
 72c:	d503201f 	nop

0000000000000730 <deregister_tm_clones>:
 730:	b0000080 	adrp	x0, 11000 <__data_start>
 734:	91006000 	add	x0, x0, #0x18
 738:	b0000081 	adrp	x1, 11000 <__data_start>
 73c:	91006021 	add	x1, x1, #0x18
 740:	eb00003f 	cmp	x1, x0
 744:	540000c0 	b.eq	75c <deregister_tm_clones+0x2c>  // b.none
 748:	90000081 	adrp	x1, 10000 <__FRAME_END__+0xf5b0>
 74c:	f947e421 	ldr	x1, [x1, #4040]
 750:	b4000061 	cbz	x1, 75c <deregister_tm_clones+0x2c>
 754:	aa0103f0 	mov	x16, x1
 758:	d61f0200 	br	x16
 75c:	d65f03c0 	ret

0000000000000760 <register_tm_clones>:
 760:	b0000080 	adrp	x0, 11000 <__data_start>
 764:	91006000 	add	x0, x0, #0x18
 768:	b0000081 	adrp	x1, 11000 <__data_start>
 76c:	91006021 	add	x1, x1, #0x18
 770:	cb000021 	sub	x1, x1, x0
 774:	d37ffc22 	lsr	x2, x1, #63
 778:	8b810c41 	add	x1, x2, x1, asr #3
 77c:	eb8107ff 	cmp	xzr, x1, asr #1
 780:	9341fc21 	asr	x1, x1, #1
 784:	540000c0 	b.eq	79c <register_tm_clones+0x3c>  // b.none
 788:	90000082 	adrp	x2, 10000 <__FRAME_END__+0xf5b0>
 78c:	f947fc42 	ldr	x2, [x2, #4088]
 790:	b4000062 	cbz	x2, 79c <register_tm_clones+0x3c>
 794:	aa0203f0 	mov	x16, x2
 798:	d61f0200 	br	x16
 79c:	d65f03c0 	ret

00000000000007a0 <__do_global_dtors_aux>:
 7a0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 7a4:	910003fd 	mov	x29, sp
 7a8:	f9000bf3 	str	x19, [sp, #16]
 7ac:	b0000093 	adrp	x19, 11000 <__data_start>
 7b0:	39406260 	ldrb	w0, [x19, #24]
 7b4:	35000140 	cbnz	w0, 7dc <__do_global_dtors_aux+0x3c>
 7b8:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf5b0>
 7bc:	f947e800 	ldr	x0, [x0, #4048]
 7c0:	b4000080 	cbz	x0, 7d0 <__do_global_dtors_aux+0x30>
 7c4:	b0000080 	adrp	x0, 11000 <__data_start>
 7c8:	f9400400 	ldr	x0, [x0, #8]
 7cc:	97ffffb1 	bl	690 <__cxa_finalize@plt>
 7d0:	97ffffd8 	bl	730 <deregister_tm_clones>
 7d4:	52800020 	mov	w0, #0x1                   	// #1
 7d8:	39006260 	strb	w0, [x19, #24]
 7dc:	f9400bf3 	ldr	x19, [sp, #16]
 7e0:	a8c27bfd 	ldp	x29, x30, [sp], #32
 7e4:	d65f03c0 	ret

00000000000007e8 <frame_dummy>:
 7e8:	17ffffde 	b	760 <register_tm_clones>

00000000000007ec <main>:
 7ec:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
 7f0:	910003fd 	mov	x29, sp
 7f4:	b9001fe0 	str	w0, [sp, #28]
 7f8:	f9000be1 	str	x1, [sp, #16]
 7fc:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf5b0>
 800:	f947f000 	ldr	x0, [x0, #4064]
 804:	f9400001 	ldr	x1, [x0]
 808:	f90017e1 	str	x1, [sp, #40]
 80c:	d2800001 	mov	x1, #0x0                   	// #0
 810:	d503201f 	nop
 814:	b0000080 	adrp	x0, 11000 <__data_start>
 818:	91004000 	add	x0, x0, #0x10
 81c:	52800141 	mov	w1, #0xa                   	// #10
 820:	b9000001 	str	w1, [x0]
 824:	b0000080 	adrp	x0, 11000 <__data_start>
 828:	91004000 	add	x0, x0, #0x10
 82c:	52800201 	mov	w1, #0x10                  	// #16
 830:	b9000401 	str	w1, [x0, #4]
 834:	d503201f 	nop
 838:	52800060 	mov	w0, #0x3                   	// #3
 83c:	b90023e0 	str	w0, [sp, #32]
 840:	52800080 	mov	w0, #0x4                   	// #4
 844:	b90027e0 	str	w0, [sp, #36]
 848:	52800de0 	mov	w0, #0x6f                  	// #111
 84c:	b90023e0 	str	w0, [sp, #32]
 850:	528029a0 	mov	w0, #0x14d                 	// #333
 854:	b90027e0 	str	w0, [sp, #36]
 858:	52800000 	mov	w0, #0x0                   	// #0
 85c:	2a0003e1 	mov	w1, w0
 860:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf5b0>
 864:	f947f000 	ldr	x0, [x0, #4064]
 868:	f94017e2 	ldr	x2, [sp, #40]
 86c:	f9400003 	ldr	x3, [x0]
 870:	eb030042 	subs	x2, x2, x3
 874:	d2800003 	mov	x3, #0x0                   	// #0
 878:	54000040 	b.eq	880 <main+0x94>  // b.none
 87c:	97ffff8d 	bl	6b0 <__stack_chk_fail@plt>
 880:	2a0103e0 	mov	w0, w1
 884:	a8c37bfd 	ldp	x29, x30, [sp], #48
 888:	d65f03c0 	ret
 88c:	d503201f 	nop

0000000000000890 <__libc_csu_init>:
 890:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 894:	910003fd 	mov	x29, sp
 898:	a90153f3 	stp	x19, x20, [sp, #16]
 89c:	90000094 	adrp	x20, 10000 <__FRAME_END__+0xf5b0>
 8a0:	9135c294 	add	x20, x20, #0xd70
 8a4:	a9025bf5 	stp	x21, x22, [sp, #32]
 8a8:	90000095 	adrp	x21, 10000 <__FRAME_END__+0xf5b0>
 8ac:	9135a2b5 	add	x21, x21, #0xd68
 8b0:	cb150294 	sub	x20, x20, x21
 8b4:	2a0003f6 	mov	w22, w0
 8b8:	a90363f7 	stp	x23, x24, [sp, #48]
 8bc:	aa0103f7 	mov	x23, x1
 8c0:	aa0203f8 	mov	x24, x2
 8c4:	97ffff65 	bl	658 <_init>
 8c8:	eb940fff 	cmp	xzr, x20, asr #3
 8cc:	54000160 	b.eq	8f8 <__libc_csu_init+0x68>  // b.none
 8d0:	9343fe94 	asr	x20, x20, #3
 8d4:	d2800013 	mov	x19, #0x0                   	// #0
 8d8:	f8737aa3 	ldr	x3, [x21, x19, lsl #3]
 8dc:	aa1803e2 	mov	x2, x24
 8e0:	91000673 	add	x19, x19, #0x1
 8e4:	aa1703e1 	mov	x1, x23
 8e8:	2a1603e0 	mov	w0, w22
 8ec:	d63f0060 	blr	x3
 8f0:	eb13029f 	cmp	x20, x19
 8f4:	54ffff21 	b.ne	8d8 <__libc_csu_init+0x48>  // b.any
 8f8:	a94153f3 	ldp	x19, x20, [sp, #16]
 8fc:	a9425bf5 	ldp	x21, x22, [sp, #32]
 900:	a94363f7 	ldp	x23, x24, [sp, #48]
 904:	a8c47bfd 	ldp	x29, x30, [sp], #64
 908:	d65f03c0 	ret
 90c:	d503201f 	nop

0000000000000910 <__libc_csu_fini>:
 910:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000914 <_fini>:
 914:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 918:	910003fd 	mov	x29, sp
 91c:	a8c17bfd 	ldp	x29, x30, [sp], #16
 920:	d65f03c0 	ret

Disassembly of section .rodata:

0000000000000924 <_IO_stdin_used>:
 924:	00020001 	.inst	0x00020001 ; undefined

Disassembly of section .eh_frame_hdr:

0000000000000928 <__GNU_EH_FRAME_HDR>:
 928:	3b031b01 	.inst	0x3b031b01 ; undefined
 92c:	00000044 	.inst	0x00000044 ; undefined
 930:	00000007 	.inst	0x00000007 ; undefined
 934:	fffffe08 	.inst	0xfffffe08 ; undefined
 938:	0000005c 	.inst	0x0000005c ; undefined
 93c:	fffffe38 	.inst	0xfffffe38 ; undefined
 940:	00000070 	.inst	0x00000070 ; undefined
 944:	fffffe78 	.inst	0xfffffe78 ; undefined
 948:	00000084 	.inst	0x00000084 ; undefined
 94c:	fffffec0 	.inst	0xfffffec0 ; undefined
 950:	000000a8 	.inst	0x000000a8 ; undefined
 954:	fffffec4 	.inst	0xfffffec4 ; undefined
 958:	000000c0 	.inst	0x000000c0 ; undefined
 95c:	ffffff68 	.inst	0xffffff68 ; undefined
 960:	000000e0 	.inst	0x000000e0 ; undefined
 964:	ffffffe8 	.inst	0xffffffe8 ; undefined
 968:	00000114 	.inst	0x00000114 ; undefined

Disassembly of section .eh_frame:

0000000000000970 <__FRAME_END__-0xe0>:
 970:	00000010 	.inst	0x00000010 ; undefined
 974:	00000000 	.inst	0x00000000 ; undefined
 978:	00527a01 	.inst	0x00527a01 ; undefined
 97c:	011e7804 	.inst	0x011e7804 ; undefined
 980:	001f0c1b 	.inst	0x001f0c1b ; undefined
 984:	00000010 	.inst	0x00000010 ; undefined
 988:	00000018 	.inst	0x00000018 ; undefined
 98c:	fffffda4 	.inst	0xfffffda4 ; undefined
 990:	00000030 	.inst	0x00000030 ; undefined
 994:	00000000 	.inst	0x00000000 ; undefined
 998:	00000010 	.inst	0x00000010 ; undefined
 99c:	0000002c 	.inst	0x0000002c ; undefined
 9a0:	fffffdc0 	.inst	0xfffffdc0 ; undefined
 9a4:	00000040 	.inst	0x00000040 ; undefined
 9a8:	00000000 	.inst	0x00000000 ; undefined
 9ac:	00000020 	.inst	0x00000020 ; undefined
 9b0:	00000040 	.inst	0x00000040 ; undefined
 9b4:	fffffdec 	.inst	0xfffffdec ; undefined
 9b8:	00000048 	.inst	0x00000048 ; undefined
 9bc:	200e4100 	.inst	0x200e4100 ; undefined
 9c0:	039e049d 	.inst	0x039e049d ; undefined
 9c4:	4e029342 	.inst	0x4e029342 ; undefined
 9c8:	0ed3ddde 	.inst	0x0ed3ddde ; undefined
 9cc:	00000000 	.inst	0x00000000 ; undefined
 9d0:	00000014 	.inst	0x00000014 ; undefined
 9d4:	00000064 	.inst	0x00000064 ; undefined
 9d8:	fffffe10 	.inst	0xfffffe10 ; undefined
 9dc:	00000004 	.inst	0x00000004 ; undefined
	...
 9e8:	0000001c 	.inst	0x0000001c ; undefined
 9ec:	0000007c 	.inst	0x0000007c ; undefined
 9f0:	fffffdfc 	.inst	0xfffffdfc ; undefined
 9f4:	000000a0 	.inst	0x000000a0 ; undefined
 9f8:	300e4100 	adr	x0, 1d219 <__bss_end__+0xc1f9>
 9fc:	059e069d 	mov	z29.s, p14/z, #52
 a00:	0eddde66 	.inst	0x0eddde66 ; undefined
 a04:	00000000 	.inst	0x00000000 ; undefined
 a08:	00000030 	.inst	0x00000030 ; undefined
 a0c:	0000009c 	.inst	0x0000009c ; undefined
 a10:	fffffe80 	.inst	0xfffffe80 ; undefined
 a14:	0000007c 	.inst	0x0000007c ; undefined
 a18:	400e4100 	.inst	0x400e4100 ; undefined
 a1c:	079e089d 	.inst	0x079e089d ; undefined
 a20:	94069342 	bl	1a5728 <__bss_end__+0x194708>
 a24:	04954305 	mla	z5.s, p0/m, z24.s, z21.s
 a28:	97450396 	bl	fffffffffd141880 <__bss_end__+0xfffffffffd130860>
 a2c:	53019802 	.inst	0x53019802 ; undefined
 a30:	d8d7ddde 	prfm	#0x1e, fffffffffffb05e8 <__bss_end__+0xfffffffffff9f5c8>
 a34:	d4d3d6d5 	.inst	0xd4d3d6d5 ; undefined
 a38:	0000000e 	.inst	0x0000000e ; undefined
 a3c:	00000010 	.inst	0x00000010 ; undefined
 a40:	000000d0 	.inst	0x000000d0 ; undefined
 a44:	fffffecc 	.inst	0xfffffecc ; undefined
 a48:	00000004 	.inst	0x00000004 ; undefined
 a4c:	00000000 	.inst	0x00000000 ; undefined

0000000000000a50 <__FRAME_END__>:
 a50:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .init_array:

0000000000010d68 <__frame_dummy_init_array_entry>:
   10d68:	000007e8 	.inst	0x000007e8 ; undefined
   10d6c:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .fini_array:

0000000000010d70 <__do_global_dtors_aux_fini_array_entry>:
   10d70:	000007a0 	.inst	0x000007a0 ; undefined
   10d74:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .dynamic:

0000000000010d78 <.dynamic>:
   10d78:	00000001 	.inst	0x00000001 ; undefined
   10d7c:	00000000 	.inst	0x00000000 ; undefined
   10d80:	00000001 	.inst	0x00000001 ; undefined
   10d84:	00000000 	.inst	0x00000000 ; undefined
   10d88:	00000001 	.inst	0x00000001 ; undefined
   10d8c:	00000000 	.inst	0x00000000 ; undefined
   10d90:	00000043 	.inst	0x00000043 ; undefined
   10d94:	00000000 	.inst	0x00000000 ; undefined
   10d98:	0000000c 	.inst	0x0000000c ; undefined
   10d9c:	00000000 	.inst	0x00000000 ; undefined
   10da0:	00000658 	.inst	0x00000658 ; undefined
   10da4:	00000000 	.inst	0x00000000 ; undefined
   10da8:	0000000d 	.inst	0x0000000d ; undefined
   10dac:	00000000 	.inst	0x00000000 ; undefined
   10db0:	00000914 	.inst	0x00000914 ; undefined
   10db4:	00000000 	.inst	0x00000000 ; undefined
   10db8:	00000019 	.inst	0x00000019 ; undefined
   10dbc:	00000000 	.inst	0x00000000 ; undefined
   10dc0:	00010d68 	.inst	0x00010d68 ; undefined
   10dc4:	00000000 	.inst	0x00000000 ; undefined
   10dc8:	0000001b 	.inst	0x0000001b ; undefined
   10dcc:	00000000 	.inst	0x00000000 ; undefined
   10dd0:	00000008 	.inst	0x00000008 ; undefined
   10dd4:	00000000 	.inst	0x00000000 ; undefined
   10dd8:	0000001a 	.inst	0x0000001a ; undefined
   10ddc:	00000000 	.inst	0x00000000 ; undefined
   10de0:	00010d70 	.inst	0x00010d70 ; undefined
   10de4:	00000000 	.inst	0x00000000 ; undefined
   10de8:	0000001c 	.inst	0x0000001c ; undefined
   10dec:	00000000 	.inst	0x00000000 ; undefined
   10df0:	00000008 	.inst	0x00000008 ; undefined
   10df4:	00000000 	.inst	0x00000000 ; undefined
   10df8:	6ffffef5 	.inst	0x6ffffef5 ; undefined
   10dfc:	00000000 	.inst	0x00000000 ; undefined
   10e00:	00000298 	.inst	0x00000298 ; undefined
   10e04:	00000000 	.inst	0x00000000 ; undefined
   10e08:	00000005 	.inst	0x00000005 ; undefined
   10e0c:	00000000 	.inst	0x00000000 ; undefined
   10e10:	000003c0 	.inst	0x000003c0 ; undefined
   10e14:	00000000 	.inst	0x00000000 ; undefined
   10e18:	00000006 	.inst	0x00000006 ; undefined
   10e1c:	00000000 	.inst	0x00000000 ; undefined
   10e20:	000002b8 	.inst	0x000002b8 ; undefined
   10e24:	00000000 	.inst	0x00000000 ; undefined
   10e28:	0000000a 	.inst	0x0000000a ; undefined
   10e2c:	00000000 	.inst	0x00000000 ; undefined
   10e30:	000000bb 	.inst	0x000000bb ; undefined
   10e34:	00000000 	.inst	0x00000000 ; undefined
   10e38:	0000000b 	.inst	0x0000000b ; undefined
   10e3c:	00000000 	.inst	0x00000000 ; undefined
   10e40:	00000018 	.inst	0x00000018 ; undefined
   10e44:	00000000 	.inst	0x00000000 ; undefined
   10e48:	00000015 	.inst	0x00000015 ; undefined
	...
   10e58:	00000003 	.inst	0x00000003 ; undefined
   10e5c:	00000000 	.inst	0x00000000 ; undefined
   10e60:	00010f78 	.inst	0x00010f78 ; undefined
   10e64:	00000000 	.inst	0x00000000 ; undefined
   10e68:	00000002 	.inst	0x00000002 ; undefined
   10e6c:	00000000 	.inst	0x00000000 ; undefined
   10e70:	00000078 	.inst	0x00000078 ; undefined
   10e74:	00000000 	.inst	0x00000000 ; undefined
   10e78:	00000014 	.inst	0x00000014 ; undefined
   10e7c:	00000000 	.inst	0x00000000 ; undefined
   10e80:	00000007 	.inst	0x00000007 ; undefined
   10e84:	00000000 	.inst	0x00000000 ; undefined
   10e88:	00000017 	.inst	0x00000017 ; undefined
   10e8c:	00000000 	.inst	0x00000000 ; undefined
   10e90:	000005e0 	.inst	0x000005e0 ; undefined
   10e94:	00000000 	.inst	0x00000000 ; undefined
   10e98:	00000007 	.inst	0x00000007 ; undefined
   10e9c:	00000000 	.inst	0x00000000 ; undefined
   10ea0:	000004d8 	.inst	0x000004d8 ; undefined
   10ea4:	00000000 	.inst	0x00000000 ; undefined
   10ea8:	00000008 	.inst	0x00000008 ; undefined
   10eac:	00000000 	.inst	0x00000000 ; undefined
   10eb0:	00000108 	.inst	0x00000108 ; undefined
   10eb4:	00000000 	.inst	0x00000000 ; undefined
   10eb8:	00000009 	.inst	0x00000009 ; undefined
   10ebc:	00000000 	.inst	0x00000000 ; undefined
   10ec0:	00000018 	.inst	0x00000018 ; undefined
   10ec4:	00000000 	.inst	0x00000000 ; undefined
   10ec8:	0000001e 	.inst	0x0000001e ; undefined
   10ecc:	00000000 	.inst	0x00000000 ; undefined
   10ed0:	00000008 	.inst	0x00000008 ; undefined
   10ed4:	00000000 	.inst	0x00000000 ; undefined
   10ed8:	6ffffffb 	.inst	0x6ffffffb ; undefined
   10edc:	00000000 	.inst	0x00000000 ; undefined
   10ee0:	08000001 	stxrb	w0, w1, [x0]
   10ee4:	00000000 	.inst	0x00000000 ; undefined
   10ee8:	6ffffffe 	.inst	0x6ffffffe ; undefined
   10eec:	00000000 	.inst	0x00000000 ; undefined
   10ef0:	00000498 	.inst	0x00000498 ; undefined
   10ef4:	00000000 	.inst	0x00000000 ; undefined
   10ef8:	6fffffff 	.inst	0x6fffffff ; undefined
   10efc:	00000000 	.inst	0x00000000 ; undefined
   10f00:	00000002 	.inst	0x00000002 ; undefined
   10f04:	00000000 	.inst	0x00000000 ; undefined
   10f08:	6ffffff0 	.inst	0x6ffffff0 ; undefined
   10f0c:	00000000 	.inst	0x00000000 ; undefined
   10f10:	0000047c 	.inst	0x0000047c ; undefined
   10f14:	00000000 	.inst	0x00000000 ; undefined
   10f18:	6ffffff9 	.inst	0x6ffffff9 ; undefined
   10f1c:	00000000 	.inst	0x00000000 ; undefined
   10f20:	00000006 	.inst	0x00000006 ; undefined
	...

Disassembly of section .got:

0000000000010f78 <.got>:
	...
   10f90:	00000670 	.inst	0x00000670 ; undefined
   10f94:	00000000 	.inst	0x00000000 ; undefined
   10f98:	00000670 	.inst	0x00000670 ; undefined
   10f9c:	00000000 	.inst	0x00000000 ; undefined
   10fa0:	00000670 	.inst	0x00000670 ; undefined
   10fa4:	00000000 	.inst	0x00000000 ; undefined
   10fa8:	00000670 	.inst	0x00000670 ; undefined
   10fac:	00000000 	.inst	0x00000000 ; undefined
   10fb0:	00000670 	.inst	0x00000670 ; undefined
   10fb4:	00000000 	.inst	0x00000000 ; undefined
   10fb8:	00010d78 	.inst	0x00010d78 ; undefined
   10fbc:	00000000 	.inst	0x00000000 ; undefined
   10fc0:	00000910 	.inst	0x00000910 ; undefined
	...
   10fe8:	00000890 	.inst	0x00000890 ; undefined
   10fec:	00000000 	.inst	0x00000000 ; undefined
   10ff0:	000007ec 	.inst	0x000007ec ; undefined
	...

Disassembly of section .data:

0000000000011000 <__data_start>:
	...

0000000000011008 <__dso_handle>:
   11008:	00011008 	.inst	0x00011008 ; undefined
   1100c:	00000000 	.inst	0x00000000 ; undefined

0000000000011010 <i>:
   11010:	00000001 	.inst	0x00000001 ; undefined
   11014:	00000002 	.inst	0x00000002 ; undefined

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
  10:	000007ec 	.inst	0x000007ec ; undefined
  14:	00000000 	.inst	0x00000000 ; undefined
  18:	000000a0 	.inst	0x000000a0 ; undefined
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	000000c2 	.inst	0x000000c2 ; undefined
   4:	00000004 	.inst	0x00000004 ; undefined
   8:	01080000 	.inst	0x01080000 ; undefined
   c:	00000046 	.inst	0x00000046 ; undefined
  10:	00003a0c 	.inst	0x00003a0c ; undefined
  14:	00001c00 	.inst	0x00001c00 ; undefined
  18:	0007ec00 	.inst	0x0007ec00 ; undefined
  1c:	00000000 	.inst	0x00000000 ; undefined
  20:	0000a000 	.inst	0x0000a000 ; undefined
	...
  2c:	00440200 	.inst	0x00440200 ; undefined
  30:	003d0000 	.inst	0x003d0000 ; NYI
  34:	3d030000 	str	b0, [x0, #192]
  38:	01000000 	.inst	0x01000000 ; undefined
  3c:	07080400 	.inst	0x07080400 ; undefined
  40:	00000000 	.inst	0x00000000 ; undefined
  44:	69050405 	stgp	x5, x1, [x0, #160]
  48:	0600746e 	.inst	0x0600746e ; undefined
  4c:	01010069 	.inst	0x01010069 ; undefined
  50:	00002d05 	.inst	0x00002d05 ; undefined
  54:	10030900 	adr	x0, 6174 <__FRAME_END__+0x5724>
  58:	00000110 	.inst	0x00000110 ; undefined
  5c:	07000000 	.inst	0x07000000 ; undefined
  60:	00000041 	.inst	0x00000041 ; undefined
  64:	44050401 	.inst	0x44050401 ; undefined
  68:	ec000000 	.inst	0xec000000 ; undefined
  6c:	00000007 	.inst	0x00000007 ; undefined
  70:	a0000000 	.inst	0xa0000000 ; undefined
  74:	00000000 	.inst	0x00000000 ; undefined
  78:	01000000 	.inst	0x01000000 ; undefined
  7c:	0000ad9c 	.inst	0x0000ad9c ; undefined
  80:	00120800 	.inst	0x00120800 ; undefined
  84:	04010000 	sub	z0.b, p0/m, z0.b, z0.b
  88:	0000440e 	.inst	0x0000440e ; undefined
  8c:	6c910200 	stp	d0, d0, [x16], #272
  90:	0000c108 	.inst	0x0000c108 ; undefined
  94:	21040100 	.inst	0x21040100 ; undefined
  98:	000000ad 	.inst	0x000000ad ; undefined
  9c:	09609102 	.inst	0x09609102 ; undefined
  a0:	0a01006a 	and	w10, w3, w1
  a4:	00002d09 	.inst	0x00002d09 ; undefined
  a8:	70910200 	adr	x0, fffffffffff220eb <__bss_end__+0xfffffffffff110cb>
  ac:	b3080a00 	.inst	0xb3080a00 ; undefined
  b0:	0a000000 	and	w0, w0, w0
  b4:	0000c008 	.inst	0x0000c008 ; undefined
  b8:	08010400 	stxrb	w1, w0, [x0]
  bc:	00000017 	.inst	0x00000017 ; undefined
  c0:	0000b90b 	.inst	0x0000b90b ; undefined
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
   4:	030b130e 	.inst	0x030b130e ; undefined
   8:	110e1b0e 	add	w14, w24, #0x386
   c:	10071201 	adr	x1, e24c <__FRAME_END__+0xd7fc>
  10:	02000017 	.inst	0x02000017 ; undefined
  14:	13490101 	.inst	0x13490101 ; undefined
  18:	00001301 	.inst	0x00001301 ; undefined
  1c:	49002103 	.inst	0x49002103 ; undefined
  20:	000b2f13 	.inst	0x000b2f13 ; undefined
  24:	00240400 	.inst	0x00240400 ; NYI
  28:	0b3e0b0b 	add	w11, w24, w30, uxtb #2
  2c:	00000e03 	.inst	0x00000e03 ; undefined
  30:	0b002405 	add	w5, w0, w0, lsl #9
  34:	030b3e0b 	.inst	0x030b3e0b ; undefined
  38:	06000008 	.inst	0x06000008 ; undefined
  3c:	08030034 	stxrb	w3, w20, [x1]
  40:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  44:	13490b39 	.inst	0x13490b39 ; undefined
  48:	1802193f 	ldr	wzr, 436c <__FRAME_END__+0x391c>
  4c:	2e070000 	ext	v0.8b, v0.8b, v7.8b, #0
  50:	03193f01 	.inst	0x03193f01 ; undefined
  54:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  58:	270b390b 	.inst	0x270b390b ; undefined
  5c:	11134919 	add	w25, w8, #0x4d2
  60:	40071201 	.inst	0x40071201 ; undefined
  64:	19429618 	.inst	0x19429618 ; undefined
  68:	00001301 	.inst	0x00001301 ; undefined
  6c:	03000508 	.inst	0x03000508 ; undefined
  70:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  74:	490b390b 	.inst	0x490b390b ; undefined
  78:	00180213 	.inst	0x00180213 ; undefined
  7c:	00340900 	.inst	0x00340900 ; NYI
  80:	0b3a0803 	add	w3, w0, w26, uxtb #2
  84:	0b390b3b 	add	w27, w25, w25, uxtb #2
  88:	18021349 	ldr	w9, 42f0 <__FRAME_END__+0x38a0>
  8c:	0f0a0000 	.inst	0x0f0a0000 ; undefined
  90:	490b0b00 	.inst	0x490b0b00 ; undefined
  94:	0b000013 	add	w19, w0, w0
  98:	13490026 	.inst	0x13490026 ; undefined
  9c:	地址 0x000000000000009c 越界。


Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	0000004e 	.inst	0x0000004e ; undefined
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
  2c:	000007ec 	.inst	0x000007ec ; undefined
  30:	00000000 	.inst	0x00000000 ; undefined
  34:	05054a16 	.inst	0x05054a16 ; undefined
  38:	210a0559 	.inst	0x210a0559 ; undefined
  3c:	4b05054b 	sub	w11, w10, w5, lsl #1
  40:	05210905 	ext	z5.b, z5.b, z8.b, #10
  44:	052f4b0a 	.inst	0x052f4b0a ; undefined
  48:	0105310c 	.inst	0x0105310c ; undefined
  4c:	000b022f 	.inst	0x000b022f ; undefined
  50:	地址 0x0000000000000050 越界。


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	676e6f6c 	.inst	0x676e6f6c ; undefined
   4:	736e7520 	.inst	0x736e7520 ; undefined
   8:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
   c:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
  10:	72610074 	.inst	0x72610074 ; undefined
  14:	63006367 	.inst	0x63006367 ; undefined
  18:	00726168 	.inst	0x00726168 ; undefined
  1c:	746e6d2f 	.inst	0x746e6d2f ; undefined
  20:	6667682f 	.inst	0x6667682f ; undefined
  24:	6c612f73 	ldnp	d19, d11, [x27, #-496]
  28:	6e79736c 	uabdl2	v12.4s, v27.8h, v25.8h
  2c:	69732f63 	ldpsw	x3, x11, [x27, #-104]
  30:	656c706d 	fnmls	z13.h, p4/m, z3.h, z12.h
  34:	61727261 	.inst	0x61727261 ; undefined
  38:	616d0079 	.inst	0x616d0079 ; undefined
  3c:	632e6e69 	.inst	0x632e6e69 ; undefined
  40:	69616d00 	ldpsw	x0, x27, [x8, #-248]
  44:	4e47006e 	.inst	0x4e47006e ; undefined
  48:	31432055 	adds	w21, w2, #0xc8, lsl #12
  4c:	2e392037 	usubl	v23.8h, v1.8b, v25.8b
  50:	20302e34 	.inst	0x20302e34 ; undefined
  54:	696c6d2d 	ldpsw	x13, x27, [x9, #-160]
  58:	656c7474 	fnmls	z20.h, p5/m, z3.h, z12.h
  5c:	646e652d 	.inst	0x646e652d ; undefined
  60:	206e6169 	.inst	0x206e6169 ; undefined
  64:	62616d2d 	.inst	0x62616d2d ; undefined
  68:	706c3d69 	adr	x9, d8817 <__bss_end__+0xc77f7>
  6c:	2d203436 	stp	s22, s13, [x1, #-256]
  70:	662d2067 	.inst	0x662d2067 ; undefined
  74:	6e797361 	uabdl2	v1.4s, v27.8h, v25.8h
  78:	6f726863 	umlsl2	v3.4s, v3.8h, v2.h[7]
  7c:	73756f6e 	.inst	0x73756f6e ; undefined
  80:	776e752d 	.inst	0x776e752d ; undefined
  84:	2d646e69 	ldp	s9, s27, [x19, #-224]
  88:	6c626174 	ldnp	d20, d24, [x11, #-480]
  8c:	2d207365 	stp	s5, s28, [x27, #-256]
  90:	61747366 	.inst	0x61747366 ; undefined
  94:	702d6b63 	adr	x3, 5ae03 <__bss_end__+0x49de3>
  98:	65746f72 	fnmls	z18.h, p3/m, z27.h, z20.h
  9c:	726f7463 	.inst	0x726f7463 ; undefined
  a0:	7274732d 	.inst	0x7274732d ; undefined
  a4:	20676e6f 	.inst	0x20676e6f ; undefined
  a8:	7473662d 	.inst	0x7473662d ; undefined
  ac:	2d6b6361 	ldp	s1, s24, [x27, #-168]
  b0:	73616c63 	.inst	0x73616c63 ; undefined
  b4:	72702d68 	.inst	0x72702d68 ; undefined
  b8:	6365746f 	.inst	0x6365746f ; undefined
  bc:	6e6f6974 	.inst	0x6e6f6974 ; undefined
  c0:	67726100 	.inst	0x67726100 ; undefined
  c4:	地址 0x00000000000000c4 越界。

