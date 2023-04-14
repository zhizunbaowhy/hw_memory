
lbm_part.out：     文件格式 elf64-littleaarch64


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
 604:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf4a0>
 608:	f947c611 	ldr	x17, [x16, #3976]
 60c:	913e2210 	add	x16, x16, #0xf88
 610:	d61f0220 	br	x17
 614:	d503201f 	nop
 618:	d503201f 	nop
 61c:	d503201f 	nop

0000000000000620 <__cxa_finalize@plt>:
 620:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf4a0>
 624:	f947ca11 	ldr	x17, [x16, #3984]
 628:	913e4210 	add	x16, x16, #0xf90
 62c:	d61f0220 	br	x17

0000000000000630 <__libc_start_main@plt>:
 630:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf4a0>
 634:	f947ce11 	ldr	x17, [x16, #3992]
 638:	913e6210 	add	x16, x16, #0xf98
 63c:	d61f0220 	br	x17

0000000000000640 <__gmon_start__@plt>:
 640:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf4a0>
 644:	f947d211 	ldr	x17, [x16, #4000]
 648:	913e8210 	add	x16, x16, #0xfa0
 64c:	d61f0220 	br	x17

0000000000000650 <abort@plt>:
 650:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf4a0>
 654:	f947d611 	ldr	x17, [x16, #4008]
 658:	913ea210 	add	x16, x16, #0xfa8
 65c:	d61f0220 	br	x17

0000000000000660 <printf@plt>:
 660:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf4a0>
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
 688:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4a0>
 68c:	f947f400 	ldr	x0, [x0, #4072]
 690:	90000083 	adrp	x3, 10000 <__FRAME_END__+0xf4a0>
 694:	f947f063 	ldr	x3, [x3, #4064]
 698:	90000084 	adrp	x4, 10000 <__FRAME_END__+0xf4a0>
 69c:	f947e084 	ldr	x4, [x4, #4032]
 6a0:	97ffffe4 	bl	630 <__libc_start_main@plt>
 6a4:	97ffffeb 	bl	650 <abort@plt>

00000000000006a8 <call_weak_fn>:
 6a8:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4a0>
 6ac:	f947ec00 	ldr	x0, [x0, #4056]
 6b0:	b4000040 	cbz	x0, 6b8 <call_weak_fn+0x10>
 6b4:	17ffffe3 	b	640 <__gmon_start__@plt>
 6b8:	d65f03c0 	ret
 6bc:	d503201f 	nop

00000000000006c0 <deregister_tm_clones>:
 6c0:	b0000080 	adrp	x0, 11000 <__data_start>
 6c4:	91004000 	add	x0, x0, #0x10
 6c8:	b0000081 	adrp	x1, 11000 <__data_start>
 6cc:	91004021 	add	x1, x1, #0x10
 6d0:	eb00003f 	cmp	x1, x0
 6d4:	540000c0 	b.eq	6ec <deregister_tm_clones+0x2c>  // b.none
 6d8:	90000081 	adrp	x1, 10000 <__FRAME_END__+0xf4a0>
 6dc:	f947e421 	ldr	x1, [x1, #4040]
 6e0:	b4000061 	cbz	x1, 6ec <deregister_tm_clones+0x2c>
 6e4:	aa0103f0 	mov	x16, x1
 6e8:	d61f0200 	br	x16
 6ec:	d65f03c0 	ret

00000000000006f0 <register_tm_clones>:
 6f0:	b0000080 	adrp	x0, 11000 <__data_start>
 6f4:	91004000 	add	x0, x0, #0x10
 6f8:	b0000081 	adrp	x1, 11000 <__data_start>
 6fc:	91004021 	add	x1, x1, #0x10
 700:	cb000021 	sub	x1, x1, x0
 704:	d37ffc22 	lsr	x2, x1, #63
 708:	8b810c41 	add	x1, x2, x1, asr #3
 70c:	eb8107ff 	cmp	xzr, x1, asr #1
 710:	9341fc21 	asr	x1, x1, #1
 714:	540000c0 	b.eq	72c <register_tm_clones+0x3c>  // b.none
 718:	90000082 	adrp	x2, 10000 <__FRAME_END__+0xf4a0>
 71c:	f947f842 	ldr	x2, [x2, #4080]
 720:	b4000062 	cbz	x2, 72c <register_tm_clones+0x3c>
 724:	aa0203f0 	mov	x16, x2
 728:	d61f0200 	br	x16
 72c:	d65f03c0 	ret

0000000000000730 <__do_global_dtors_aux>:
 730:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 734:	910003fd 	mov	x29, sp
 738:	f9000bf3 	str	x19, [sp, #16]
 73c:	b0000093 	adrp	x19, 11000 <__data_start>
 740:	39404260 	ldrb	w0, [x19, #16]
 744:	35000140 	cbnz	w0, 76c <__do_global_dtors_aux+0x3c>
 748:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4a0>
 74c:	f947e800 	ldr	x0, [x0, #4048]
 750:	b4000080 	cbz	x0, 760 <__do_global_dtors_aux+0x30>
 754:	b0000080 	adrp	x0, 11000 <__data_start>
 758:	f9400400 	ldr	x0, [x0, #8]
 75c:	97ffffb1 	bl	620 <__cxa_finalize@plt>
 760:	97ffffd8 	bl	6c0 <deregister_tm_clones>
 764:	52800020 	mov	w0, #0x1                   	// #1
 768:	39004260 	strb	w0, [x19, #16]
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
 78c:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4a0>
 790:	f947fc00 	ldr	x0, [x0, #4088]
 794:	1e6e1000 	fmov	d0, #1.000000000000000000e+00
 798:	fd000000 	str	d0, [x0]
 79c:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4a0>
 7a0:	f947fc00 	ldr	x0, [x0, #4088]
 7a4:	f900041f 	str	xzr, [x0, #8]
 7a8:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4a0>
 7ac:	f947fc00 	ldr	x0, [x0, #4088]
 7b0:	9400000b 	bl	7dc <initializerandommesh>
 7b4:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf4a0>
 7b8:	f947fc00 	ldr	x0, [x0, #4088]
 7bc:	9143e000 	add	x0, x0, #0xf8, lsl #12
 7c0:	fd6f4000 	ldr	d0, [x0, #24192]
 7c4:	90000000 	adrp	x0, 0 <_init-0x5e8>
 7c8:	91270000 	add	x0, x0, #0x9c0
 7cc:	97ffffa5 	bl	660 <printf@plt>
 7d0:	52800000 	mov	w0, #0x0                   	// #0
 7d4:	a8c27bfd 	ldp	x29, x30, [sp], #32
 7d8:	d65f03c0 	ret

00000000000007dc <initializerandommesh>:
 7dc:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
 7e0:	910003fd 	mov	x29, sp
 7e4:	f9000fe0 	str	x0, [sp, #24]
 7e8:	b9002fff 	str	wzr, [sp, #44]
 7ec:	14000019 	b	850 <initializerandommesh+0x74>
 7f0:	b9002bff 	str	wzr, [sp, #40]
 7f4:	14000011 	b	838 <initializerandommesh+0x5c>
 7f8:	b90027ff 	str	wzr, [sp, #36]
 7fc:	14000009 	b	820 <initializerandommesh+0x44>
 800:	b9402fe3 	ldr	w3, [sp, #44]
 804:	b9402be2 	ldr	w2, [sp, #40]
 808:	b94027e1 	ldr	w1, [sp, #36]
 80c:	f9400fe0 	ldr	x0, [sp, #24]
 810:	94000027 	bl	8ac <SET_FLAG>
 814:	b94027e0 	ldr	w0, [sp, #36]
 818:	11000400 	add	w0, w0, #0x1
 81c:	b90027e0 	str	w0, [sp, #36]
 820:	b94027e0 	ldr	w0, [sp, #36]
 824:	71018c1f 	cmp	w0, #0x63
 828:	54fffecd 	b.le	800 <initializerandommesh+0x24>
 82c:	b9402be0 	ldr	w0, [sp, #40]
 830:	11000400 	add	w0, w0, #0x1
 834:	b9002be0 	str	w0, [sp, #40]
 838:	b9402be0 	ldr	w0, [sp, #40]
 83c:	71018c1f 	cmp	w0, #0x63
 840:	54fffdcd 	b.le	7f8 <initializerandommesh+0x1c>
 844:	b9402fe0 	ldr	w0, [sp, #44]
 848:	11000400 	add	w0, w0, #0x1
 84c:	b9002fe0 	str	w0, [sp, #44]
 850:	b9402fe0 	ldr	w0, [sp, #44]
 854:	7102041f 	cmp	w0, #0x81
 858:	54fffccd 	b.le	7f0 <initializerandommesh+0x14>
 85c:	d503201f 	nop
 860:	d503201f 	nop
 864:	a8c37bfd 	ldp	x29, x30, [sp], #48
 868:	d65f03c0 	ret

000000000000086c <swapMesh>:
 86c:	d10083ff 	sub	sp, sp, #0x20
 870:	f90007e0 	str	x0, [sp, #8]
 874:	f90003e1 	str	x1, [sp]
 878:	f94007e0 	ldr	x0, [sp, #8]
 87c:	f9400000 	ldr	x0, [x0]
 880:	f9000fe0 	str	x0, [sp, #24]
 884:	f94003e0 	ldr	x0, [sp]
 888:	f9400001 	ldr	x1, [x0]
 88c:	f94007e0 	ldr	x0, [sp, #8]
 890:	f9000001 	str	x1, [x0]
 894:	f94003e0 	ldr	x0, [sp]
 898:	f9400fe1 	ldr	x1, [sp, #24]
 89c:	f9000001 	str	x1, [x0]
 8a0:	d503201f 	nop
 8a4:	910083ff 	add	sp, sp, #0x20
 8a8:	d65f03c0 	ret

00000000000008ac <SET_FLAG>:
 8ac:	d100c3ff 	sub	sp, sp, #0x30
 8b0:	f9000fe0 	str	x0, [sp, #24]
 8b4:	b90017e1 	str	w1, [sp, #20]
 8b8:	b90013e2 	str	w2, [sp, #16]
 8bc:	b9000fe3 	str	w3, [sp, #12]
 8c0:	b9400fe1 	ldr	w1, [sp, #12]
 8c4:	5284e200 	mov	w0, #0x2710                	// #10000
 8c8:	1b007c21 	mul	w1, w1, w0
 8cc:	b94017e2 	ldr	w2, [sp, #20]
 8d0:	52800c80 	mov	w0, #0x64                  	// #100
 8d4:	1b007c40 	mul	w0, w2, w0
 8d8:	0b000020 	add	w0, w1, w0
 8dc:	11019000 	add	w0, w0, #0x64
 8e0:	b9002fe0 	str	w0, [sp, #44]
 8e4:	b94017e1 	ldr	w1, [sp, #20]
 8e8:	b94013e0 	ldr	w0, [sp, #16]
 8ec:	0b000021 	add	w1, w1, w0
 8f0:	b9400fe0 	ldr	w0, [sp, #12]
 8f4:	0b000021 	add	w1, w1, w0
 8f8:	b9802fe0 	ldrsw	x0, [sp, #44]
 8fc:	d37df000 	lsl	x0, x0, #3
 900:	f9400fe2 	ldr	x2, [sp, #24]
 904:	8b000040 	add	x0, x2, x0
 908:	1e620020 	scvtf	d0, w1
 90c:	fd000000 	str	d0, [x0]
 910:	d503201f 	nop
 914:	9100c3ff 	add	sp, sp, #0x30
 918:	d65f03c0 	ret
 91c:	d503201f 	nop

0000000000000920 <__libc_csu_init>:
 920:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 924:	910003fd 	mov	x29, sp
 928:	a90153f3 	stp	x19, x20, [sp, #16]
 92c:	90000094 	adrp	x20, 10000 <__FRAME_END__+0xf4a0>
 930:	91360294 	add	x20, x20, #0xd80
 934:	a9025bf5 	stp	x21, x22, [sp, #32]
 938:	90000095 	adrp	x21, 10000 <__FRAME_END__+0xf4a0>
 93c:	9135e2b5 	add	x21, x21, #0xd78
 940:	cb150294 	sub	x20, x20, x21
 944:	2a0003f6 	mov	w22, w0
 948:	a90363f7 	stp	x23, x24, [sp, #48]
 94c:	aa0103f7 	mov	x23, x1
 950:	aa0203f8 	mov	x24, x2
 954:	97ffff25 	bl	5e8 <_init>
 958:	eb940fff 	cmp	xzr, x20, asr #3
 95c:	54000160 	b.eq	988 <__libc_csu_init+0x68>  // b.none
 960:	9343fe94 	asr	x20, x20, #3
 964:	d2800013 	mov	x19, #0x0                   	// #0
 968:	f8737aa3 	ldr	x3, [x21, x19, lsl #3]
 96c:	aa1803e2 	mov	x2, x24
 970:	91000673 	add	x19, x19, #0x1
 974:	aa1703e1 	mov	x1, x23
 978:	2a1603e0 	mov	w0, w22
 97c:	d63f0060 	blr	x3
 980:	eb13029f 	cmp	x20, x19
 984:	54ffff21 	b.ne	968 <__libc_csu_init+0x48>  // b.any
 988:	a94153f3 	ldp	x19, x20, [sp, #16]
 98c:	a9425bf5 	ldp	x21, x22, [sp, #32]
 990:	a94363f7 	ldp	x23, x24, [sp, #48]
 994:	a8c47bfd 	ldp	x29, x30, [sp], #64
 998:	d65f03c0 	ret
 99c:	d503201f 	nop

00000000000009a0 <__libc_csu_fini>:
 9a0:	d65f03c0 	ret

Disassembly of section .fini:

00000000000009a4 <_fini>:
 9a4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 9a8:	910003fd 	mov	x29, sp
 9ac:	a8c17bfd 	ldp	x29, x30, [sp], #16
 9b0:	d65f03c0 	ret
