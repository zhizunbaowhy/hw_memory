
simpleGlobal.out：     文件格式 elf64-littleaarch64


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
 5b4:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf708>
 5b8:	f947ce11 	ldr	x17, [x16, #3992]
 5bc:	913e6210 	add	x16, x16, #0xf98
 5c0:	d61f0220 	br	x17
 5c4:	d503201f 	nop
 5c8:	d503201f 	nop
 5cc:	d503201f 	nop

00000000000005d0 <__cxa_finalize@plt>:
 5d0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf708>
 5d4:	f947d211 	ldr	x17, [x16, #4000]
 5d8:	913e8210 	add	x16, x16, #0xfa0
 5dc:	d61f0220 	br	x17

00000000000005e0 <__libc_start_main@plt>:
 5e0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf708>
 5e4:	f947d611 	ldr	x17, [x16, #4008]
 5e8:	913ea210 	add	x16, x16, #0xfa8
 5ec:	d61f0220 	br	x17

00000000000005f0 <__gmon_start__@plt>:
 5f0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf708>
 5f4:	f947da11 	ldr	x17, [x16, #4016]
 5f8:	913ec210 	add	x16, x16, #0xfb0
 5fc:	d61f0220 	br	x17

0000000000000600 <abort@plt>:
 600:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf708>
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
 628:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf708>
 62c:	f947f800 	ldr	x0, [x0, #4080]
 630:	90000083 	adrp	x3, 10000 <__FRAME_END__+0xf708>
 634:	f947f463 	ldr	x3, [x3, #4072]
 638:	90000084 	adrp	x4, 10000 <__FRAME_END__+0xf708>
 63c:	f947e484 	ldr	x4, [x4, #4040]
 640:	97ffffe8 	bl	5e0 <__libc_start_main@plt>
 644:	97ffffef 	bl	600 <abort@plt>

0000000000000648 <call_weak_fn>:
 648:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf708>
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
 678:	90000081 	adrp	x1, 10000 <__FRAME_END__+0xf708>
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
 6b8:	90000082 	adrp	x2, 10000 <__FRAME_END__+0xf708>
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
 6e8:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf708>
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
 71c:	d10083ff 	sub	sp, sp, #0x20
 720:	b9000fe0 	str	w0, [sp, #12]
 724:	f90003e1 	str	x1, [sp]
 728:	b9001bff 	str	wzr, [sp, #24]
 72c:	52800060 	mov	w0, #0x3                   	// #3
 730:	b9001fe0 	str	w0, [sp, #28]
 734:	52800000 	mov	w0, #0x0                   	// #0
 738:	910083ff 	add	sp, sp, #0x20
 73c:	d65f03c0 	ret

0000000000000740 <__libc_csu_init>:
 740:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 744:	910003fd 	mov	x29, sp
 748:	a90153f3 	stp	x19, x20, [sp, #16]
 74c:	90000094 	adrp	x20, 10000 <__FRAME_END__+0xf708>
 750:	91364294 	add	x20, x20, #0xd90
 754:	a9025bf5 	stp	x21, x22, [sp, #32]
 758:	90000095 	adrp	x21, 10000 <__FRAME_END__+0xf708>
 75c:	913622b5 	add	x21, x21, #0xd88
 760:	cb150294 	sub	x20, x20, x21
 764:	2a0003f6 	mov	w22, w0
 768:	a90363f7 	stp	x23, x24, [sp, #48]
 76c:	aa0103f7 	mov	x23, x1
 770:	aa0203f8 	mov	x24, x2
 774:	97ffff89 	bl	598 <_init>
 778:	eb940fff 	cmp	xzr, x20, asr #3
 77c:	54000160 	b.eq	7a8 <__libc_csu_init+0x68>  // b.none
 780:	9343fe94 	asr	x20, x20, #3
 784:	d2800013 	mov	x19, #0x0                   	// #0
 788:	f8737aa3 	ldr	x3, [x21, x19, lsl #3]
 78c:	aa1803e2 	mov	x2, x24
 790:	91000673 	add	x19, x19, #0x1
 794:	aa1703e1 	mov	x1, x23
 798:	2a1603e0 	mov	w0, w22
 79c:	d63f0060 	blr	x3
 7a0:	eb13029f 	cmp	x20, x19
 7a4:	54ffff21 	b.ne	788 <__libc_csu_init+0x48>  // b.any
 7a8:	a94153f3 	ldp	x19, x20, [sp, #16]
 7ac:	a9425bf5 	ldp	x21, x22, [sp, #32]
 7b0:	a94363f7 	ldp	x23, x24, [sp, #48]
 7b4:	a8c47bfd 	ldp	x29, x30, [sp], #64
 7b8:	d65f03c0 	ret
 7bc:	d503201f 	nop

00000000000007c0 <__libc_csu_fini>:
 7c0:	d65f03c0 	ret

Disassembly of section .fini:

00000000000007c4 <_fini>:
 7c4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 7c8:	910003fd 	mov	x29, sp
 7cc:	a8c17bfd 	ldp	x29, x30, [sp], #16
 7d0:	d65f03c0 	ret
