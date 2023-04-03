
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
  400644:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1dd10>
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
  400744:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1dd10>
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
  400778:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1dd10>
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
  4007b4:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1dd10>
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
  400814:	940001b4 	bl	400ee4 <LoadData>
  400818:	b9002fff 	str	wzr, [sp, #44]
  40081c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400820:	9101a000 	add	x0, x0, #0x68
  400824:	91402000 	add	x0, x0, #0x8, lsl #12
  400828:	b95c3c00 	ldr	w0, [x0, #7228]
  40082c:	7100001f 	cmp	w0, #0x0
  400830:	54000061 	b.ne	40083c <main+0x38>  // b.any
  400834:	94000012 	bl	40087c <InitializeMesh_1>
  400838:	94000076 	bl	400a10 <InitializeMesh_2>
  40083c:	940000da 	bl	400ba4 <CompareMesh>
  400840:	b9002fe0 	str	w0, [sp, #44]
  400844:	b9402fe0 	ldr	w0, [sp, #44]
  400848:	7100001f 	cmp	w0, #0x0
  40084c:	54000100 	b.eq	40086c <main+0x68>  // b.none
  400850:	9400015e 	bl	400dc8 <SwapMesh>
  400854:	b9002fe0 	str	w0, [sp, #44]
  400858:	9400010e 	bl	400c90 <Mesh_dot>
  40085c:	2a0003e1 	mov	w1, w0
  400860:	b00001e0 	adrp	x0, 43d000 <ms3+0x9718>
  400864:	9114a000 	add	x0, x0, #0x528
  400868:	b9000001 	str	w1, [x0]
  40086c:	940001b9 	bl	400f50 <StoreData>
  400870:	52800000 	mov	w0, #0x0                   	// #0
  400874:	a8c37bfd 	ldp	x29, x30, [sp], #48
  400878:	d65f03c0 	ret

000000000040087c <InitializeMesh_1>:
  40087c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400880:	910003fd 	mov	x29, sp
  400884:	b9001bff 	str	wzr, [sp, #24]
  400888:	1400005b 	b	4009f4 <InitializeMesh_1+0x178>
  40088c:	b9001fff 	str	wzr, [sp, #28]
  400890:	14000053 	b	4009dc <InitializeMesh_1+0x160>
  400894:	97ffff7f 	bl	400690 <random@plt>
  400898:	2a0003e4 	mov	w4, w0
  40089c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4008a0:	9101a002 	add	x2, x0, #0x68
  4008a4:	b9801be3 	ldrsw	x3, [sp, #24]
  4008a8:	b9801fe1 	ldrsw	x1, [sp, #28]
  4008ac:	aa0103e0 	mov	x0, x1
  4008b0:	d37ff800 	lsl	x0, x0, #1
  4008b4:	8b010000 	add	x0, x0, x1
  4008b8:	d37df000 	lsl	x0, x0, #3
  4008bc:	8b010000 	add	x0, x0, x1
  4008c0:	d37ef400 	lsl	x0, x0, #2
  4008c4:	8b030000 	add	x0, x0, x3
  4008c8:	b8207844 	str	w4, [x2, x0, lsl #2]
  4008cc:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4008d0:	9101a002 	add	x2, x0, #0x68
  4008d4:	b9801be3 	ldrsw	x3, [sp, #24]
  4008d8:	b9801fe1 	ldrsw	x1, [sp, #28]
  4008dc:	aa0103e0 	mov	x0, x1
  4008e0:	d37ff800 	lsl	x0, x0, #1
  4008e4:	8b010000 	add	x0, x0, x1
  4008e8:	d37df000 	lsl	x0, x0, #3
  4008ec:	8b010000 	add	x0, x0, x1
  4008f0:	d37ef400 	lsl	x0, x0, #2
  4008f4:	8b030000 	add	x0, x0, x3
  4008f8:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  4008fc:	b90017e0 	str	w0, [sp, #20]
  400900:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400904:	9101a002 	add	x2, x0, #0x68
  400908:	b9801be3 	ldrsw	x3, [sp, #24]
  40090c:	b9801fe1 	ldrsw	x1, [sp, #28]
  400910:	aa0103e0 	mov	x0, x1
  400914:	d37ff800 	lsl	x0, x0, #1
  400918:	8b010000 	add	x0, x0, x1
  40091c:	d37df000 	lsl	x0, x0, #3
  400920:	8b010000 	add	x0, x0, x1
  400924:	d37ef400 	lsl	x0, x0, #2
  400928:	8b030000 	add	x0, x0, x3
  40092c:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400930:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  400934:	72a00020 	movk	w0, #0x1, lsl #16
  400938:	6b00003f 	cmp	w1, w0
  40093c:	540004ad 	b.le	4009d0 <InitializeMesh_1+0x154>
  400940:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400944:	9101a002 	add	x2, x0, #0x68
  400948:	b9801be3 	ldrsw	x3, [sp, #24]
  40094c:	b9801fe1 	ldrsw	x1, [sp, #28]
  400950:	aa0103e0 	mov	x0, x1
  400954:	d37ff800 	lsl	x0, x0, #1
  400958:	8b010000 	add	x0, x0, x1
  40095c:	d37df000 	lsl	x0, x0, #3
  400960:	8b010000 	add	x0, x0, x1
  400964:	d37ef400 	lsl	x0, x0, #2
  400968:	8b030000 	add	x0, x0, x3
  40096c:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400970:	529555a1 	mov	w1, #0xaaad                	// #43693
  400974:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  400978:	9b217c01 	smull	x1, w0, w1
  40097c:	d360fc21 	lsr	x1, x1, #32
  400980:	0b010001 	add	w1, w0, w1
  400984:	13107c22 	asr	w2, w1, #16
  400988:	131f7c01 	asr	w1, w0, #31
  40098c:	4b010041 	sub	w1, w2, w1
  400990:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  400994:	72a00022 	movk	w2, #0x1, lsl #16
  400998:	1b027c21 	mul	w1, w1, w2
  40099c:	4b010001 	sub	w1, w0, w1
  4009a0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4009a4:	9101a003 	add	x3, x0, #0x68
  4009a8:	b9801be4 	ldrsw	x4, [sp, #24]
  4009ac:	b9801fe2 	ldrsw	x2, [sp, #28]
  4009b0:	aa0203e0 	mov	x0, x2
  4009b4:	d37ff800 	lsl	x0, x0, #1
  4009b8:	8b020000 	add	x0, x0, x2
  4009bc:	d37df000 	lsl	x0, x0, #3
  4009c0:	8b020000 	add	x0, x0, x2
  4009c4:	d37ef400 	lsl	x0, x0, #2
  4009c8:	8b040000 	add	x0, x0, x4
  4009cc:	b8207861 	str	w1, [x3, x0, lsl #2]
  4009d0:	b9401fe0 	ldr	w0, [sp, #28]
  4009d4:	11000400 	add	w0, w0, #0x1
  4009d8:	b9001fe0 	str	w0, [sp, #28]
  4009dc:	b9401fe0 	ldr	w0, [sp, #28]
  4009e0:	71018c1f 	cmp	w0, #0x63
  4009e4:	54fff58d 	b.le	400894 <InitializeMesh_1+0x18>
  4009e8:	b9401be0 	ldr	w0, [sp, #24]
  4009ec:	11000400 	add	w0, w0, #0x1
  4009f0:	b9001be0 	str	w0, [sp, #24]
  4009f4:	b9401be0 	ldr	w0, [sp, #24]
  4009f8:	71018c1f 	cmp	w0, #0x63
  4009fc:	54fff48d 	b.le	40088c <InitializeMesh_1+0x10>
  400a00:	d503201f 	nop
  400a04:	d503201f 	nop
  400a08:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400a0c:	d65f03c0 	ret

0000000000400a10 <InitializeMesh_2>:
  400a10:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400a14:	910003fd 	mov	x29, sp
  400a18:	b9001bff 	str	wzr, [sp, #24]
  400a1c:	1400005b 	b	400b88 <InitializeMesh_2+0x178>
  400a20:	b9001fff 	str	wzr, [sp, #28]
  400a24:	14000053 	b	400b70 <InitializeMesh_2+0x160>
  400a28:	97ffff1a 	bl	400690 <random@plt>
  400a2c:	2a0003e4 	mov	w4, w0
  400a30:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400a34:	9132a002 	add	x2, x0, #0xca8
  400a38:	b9801be3 	ldrsw	x3, [sp, #24]
  400a3c:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a40:	aa0103e0 	mov	x0, x1
  400a44:	d37ff800 	lsl	x0, x0, #1
  400a48:	8b010000 	add	x0, x0, x1
  400a4c:	d37df000 	lsl	x0, x0, #3
  400a50:	8b010000 	add	x0, x0, x1
  400a54:	d37ef400 	lsl	x0, x0, #2
  400a58:	8b030000 	add	x0, x0, x3
  400a5c:	b8207844 	str	w4, [x2, x0, lsl #2]
  400a60:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400a64:	9132a002 	add	x2, x0, #0xca8
  400a68:	b9801be3 	ldrsw	x3, [sp, #24]
  400a6c:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a70:	aa0103e0 	mov	x0, x1
  400a74:	d37ff800 	lsl	x0, x0, #1
  400a78:	8b010000 	add	x0, x0, x1
  400a7c:	d37df000 	lsl	x0, x0, #3
  400a80:	8b010000 	add	x0, x0, x1
  400a84:	d37ef400 	lsl	x0, x0, #2
  400a88:	8b030000 	add	x0, x0, x3
  400a8c:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400a90:	b90017e0 	str	w0, [sp, #20]
  400a94:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400a98:	9132a002 	add	x2, x0, #0xca8
  400a9c:	b9801be3 	ldrsw	x3, [sp, #24]
  400aa0:	b9801fe1 	ldrsw	x1, [sp, #28]
  400aa4:	aa0103e0 	mov	x0, x1
  400aa8:	d37ff800 	lsl	x0, x0, #1
  400aac:	8b010000 	add	x0, x0, x1
  400ab0:	d37df000 	lsl	x0, x0, #3
  400ab4:	8b010000 	add	x0, x0, x1
  400ab8:	d37ef400 	lsl	x0, x0, #2
  400abc:	8b030000 	add	x0, x0, x3
  400ac0:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400ac4:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  400ac8:	72a00020 	movk	w0, #0x1, lsl #16
  400acc:	6b00003f 	cmp	w1, w0
  400ad0:	540004ad 	b.le	400b64 <InitializeMesh_2+0x154>
  400ad4:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400ad8:	9132a002 	add	x2, x0, #0xca8
  400adc:	b9801be3 	ldrsw	x3, [sp, #24]
  400ae0:	b9801fe1 	ldrsw	x1, [sp, #28]
  400ae4:	aa0103e0 	mov	x0, x1
  400ae8:	d37ff800 	lsl	x0, x0, #1
  400aec:	8b010000 	add	x0, x0, x1
  400af0:	d37df000 	lsl	x0, x0, #3
  400af4:	8b010000 	add	x0, x0, x1
  400af8:	d37ef400 	lsl	x0, x0, #2
  400afc:	8b030000 	add	x0, x0, x3
  400b00:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400b04:	529555a1 	mov	w1, #0xaaad                	// #43693
  400b08:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  400b0c:	9b217c01 	smull	x1, w0, w1
  400b10:	d360fc21 	lsr	x1, x1, #32
  400b14:	0b010001 	add	w1, w0, w1
  400b18:	13107c22 	asr	w2, w1, #16
  400b1c:	131f7c01 	asr	w1, w0, #31
  400b20:	4b010041 	sub	w1, w2, w1
  400b24:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  400b28:	72a00022 	movk	w2, #0x1, lsl #16
  400b2c:	1b027c21 	mul	w1, w1, w2
  400b30:	4b010001 	sub	w1, w0, w1
  400b34:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400b38:	9132a003 	add	x3, x0, #0xca8
  400b3c:	b9801be4 	ldrsw	x4, [sp, #24]
  400b40:	b9801fe2 	ldrsw	x2, [sp, #28]
  400b44:	aa0203e0 	mov	x0, x2
  400b48:	d37ff800 	lsl	x0, x0, #1
  400b4c:	8b020000 	add	x0, x0, x2
  400b50:	d37df000 	lsl	x0, x0, #3
  400b54:	8b020000 	add	x0, x0, x2
  400b58:	d37ef400 	lsl	x0, x0, #2
  400b5c:	8b040000 	add	x0, x0, x4
  400b60:	b8207861 	str	w1, [x3, x0, lsl #2]
  400b64:	b9401fe0 	ldr	w0, [sp, #28]
  400b68:	11000400 	add	w0, w0, #0x1
  400b6c:	b9001fe0 	str	w0, [sp, #28]
  400b70:	b9401fe0 	ldr	w0, [sp, #28]
  400b74:	71018c1f 	cmp	w0, #0x63
  400b78:	54fff58d 	b.le	400a28 <InitializeMesh_2+0x18>
  400b7c:	b9401be0 	ldr	w0, [sp, #24]
  400b80:	11000400 	add	w0, w0, #0x1
  400b84:	b9001be0 	str	w0, [sp, #24]
  400b88:	b9401be0 	ldr	w0, [sp, #24]
  400b8c:	71018c1f 	cmp	w0, #0x63
  400b90:	54fff48d 	b.le	400a20 <InitializeMesh_2+0x10>
  400b94:	d503201f 	nop
  400b98:	d503201f 	nop
  400b9c:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400ba0:	d65f03c0 	ret

0000000000400ba4 <CompareMesh>:
  400ba4:	d10043ff 	sub	sp, sp, #0x10
  400ba8:	b9000fff 	str	wzr, [sp, #12]
  400bac:	b90007ff 	str	wzr, [sp, #4]
  400bb0:	1400002d 	b	400c64 <CompareMesh+0xc0>
  400bb4:	b9000bff 	str	wzr, [sp, #8]
  400bb8:	14000025 	b	400c4c <CompareMesh+0xa8>
  400bbc:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400bc0:	9101a002 	add	x2, x0, #0x68
  400bc4:	b98007e3 	ldrsw	x3, [sp, #4]
  400bc8:	b9800be1 	ldrsw	x1, [sp, #8]
  400bcc:	aa0103e0 	mov	x0, x1
  400bd0:	d37ff800 	lsl	x0, x0, #1
  400bd4:	8b010000 	add	x0, x0, x1
  400bd8:	d37df000 	lsl	x0, x0, #3
  400bdc:	8b010000 	add	x0, x0, x1
  400be0:	d37ef400 	lsl	x0, x0, #2
  400be4:	8b030000 	add	x0, x0, x3
  400be8:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400bec:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400bf0:	9132a003 	add	x3, x0, #0xca8
  400bf4:	b98007e4 	ldrsw	x4, [sp, #4]
  400bf8:	b9800be1 	ldrsw	x1, [sp, #8]
  400bfc:	aa0103e0 	mov	x0, x1
  400c00:	d37ff800 	lsl	x0, x0, #1
  400c04:	8b010000 	add	x0, x0, x1
  400c08:	d37df000 	lsl	x0, x0, #3
  400c0c:	8b010000 	add	x0, x0, x1
  400c10:	d37ef400 	lsl	x0, x0, #2
  400c14:	8b040000 	add	x0, x0, x4
  400c18:	b8607860 	ldr	w0, [x3, x0, lsl #2]
  400c1c:	6b00005f 	cmp	w2, w0
  400c20:	540000ad 	b.le	400c34 <CompareMesh+0x90>
  400c24:	b9400fe0 	ldr	w0, [sp, #12]
  400c28:	11000400 	add	w0, w0, #0x1
  400c2c:	b9000fe0 	str	w0, [sp, #12]
  400c30:	14000004 	b	400c40 <CompareMesh+0x9c>
  400c34:	b9400fe0 	ldr	w0, [sp, #12]
  400c38:	51000400 	sub	w0, w0, #0x1
  400c3c:	b9000fe0 	str	w0, [sp, #12]
  400c40:	b9400be0 	ldr	w0, [sp, #8]
  400c44:	11000400 	add	w0, w0, #0x1
  400c48:	b9000be0 	str	w0, [sp, #8]
  400c4c:	b9400be0 	ldr	w0, [sp, #8]
  400c50:	71018c1f 	cmp	w0, #0x63
  400c54:	54fffb4d 	b.le	400bbc <CompareMesh+0x18>
  400c58:	b94007e0 	ldr	w0, [sp, #4]
  400c5c:	11000400 	add	w0, w0, #0x1
  400c60:	b90007e0 	str	w0, [sp, #4]
  400c64:	b94007e0 	ldr	w0, [sp, #4]
  400c68:	71018c1f 	cmp	w0, #0x63
  400c6c:	54fffa4d 	b.le	400bb4 <CompareMesh+0x10>
  400c70:	b9400fe0 	ldr	w0, [sp, #12]
  400c74:	7100001f 	cmp	w0, #0x0
  400c78:	5400006b 	b.lt	400c84 <CompareMesh+0xe0>  // b.tstop
  400c7c:	52800020 	mov	w0, #0x1                   	// #1
  400c80:	14000002 	b	400c88 <CompareMesh+0xe4>
  400c84:	52800000 	mov	w0, #0x0                   	// #0
  400c88:	910043ff 	add	sp, sp, #0x10
  400c8c:	d65f03c0 	ret

0000000000400c90 <Mesh_dot>:
  400c90:	d10043ff 	sub	sp, sp, #0x10
  400c94:	b9000fff 	str	wzr, [sp, #12]
  400c98:	14000046 	b	400db0 <Mesh_dot+0x120>
  400c9c:	b9000bff 	str	wzr, [sp, #8]
  400ca0:	1400003e 	b	400d98 <Mesh_dot+0x108>
  400ca4:	b90007ff 	str	wzr, [sp, #4]
  400ca8:	14000036 	b	400d80 <Mesh_dot+0xf0>
  400cac:	f0000180 	adrp	x0, 433000 <ms2+0x9358>
  400cb0:	9123a002 	add	x2, x0, #0x8e8
  400cb4:	b9800be3 	ldrsw	x3, [sp, #8]
  400cb8:	b9800fe1 	ldrsw	x1, [sp, #12]
  400cbc:	aa0103e0 	mov	x0, x1
  400cc0:	d37ff800 	lsl	x0, x0, #1
  400cc4:	8b010000 	add	x0, x0, x1
  400cc8:	d37df000 	lsl	x0, x0, #3
  400ccc:	8b010000 	add	x0, x0, x1
  400cd0:	d37ef400 	lsl	x0, x0, #2
  400cd4:	8b030000 	add	x0, x0, x3
  400cd8:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400cdc:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400ce0:	9101a003 	add	x3, x0, #0x68
  400ce4:	b98007e4 	ldrsw	x4, [sp, #4]
  400ce8:	b9800fe1 	ldrsw	x1, [sp, #12]
  400cec:	aa0103e0 	mov	x0, x1
  400cf0:	d37ff800 	lsl	x0, x0, #1
  400cf4:	8b010000 	add	x0, x0, x1
  400cf8:	d37df000 	lsl	x0, x0, #3
  400cfc:	8b010000 	add	x0, x0, x1
  400d00:	d37ef400 	lsl	x0, x0, #2
  400d04:	8b040000 	add	x0, x0, x4
  400d08:	b8607863 	ldr	w3, [x3, x0, lsl #2]
  400d0c:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400d10:	9132a004 	add	x4, x0, #0xca8
  400d14:	b9800be5 	ldrsw	x5, [sp, #8]
  400d18:	b98007e1 	ldrsw	x1, [sp, #4]
  400d1c:	aa0103e0 	mov	x0, x1
  400d20:	d37ff800 	lsl	x0, x0, #1
  400d24:	8b010000 	add	x0, x0, x1
  400d28:	d37df000 	lsl	x0, x0, #3
  400d2c:	8b010000 	add	x0, x0, x1
  400d30:	d37ef400 	lsl	x0, x0, #2
  400d34:	8b050000 	add	x0, x0, x5
  400d38:	b8607880 	ldr	w0, [x4, x0, lsl #2]
  400d3c:	1b007c60 	mul	w0, w3, w0
  400d40:	0b000043 	add	w3, w2, w0
  400d44:	f0000180 	adrp	x0, 433000 <ms2+0x9358>
  400d48:	9123a002 	add	x2, x0, #0x8e8
  400d4c:	b9800be4 	ldrsw	x4, [sp, #8]
  400d50:	b9800fe1 	ldrsw	x1, [sp, #12]
  400d54:	aa0103e0 	mov	x0, x1
  400d58:	d37ff800 	lsl	x0, x0, #1
  400d5c:	8b010000 	add	x0, x0, x1
  400d60:	d37df000 	lsl	x0, x0, #3
  400d64:	8b010000 	add	x0, x0, x1
  400d68:	d37ef400 	lsl	x0, x0, #2
  400d6c:	8b040000 	add	x0, x0, x4
  400d70:	b8207843 	str	w3, [x2, x0, lsl #2]
  400d74:	b94007e0 	ldr	w0, [sp, #4]
  400d78:	11000400 	add	w0, w0, #0x1
  400d7c:	b90007e0 	str	w0, [sp, #4]
  400d80:	b94007e0 	ldr	w0, [sp, #4]
  400d84:	71018c1f 	cmp	w0, #0x63
  400d88:	54fff92d 	b.le	400cac <Mesh_dot+0x1c>
  400d8c:	b9400be0 	ldr	w0, [sp, #8]
  400d90:	11000400 	add	w0, w0, #0x1
  400d94:	b9000be0 	str	w0, [sp, #8]
  400d98:	b9400be0 	ldr	w0, [sp, #8]
  400d9c:	71018c1f 	cmp	w0, #0x63
  400da0:	54fff82d 	b.le	400ca4 <Mesh_dot+0x14>
  400da4:	b9400fe0 	ldr	w0, [sp, #12]
  400da8:	11000400 	add	w0, w0, #0x1
  400dac:	b9000fe0 	str	w0, [sp, #12]
  400db0:	b9400fe0 	ldr	w0, [sp, #12]
  400db4:	71018c1f 	cmp	w0, #0x63
  400db8:	54fff72d 	b.le	400c9c <Mesh_dot+0xc>
  400dbc:	52800000 	mov	w0, #0x0                   	// #0
  400dc0:	910043ff 	add	sp, sp, #0x10
  400dc4:	d65f03c0 	ret

0000000000400dc8 <SwapMesh>:
  400dc8:	d10043ff 	sub	sp, sp, #0x10
  400dcc:	b90007ff 	str	wzr, [sp, #4]
  400dd0:	b9000bff 	str	wzr, [sp, #8]
  400dd4:	1400003e 	b	400ecc <SwapMesh+0x104>
  400dd8:	b9000fff 	str	wzr, [sp, #12]
  400ddc:	14000036 	b	400eb4 <SwapMesh+0xec>
  400de0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400de4:	9101a002 	add	x2, x0, #0x68
  400de8:	b9800be3 	ldrsw	x3, [sp, #8]
  400dec:	b9800fe1 	ldrsw	x1, [sp, #12]
  400df0:	aa0103e0 	mov	x0, x1
  400df4:	d37ff800 	lsl	x0, x0, #1
  400df8:	8b010000 	add	x0, x0, x1
  400dfc:	d37df000 	lsl	x0, x0, #3
  400e00:	8b010000 	add	x0, x0, x1
  400e04:	d37ef400 	lsl	x0, x0, #2
  400e08:	8b030000 	add	x0, x0, x3
  400e0c:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400e10:	b90003e0 	str	w0, [sp]
  400e14:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400e18:	9132a002 	add	x2, x0, #0xca8
  400e1c:	b9800be3 	ldrsw	x3, [sp, #8]
  400e20:	b9800fe1 	ldrsw	x1, [sp, #12]
  400e24:	aa0103e0 	mov	x0, x1
  400e28:	d37ff800 	lsl	x0, x0, #1
  400e2c:	8b010000 	add	x0, x0, x1
  400e30:	d37df000 	lsl	x0, x0, #3
  400e34:	8b010000 	add	x0, x0, x1
  400e38:	d37ef400 	lsl	x0, x0, #2
  400e3c:	8b030000 	add	x0, x0, x3
  400e40:	b8607843 	ldr	w3, [x2, x0, lsl #2]
  400e44:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400e48:	9101a002 	add	x2, x0, #0x68
  400e4c:	b9800be4 	ldrsw	x4, [sp, #8]
  400e50:	b9800fe1 	ldrsw	x1, [sp, #12]
  400e54:	aa0103e0 	mov	x0, x1
  400e58:	d37ff800 	lsl	x0, x0, #1
  400e5c:	8b010000 	add	x0, x0, x1
  400e60:	d37df000 	lsl	x0, x0, #3
  400e64:	8b010000 	add	x0, x0, x1
  400e68:	d37ef400 	lsl	x0, x0, #2
  400e6c:	8b040000 	add	x0, x0, x4
  400e70:	b8207843 	str	w3, [x2, x0, lsl #2]
  400e74:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400e78:	9132a002 	add	x2, x0, #0xca8
  400e7c:	b9800be3 	ldrsw	x3, [sp, #8]
  400e80:	b9800fe1 	ldrsw	x1, [sp, #12]
  400e84:	aa0103e0 	mov	x0, x1
  400e88:	d37ff800 	lsl	x0, x0, #1
  400e8c:	8b010000 	add	x0, x0, x1
  400e90:	d37df000 	lsl	x0, x0, #3
  400e94:	8b010000 	add	x0, x0, x1
  400e98:	d37ef400 	lsl	x0, x0, #2
  400e9c:	8b030000 	add	x0, x0, x3
  400ea0:	b94003e1 	ldr	w1, [sp]
  400ea4:	b8207841 	str	w1, [x2, x0, lsl #2]
  400ea8:	b9400fe0 	ldr	w0, [sp, #12]
  400eac:	11000400 	add	w0, w0, #0x1
  400eb0:	b9000fe0 	str	w0, [sp, #12]
  400eb4:	b9400fe0 	ldr	w0, [sp, #12]
  400eb8:	71018c1f 	cmp	w0, #0x63
  400ebc:	54fff92d 	b.le	400de0 <SwapMesh+0x18>
  400ec0:	b9400be0 	ldr	w0, [sp, #8]
  400ec4:	11000400 	add	w0, w0, #0x1
  400ec8:	b9000be0 	str	w0, [sp, #8]
  400ecc:	b9400be0 	ldr	w0, [sp, #8]
  400ed0:	71018c1f 	cmp	w0, #0x63
  400ed4:	54fff82d 	b.le	400dd8 <SwapMesh+0x10>
  400ed8:	52800000 	mov	w0, #0x0                   	// #0
  400edc:	910043ff 	add	sp, sp, #0x10
  400ee0:	d65f03c0 	ret

0000000000400ee4 <LoadData>:
  400ee4:	a9ae7bfd 	stp	x29, x30, [sp, #-288]!
  400ee8:	910003fd 	mov	x29, sp
  400eec:	f9008fff 	str	xzr, [sp, #280]
  400ef0:	b0000000 	adrp	x0, 401000 <StoreData+0xb0>
  400ef4:	91016001 	add	x1, x0, #0x58
  400ef8:	b0000000 	adrp	x0, 401000 <StoreData+0xb0>
  400efc:	91018000 	add	x0, x0, #0x60
  400f00:	97fffde0 	bl	400680 <fopen@plt>
  400f04:	f9008fe0 	str	x0, [sp, #280]
  400f08:	910063e0 	add	x0, sp, #0x18
  400f0c:	f9408fe2 	ldr	x2, [sp, #280]
  400f10:	52801fe1 	mov	w1, #0xff                  	// #255
  400f14:	97fffdf7 	bl	4006f0 <fgets@plt>
  400f18:	910063e0 	add	x0, sp, #0x18
  400f1c:	aa0003e1 	mov	x1, x0
  400f20:	b0000000 	adrp	x0, 401000 <StoreData+0xb0>
  400f24:	91032000 	add	x0, x0, #0xc8
  400f28:	97fffdea 	bl	4006d0 <printf@plt>
  400f2c:	910063e0 	add	x0, sp, #0x18
  400f30:	f9408fe2 	ldr	x2, [sp, #280]
  400f34:	52801fe1 	mov	w1, #0xff                  	// #255
  400f38:	97fffdee 	bl	4006f0 <fgets@plt>
  400f3c:	f9408fe0 	ldr	x0, [sp, #280]
  400f40:	97fffdcc 	bl	400670 <fclose@plt>
  400f44:	52800000 	mov	w0, #0x0                   	// #0
  400f48:	a8d27bfd 	ldp	x29, x30, [sp], #288
  400f4c:	d65f03c0 	ret

0000000000400f50 <StoreData>:
  400f50:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400f54:	910003fd 	mov	x29, sp
  400f58:	f9000bff 	str	xzr, [sp, #16]
  400f5c:	b0000000 	adrp	x0, 401000 <StoreData+0xb0>
  400f60:	91034001 	add	x1, x0, #0xd0
  400f64:	b0000000 	adrp	x0, 401000 <StoreData+0xb0>
  400f68:	91018000 	add	x0, x0, #0x60
  400f6c:	97fffdc5 	bl	400680 <fopen@plt>
  400f70:	f9000be0 	str	x0, [sp, #16]
  400f74:	f9400be3 	ldr	x3, [sp, #16]
  400f78:	d28000e2 	mov	x2, #0x7                   	// #7
  400f7c:	d2800021 	mov	x1, #0x1                   	// #1
  400f80:	b0000000 	adrp	x0, 401000 <StoreData+0xb0>
  400f84:	91036000 	add	x0, x0, #0xd8
  400f88:	97fffdce 	bl	4006c0 <fwrite@plt>
  400f8c:	b9001fff 	str	wzr, [sp, #28]
  400f90:	1400001d 	b	401004 <StoreData+0xb4>
  400f94:	b9001bff 	str	wzr, [sp, #24]
  400f98:	14000015 	b	400fec <StoreData+0x9c>
  400f9c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fa0:	9101a002 	add	x2, x0, #0x68
  400fa4:	b9801be3 	ldrsw	x3, [sp, #24]
  400fa8:	b9801fe1 	ldrsw	x1, [sp, #28]
  400fac:	aa0103e0 	mov	x0, x1
  400fb0:	d37ff800 	lsl	x0, x0, #1
  400fb4:	8b010000 	add	x0, x0, x1
  400fb8:	d37df000 	lsl	x0, x0, #3
  400fbc:	8b010000 	add	x0, x0, x1
  400fc0:	d37ef400 	lsl	x0, x0, #2
  400fc4:	8b030000 	add	x0, x0, x3
  400fc8:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400fcc:	2a0003e2 	mov	w2, w0
  400fd0:	b0000000 	adrp	x0, 401000 <StoreData+0xb0>
  400fd4:	91038001 	add	x1, x0, #0xe0
  400fd8:	f9400be0 	ldr	x0, [sp, #16]
  400fdc:	97fffdc1 	bl	4006e0 <fprintf@plt>
  400fe0:	b9401be0 	ldr	w0, [sp, #24]
  400fe4:	11000400 	add	w0, w0, #0x1
  400fe8:	b9001be0 	str	w0, [sp, #24]
  400fec:	b9401be0 	ldr	w0, [sp, #24]
  400ff0:	71018c1f 	cmp	w0, #0x63
  400ff4:	54fffd4d 	b.le	400f9c <StoreData+0x4c>
  400ff8:	b9401fe0 	ldr	w0, [sp, #28]
  400ffc:	11000400 	add	w0, w0, #0x1
  401000:	b9001fe0 	str	w0, [sp, #28]
  401004:	b9401fe0 	ldr	w0, [sp, #28]
  401008:	71018c1f 	cmp	w0, #0x63
  40100c:	54fffc4d 	b.le	400f94 <StoreData+0x44>
  401010:	f9400be3 	ldr	x3, [sp, #16]
  401014:	d2800042 	mov	x2, #0x2                   	// #2
  401018:	d2800021 	mov	x1, #0x1                   	// #1
  40101c:	90000000 	adrp	x0, 401000 <StoreData+0xb0>
  401020:	9103a000 	add	x0, x0, #0xe8
  401024:	97fffda7 	bl	4006c0 <fwrite@plt>
  401028:	f9400be0 	ldr	x0, [sp, #16]
  40102c:	97fffd91 	bl	400670 <fclose@plt>
  401030:	52800000 	mov	w0, #0x0                   	// #0
  401034:	a8c27bfd 	ldp	x29, x30, [sp], #32
  401038:	d65f03c0 	ret

Disassembly of section .fini:

000000000040103c <_fini>:
  40103c:	d503201f 	nop
  401040:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  401044:	910003fd 	mov	x29, sp
  401048:	a8c17bfd 	ldp	x29, x30, [sp], #16
  40104c:	d65f03c0 	ret
