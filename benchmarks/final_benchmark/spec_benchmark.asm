
spec_bench.out：     文件格式 elf64-littleaarch64


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
  400644:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1da18>
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
  400744:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1da18>
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
  400778:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1da18>
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
  4007b4:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1da18>
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
  400870:	9400025c 	bl	4011e0 <StoreData>
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
  400ef4:	b0000000 	adrp	x0, 401000 <ManiplateData1+0x80>
  400ef8:	910ba001 	add	x1, x0, #0x2e8
  400efc:	b0000000 	adrp	x0, 401000 <ManiplateData1+0x80>
  400f00:	910bc000 	add	x0, x0, #0x2f0
  400f04:	97fffddf 	bl	400680 <fopen@plt>
  400f08:	f9008fe0 	str	x0, [sp, #280]
  400f0c:	910063e0 	add	x0, sp, #0x18
  400f10:	f9408fe2 	ldr	x2, [sp, #280]
  400f14:	52801fe1 	mov	w1, #0xff                  	// #255
  400f18:	97fffdf6 	bl	4006f0 <fgets@plt>
  400f1c:	910063e0 	add	x0, sp, #0x18
  400f20:	aa0003e1 	mov	x1, x0
  400f24:	b0000000 	adrp	x0, 401000 <ManiplateData1+0x80>
  400f28:	910d6000 	add	x0, x0, #0x358
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
  400f5c:	94000009 	bl	400f80 <ManiplateData1>
  400f60:	b9001fe0 	str	w0, [sp, #28]
  400f64:	94000007 	bl	400f80 <ManiplateData1>
  400f68:	b9001fe0 	str	w0, [sp, #28]
  400f6c:	94000005 	bl	400f80 <ManiplateData1>
  400f70:	b9001fe0 	str	w0, [sp, #28]
  400f74:	52800000 	mov	w0, #0x0                   	// #0
  400f78:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400f7c:	d65f03c0 	ret

0000000000400f80 <ManiplateData1>:
  400f80:	d10043ff 	sub	sp, sp, #0x10
  400f84:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400f88:	9101a000 	add	x0, x0, #0x68
  400f8c:	52800281 	mov	w1, #0x14                  	// #20
  400f90:	b9019401 	str	w1, [x0, #404]
  400f94:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400f98:	9101a000 	add	x0, x0, #0x68
  400f9c:	b9419400 	ldr	w0, [x0, #404]
  400fa0:	b9000fe0 	str	w0, [sp, #12]
  400fa4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fa8:	9101a000 	add	x0, x0, #0x68
  400fac:	528003c1 	mov	w1, #0x1e                  	// #30
  400fb0:	b9019401 	str	w1, [x0, #404]
  400fb4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fb8:	9101a000 	add	x0, x0, #0x68
  400fbc:	b9419400 	ldr	w0, [x0, #404]
  400fc0:	b9000fe0 	str	w0, [sp, #12]
  400fc4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fc8:	9101a000 	add	x0, x0, #0x68
  400fcc:	b9419400 	ldr	w0, [x0, #404]
  400fd0:	b9000fe0 	str	w0, [sp, #12]
  400fd4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fd8:	9101a000 	add	x0, x0, #0x68
  400fdc:	52800641 	mov	w1, #0x32                  	// #50
  400fe0:	b9032401 	str	w1, [x0, #804]
  400fe4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fe8:	9101a000 	add	x0, x0, #0x68
  400fec:	52800781 	mov	w1, #0x3c                  	// #60
  400ff0:	b9032401 	str	w1, [x0, #804]
  400ff4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400ff8:	9101a000 	add	x0, x0, #0x68
  400ffc:	528008c1 	mov	w1, #0x46                  	// #70
  401000:	b9032401 	str	w1, [x0, #804]
  401004:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401008:	9101a000 	add	x0, x0, #0x68
  40100c:	b9432400 	ldr	w0, [x0, #804]
  401010:	b9000fe0 	str	w0, [sp, #12]
  401014:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401018:	9101a000 	add	x0, x0, #0x68
  40101c:	b9432400 	ldr	w0, [x0, #804]
  401020:	b9000fe0 	str	w0, [sp, #12]
  401024:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401028:	9101a000 	add	x0, x0, #0x68
  40102c:	52800c61 	mov	w1, #0x63                  	// #99
  401030:	b9032401 	str	w1, [x0, #804]
  401034:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401038:	9101a000 	add	x0, x0, #0x68
  40103c:	b9432400 	ldr	w0, [x0, #804]
  401040:	b9000fe0 	str	w0, [sp, #12]
  401044:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401048:	9101a000 	add	x0, x0, #0x68
  40104c:	52800501 	mov	w1, #0x28                  	// #40
  401050:	b9019801 	str	w1, [x0, #408]
  401054:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401058:	9101a000 	add	x0, x0, #0x68
  40105c:	b9419400 	ldr	w0, [x0, #404]
  401060:	b9000fe0 	str	w0, [sp, #12]
  401064:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401068:	9101a000 	add	x0, x0, #0x68
  40106c:	528003c1 	mov	w1, #0x1e                  	// #30
  401070:	b9019801 	str	w1, [x0, #408]
  401074:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401078:	9101a000 	add	x0, x0, #0x68
  40107c:	b9419800 	ldr	w0, [x0, #408]
  401080:	b9000fe0 	str	w0, [sp, #12]
  401084:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401088:	9101a000 	add	x0, x0, #0x68
  40108c:	b9419800 	ldr	w0, [x0, #408]
  401090:	b9000fe0 	str	w0, [sp, #12]
  401094:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401098:	9101a000 	add	x0, x0, #0x68
  40109c:	52800641 	mov	w1, #0x32                  	// #50
  4010a0:	b9019801 	str	w1, [x0, #408]
  4010a4:	52800000 	mov	w0, #0x0                   	// #0
  4010a8:	910043ff 	add	sp, sp, #0x10
  4010ac:	d65f03c0 	ret

00000000004010b0 <ManiplateData2>:
  4010b0:	d10043ff 	sub	sp, sp, #0x10
  4010b4:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010b8:	9132a000 	add	x0, x0, #0xca8
  4010bc:	52800281 	mov	w1, #0x14                  	// #20
  4010c0:	b9019401 	str	w1, [x0, #404]
  4010c4:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010c8:	9132a000 	add	x0, x0, #0xca8
  4010cc:	b9419400 	ldr	w0, [x0, #404]
  4010d0:	b9000fe0 	str	w0, [sp, #12]
  4010d4:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010d8:	9132a000 	add	x0, x0, #0xca8
  4010dc:	528003c1 	mov	w1, #0x1e                  	// #30
  4010e0:	b9019401 	str	w1, [x0, #404]
  4010e4:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010e8:	9132a000 	add	x0, x0, #0xca8
  4010ec:	b9419400 	ldr	w0, [x0, #404]
  4010f0:	b9000fe0 	str	w0, [sp, #12]
  4010f4:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010f8:	9132a000 	add	x0, x0, #0xca8
  4010fc:	b9419400 	ldr	w0, [x0, #404]
  401100:	b9000fe0 	str	w0, [sp, #12]
  401104:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401108:	9132a000 	add	x0, x0, #0xca8
  40110c:	52800641 	mov	w1, #0x32                  	// #50
  401110:	b9032401 	str	w1, [x0, #804]
  401114:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401118:	9132a000 	add	x0, x0, #0xca8
  40111c:	52800781 	mov	w1, #0x3c                  	// #60
  401120:	b9032401 	str	w1, [x0, #804]
  401124:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401128:	9132a000 	add	x0, x0, #0xca8
  40112c:	528008c1 	mov	w1, #0x46                  	// #70
  401130:	b9032401 	str	w1, [x0, #804]
  401134:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401138:	9132a000 	add	x0, x0, #0xca8
  40113c:	b9432400 	ldr	w0, [x0, #804]
  401140:	b9000fe0 	str	w0, [sp, #12]
  401144:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401148:	9132a000 	add	x0, x0, #0xca8
  40114c:	b9432400 	ldr	w0, [x0, #804]
  401150:	b9000fe0 	str	w0, [sp, #12]
  401154:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401158:	9132a000 	add	x0, x0, #0xca8
  40115c:	52800c61 	mov	w1, #0x63                  	// #99
  401160:	b9032401 	str	w1, [x0, #804]
  401164:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401168:	9132a000 	add	x0, x0, #0xca8
  40116c:	b9432400 	ldr	w0, [x0, #804]
  401170:	b9000fe0 	str	w0, [sp, #12]
  401174:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401178:	9132a000 	add	x0, x0, #0xca8
  40117c:	52800501 	mov	w1, #0x28                  	// #40
  401180:	b9019801 	str	w1, [x0, #408]
  401184:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401188:	9132a000 	add	x0, x0, #0xca8
  40118c:	b9419800 	ldr	w0, [x0, #408]
  401190:	b9000fe0 	str	w0, [sp, #12]
  401194:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401198:	9132a000 	add	x0, x0, #0xca8
  40119c:	528003c1 	mov	w1, #0x1e                  	// #30
  4011a0:	b9019801 	str	w1, [x0, #408]
  4011a4:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4011a8:	9132a000 	add	x0, x0, #0xca8
  4011ac:	b9419800 	ldr	w0, [x0, #408]
  4011b0:	b9000fe0 	str	w0, [sp, #12]
  4011b4:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4011b8:	9132a000 	add	x0, x0, #0xca8
  4011bc:	b9419800 	ldr	w0, [x0, #408]
  4011c0:	b9000fe0 	str	w0, [sp, #12]
  4011c4:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4011c8:	9132a000 	add	x0, x0, #0xca8
  4011cc:	52800641 	mov	w1, #0x32                  	// #50
  4011d0:	b9019801 	str	w1, [x0, #408]
  4011d4:	52800000 	mov	w0, #0x0                   	// #0
  4011d8:	910043ff 	add	sp, sp, #0x10
  4011dc:	d65f03c0 	ret

00000000004011e0 <StoreData>:
  4011e0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4011e4:	910003fd 	mov	x29, sp
  4011e8:	f9000bff 	str	xzr, [sp, #16]
  4011ec:	90000000 	adrp	x0, 401000 <ManiplateData1+0x80>
  4011f0:	910d8001 	add	x1, x0, #0x360
  4011f4:	90000000 	adrp	x0, 401000 <ManiplateData1+0x80>
  4011f8:	910bc000 	add	x0, x0, #0x2f0
  4011fc:	97fffd21 	bl	400680 <fopen@plt>
  401200:	f9000be0 	str	x0, [sp, #16]
  401204:	f9400be3 	ldr	x3, [sp, #16]
  401208:	d28000e2 	mov	x2, #0x7                   	// #7
  40120c:	d2800021 	mov	x1, #0x1                   	// #1
  401210:	90000000 	adrp	x0, 401000 <ManiplateData1+0x80>
  401214:	910da000 	add	x0, x0, #0x368
  401218:	97fffd2a 	bl	4006c0 <fwrite@plt>
  40121c:	b9001fff 	str	wzr, [sp, #28]
  401220:	1400001d 	b	401294 <StoreData+0xb4>
  401224:	b9001bff 	str	wzr, [sp, #24]
  401228:	14000015 	b	40127c <StoreData+0x9c>
  40122c:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401230:	9101a002 	add	x2, x0, #0x68
  401234:	b9801be3 	ldrsw	x3, [sp, #24]
  401238:	b9801fe1 	ldrsw	x1, [sp, #28]
  40123c:	aa0103e0 	mov	x0, x1
  401240:	d37ff800 	lsl	x0, x0, #1
  401244:	8b010000 	add	x0, x0, x1
  401248:	d37df000 	lsl	x0, x0, #3
  40124c:	8b010000 	add	x0, x0, x1
  401250:	d37ef400 	lsl	x0, x0, #2
  401254:	8b030000 	add	x0, x0, x3
  401258:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  40125c:	2a0003e2 	mov	w2, w0
  401260:	90000000 	adrp	x0, 401000 <ManiplateData1+0x80>
  401264:	910dc001 	add	x1, x0, #0x370
  401268:	f9400be0 	ldr	x0, [sp, #16]
  40126c:	97fffd1d 	bl	4006e0 <fprintf@plt>
  401270:	b9401be0 	ldr	w0, [sp, #24]
  401274:	11000400 	add	w0, w0, #0x1
  401278:	b9001be0 	str	w0, [sp, #24]
  40127c:	b9401be0 	ldr	w0, [sp, #24]
  401280:	71018c1f 	cmp	w0, #0x63
  401284:	54fffd4d 	b.le	40122c <StoreData+0x4c>
  401288:	b9401fe0 	ldr	w0, [sp, #28]
  40128c:	11000400 	add	w0, w0, #0x1
  401290:	b9001fe0 	str	w0, [sp, #28]
  401294:	b9401fe0 	ldr	w0, [sp, #28]
  401298:	71018c1f 	cmp	w0, #0x63
  40129c:	54fffc4d 	b.le	401224 <StoreData+0x44>
  4012a0:	f9400be3 	ldr	x3, [sp, #16]
  4012a4:	d2800042 	mov	x2, #0x2                   	// #2
  4012a8:	d2800021 	mov	x1, #0x1                   	// #1
  4012ac:	90000000 	adrp	x0, 401000 <ManiplateData1+0x80>
  4012b0:	910de000 	add	x0, x0, #0x378
  4012b4:	97fffd03 	bl	4006c0 <fwrite@plt>
  4012b8:	f9400be0 	ldr	x0, [sp, #16]
  4012bc:	97fffced 	bl	400670 <fclose@plt>
  4012c0:	52800000 	mov	w0, #0x0                   	// #0
  4012c4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  4012c8:	d65f03c0 	ret

Disassembly of section .fini:

00000000004012cc <_fini>:
  4012cc:	d503201f 	nop
  4012d0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  4012d4:	910003fd 	mov	x29, sp
  4012d8:	a8c17bfd 	ldp	x29, x30, [sp], #16
  4012dc:	d65f03c0 	ret
