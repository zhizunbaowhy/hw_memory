
spec_bench_mark.out：     文件格式 elf64-littleaarch64


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
  400644:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1d760>
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
  400744:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1d760>
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
  400778:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1d760>
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
  4007b4:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1d760>
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
  400814:	94000264 	bl	4011a4 <LoadData>
  400818:	b9002fff 	str	wzr, [sp, #44]
  40081c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400820:	9101a000 	add	x0, x0, #0x68
  400824:	91402000 	add	x0, x0, #0x8, lsl #12
  400828:	b95c3c00 	ldr	w0, [x0, #7228]
  40082c:	7100001f 	cmp	w0, #0x0
  400830:	54000061 	b.ne	40083c <main+0x38>  // b.any
  400834:	94000013 	bl	400880 <InitializeMesh_1>
  400838:	940000c8 	bl	400b58 <InitializeMesh_2>
  40083c:	9400018a 	bl	400e64 <CompareMesh>
  400840:	b9002fe0 	str	w0, [sp, #44]
  400844:	b9402fe0 	ldr	w0, [sp, #44]
  400848:	7100001f 	cmp	w0, #0x0
  40084c:	54000100 	b.eq	40086c <main+0x68>  // b.none
  400850:	9400020e 	bl	401088 <SwapMesh>
  400854:	b9002fe0 	str	w0, [sp, #44]
  400858:	940001be 	bl	400f50 <Mesh_dot>
  40085c:	2a0003e1 	mov	w1, w0
  400860:	b00001e0 	adrp	x0, 43d000 <ms3+0x9718>
  400864:	9114a000 	add	x0, x0, #0x528
  400868:	b9000001 	str	w1, [x0]
  40086c:	94000269 	bl	401210 <ComplexDataHandle>
  400870:	94000309 	bl	401494 <StoreData>
  400874:	52800000 	mov	w0, #0x0                   	// #0
  400878:	a8c37bfd 	ldp	x29, x30, [sp], #48
  40087c:	d65f03c0 	ret

0000000000400880 <InitializeMesh_1>:
  400880:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400884:	910003fd 	mov	x29, sp
  400888:	b9001bff 	str	wzr, [sp, #24]
  40088c:	140000ac 	b	400b3c <InitializeMesh_1+0x2bc>
  400890:	b9001fff 	str	wzr, [sp, #28]
  400894:	140000a4 	b	400b24 <InitializeMesh_1+0x2a4>
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
  400930:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400934:	b90017e0 	str	w0, [sp, #20]
  400938:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40093c:	9101a002 	add	x2, x0, #0x68
  400940:	b9801be3 	ldrsw	x3, [sp, #24]
  400944:	b9801fe1 	ldrsw	x1, [sp, #28]
  400948:	aa0103e0 	mov	x0, x1
  40094c:	d37ff800 	lsl	x0, x0, #1
  400950:	8b010000 	add	x0, x0, x1
  400954:	d37df000 	lsl	x0, x0, #3
  400958:	8b010000 	add	x0, x0, x1
  40095c:	d37ef400 	lsl	x0, x0, #2
  400960:	8b030000 	add	x0, x0, x3
  400964:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400968:	b90017e0 	str	w0, [sp, #20]
  40096c:	97ffff49 	bl	400690 <random@plt>
  400970:	2a0003e4 	mov	w4, w0
  400974:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400978:	9101a002 	add	x2, x0, #0x68
  40097c:	b9801be3 	ldrsw	x3, [sp, #24]
  400980:	b9801fe1 	ldrsw	x1, [sp, #28]
  400984:	aa0103e0 	mov	x0, x1
  400988:	d37ff800 	lsl	x0, x0, #1
  40098c:	8b010000 	add	x0, x0, x1
  400990:	d37df000 	lsl	x0, x0, #3
  400994:	8b010000 	add	x0, x0, x1
  400998:	d37ef400 	lsl	x0, x0, #2
  40099c:	8b030000 	add	x0, x0, x3
  4009a0:	b8207844 	str	w4, [x2, x0, lsl #2]
  4009a4:	97ffff3b 	bl	400690 <random@plt>
  4009a8:	2a0003e4 	mov	w4, w0
  4009ac:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4009b0:	9101a002 	add	x2, x0, #0x68
  4009b4:	b9801be3 	ldrsw	x3, [sp, #24]
  4009b8:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009bc:	aa0103e0 	mov	x0, x1
  4009c0:	d37ff800 	lsl	x0, x0, #1
  4009c4:	8b010000 	add	x0, x0, x1
  4009c8:	d37df000 	lsl	x0, x0, #3
  4009cc:	8b010000 	add	x0, x0, x1
  4009d0:	d37ef400 	lsl	x0, x0, #2
  4009d4:	8b030000 	add	x0, x0, x3
  4009d8:	b8207844 	str	w4, [x2, x0, lsl #2]
  4009dc:	97ffff2d 	bl	400690 <random@plt>
  4009e0:	2a0003e4 	mov	w4, w0
  4009e4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4009e8:	9101a002 	add	x2, x0, #0x68
  4009ec:	b9801be3 	ldrsw	x3, [sp, #24]
  4009f0:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009f4:	aa0103e0 	mov	x0, x1
  4009f8:	d37ff800 	lsl	x0, x0, #1
  4009fc:	8b010000 	add	x0, x0, x1
  400a00:	d37df000 	lsl	x0, x0, #3
  400a04:	8b010000 	add	x0, x0, x1
  400a08:	d37ef400 	lsl	x0, x0, #2
  400a0c:	8b030000 	add	x0, x0, x3
  400a10:	b8207844 	str	w4, [x2, x0, lsl #2]
  400a14:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400a18:	9101a002 	add	x2, x0, #0x68
  400a1c:	b9801be3 	ldrsw	x3, [sp, #24]
  400a20:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a24:	aa0103e0 	mov	x0, x1
  400a28:	d37ff800 	lsl	x0, x0, #1
  400a2c:	8b010000 	add	x0, x0, x1
  400a30:	d37df000 	lsl	x0, x0, #3
  400a34:	8b010000 	add	x0, x0, x1
  400a38:	d37ef400 	lsl	x0, x0, #2
  400a3c:	8b030000 	add	x0, x0, x3
  400a40:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400a44:	b90017e0 	str	w0, [sp, #20]
  400a48:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400a4c:	9101a002 	add	x2, x0, #0x68
  400a50:	b9801be3 	ldrsw	x3, [sp, #24]
  400a54:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a58:	aa0103e0 	mov	x0, x1
  400a5c:	d37ff800 	lsl	x0, x0, #1
  400a60:	8b010000 	add	x0, x0, x1
  400a64:	d37df000 	lsl	x0, x0, #3
  400a68:	8b010000 	add	x0, x0, x1
  400a6c:	d37ef400 	lsl	x0, x0, #2
  400a70:	8b030000 	add	x0, x0, x3
  400a74:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400a78:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  400a7c:	72a00020 	movk	w0, #0x1, lsl #16
  400a80:	6b00003f 	cmp	w1, w0
  400a84:	540004ad 	b.le	400b18 <InitializeMesh_1+0x298>
  400a88:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400a8c:	9101a002 	add	x2, x0, #0x68
  400a90:	b9801be3 	ldrsw	x3, [sp, #24]
  400a94:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a98:	aa0103e0 	mov	x0, x1
  400a9c:	d37ff800 	lsl	x0, x0, #1
  400aa0:	8b010000 	add	x0, x0, x1
  400aa4:	d37df000 	lsl	x0, x0, #3
  400aa8:	8b010000 	add	x0, x0, x1
  400aac:	d37ef400 	lsl	x0, x0, #2
  400ab0:	8b030000 	add	x0, x0, x3
  400ab4:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400ab8:	529555a1 	mov	w1, #0xaaad                	// #43693
  400abc:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  400ac0:	9b217c01 	smull	x1, w0, w1
  400ac4:	d360fc21 	lsr	x1, x1, #32
  400ac8:	0b010001 	add	w1, w0, w1
  400acc:	13107c22 	asr	w2, w1, #16
  400ad0:	131f7c01 	asr	w1, w0, #31
  400ad4:	4b010041 	sub	w1, w2, w1
  400ad8:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  400adc:	72a00022 	movk	w2, #0x1, lsl #16
  400ae0:	1b027c21 	mul	w1, w1, w2
  400ae4:	4b010001 	sub	w1, w0, w1
  400ae8:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400aec:	9101a003 	add	x3, x0, #0x68
  400af0:	b9801be4 	ldrsw	x4, [sp, #24]
  400af4:	b9801fe2 	ldrsw	x2, [sp, #28]
  400af8:	aa0203e0 	mov	x0, x2
  400afc:	d37ff800 	lsl	x0, x0, #1
  400b00:	8b020000 	add	x0, x0, x2
  400b04:	d37df000 	lsl	x0, x0, #3
  400b08:	8b020000 	add	x0, x0, x2
  400b0c:	d37ef400 	lsl	x0, x0, #2
  400b10:	8b040000 	add	x0, x0, x4
  400b14:	b8207861 	str	w1, [x3, x0, lsl #2]
  400b18:	b9401fe0 	ldr	w0, [sp, #28]
  400b1c:	11000400 	add	w0, w0, #0x1
  400b20:	b9001fe0 	str	w0, [sp, #28]
  400b24:	b9401fe0 	ldr	w0, [sp, #28]
  400b28:	71018c1f 	cmp	w0, #0x63
  400b2c:	54ffeb6d 	b.le	400898 <InitializeMesh_1+0x18>
  400b30:	b9401be0 	ldr	w0, [sp, #24]
  400b34:	11000400 	add	w0, w0, #0x1
  400b38:	b9001be0 	str	w0, [sp, #24]
  400b3c:	b9401be0 	ldr	w0, [sp, #24]
  400b40:	71018c1f 	cmp	w0, #0x63
  400b44:	54ffea6d 	b.le	400890 <InitializeMesh_1+0x10>
  400b48:	d503201f 	nop
  400b4c:	d503201f 	nop
  400b50:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400b54:	d65f03c0 	ret

0000000000400b58 <InitializeMesh_2>:
  400b58:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400b5c:	910003fd 	mov	x29, sp
  400b60:	b9001bff 	str	wzr, [sp, #24]
  400b64:	140000b9 	b	400e48 <InitializeMesh_2+0x2f0>
  400b68:	b9001fff 	str	wzr, [sp, #28]
  400b6c:	140000b1 	b	400e30 <InitializeMesh_2+0x2d8>
  400b70:	97fffec8 	bl	400690 <random@plt>
  400b74:	2a0003e4 	mov	w4, w0
  400b78:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400b7c:	9132a002 	add	x2, x0, #0xca8
  400b80:	b9801be3 	ldrsw	x3, [sp, #24]
  400b84:	b9801fe1 	ldrsw	x1, [sp, #28]
  400b88:	aa0103e0 	mov	x0, x1
  400b8c:	d37ff800 	lsl	x0, x0, #1
  400b90:	8b010000 	add	x0, x0, x1
  400b94:	d37df000 	lsl	x0, x0, #3
  400b98:	8b010000 	add	x0, x0, x1
  400b9c:	d37ef400 	lsl	x0, x0, #2
  400ba0:	8b030000 	add	x0, x0, x3
  400ba4:	b8207844 	str	w4, [x2, x0, lsl #2]
  400ba8:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400bac:	9132a002 	add	x2, x0, #0xca8
  400bb0:	b9801be3 	ldrsw	x3, [sp, #24]
  400bb4:	b9801fe1 	ldrsw	x1, [sp, #28]
  400bb8:	aa0103e0 	mov	x0, x1
  400bbc:	d37ff800 	lsl	x0, x0, #1
  400bc0:	8b010000 	add	x0, x0, x1
  400bc4:	d37df000 	lsl	x0, x0, #3
  400bc8:	8b010000 	add	x0, x0, x1
  400bcc:	d37ef400 	lsl	x0, x0, #2
  400bd0:	8b030000 	add	x0, x0, x3
  400bd4:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400bd8:	b90017e0 	str	w0, [sp, #20]
  400bdc:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400be0:	9132a002 	add	x2, x0, #0xca8
  400be4:	b9801be3 	ldrsw	x3, [sp, #24]
  400be8:	b9801fe1 	ldrsw	x1, [sp, #28]
  400bec:	aa0103e0 	mov	x0, x1
  400bf0:	d37ff800 	lsl	x0, x0, #1
  400bf4:	8b010000 	add	x0, x0, x1
  400bf8:	d37df000 	lsl	x0, x0, #3
  400bfc:	8b010000 	add	x0, x0, x1
  400c00:	d37ef400 	lsl	x0, x0, #2
  400c04:	8b030000 	add	x0, x0, x3
  400c08:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400c0c:	b90017e0 	str	w0, [sp, #20]
  400c10:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400c14:	9132a002 	add	x2, x0, #0xca8
  400c18:	b9801be3 	ldrsw	x3, [sp, #24]
  400c1c:	b9801fe1 	ldrsw	x1, [sp, #28]
  400c20:	aa0103e0 	mov	x0, x1
  400c24:	d37ff800 	lsl	x0, x0, #1
  400c28:	8b010000 	add	x0, x0, x1
  400c2c:	d37df000 	lsl	x0, x0, #3
  400c30:	8b010000 	add	x0, x0, x1
  400c34:	d37ef400 	lsl	x0, x0, #2
  400c38:	8b030000 	add	x0, x0, x3
  400c3c:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400c40:	b90017e0 	str	w0, [sp, #20]
  400c44:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400c48:	9132a002 	add	x2, x0, #0xca8
  400c4c:	b9801be3 	ldrsw	x3, [sp, #24]
  400c50:	b9801fe1 	ldrsw	x1, [sp, #28]
  400c54:	aa0103e0 	mov	x0, x1
  400c58:	d37ff800 	lsl	x0, x0, #1
  400c5c:	8b010000 	add	x0, x0, x1
  400c60:	d37df000 	lsl	x0, x0, #3
  400c64:	8b010000 	add	x0, x0, x1
  400c68:	d37ef400 	lsl	x0, x0, #2
  400c6c:	8b030000 	add	x0, x0, x3
  400c70:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400c74:	b90017e0 	str	w0, [sp, #20]
  400c78:	97fffe86 	bl	400690 <random@plt>
  400c7c:	2a0003e4 	mov	w4, w0
  400c80:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400c84:	9132a002 	add	x2, x0, #0xca8
  400c88:	b9801be3 	ldrsw	x3, [sp, #24]
  400c8c:	b9801fe1 	ldrsw	x1, [sp, #28]
  400c90:	aa0103e0 	mov	x0, x1
  400c94:	d37ff800 	lsl	x0, x0, #1
  400c98:	8b010000 	add	x0, x0, x1
  400c9c:	d37df000 	lsl	x0, x0, #3
  400ca0:	8b010000 	add	x0, x0, x1
  400ca4:	d37ef400 	lsl	x0, x0, #2
  400ca8:	8b030000 	add	x0, x0, x3
  400cac:	b8207844 	str	w4, [x2, x0, lsl #2]
  400cb0:	97fffe78 	bl	400690 <random@plt>
  400cb4:	2a0003e4 	mov	w4, w0
  400cb8:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400cbc:	9132a002 	add	x2, x0, #0xca8
  400cc0:	b9801be3 	ldrsw	x3, [sp, #24]
  400cc4:	b9801fe1 	ldrsw	x1, [sp, #28]
  400cc8:	aa0103e0 	mov	x0, x1
  400ccc:	d37ff800 	lsl	x0, x0, #1
  400cd0:	8b010000 	add	x0, x0, x1
  400cd4:	d37df000 	lsl	x0, x0, #3
  400cd8:	8b010000 	add	x0, x0, x1
  400cdc:	d37ef400 	lsl	x0, x0, #2
  400ce0:	8b030000 	add	x0, x0, x3
  400ce4:	b8207844 	str	w4, [x2, x0, lsl #2]
  400ce8:	97fffe6a 	bl	400690 <random@plt>
  400cec:	2a0003e4 	mov	w4, w0
  400cf0:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400cf4:	9132a002 	add	x2, x0, #0xca8
  400cf8:	b9801be3 	ldrsw	x3, [sp, #24]
  400cfc:	b9801fe1 	ldrsw	x1, [sp, #28]
  400d00:	aa0103e0 	mov	x0, x1
  400d04:	d37ff800 	lsl	x0, x0, #1
  400d08:	8b010000 	add	x0, x0, x1
  400d0c:	d37df000 	lsl	x0, x0, #3
  400d10:	8b010000 	add	x0, x0, x1
  400d14:	d37ef400 	lsl	x0, x0, #2
  400d18:	8b030000 	add	x0, x0, x3
  400d1c:	b8207844 	str	w4, [x2, x0, lsl #2]
  400d20:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400d24:	9132a002 	add	x2, x0, #0xca8
  400d28:	b9801be3 	ldrsw	x3, [sp, #24]
  400d2c:	b9801fe1 	ldrsw	x1, [sp, #28]
  400d30:	aa0103e0 	mov	x0, x1
  400d34:	d37ff800 	lsl	x0, x0, #1
  400d38:	8b010000 	add	x0, x0, x1
  400d3c:	d37df000 	lsl	x0, x0, #3
  400d40:	8b010000 	add	x0, x0, x1
  400d44:	d37ef400 	lsl	x0, x0, #2
  400d48:	8b030000 	add	x0, x0, x3
  400d4c:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400d50:	b90017e0 	str	w0, [sp, #20]
  400d54:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400d58:	9132a002 	add	x2, x0, #0xca8
  400d5c:	b9801be3 	ldrsw	x3, [sp, #24]
  400d60:	b9801fe1 	ldrsw	x1, [sp, #28]
  400d64:	aa0103e0 	mov	x0, x1
  400d68:	d37ff800 	lsl	x0, x0, #1
  400d6c:	8b010000 	add	x0, x0, x1
  400d70:	d37df000 	lsl	x0, x0, #3
  400d74:	8b010000 	add	x0, x0, x1
  400d78:	d37ef400 	lsl	x0, x0, #2
  400d7c:	8b030000 	add	x0, x0, x3
  400d80:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400d84:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  400d88:	72a00020 	movk	w0, #0x1, lsl #16
  400d8c:	6b00003f 	cmp	w1, w0
  400d90:	540004ad 	b.le	400e24 <InitializeMesh_2+0x2cc>
  400d94:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400d98:	9132a002 	add	x2, x0, #0xca8
  400d9c:	b9801be3 	ldrsw	x3, [sp, #24]
  400da0:	b9801fe1 	ldrsw	x1, [sp, #28]
  400da4:	aa0103e0 	mov	x0, x1
  400da8:	d37ff800 	lsl	x0, x0, #1
  400dac:	8b010000 	add	x0, x0, x1
  400db0:	d37df000 	lsl	x0, x0, #3
  400db4:	8b010000 	add	x0, x0, x1
  400db8:	d37ef400 	lsl	x0, x0, #2
  400dbc:	8b030000 	add	x0, x0, x3
  400dc0:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400dc4:	529555a1 	mov	w1, #0xaaad                	// #43693
  400dc8:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  400dcc:	9b217c01 	smull	x1, w0, w1
  400dd0:	d360fc21 	lsr	x1, x1, #32
  400dd4:	0b010001 	add	w1, w0, w1
  400dd8:	13107c22 	asr	w2, w1, #16
  400ddc:	131f7c01 	asr	w1, w0, #31
  400de0:	4b010041 	sub	w1, w2, w1
  400de4:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  400de8:	72a00022 	movk	w2, #0x1, lsl #16
  400dec:	1b027c21 	mul	w1, w1, w2
  400df0:	4b010001 	sub	w1, w0, w1
  400df4:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400df8:	9132a003 	add	x3, x0, #0xca8
  400dfc:	b9801be4 	ldrsw	x4, [sp, #24]
  400e00:	b9801fe2 	ldrsw	x2, [sp, #28]
  400e04:	aa0203e0 	mov	x0, x2
  400e08:	d37ff800 	lsl	x0, x0, #1
  400e0c:	8b020000 	add	x0, x0, x2
  400e10:	d37df000 	lsl	x0, x0, #3
  400e14:	8b020000 	add	x0, x0, x2
  400e18:	d37ef400 	lsl	x0, x0, #2
  400e1c:	8b040000 	add	x0, x0, x4
  400e20:	b8207861 	str	w1, [x3, x0, lsl #2]
  400e24:	b9401fe0 	ldr	w0, [sp, #28]
  400e28:	11000400 	add	w0, w0, #0x1
  400e2c:	b9001fe0 	str	w0, [sp, #28]
  400e30:	b9401fe0 	ldr	w0, [sp, #28]
  400e34:	71018c1f 	cmp	w0, #0x63
  400e38:	54ffe9cd 	b.le	400b70 <InitializeMesh_2+0x18>
  400e3c:	b9401be0 	ldr	w0, [sp, #24]
  400e40:	11000400 	add	w0, w0, #0x1
  400e44:	b9001be0 	str	w0, [sp, #24]
  400e48:	b9401be0 	ldr	w0, [sp, #24]
  400e4c:	71018c1f 	cmp	w0, #0x63
  400e50:	54ffe8cd 	b.le	400b68 <InitializeMesh_2+0x10>
  400e54:	d503201f 	nop
  400e58:	d503201f 	nop
  400e5c:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400e60:	d65f03c0 	ret

0000000000400e64 <CompareMesh>:
  400e64:	d10043ff 	sub	sp, sp, #0x10
  400e68:	b9000fff 	str	wzr, [sp, #12]
  400e6c:	b90007ff 	str	wzr, [sp, #4]
  400e70:	1400002d 	b	400f24 <CompareMesh+0xc0>
  400e74:	b9000bff 	str	wzr, [sp, #8]
  400e78:	14000025 	b	400f0c <CompareMesh+0xa8>
  400e7c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400e80:	9101a002 	add	x2, x0, #0x68
  400e84:	b98007e3 	ldrsw	x3, [sp, #4]
  400e88:	b9800be1 	ldrsw	x1, [sp, #8]
  400e8c:	aa0103e0 	mov	x0, x1
  400e90:	d37ff800 	lsl	x0, x0, #1
  400e94:	8b010000 	add	x0, x0, x1
  400e98:	d37df000 	lsl	x0, x0, #3
  400e9c:	8b010000 	add	x0, x0, x1
  400ea0:	d37ef400 	lsl	x0, x0, #2
  400ea4:	8b030000 	add	x0, x0, x3
  400ea8:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400eac:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400eb0:	9132a003 	add	x3, x0, #0xca8
  400eb4:	b98007e4 	ldrsw	x4, [sp, #4]
  400eb8:	b9800be1 	ldrsw	x1, [sp, #8]
  400ebc:	aa0103e0 	mov	x0, x1
  400ec0:	d37ff800 	lsl	x0, x0, #1
  400ec4:	8b010000 	add	x0, x0, x1
  400ec8:	d37df000 	lsl	x0, x0, #3
  400ecc:	8b010000 	add	x0, x0, x1
  400ed0:	d37ef400 	lsl	x0, x0, #2
  400ed4:	8b040000 	add	x0, x0, x4
  400ed8:	b8607860 	ldr	w0, [x3, x0, lsl #2]
  400edc:	6b00005f 	cmp	w2, w0
  400ee0:	540000ad 	b.le	400ef4 <CompareMesh+0x90>
  400ee4:	b9400fe0 	ldr	w0, [sp, #12]
  400ee8:	11000400 	add	w0, w0, #0x1
  400eec:	b9000fe0 	str	w0, [sp, #12]
  400ef0:	14000004 	b	400f00 <CompareMesh+0x9c>
  400ef4:	b9400fe0 	ldr	w0, [sp, #12]
  400ef8:	51000400 	sub	w0, w0, #0x1
  400efc:	b9000fe0 	str	w0, [sp, #12]
  400f00:	b9400be0 	ldr	w0, [sp, #8]
  400f04:	11000400 	add	w0, w0, #0x1
  400f08:	b9000be0 	str	w0, [sp, #8]
  400f0c:	b9400be0 	ldr	w0, [sp, #8]
  400f10:	71018c1f 	cmp	w0, #0x63
  400f14:	54fffb4d 	b.le	400e7c <CompareMesh+0x18>
  400f18:	b94007e0 	ldr	w0, [sp, #4]
  400f1c:	11000400 	add	w0, w0, #0x1
  400f20:	b90007e0 	str	w0, [sp, #4]
  400f24:	b94007e0 	ldr	w0, [sp, #4]
  400f28:	71018c1f 	cmp	w0, #0x63
  400f2c:	54fffa4d 	b.le	400e74 <CompareMesh+0x10>
  400f30:	b9400fe0 	ldr	w0, [sp, #12]
  400f34:	7100001f 	cmp	w0, #0x0
  400f38:	5400006b 	b.lt	400f44 <CompareMesh+0xe0>  // b.tstop
  400f3c:	52800020 	mov	w0, #0x1                   	// #1
  400f40:	14000002 	b	400f48 <CompareMesh+0xe4>
  400f44:	52800000 	mov	w0, #0x0                   	// #0
  400f48:	910043ff 	add	sp, sp, #0x10
  400f4c:	d65f03c0 	ret

0000000000400f50 <Mesh_dot>:
  400f50:	d10043ff 	sub	sp, sp, #0x10
  400f54:	b9000fff 	str	wzr, [sp, #12]
  400f58:	14000046 	b	401070 <Mesh_dot+0x120>
  400f5c:	b9000bff 	str	wzr, [sp, #8]
  400f60:	1400003e 	b	401058 <Mesh_dot+0x108>
  400f64:	b90007ff 	str	wzr, [sp, #4]
  400f68:	14000036 	b	401040 <Mesh_dot+0xf0>
  400f6c:	f0000180 	adrp	x0, 433000 <ms2+0x9358>
  400f70:	9123a002 	add	x2, x0, #0x8e8
  400f74:	b9800be3 	ldrsw	x3, [sp, #8]
  400f78:	b9800fe1 	ldrsw	x1, [sp, #12]
  400f7c:	aa0103e0 	mov	x0, x1
  400f80:	d37ff800 	lsl	x0, x0, #1
  400f84:	8b010000 	add	x0, x0, x1
  400f88:	d37df000 	lsl	x0, x0, #3
  400f8c:	8b010000 	add	x0, x0, x1
  400f90:	d37ef400 	lsl	x0, x0, #2
  400f94:	8b030000 	add	x0, x0, x3
  400f98:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400f9c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fa0:	9101a003 	add	x3, x0, #0x68
  400fa4:	b98007e4 	ldrsw	x4, [sp, #4]
  400fa8:	b9800fe1 	ldrsw	x1, [sp, #12]
  400fac:	aa0103e0 	mov	x0, x1
  400fb0:	d37ff800 	lsl	x0, x0, #1
  400fb4:	8b010000 	add	x0, x0, x1
  400fb8:	d37df000 	lsl	x0, x0, #3
  400fbc:	8b010000 	add	x0, x0, x1
  400fc0:	d37ef400 	lsl	x0, x0, #2
  400fc4:	8b040000 	add	x0, x0, x4
  400fc8:	b8607863 	ldr	w3, [x3, x0, lsl #2]
  400fcc:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400fd0:	9132a004 	add	x4, x0, #0xca8
  400fd4:	b9800be5 	ldrsw	x5, [sp, #8]
  400fd8:	b98007e1 	ldrsw	x1, [sp, #4]
  400fdc:	aa0103e0 	mov	x0, x1
  400fe0:	d37ff800 	lsl	x0, x0, #1
  400fe4:	8b010000 	add	x0, x0, x1
  400fe8:	d37df000 	lsl	x0, x0, #3
  400fec:	8b010000 	add	x0, x0, x1
  400ff0:	d37ef400 	lsl	x0, x0, #2
  400ff4:	8b050000 	add	x0, x0, x5
  400ff8:	b8607880 	ldr	w0, [x4, x0, lsl #2]
  400ffc:	1b007c60 	mul	w0, w3, w0
  401000:	0b000043 	add	w3, w2, w0
  401004:	d0000180 	adrp	x0, 433000 <ms2+0x9358>
  401008:	9123a002 	add	x2, x0, #0x8e8
  40100c:	b9800be4 	ldrsw	x4, [sp, #8]
  401010:	b9800fe1 	ldrsw	x1, [sp, #12]
  401014:	aa0103e0 	mov	x0, x1
  401018:	d37ff800 	lsl	x0, x0, #1
  40101c:	8b010000 	add	x0, x0, x1
  401020:	d37df000 	lsl	x0, x0, #3
  401024:	8b010000 	add	x0, x0, x1
  401028:	d37ef400 	lsl	x0, x0, #2
  40102c:	8b040000 	add	x0, x0, x4
  401030:	b8207843 	str	w3, [x2, x0, lsl #2]
  401034:	b94007e0 	ldr	w0, [sp, #4]
  401038:	11000400 	add	w0, w0, #0x1
  40103c:	b90007e0 	str	w0, [sp, #4]
  401040:	b94007e0 	ldr	w0, [sp, #4]
  401044:	71018c1f 	cmp	w0, #0x63
  401048:	54fff92d 	b.le	400f6c <Mesh_dot+0x1c>
  40104c:	b9400be0 	ldr	w0, [sp, #8]
  401050:	11000400 	add	w0, w0, #0x1
  401054:	b9000be0 	str	w0, [sp, #8]
  401058:	b9400be0 	ldr	w0, [sp, #8]
  40105c:	71018c1f 	cmp	w0, #0x63
  401060:	54fff82d 	b.le	400f64 <Mesh_dot+0x14>
  401064:	b9400fe0 	ldr	w0, [sp, #12]
  401068:	11000400 	add	w0, w0, #0x1
  40106c:	b9000fe0 	str	w0, [sp, #12]
  401070:	b9400fe0 	ldr	w0, [sp, #12]
  401074:	71018c1f 	cmp	w0, #0x63
  401078:	54fff72d 	b.le	400f5c <Mesh_dot+0xc>
  40107c:	52800000 	mov	w0, #0x0                   	// #0
  401080:	910043ff 	add	sp, sp, #0x10
  401084:	d65f03c0 	ret

0000000000401088 <SwapMesh>:
  401088:	d10043ff 	sub	sp, sp, #0x10
  40108c:	b90007ff 	str	wzr, [sp, #4]
  401090:	b9000bff 	str	wzr, [sp, #8]
  401094:	1400003e 	b	40118c <SwapMesh+0x104>
  401098:	b9000fff 	str	wzr, [sp, #12]
  40109c:	14000036 	b	401174 <SwapMesh+0xec>
  4010a0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010a4:	9101a002 	add	x2, x0, #0x68
  4010a8:	b9800be3 	ldrsw	x3, [sp, #8]
  4010ac:	b9800fe1 	ldrsw	x1, [sp, #12]
  4010b0:	aa0103e0 	mov	x0, x1
  4010b4:	d37ff800 	lsl	x0, x0, #1
  4010b8:	8b010000 	add	x0, x0, x1
  4010bc:	d37df000 	lsl	x0, x0, #3
  4010c0:	8b010000 	add	x0, x0, x1
  4010c4:	d37ef400 	lsl	x0, x0, #2
  4010c8:	8b030000 	add	x0, x0, x3
  4010cc:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  4010d0:	b90003e0 	str	w0, [sp]
  4010d4:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010d8:	9132a002 	add	x2, x0, #0xca8
  4010dc:	b9800be3 	ldrsw	x3, [sp, #8]
  4010e0:	b9800fe1 	ldrsw	x1, [sp, #12]
  4010e4:	aa0103e0 	mov	x0, x1
  4010e8:	d37ff800 	lsl	x0, x0, #1
  4010ec:	8b010000 	add	x0, x0, x1
  4010f0:	d37df000 	lsl	x0, x0, #3
  4010f4:	8b010000 	add	x0, x0, x1
  4010f8:	d37ef400 	lsl	x0, x0, #2
  4010fc:	8b030000 	add	x0, x0, x3
  401100:	b8607843 	ldr	w3, [x2, x0, lsl #2]
  401104:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401108:	9101a002 	add	x2, x0, #0x68
  40110c:	b9800be4 	ldrsw	x4, [sp, #8]
  401110:	b9800fe1 	ldrsw	x1, [sp, #12]
  401114:	aa0103e0 	mov	x0, x1
  401118:	d37ff800 	lsl	x0, x0, #1
  40111c:	8b010000 	add	x0, x0, x1
  401120:	d37df000 	lsl	x0, x0, #3
  401124:	8b010000 	add	x0, x0, x1
  401128:	d37ef400 	lsl	x0, x0, #2
  40112c:	8b040000 	add	x0, x0, x4
  401130:	b8207843 	str	w3, [x2, x0, lsl #2]
  401134:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401138:	9132a002 	add	x2, x0, #0xca8
  40113c:	b9800be3 	ldrsw	x3, [sp, #8]
  401140:	b9800fe1 	ldrsw	x1, [sp, #12]
  401144:	aa0103e0 	mov	x0, x1
  401148:	d37ff800 	lsl	x0, x0, #1
  40114c:	8b010000 	add	x0, x0, x1
  401150:	d37df000 	lsl	x0, x0, #3
  401154:	8b010000 	add	x0, x0, x1
  401158:	d37ef400 	lsl	x0, x0, #2
  40115c:	8b030000 	add	x0, x0, x3
  401160:	b94003e1 	ldr	w1, [sp]
  401164:	b8207841 	str	w1, [x2, x0, lsl #2]
  401168:	b9400fe0 	ldr	w0, [sp, #12]
  40116c:	11000400 	add	w0, w0, #0x1
  401170:	b9000fe0 	str	w0, [sp, #12]
  401174:	b9400fe0 	ldr	w0, [sp, #12]
  401178:	71018c1f 	cmp	w0, #0x63
  40117c:	54fff92d 	b.le	4010a0 <SwapMesh+0x18>
  401180:	b9400be0 	ldr	w0, [sp, #8]
  401184:	11000400 	add	w0, w0, #0x1
  401188:	b9000be0 	str	w0, [sp, #8]
  40118c:	b9400be0 	ldr	w0, [sp, #8]
  401190:	71018c1f 	cmp	w0, #0x63
  401194:	54fff82d 	b.le	401098 <SwapMesh+0x10>
  401198:	52800000 	mov	w0, #0x0                   	// #0
  40119c:	910043ff 	add	sp, sp, #0x10
  4011a0:	d65f03c0 	ret

00000000004011a4 <LoadData>:
  4011a4:	a9ae7bfd 	stp	x29, x30, [sp, #-288]!
  4011a8:	910003fd 	mov	x29, sp
  4011ac:	f9008fff 	str	xzr, [sp, #280]
  4011b0:	90000000 	adrp	x0, 401000 <Mesh_dot+0xb0>
  4011b4:	91168001 	add	x1, x0, #0x5a0
  4011b8:	90000000 	adrp	x0, 401000 <Mesh_dot+0xb0>
  4011bc:	9116a000 	add	x0, x0, #0x5a8
  4011c0:	97fffd30 	bl	400680 <fopen@plt>
  4011c4:	f9008fe0 	str	x0, [sp, #280]
  4011c8:	910063e0 	add	x0, sp, #0x18
  4011cc:	f9408fe2 	ldr	x2, [sp, #280]
  4011d0:	52801fe1 	mov	w1, #0xff                  	// #255
  4011d4:	97fffd47 	bl	4006f0 <fgets@plt>
  4011d8:	910063e0 	add	x0, sp, #0x18
  4011dc:	aa0003e1 	mov	x1, x0
  4011e0:	90000000 	adrp	x0, 401000 <Mesh_dot+0xb0>
  4011e4:	91184000 	add	x0, x0, #0x610
  4011e8:	97fffd3a 	bl	4006d0 <printf@plt>
  4011ec:	910063e0 	add	x0, sp, #0x18
  4011f0:	f9408fe2 	ldr	x2, [sp, #280]
  4011f4:	52801fe1 	mov	w1, #0xff                  	// #255
  4011f8:	97fffd3e 	bl	4006f0 <fgets@plt>
  4011fc:	f9408fe0 	ldr	x0, [sp, #280]
  401200:	97fffd1c 	bl	400670 <fclose@plt>
  401204:	52800000 	mov	w0, #0x0                   	// #0
  401208:	a8d27bfd 	ldp	x29, x30, [sp], #288
  40120c:	d65f03c0 	ret

0000000000401210 <ComplexDataHandle>:
  401210:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  401214:	910003fd 	mov	x29, sp
  401218:	94000007 	bl	401234 <ManiplateData1>
  40121c:	b9001fe0 	str	w0, [sp, #28]
  401220:	94000051 	bl	401364 <ManiplateData2>
  401224:	b9001fe0 	str	w0, [sp, #28]
  401228:	52800000 	mov	w0, #0x0                   	// #0
  40122c:	a8c27bfd 	ldp	x29, x30, [sp], #32
  401230:	d65f03c0 	ret

0000000000401234 <ManiplateData1>:
  401234:	d10043ff 	sub	sp, sp, #0x10
  401238:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40123c:	9101a000 	add	x0, x0, #0x68
  401240:	52800281 	mov	w1, #0x14                  	// #20
  401244:	b9019401 	str	w1, [x0, #404]
  401248:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40124c:	9101a000 	add	x0, x0, #0x68
  401250:	b9419400 	ldr	w0, [x0, #404]
  401254:	b9000fe0 	str	w0, [sp, #12]
  401258:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40125c:	9101a000 	add	x0, x0, #0x68
  401260:	528003c1 	mov	w1, #0x1e                  	// #30
  401264:	b9019401 	str	w1, [x0, #404]
  401268:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40126c:	9101a000 	add	x0, x0, #0x68
  401270:	b9419400 	ldr	w0, [x0, #404]
  401274:	b9000fe0 	str	w0, [sp, #12]
  401278:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40127c:	9101a000 	add	x0, x0, #0x68
  401280:	b9419400 	ldr	w0, [x0, #404]
  401284:	b9000fe0 	str	w0, [sp, #12]
  401288:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40128c:	9101a000 	add	x0, x0, #0x68
  401290:	52800641 	mov	w1, #0x32                  	// #50
  401294:	b9032401 	str	w1, [x0, #804]
  401298:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40129c:	9101a000 	add	x0, x0, #0x68
  4012a0:	52800781 	mov	w1, #0x3c                  	// #60
  4012a4:	b9032401 	str	w1, [x0, #804]
  4012a8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012ac:	9101a000 	add	x0, x0, #0x68
  4012b0:	528008c1 	mov	w1, #0x46                  	// #70
  4012b4:	b9032401 	str	w1, [x0, #804]
  4012b8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012bc:	9101a000 	add	x0, x0, #0x68
  4012c0:	b9432400 	ldr	w0, [x0, #804]
  4012c4:	b9000fe0 	str	w0, [sp, #12]
  4012c8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012cc:	9101a000 	add	x0, x0, #0x68
  4012d0:	b9432400 	ldr	w0, [x0, #804]
  4012d4:	b9000fe0 	str	w0, [sp, #12]
  4012d8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012dc:	9101a000 	add	x0, x0, #0x68
  4012e0:	52800c61 	mov	w1, #0x63                  	// #99
  4012e4:	b9032401 	str	w1, [x0, #804]
  4012e8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012ec:	9101a000 	add	x0, x0, #0x68
  4012f0:	b9432400 	ldr	w0, [x0, #804]
  4012f4:	b9000fe0 	str	w0, [sp, #12]
  4012f8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012fc:	9101a000 	add	x0, x0, #0x68
  401300:	52800501 	mov	w1, #0x28                  	// #40
  401304:	b9019801 	str	w1, [x0, #408]
  401308:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40130c:	9101a000 	add	x0, x0, #0x68
  401310:	b9419400 	ldr	w0, [x0, #404]
  401314:	b9000fe0 	str	w0, [sp, #12]
  401318:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40131c:	9101a000 	add	x0, x0, #0x68
  401320:	528003c1 	mov	w1, #0x1e                  	// #30
  401324:	b9019801 	str	w1, [x0, #408]
  401328:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40132c:	9101a000 	add	x0, x0, #0x68
  401330:	b9419800 	ldr	w0, [x0, #408]
  401334:	b9000fe0 	str	w0, [sp, #12]
  401338:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40133c:	9101a000 	add	x0, x0, #0x68
  401340:	b9419800 	ldr	w0, [x0, #408]
  401344:	b9000fe0 	str	w0, [sp, #12]
  401348:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40134c:	9101a000 	add	x0, x0, #0x68
  401350:	52800641 	mov	w1, #0x32                  	// #50
  401354:	b9019801 	str	w1, [x0, #408]
  401358:	52800000 	mov	w0, #0x0                   	// #0
  40135c:	910043ff 	add	sp, sp, #0x10
  401360:	d65f03c0 	ret

0000000000401364 <ManiplateData2>:
  401364:	d10043ff 	sub	sp, sp, #0x10
  401368:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  40136c:	9132a000 	add	x0, x0, #0xca8
  401370:	52800281 	mov	w1, #0x14                  	// #20
  401374:	b9019401 	str	w1, [x0, #404]
  401378:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  40137c:	9132a000 	add	x0, x0, #0xca8
  401380:	b9419400 	ldr	w0, [x0, #404]
  401384:	b9000fe0 	str	w0, [sp, #12]
  401388:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  40138c:	9132a000 	add	x0, x0, #0xca8
  401390:	528003c1 	mov	w1, #0x1e                  	// #30
  401394:	b9019401 	str	w1, [x0, #404]
  401398:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  40139c:	9132a000 	add	x0, x0, #0xca8
  4013a0:	b9419400 	ldr	w0, [x0, #404]
  4013a4:	b9000fe0 	str	w0, [sp, #12]
  4013a8:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013ac:	9132a000 	add	x0, x0, #0xca8
  4013b0:	b9419400 	ldr	w0, [x0, #404]
  4013b4:	b9000fe0 	str	w0, [sp, #12]
  4013b8:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013bc:	9132a000 	add	x0, x0, #0xca8
  4013c0:	52800641 	mov	w1, #0x32                  	// #50
  4013c4:	b9032401 	str	w1, [x0, #804]
  4013c8:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013cc:	9132a000 	add	x0, x0, #0xca8
  4013d0:	52800781 	mov	w1, #0x3c                  	// #60
  4013d4:	b9032401 	str	w1, [x0, #804]
  4013d8:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013dc:	9132a000 	add	x0, x0, #0xca8
  4013e0:	528008c1 	mov	w1, #0x46                  	// #70
  4013e4:	b9032401 	str	w1, [x0, #804]
  4013e8:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013ec:	9132a000 	add	x0, x0, #0xca8
  4013f0:	b9432400 	ldr	w0, [x0, #804]
  4013f4:	b9000fe0 	str	w0, [sp, #12]
  4013f8:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013fc:	9132a000 	add	x0, x0, #0xca8
  401400:	b9432400 	ldr	w0, [x0, #804]
  401404:	b9000fe0 	str	w0, [sp, #12]
  401408:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  40140c:	9132a000 	add	x0, x0, #0xca8
  401410:	52800c61 	mov	w1, #0x63                  	// #99
  401414:	b9032401 	str	w1, [x0, #804]
  401418:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  40141c:	9132a000 	add	x0, x0, #0xca8
  401420:	b9432400 	ldr	w0, [x0, #804]
  401424:	b9000fe0 	str	w0, [sp, #12]
  401428:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  40142c:	9132a000 	add	x0, x0, #0xca8
  401430:	52800501 	mov	w1, #0x28                  	// #40
  401434:	b9019801 	str	w1, [x0, #408]
  401438:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  40143c:	9132a000 	add	x0, x0, #0xca8
  401440:	b9419800 	ldr	w0, [x0, #408]
  401444:	b9000fe0 	str	w0, [sp, #12]
  401448:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  40144c:	9132a000 	add	x0, x0, #0xca8
  401450:	528003c1 	mov	w1, #0x1e                  	// #30
  401454:	b9019801 	str	w1, [x0, #408]
  401458:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  40145c:	9132a000 	add	x0, x0, #0xca8
  401460:	b9419800 	ldr	w0, [x0, #408]
  401464:	b9000fe0 	str	w0, [sp, #12]
  401468:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  40146c:	9132a000 	add	x0, x0, #0xca8
  401470:	b9419800 	ldr	w0, [x0, #408]
  401474:	b9000fe0 	str	w0, [sp, #12]
  401478:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  40147c:	9132a000 	add	x0, x0, #0xca8
  401480:	52800641 	mov	w1, #0x32                  	// #50
  401484:	b9019801 	str	w1, [x0, #408]
  401488:	52800000 	mov	w0, #0x0                   	// #0
  40148c:	910043ff 	add	sp, sp, #0x10
  401490:	d65f03c0 	ret

0000000000401494 <StoreData>:
  401494:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  401498:	910003fd 	mov	x29, sp
  40149c:	f9000bff 	str	xzr, [sp, #16]
  4014a0:	90000000 	adrp	x0, 401000 <Mesh_dot+0xb0>
  4014a4:	91186001 	add	x1, x0, #0x618
  4014a8:	90000000 	adrp	x0, 401000 <Mesh_dot+0xb0>
  4014ac:	9116a000 	add	x0, x0, #0x5a8
  4014b0:	97fffc74 	bl	400680 <fopen@plt>
  4014b4:	f9000be0 	str	x0, [sp, #16]
  4014b8:	f9400be3 	ldr	x3, [sp, #16]
  4014bc:	d28000e2 	mov	x2, #0x7                   	// #7
  4014c0:	d2800021 	mov	x1, #0x1                   	// #1
  4014c4:	90000000 	adrp	x0, 401000 <Mesh_dot+0xb0>
  4014c8:	91188000 	add	x0, x0, #0x620
  4014cc:	97fffc7d 	bl	4006c0 <fwrite@plt>
  4014d0:	b9001fff 	str	wzr, [sp, #28]
  4014d4:	1400001d 	b	401548 <StoreData+0xb4>
  4014d8:	b9001bff 	str	wzr, [sp, #24]
  4014dc:	14000015 	b	401530 <StoreData+0x9c>
  4014e0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4014e4:	9101a002 	add	x2, x0, #0x68
  4014e8:	b9801be3 	ldrsw	x3, [sp, #24]
  4014ec:	b9801fe1 	ldrsw	x1, [sp, #28]
  4014f0:	aa0103e0 	mov	x0, x1
  4014f4:	d37ff800 	lsl	x0, x0, #1
  4014f8:	8b010000 	add	x0, x0, x1
  4014fc:	d37df000 	lsl	x0, x0, #3
  401500:	8b010000 	add	x0, x0, x1
  401504:	d37ef400 	lsl	x0, x0, #2
  401508:	8b030000 	add	x0, x0, x3
  40150c:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  401510:	2a0003e2 	mov	w2, w0
  401514:	90000000 	adrp	x0, 401000 <Mesh_dot+0xb0>
  401518:	9118a001 	add	x1, x0, #0x628
  40151c:	f9400be0 	ldr	x0, [sp, #16]
  401520:	97fffc70 	bl	4006e0 <fprintf@plt>
  401524:	b9401be0 	ldr	w0, [sp, #24]
  401528:	11000400 	add	w0, w0, #0x1
  40152c:	b9001be0 	str	w0, [sp, #24]
  401530:	b9401be0 	ldr	w0, [sp, #24]
  401534:	71018c1f 	cmp	w0, #0x63
  401538:	54fffd4d 	b.le	4014e0 <StoreData+0x4c>
  40153c:	b9401fe0 	ldr	w0, [sp, #28]
  401540:	11000400 	add	w0, w0, #0x1
  401544:	b9001fe0 	str	w0, [sp, #28]
  401548:	b9401fe0 	ldr	w0, [sp, #28]
  40154c:	71018c1f 	cmp	w0, #0x63
  401550:	54fffc4d 	b.le	4014d8 <StoreData+0x44>
  401554:	f9400be3 	ldr	x3, [sp, #16]
  401558:	d2800042 	mov	x2, #0x2                   	// #2
  40155c:	d2800021 	mov	x1, #0x1                   	// #1
  401560:	90000000 	adrp	x0, 401000 <Mesh_dot+0xb0>
  401564:	9118c000 	add	x0, x0, #0x630
  401568:	97fffc56 	bl	4006c0 <fwrite@plt>
  40156c:	f9400be0 	ldr	x0, [sp, #16]
  401570:	97fffc40 	bl	400670 <fclose@plt>
  401574:	52800000 	mov	w0, #0x0                   	// #0
  401578:	a8c27bfd 	ldp	x29, x30, [sp], #32
  40157c:	d65f03c0 	ret

Disassembly of section .fini:

0000000000401580 <_fini>:
  401580:	d503201f 	nop
  401584:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  401588:	910003fd 	mov	x29, sp
  40158c:	a8c17bfd 	ldp	x29, x30, [sp], #16
  401590:	d65f03c0 	ret
