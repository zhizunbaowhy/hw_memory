
main.out：     文件格式 elf64-littleaarch64


Disassembly of section .init:

00000000000005e8 <_init>:
 5e8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 5ec:	910003fd 	mov	x29, sp
 5f0:	9400002e 	bl	6a8 <call_weak_fn>
 5f4:	a8c17bfd 	ldp	x29, x30, [sp], #16
 5f8:	d65f03c0 	ret

Disassembly of section .plt:

0000000000000600 <.plt>:
 600:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 604:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf4b0>
 608:	f947c611 	ldr	x17, [x16, #3976]
 60c:	913e2210 	add	x16, x16, #0xf88
 610:	d61f0220 	br	x17
 614:	d503201f 	nop
 618:	d503201f 	nop
 61c:	d503201f 	nop

0000000000000620 <__cxa_finalize@plt>:
 620:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf4b0>
 624:	f947ca11 	ldr	x17, [x16, #3984]
 628:	913e4210 	add	x16, x16, #0xf90
 62c:	d61f0220 	br	x17

0000000000000630 <__libc_start_main@plt>:
 630:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf4b0>
 634:	f947ce11 	ldr	x17, [x16, #3992]
 638:	913e6210 	add	x16, x16, #0xf98
 63c:	d61f0220 	br	x17

0000000000000640 <__gmon_start__@plt>:
 640:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf4b0>
 644:	f947d211 	ldr	x17, [x16, #4000]
 648:	913e8210 	add	x16, x16, #0xfa0
 64c:	d61f0220 	br	x17

0000000000000650 <abort@plt>:
 650:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf4b0>
 654:	f947d611 	ldr	x17, [x16, #4008]
 658:	913ea210 	add	x16, x16, #0xfa8
 65c:	d61f0220 	br	x17

0000000000000660 <printf@plt>:
 660:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf4b0>
 664:	f947da11 	ldr	x17, [x16, #4016]
 668:	913ec210 	add	x16, x16, #0xfb0
 66c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000000670 <_start>:
 670:	d280001d 	mov	x29, #0x0                   	// #0
 674:	d280001e 	mov	x30, #0x0                   	// #0
 678:	aa0003e5 	mov	x5, x0
 67c:	f94003e1 	ldr	x1, [sp]
 680:	910023e2 	add	x2, sp, #0x8
 684:	910003e6 	mov	x6, sp
 688:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4b0>
 68c:	f947f800 	ldr	x0, [x0, #4080]
 690:	90000083 	adrp	x3, 10000 <__FRAME_END__+0xf4b0>
 694:	f947f063 	ldr	x3, [x3, #4064]
 698:	90000084 	adrp	x4, 10000 <__FRAME_END__+0xf4b0>
 69c:	f947e084 	ldr	x4, [x4, #4032]
 6a0:	97ffffe4 	bl	630 <__libc_start_main@plt>
 6a4:	97ffffeb 	bl	650 <abort@plt>

00000000000006a8 <call_weak_fn>:
 6a8:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4b0>
 6ac:	f947ec00 	ldr	x0, [x0, #4056]
 6b0:	b4000040 	cbz	x0, 6b8 <call_weak_fn+0x10>
 6b4:	17ffffe3 	b	640 <__gmon_start__@plt>
 6b8:	d65f03c0 	ret
 6bc:	d503201f 	nop

00000000000006c0 <deregister_tm_clones>:
 6c0:	b0000080 	adrp	x0, 11000 <__data_start>
 6c4:	91006000 	add	x0, x0, #0x18
 6c8:	b0000081 	adrp	x1, 11000 <__data_start>
 6cc:	91006021 	add	x1, x1, #0x18
 6d0:	eb00003f 	cmp	x1, x0
 6d4:	540000c0 	b.eq	6ec <deregister_tm_clones+0x2c>  // b.none
 6d8:	90000081 	adrp	x1, 10000 <__FRAME_END__+0xf4b0>
 6dc:	f947e421 	ldr	x1, [x1, #4040]
 6e0:	b4000061 	cbz	x1, 6ec <deregister_tm_clones+0x2c>
 6e4:	aa0103f0 	mov	x16, x1
 6e8:	d61f0200 	br	x16
 6ec:	d65f03c0 	ret

00000000000006f0 <register_tm_clones>:
 6f0:	b0000080 	adrp	x0, 11000 <__data_start>
 6f4:	91006000 	add	x0, x0, #0x18
 6f8:	b0000081 	adrp	x1, 11000 <__data_start>
 6fc:	91006021 	add	x1, x1, #0x18
 700:	cb000021 	sub	x1, x1, x0
 704:	d37ffc22 	lsr	x2, x1, #63
 708:	8b810c41 	add	x1, x2, x1, asr #3
 70c:	eb8107ff 	cmp	xzr, x1, asr #1
 710:	9341fc21 	asr	x1, x1, #1
 714:	540000c0 	b.eq	72c <register_tm_clones+0x3c>  // b.none
 718:	90000082 	adrp	x2, 10000 <__FRAME_END__+0xf4b0>
 71c:	f947fc42 	ldr	x2, [x2, #4088]
 720:	b4000062 	cbz	x2, 72c <register_tm_clones+0x3c>
 724:	aa0203f0 	mov	x16, x2
 728:	d61f0200 	br	x16
 72c:	d65f03c0 	ret

0000000000000730 <__do_global_dtors_aux>:
 730:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 734:	910003fd 	mov	x29, sp
 738:	f9000bf3 	str	x19, [sp, #16]
 73c:	b0000093 	adrp	x19, 11000 <__data_start>
 740:	39405260 	ldrb	w0, [x19, #20]
 744:	35000140 	cbnz	w0, 76c <__do_global_dtors_aux+0x3c>
 748:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4b0>
 74c:	f947e800 	ldr	x0, [x0, #4048]
 750:	b4000080 	cbz	x0, 760 <__do_global_dtors_aux+0x30>
 754:	b0000080 	adrp	x0, 11000 <__data_start>
 758:	f9400400 	ldr	x0, [x0, #8]
 75c:	97ffffb1 	bl	620 <__cxa_finalize@plt>
 760:	97ffffd8 	bl	6c0 <deregister_tm_clones>
 764:	52800020 	mov	w0, #0x1                   	// #1
 768:	39005260 	strb	w0, [x19, #20]
 76c:	f9400bf3 	ldr	x19, [sp, #16]
 770:	a8c27bfd 	ldp	x29, x30, [sp], #32
 774:	d65f03c0 	ret

0000000000000778 <frame_dummy>:
 778:	17ffffde 	b	6f0 <register_tm_clones>

000000000000077c <main>:
 77c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 780:	910003fd 	mov	x29, sp
 784:	b9001fe0 	str	w0, [sp, #28]
 788:	f9000be1 	str	x1, [sp, #16]
 78c:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4b0>
 790:	f947f400 	ldr	x0, [x0, #4072]
 794:	52800021 	mov	w1, #0x1                   	// #1
 798:	b9000001 	str	w1, [x0]
 79c:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4b0>
 7a0:	f947f400 	ldr	x0, [x0, #4072]
 7a4:	b9400000 	ldr	w0, [x0]
 7a8:	2a0003e1 	mov	w1, w0
 7ac:	90000000 	adrp	x0, 0 <_init-0x5e8>
 7b0:	9126c000 	add	x0, x0, #0x9b0
 7b4:	97ffffab 	bl	660 <printf@plt>
 7b8:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4b0>
 7bc:	f947f400 	ldr	x0, [x0, #4072]
 7c0:	b9400000 	ldr	w0, [x0]
 7c4:	94000038 	bl	8a4 <Duo>
 7c8:	2a0003e1 	mov	w1, w0
 7cc:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4b0>
 7d0:	f947f400 	ldr	x0, [x0, #4072]
 7d4:	b9000001 	str	w1, [x0]
 7d8:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4b0>
 7dc:	f947f400 	ldr	x0, [x0, #4072]
 7e0:	b9400000 	ldr	w0, [x0]
 7e4:	2a0003e1 	mov	w1, w0
 7e8:	90000000 	adrp	x0, 0 <_init-0x5e8>
 7ec:	9126c000 	add	x0, x0, #0x9b0
 7f0:	97ffff9c 	bl	660 <printf@plt>
 7f4:	b0000080 	adrp	x0, 11000 <__data_start>
 7f8:	91004000 	add	x0, x0, #0x10
 7fc:	52800041 	mov	w1, #0x2                   	// #2
 800:	b9000001 	str	w1, [x0]
 804:	b0000080 	adrp	x0, 11000 <__data_start>
 808:	91004000 	add	x0, x0, #0x10
 80c:	b9400000 	ldr	w0, [x0]
 810:	2a0003e1 	mov	w1, w0
 814:	90000000 	adrp	x0, 0 <_init-0x5e8>
 818:	91270000 	add	x0, x0, #0x9c0
 81c:	97ffff91 	bl	660 <printf@plt>
 820:	b0000080 	adrp	x0, 11000 <__data_start>
 824:	91004000 	add	x0, x0, #0x10
 828:	b9400000 	ldr	w0, [x0]
 82c:	94000026 	bl	8c4 <square>
 830:	2a0003e1 	mov	w1, w0
 834:	b0000080 	adrp	x0, 11000 <__data_start>
 838:	91004000 	add	x0, x0, #0x10
 83c:	b9000001 	str	w1, [x0]
 840:	b0000080 	adrp	x0, 11000 <__data_start>
 844:	91004000 	add	x0, x0, #0x10
 848:	b9400000 	ldr	w0, [x0]
 84c:	2a0003e1 	mov	w1, w0
 850:	90000000 	adrp	x0, 0 <_init-0x5e8>
 854:	91270000 	add	x0, x0, #0x9c0
 858:	97ffff82 	bl	660 <printf@plt>
 85c:	b0000080 	adrp	x0, 11000 <__data_start>
 860:	91004000 	add	x0, x0, #0x10
 864:	b9400000 	ldr	w0, [x0]
 868:	9400001f 	bl	8e4 <cube>
 86c:	2a0003e1 	mov	w1, w0
 870:	b0000080 	adrp	x0, 11000 <__data_start>
 874:	91004000 	add	x0, x0, #0x10
 878:	b9000001 	str	w1, [x0]
 87c:	b0000080 	adrp	x0, 11000 <__data_start>
 880:	91004000 	add	x0, x0, #0x10
 884:	b9400000 	ldr	w0, [x0]
 888:	2a0003e1 	mov	w1, w0
 88c:	90000000 	adrp	x0, 0 <_init-0x5e8>
 890:	91270000 	add	x0, x0, #0x9c0
 894:	97ffff73 	bl	660 <printf@plt>
 898:	52800000 	mov	w0, #0x0                   	// #0
 89c:	a8c27bfd 	ldp	x29, x30, [sp], #32
 8a0:	d65f03c0 	ret

00000000000008a4 <Duo>:
 8a4:	d10043ff 	sub	sp, sp, #0x10
 8a8:	b9000fe0 	str	w0, [sp, #12]
 8ac:	b9400fe0 	ldr	w0, [sp, #12]
 8b0:	531f7800 	lsl	w0, w0, #1
 8b4:	b9000fe0 	str	w0, [sp, #12]
 8b8:	b9400fe0 	ldr	w0, [sp, #12]
 8bc:	910043ff 	add	sp, sp, #0x10
 8c0:	d65f03c0 	ret

00000000000008c4 <square>:
 8c4:	d10043ff 	sub	sp, sp, #0x10
 8c8:	b9000fe0 	str	w0, [sp, #12]
 8cc:	b9400fe0 	ldr	w0, [sp, #12]
 8d0:	1b007c00 	mul	w0, w0, w0
 8d4:	b9000fe0 	str	w0, [sp, #12]
 8d8:	b9400fe0 	ldr	w0, [sp, #12]
 8dc:	910043ff 	add	sp, sp, #0x10
 8e0:	d65f03c0 	ret

00000000000008e4 <cube>:
 8e4:	d10043ff 	sub	sp, sp, #0x10
 8e8:	b9000fe0 	str	w0, [sp, #12]
 8ec:	b9400fe0 	ldr	w0, [sp, #12]
 8f0:	1b007c00 	mul	w0, w0, w0
 8f4:	b9400fe1 	ldr	w1, [sp, #12]
 8f8:	1b007c20 	mul	w0, w1, w0
 8fc:	b9000fe0 	str	w0, [sp, #12]
 900:	b9400fe0 	ldr	w0, [sp, #12]
 904:	910043ff 	add	sp, sp, #0x10
 908:	d65f03c0 	ret
 90c:	d503201f 	nop

0000000000000910 <__libc_csu_init>:
 910:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 914:	910003fd 	mov	x29, sp
 918:	a90153f3 	stp	x19, x20, [sp, #16]
 91c:	90000094 	adrp	x20, 10000 <__FRAME_END__+0xf4b0>
 920:	91360294 	add	x20, x20, #0xd80
 924:	a9025bf5 	stp	x21, x22, [sp, #32]
 928:	90000095 	adrp	x21, 10000 <__FRAME_END__+0xf4b0>
 92c:	9135e2b5 	add	x21, x21, #0xd78
 930:	cb150294 	sub	x20, x20, x21
 934:	2a0003f6 	mov	w22, w0
 938:	a90363f7 	stp	x23, x24, [sp, #48]
 93c:	aa0103f7 	mov	x23, x1
 940:	aa0203f8 	mov	x24, x2
 944:	97ffff29 	bl	5e8 <_init>
 948:	eb940fff 	cmp	xzr, x20, asr #3
 94c:	54000160 	b.eq	978 <__libc_csu_init+0x68>  // b.none
 950:	9343fe94 	asr	x20, x20, #3
 954:	d2800013 	mov	x19, #0x0                   	// #0
 958:	f8737aa3 	ldr	x3, [x21, x19, lsl #3]
 95c:	aa1803e2 	mov	x2, x24
 960:	91000673 	add	x19, x19, #0x1
 964:	aa1703e1 	mov	x1, x23
 968:	2a1603e0 	mov	w0, w22
 96c:	d63f0060 	blr	x3
 970:	eb13029f 	cmp	x20, x19
 974:	54ffff21 	b.ne	958 <__libc_csu_init+0x48>  // b.any
 978:	a94153f3 	ldp	x19, x20, [sp, #16]
 97c:	a9425bf5 	ldp	x21, x22, [sp, #32]
 980:	a94363f7 	ldp	x23, x24, [sp, #48]
 984:	a8c47bfd 	ldp	x29, x30, [sp], #64
 988:	d65f03c0 	ret
 98c:	d503201f 	nop

0000000000000990 <__libc_csu_fini>:
 990:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000994 <_fini>:
 994:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 998:	910003fd 	mov	x29, sp
 99c:	a8c17bfd 	ldp	x29, x30, [sp], #16
 9a0:	d65f03c0 	ret
