
local_bench.out：     文件格式 elf64-littleaarch64


Disassembly of section .init:

0000000000400508 <_init>:
  400508:	d503201f 	nop
  40050c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400510:	910003fd 	mov	x29, sp
  400514:	9400003c 	bl	400604 <call_weak_fn>
  400518:	a8c17bfd 	ldp	x29, x30, [sp], #16
  40051c:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400520 <.plt>:
  400520:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  400524:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1dee0>
  400528:	f947fe11 	ldr	x17, [x16, #4088]
  40052c:	913fe210 	add	x16, x16, #0xff8
  400530:	d61f0220 	br	x17
  400534:	d503201f 	nop
  400538:	d503201f 	nop
  40053c:	d503201f 	nop

0000000000400540 <__libc_start_main@plt>:
  400540:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400544:	f9400211 	ldr	x17, [x16]
  400548:	91000210 	add	x16, x16, #0x0
  40054c:	d61f0220 	br	x17

0000000000400550 <rand@plt>:
  400550:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400554:	f9400611 	ldr	x17, [x16, #8]
  400558:	91002210 	add	x16, x16, #0x8
  40055c:	d61f0220 	br	x17

0000000000400560 <__gmon_start__@plt>:
  400560:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400564:	f9400a11 	ldr	x17, [x16, #16]
  400568:	91004210 	add	x16, x16, #0x10
  40056c:	d61f0220 	br	x17

0000000000400570 <abort@plt>:
  400570:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400574:	f9400e11 	ldr	x17, [x16, #24]
  400578:	91006210 	add	x16, x16, #0x18
  40057c:	d61f0220 	br	x17

0000000000400580 <printf@plt>:
  400580:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400584:	f9401211 	ldr	x17, [x16, #32]
  400588:	91008210 	add	x16, x16, #0x20
  40058c:	d61f0220 	br	x17

Disassembly of section .text:

00000000004005c0 <_start>:
  4005c0:	d503201f 	nop
  4005c4:	d280001d 	mov	x29, #0x0                   	// #0
  4005c8:	d280001e 	mov	x30, #0x0                   	// #0
  4005cc:	aa0003e5 	mov	x5, x0
  4005d0:	f94003e1 	ldr	x1, [sp]
  4005d4:	910023e2 	add	x2, sp, #0x8
  4005d8:	910003e6 	mov	x6, sp
  4005dc:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  4005e0:	9117d000 	add	x0, x0, #0x5f4
  4005e4:	d2800003 	mov	x3, #0x0                   	// #0
  4005e8:	d2800004 	mov	x4, #0x0                   	// #0
  4005ec:	97ffffd5 	bl	400540 <__libc_start_main@plt>
  4005f0:	97ffffe0 	bl	400570 <abort@plt>

00000000004005f4 <__wrap_main>:
  4005f4:	d503201f 	nop
  4005f8:	14000202 	b	400e00 <main>
  4005fc:	d503201f 	nop

0000000000400600 <_dl_relocate_static_pie>:
  400600:	d65f03c0 	ret

0000000000400604 <call_weak_fn>:
  400604:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1dee0>
  400608:	f947ec00 	ldr	x0, [x0, #4056]
  40060c:	b4000040 	cbz	x0, 400614 <call_weak_fn+0x10>
  400610:	17ffffd4 	b	400560 <__gmon_start__@plt>
  400614:	d65f03c0 	ret
  400618:	d503201f 	nop
  40061c:	d503201f 	nop

0000000000400620 <deregister_tm_clones>:
  400620:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400624:	9100e000 	add	x0, x0, #0x38
  400628:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40062c:	9100e021 	add	x1, x1, #0x38
  400630:	eb00003f 	cmp	x1, x0
  400634:	540000c0 	b.eq	40064c <deregister_tm_clones+0x2c>  // b.none
  400638:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1dee0>
  40063c:	f947e821 	ldr	x1, [x1, #4048]
  400640:	b4000061 	cbz	x1, 40064c <deregister_tm_clones+0x2c>
  400644:	aa0103f0 	mov	x16, x1
  400648:	d61f0200 	br	x16
  40064c:	d65f03c0 	ret

0000000000400650 <register_tm_clones>:
  400650:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400654:	9100e000 	add	x0, x0, #0x38
  400658:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40065c:	9100e021 	add	x1, x1, #0x38
  400660:	cb000021 	sub	x1, x1, x0
  400664:	d37ffc22 	lsr	x2, x1, #63
  400668:	8b810c41 	add	x1, x2, x1, asr #3
  40066c:	9341fc21 	asr	x1, x1, #1
  400670:	b40000c1 	cbz	x1, 400688 <register_tm_clones+0x38>
  400674:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1dee0>
  400678:	f947f042 	ldr	x2, [x2, #4064]
  40067c:	b4000062 	cbz	x2, 400688 <register_tm_clones+0x38>
  400680:	aa0203f0 	mov	x16, x2
  400684:	d61f0200 	br	x16
  400688:	d65f03c0 	ret
  40068c:	d503201f 	nop

0000000000400690 <__do_global_dtors_aux>:
  400690:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400694:	910003fd 	mov	x29, sp
  400698:	f9000bf3 	str	x19, [sp, #16]
  40069c:	90000113 	adrp	x19, 420000 <__libc_start_main@GLIBC_2.34>
  4006a0:	3940e260 	ldrb	w0, [x19, #56]
  4006a4:	35000080 	cbnz	w0, 4006b4 <__do_global_dtors_aux+0x24>
  4006a8:	97ffffde 	bl	400620 <deregister_tm_clones>
  4006ac:	52800020 	mov	w0, #0x1                   	// #1
  4006b0:	3900e260 	strb	w0, [x19, #56]
  4006b4:	f9400bf3 	ldr	x19, [sp, #16]
  4006b8:	a8c27bfd 	ldp	x29, x30, [sp], #32
  4006bc:	d65f03c0 	ret

00000000004006c0 <frame_dummy>:
  4006c0:	17ffffe4 	b	400650 <register_tm_clones>

00000000004006c4 <init_array>:
  4006c4:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4006c8:	910003fd 	mov	x29, sp
  4006cc:	b9001fff 	str	wzr, [sp, #28]
  4006d0:	1400000a 	b	4006f8 <init_array+0x34>
  4006d4:	97ffff9f 	bl	400550 <rand@plt>
  4006d8:	2a0003e2 	mov	w2, w0
  4006dc:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  4006e0:	91090000 	add	x0, x0, #0x240
  4006e4:	b9801fe1 	ldrsw	x1, [sp, #28]
  4006e8:	b8217802 	str	w2, [x0, x1, lsl #2]
  4006ec:	b9401fe0 	ldr	w0, [sp, #28]
  4006f0:	11000400 	add	w0, w0, #0x1
  4006f4:	b9001fe0 	str	w0, [sp, #28]
  4006f8:	b9401fe1 	ldr	w1, [sp, #28]
  4006fc:	5284e1e0 	mov	w0, #0x270f                	// #9999
  400700:	6b00003f 	cmp	w1, w0
  400704:	54fffe8d 	b.le	4006d4 <init_array+0x10>
  400708:	d503201f 	nop
  40070c:	d503201f 	nop
  400710:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400714:	d65f03c0 	ret

0000000000400718 <insert_sort>:
  400718:	d10043ff 	sub	sp, sp, #0x10
  40071c:	52800020 	mov	w0, #0x1                   	// #1
  400720:	b9000fe0 	str	w0, [sp, #12]
  400724:	1400002b 	b	4007d0 <insert_sort+0xb8>
  400728:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  40072c:	91090000 	add	x0, x0, #0x240
  400730:	b9800fe1 	ldrsw	x1, [sp, #12]
  400734:	b8617800 	ldr	w0, [x0, x1, lsl #2]
  400738:	b90007e0 	str	w0, [sp, #4]
  40073c:	b9400fe0 	ldr	w0, [sp, #12]
  400740:	51000400 	sub	w0, w0, #0x1
  400744:	b9000be0 	str	w0, [sp, #8]
  400748:	1400000e 	b	400780 <insert_sort+0x68>
  40074c:	b9400be0 	ldr	w0, [sp, #8]
  400750:	11000403 	add	w3, w0, #0x1
  400754:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  400758:	91090000 	add	x0, x0, #0x240
  40075c:	b9800be1 	ldrsw	x1, [sp, #8]
  400760:	b8617802 	ldr	w2, [x0, x1, lsl #2]
  400764:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  400768:	91090000 	add	x0, x0, #0x240
  40076c:	93407c61 	sxtw	x1, w3
  400770:	b8217802 	str	w2, [x0, x1, lsl #2]
  400774:	b9400be0 	ldr	w0, [sp, #8]
  400778:	51000400 	sub	w0, w0, #0x1
  40077c:	b9000be0 	str	w0, [sp, #8]
  400780:	b9400be0 	ldr	w0, [sp, #8]
  400784:	7100001f 	cmp	w0, #0x0
  400788:	5400010b 	b.lt	4007a8 <insert_sort+0x90>  // b.tstop
  40078c:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  400790:	91090000 	add	x0, x0, #0x240
  400794:	b9800be1 	ldrsw	x1, [sp, #8]
  400798:	b8617800 	ldr	w0, [x0, x1, lsl #2]
  40079c:	b94007e1 	ldr	w1, [sp, #4]
  4007a0:	6b00003f 	cmp	w1, w0
  4007a4:	54fffd4b 	b.lt	40074c <insert_sort+0x34>  // b.tstop
  4007a8:	b9400be0 	ldr	w0, [sp, #8]
  4007ac:	11000401 	add	w1, w0, #0x1
  4007b0:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  4007b4:	91090000 	add	x0, x0, #0x240
  4007b8:	93407c21 	sxtw	x1, w1
  4007bc:	b94007e2 	ldr	w2, [sp, #4]
  4007c0:	b8217802 	str	w2, [x0, x1, lsl #2]
  4007c4:	b9400fe0 	ldr	w0, [sp, #12]
  4007c8:	11000400 	add	w0, w0, #0x1
  4007cc:	b9000fe0 	str	w0, [sp, #12]
  4007d0:	b9400fe1 	ldr	w1, [sp, #12]
  4007d4:	5284e1e0 	mov	w0, #0x270f                	// #9999
  4007d8:	6b00003f 	cmp	w1, w0
  4007dc:	54fffa6d 	b.le	400728 <insert_sort+0x10>
  4007e0:	d503201f 	nop
  4007e4:	d503201f 	nop
  4007e8:	910043ff 	add	sp, sp, #0x10
  4007ec:	d65f03c0 	ret

00000000004007f0 <insert_sort_print>:
  4007f0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4007f4:	910003fd 	mov	x29, sp
  4007f8:	b9001fff 	str	wzr, [sp, #28]
  4007fc:	1400000c 	b	40082c <insert_sort_print+0x3c>
  400800:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  400804:	91090000 	add	x0, x0, #0x240
  400808:	b9801fe1 	ldrsw	x1, [sp, #28]
  40080c:	b8617800 	ldr	w0, [x0, x1, lsl #2]
  400810:	2a0003e1 	mov	w1, w0
  400814:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400818:	9139e000 	add	x0, x0, #0xe78
  40081c:	97ffff59 	bl	400580 <printf@plt>
  400820:	b9401fe0 	ldr	w0, [sp, #28]
  400824:	11000400 	add	w0, w0, #0x1
  400828:	b9001fe0 	str	w0, [sp, #28]
  40082c:	b9401fe1 	ldr	w1, [sp, #28]
  400830:	5284e1e0 	mov	w0, #0x270f                	// #9999
  400834:	6b00003f 	cmp	w1, w0
  400838:	54fffe4d 	b.le	400800 <insert_sort_print+0x10>
  40083c:	d503201f 	nop
  400840:	d503201f 	nop
  400844:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400848:	d65f03c0 	ret

000000000040084c <fbnc>:
  40084c:	d10043ff 	sub	sp, sp, #0x10
  400850:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  400854:	91090000 	add	x0, x0, #0x240
  400858:	52800021 	mov	w1, #0x1                   	// #1
  40085c:	b9000401 	str	w1, [x0, #4]
  400860:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  400864:	91090000 	add	x0, x0, #0x240
  400868:	b9400401 	ldr	w1, [x0, #4]
  40086c:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  400870:	91090000 	add	x0, x0, #0x240
  400874:	b9000001 	str	w1, [x0]
  400878:	52800040 	mov	w0, #0x2                   	// #2
  40087c:	b9000fe0 	str	w0, [sp, #12]
  400880:	14000029 	b	400924 <fbnc+0xd8>
  400884:	b9400fe0 	ldr	w0, [sp, #12]
  400888:	51000401 	sub	w1, w0, #0x1
  40088c:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  400890:	91090000 	add	x0, x0, #0x240
  400894:	93407c21 	sxtw	x1, w1
  400898:	b8617801 	ldr	w1, [x0, x1, lsl #2]
  40089c:	b9400fe0 	ldr	w0, [sp, #12]
  4008a0:	51000802 	sub	w2, w0, #0x2
  4008a4:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  4008a8:	91090000 	add	x0, x0, #0x240
  4008ac:	93407c42 	sxtw	x2, w2
  4008b0:	b8627800 	ldr	w0, [x0, x2, lsl #2]
  4008b4:	0b000022 	add	w2, w1, w0
  4008b8:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  4008bc:	91090000 	add	x0, x0, #0x240
  4008c0:	b9800fe1 	ldrsw	x1, [sp, #12]
  4008c4:	b8217802 	str	w2, [x0, x1, lsl #2]
  4008c8:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  4008cc:	91090000 	add	x0, x0, #0x240
  4008d0:	b9800fe1 	ldrsw	x1, [sp, #12]
  4008d4:	b8617800 	ldr	w0, [x0, x1, lsl #2]
  4008d8:	529555a1 	mov	w1, #0xaaad                	// #43693
  4008dc:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  4008e0:	9b217c01 	smull	x1, w0, w1
  4008e4:	d360fc21 	lsr	x1, x1, #32
  4008e8:	0b010001 	add	w1, w0, w1
  4008ec:	13107c22 	asr	w2, w1, #16
  4008f0:	131f7c01 	asr	w1, w0, #31
  4008f4:	4b010041 	sub	w1, w2, w1
  4008f8:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  4008fc:	72a00022 	movk	w2, #0x1, lsl #16
  400900:	1b027c21 	mul	w1, w1, w2
  400904:	4b010001 	sub	w1, w0, w1
  400908:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  40090c:	91090000 	add	x0, x0, #0x240
  400910:	b9800fe2 	ldrsw	x2, [sp, #12]
  400914:	b8227801 	str	w1, [x0, x2, lsl #2]
  400918:	b9400fe0 	ldr	w0, [sp, #12]
  40091c:	11000400 	add	w0, w0, #0x1
  400920:	b9000fe0 	str	w0, [sp, #12]
  400924:	b9400fe1 	ldr	w1, [sp, #12]
  400928:	5284e200 	mov	w0, #0x2710                	// #10000
  40092c:	6b00003f 	cmp	w1, w0
  400930:	54fffaad 	b.le	400884 <fbnc+0x38>
  400934:	d503201f 	nop
  400938:	d503201f 	nop
  40093c:	910043ff 	add	sp, sp, #0x10
  400940:	d65f03c0 	ret

0000000000400944 <initializematrix_int>:
  400944:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400948:	910003fd 	mov	x29, sp
  40094c:	b9001fff 	str	wzr, [sp, #28]
  400950:	14000084 	b	400b60 <initializematrix_int+0x21c>
  400954:	b9001bff 	str	wzr, [sp, #24]
  400958:	1400007c 	b	400b48 <initializematrix_int+0x204>
  40095c:	97fffefd 	bl	400550 <rand@plt>
  400960:	93407c03 	sxtw	x3, w0
  400964:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400968:	91010002 	add	x2, x0, #0x40
  40096c:	b9801be4 	ldrsw	x4, [sp, #24]
  400970:	b9801fe1 	ldrsw	x1, [sp, #28]
  400974:	aa0103e0 	mov	x0, x1
  400978:	d37ff800 	lsl	x0, x0, #1
  40097c:	8b010000 	add	x0, x0, x1
  400980:	d37df000 	lsl	x0, x0, #3
  400984:	8b010000 	add	x0, x0, x1
  400988:	d37ef400 	lsl	x0, x0, #2
  40098c:	8b040000 	add	x0, x0, x4
  400990:	f8207843 	str	x3, [x2, x0, lsl #3]
  400994:	97fffeef 	bl	400550 <rand@plt>
  400998:	93407c03 	sxtw	x3, w0
  40099c:	f0000180 	adrp	x0, 433000 <matrix_1+0x12fc0>
  4009a0:	91230002 	add	x2, x0, #0x8c0
  4009a4:	b9801be4 	ldrsw	x4, [sp, #24]
  4009a8:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009ac:	aa0103e0 	mov	x0, x1
  4009b0:	d37ff800 	lsl	x0, x0, #1
  4009b4:	8b010000 	add	x0, x0, x1
  4009b8:	d37df000 	lsl	x0, x0, #3
  4009bc:	8b010000 	add	x0, x0, x1
  4009c0:	d37ef400 	lsl	x0, x0, #2
  4009c4:	8b040000 	add	x0, x0, x4
  4009c8:	f8207843 	str	x3, [x2, x0, lsl #3]
  4009cc:	d00002c0 	adrp	x0, 45a000 <matrix_3+0x12ec0>
  4009d0:	91270002 	add	x2, x0, #0x9c0
  4009d4:	b9801be3 	ldrsw	x3, [sp, #24]
  4009d8:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009dc:	aa0103e0 	mov	x0, x1
  4009e0:	d37ff800 	lsl	x0, x0, #1
  4009e4:	8b010000 	add	x0, x0, x1
  4009e8:	d37df000 	lsl	x0, x0, #3
  4009ec:	8b010000 	add	x0, x0, x1
  4009f0:	d37ef400 	lsl	x0, x0, #2
  4009f4:	8b030000 	add	x0, x0, x3
  4009f8:	f820785f 	str	xzr, [x2, x0, lsl #3]
  4009fc:	97fffed5 	bl	400550 <rand@plt>
  400a00:	93407c03 	sxtw	x3, w0
  400a04:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400a08:	91010002 	add	x2, x0, #0x40
  400a0c:	b9801be4 	ldrsw	x4, [sp, #24]
  400a10:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a14:	aa0103e0 	mov	x0, x1
  400a18:	d37ff800 	lsl	x0, x0, #1
  400a1c:	8b010000 	add	x0, x0, x1
  400a20:	d37df000 	lsl	x0, x0, #3
  400a24:	8b010000 	add	x0, x0, x1
  400a28:	d37ef400 	lsl	x0, x0, #2
  400a2c:	8b040000 	add	x0, x0, x4
  400a30:	f8207843 	str	x3, [x2, x0, lsl #3]
  400a34:	97fffec7 	bl	400550 <rand@plt>
  400a38:	93407c03 	sxtw	x3, w0
  400a3c:	f0000180 	adrp	x0, 433000 <matrix_1+0x12fc0>
  400a40:	91230002 	add	x2, x0, #0x8c0
  400a44:	b9801be4 	ldrsw	x4, [sp, #24]
  400a48:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a4c:	aa0103e0 	mov	x0, x1
  400a50:	d37ff800 	lsl	x0, x0, #1
  400a54:	8b010000 	add	x0, x0, x1
  400a58:	d37df000 	lsl	x0, x0, #3
  400a5c:	8b010000 	add	x0, x0, x1
  400a60:	d37ef400 	lsl	x0, x0, #2
  400a64:	8b040000 	add	x0, x0, x4
  400a68:	f8207843 	str	x3, [x2, x0, lsl #3]
  400a6c:	d00002c0 	adrp	x0, 45a000 <matrix_3+0x12ec0>
  400a70:	91270002 	add	x2, x0, #0x9c0
  400a74:	b9801be3 	ldrsw	x3, [sp, #24]
  400a78:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a7c:	aa0103e0 	mov	x0, x1
  400a80:	d37ff800 	lsl	x0, x0, #1
  400a84:	8b010000 	add	x0, x0, x1
  400a88:	d37df000 	lsl	x0, x0, #3
  400a8c:	8b010000 	add	x0, x0, x1
  400a90:	d37ef400 	lsl	x0, x0, #2
  400a94:	8b030000 	add	x0, x0, x3
  400a98:	f820785f 	str	xzr, [x2, x0, lsl #3]
  400a9c:	97fffead 	bl	400550 <rand@plt>
  400aa0:	93407c03 	sxtw	x3, w0
  400aa4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400aa8:	91010002 	add	x2, x0, #0x40
  400aac:	b9801be4 	ldrsw	x4, [sp, #24]
  400ab0:	b9801fe1 	ldrsw	x1, [sp, #28]
  400ab4:	aa0103e0 	mov	x0, x1
  400ab8:	d37ff800 	lsl	x0, x0, #1
  400abc:	8b010000 	add	x0, x0, x1
  400ac0:	d37df000 	lsl	x0, x0, #3
  400ac4:	8b010000 	add	x0, x0, x1
  400ac8:	d37ef400 	lsl	x0, x0, #2
  400acc:	8b040000 	add	x0, x0, x4
  400ad0:	f8207843 	str	x3, [x2, x0, lsl #3]
  400ad4:	97fffe9f 	bl	400550 <rand@plt>
  400ad8:	93407c03 	sxtw	x3, w0
  400adc:	f0000180 	adrp	x0, 433000 <matrix_1+0x12fc0>
  400ae0:	91230002 	add	x2, x0, #0x8c0
  400ae4:	b9801be4 	ldrsw	x4, [sp, #24]
  400ae8:	b9801fe1 	ldrsw	x1, [sp, #28]
  400aec:	aa0103e0 	mov	x0, x1
  400af0:	d37ff800 	lsl	x0, x0, #1
  400af4:	8b010000 	add	x0, x0, x1
  400af8:	d37df000 	lsl	x0, x0, #3
  400afc:	8b010000 	add	x0, x0, x1
  400b00:	d37ef400 	lsl	x0, x0, #2
  400b04:	8b040000 	add	x0, x0, x4
  400b08:	f8207843 	str	x3, [x2, x0, lsl #3]
  400b0c:	d00002c0 	adrp	x0, 45a000 <matrix_3+0x12ec0>
  400b10:	91270002 	add	x2, x0, #0x9c0
  400b14:	b9801be3 	ldrsw	x3, [sp, #24]
  400b18:	b9801fe1 	ldrsw	x1, [sp, #28]
  400b1c:	aa0103e0 	mov	x0, x1
  400b20:	d37ff800 	lsl	x0, x0, #1
  400b24:	8b010000 	add	x0, x0, x1
  400b28:	d37df000 	lsl	x0, x0, #3
  400b2c:	8b010000 	add	x0, x0, x1
  400b30:	d37ef400 	lsl	x0, x0, #2
  400b34:	8b030000 	add	x0, x0, x3
  400b38:	f820785f 	str	xzr, [x2, x0, lsl #3]
  400b3c:	b9401be0 	ldr	w0, [sp, #24]
  400b40:	11000400 	add	w0, w0, #0x1
  400b44:	b9001be0 	str	w0, [sp, #24]
  400b48:	b9401be0 	ldr	w0, [sp, #24]
  400b4c:	71018c1f 	cmp	w0, #0x63
  400b50:	54fff06d 	b.le	40095c <initializematrix_int+0x18>
  400b54:	b9401fe0 	ldr	w0, [sp, #28]
  400b58:	11000400 	add	w0, w0, #0x1
  400b5c:	b9001fe0 	str	w0, [sp, #28]
  400b60:	b9401fe0 	ldr	w0, [sp, #28]
  400b64:	71018c1f 	cmp	w0, #0x63
  400b68:	54ffef6d 	b.le	400954 <initializematrix_int+0x10>
  400b6c:	d503201f 	nop
  400b70:	d503201f 	nop
  400b74:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400b78:	d65f03c0 	ret

0000000000400b7c <initializematrix_float>:
  400b7c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400b80:	910003fd 	mov	x29, sp
  400b84:	b9001fff 	str	wzr, [sp, #28]
  400b88:	1400002d 	b	400c3c <initializematrix_float+0xc0>
  400b8c:	b9001bff 	str	wzr, [sp, #24]
  400b90:	14000025 	b	400c24 <initializematrix_float+0xa8>
  400b94:	97fffe6f 	bl	400550 <rand@plt>
  400b98:	2a0003e2 	mov	w2, w0
  400b9c:	93407c41 	sxtw	x1, w2
  400ba0:	aa0103e0 	mov	x0, x1
  400ba4:	d3628400 	lsl	x0, x0, #30
  400ba8:	8b010000 	add	x0, x0, x1
  400bac:	d360fc00 	lsr	x0, x0, #32
  400bb0:	131d7c01 	asr	w1, w0, #29
  400bb4:	131f7c40 	asr	w0, w2, #31
  400bb8:	4b000021 	sub	w1, w1, w0
  400bbc:	2a0103e0 	mov	w0, w1
  400bc0:	53010000 	lsl	w0, w0, #31
  400bc4:	4b010000 	sub	w0, w0, w1
  400bc8:	4b000041 	sub	w1, w2, w0
  400bcc:	1e620020 	scvtf	d0, w1
  400bd0:	b26a67e0 	mov	x0, #0xffffffc00000        	// #281474972516352
  400bd4:	f2e83be0 	movk	x0, #0x41df, lsl #48
  400bd8:	9e670001 	fmov	d1, x0
  400bdc:	1e611800 	fdiv	d0, d0, d1
  400be0:	2f00e401 	movi	d1, #0x0
  400be4:	1e612800 	fadd	d0, d0, d1
  400be8:	f0000220 	adrp	x0, 447000 <matrix_2+0x13740>
  400bec:	91050002 	add	x2, x0, #0x140
  400bf0:	b9801be3 	ldrsw	x3, [sp, #24]
  400bf4:	b9801fe1 	ldrsw	x1, [sp, #28]
  400bf8:	aa0103e0 	mov	x0, x1
  400bfc:	d37ff800 	lsl	x0, x0, #1
  400c00:	8b010000 	add	x0, x0, x1
  400c04:	d37df000 	lsl	x0, x0, #3
  400c08:	8b010000 	add	x0, x0, x1
  400c0c:	d37ef400 	lsl	x0, x0, #2
  400c10:	8b030000 	add	x0, x0, x3
  400c14:	fc207840 	str	d0, [x2, x0, lsl #3]
  400c18:	b9401be0 	ldr	w0, [sp, #24]
  400c1c:	11000400 	add	w0, w0, #0x1
  400c20:	b9001be0 	str	w0, [sp, #24]
  400c24:	b9401be0 	ldr	w0, [sp, #24]
  400c28:	71018c1f 	cmp	w0, #0x63
  400c2c:	54fffb4d 	b.le	400b94 <initializematrix_float+0x18>
  400c30:	b9401fe0 	ldr	w0, [sp, #28]
  400c34:	11000400 	add	w0, w0, #0x1
  400c38:	b9001fe0 	str	w0, [sp, #28]
  400c3c:	b9401fe0 	ldr	w0, [sp, #28]
  400c40:	71018c1f 	cmp	w0, #0x63
  400c44:	54fffa4d 	b.le	400b8c <initializematrix_float+0x10>
  400c48:	d503201f 	nop
  400c4c:	d503201f 	nop
  400c50:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400c54:	d65f03c0 	ret

0000000000400c58 <matrix_dot>:
  400c58:	d10043ff 	sub	sp, sp, #0x10
  400c5c:	b9000fff 	str	wzr, [sp, #12]
  400c60:	14000046 	b	400d78 <matrix_dot+0x120>
  400c64:	b9000bff 	str	wzr, [sp, #8]
  400c68:	1400003e 	b	400d60 <matrix_dot+0x108>
  400c6c:	b90007ff 	str	wzr, [sp, #4]
  400c70:	14000036 	b	400d48 <matrix_dot+0xf0>
  400c74:	d00002c0 	adrp	x0, 45a000 <matrix_3+0x12ec0>
  400c78:	91270002 	add	x2, x0, #0x9c0
  400c7c:	b9800be3 	ldrsw	x3, [sp, #8]
  400c80:	b9800fe1 	ldrsw	x1, [sp, #12]
  400c84:	aa0103e0 	mov	x0, x1
  400c88:	d37ff800 	lsl	x0, x0, #1
  400c8c:	8b010000 	add	x0, x0, x1
  400c90:	d37df000 	lsl	x0, x0, #3
  400c94:	8b010000 	add	x0, x0, x1
  400c98:	d37ef400 	lsl	x0, x0, #2
  400c9c:	8b030000 	add	x0, x0, x3
  400ca0:	f8607842 	ldr	x2, [x2, x0, lsl #3]
  400ca4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400ca8:	91010003 	add	x3, x0, #0x40
  400cac:	b98007e4 	ldrsw	x4, [sp, #4]
  400cb0:	b9800fe1 	ldrsw	x1, [sp, #12]
  400cb4:	aa0103e0 	mov	x0, x1
  400cb8:	d37ff800 	lsl	x0, x0, #1
  400cbc:	8b010000 	add	x0, x0, x1
  400cc0:	d37df000 	lsl	x0, x0, #3
  400cc4:	8b010000 	add	x0, x0, x1
  400cc8:	d37ef400 	lsl	x0, x0, #2
  400ccc:	8b040000 	add	x0, x0, x4
  400cd0:	f8607863 	ldr	x3, [x3, x0, lsl #3]
  400cd4:	f0000180 	adrp	x0, 433000 <matrix_1+0x12fc0>
  400cd8:	91230004 	add	x4, x0, #0x8c0
  400cdc:	b9800be5 	ldrsw	x5, [sp, #8]
  400ce0:	b98007e1 	ldrsw	x1, [sp, #4]
  400ce4:	aa0103e0 	mov	x0, x1
  400ce8:	d37ff800 	lsl	x0, x0, #1
  400cec:	8b010000 	add	x0, x0, x1
  400cf0:	d37df000 	lsl	x0, x0, #3
  400cf4:	8b010000 	add	x0, x0, x1
  400cf8:	d37ef400 	lsl	x0, x0, #2
  400cfc:	8b050000 	add	x0, x0, x5
  400d00:	f8607880 	ldr	x0, [x4, x0, lsl #3]
  400d04:	9b007c60 	mul	x0, x3, x0
  400d08:	8b000043 	add	x3, x2, x0
  400d0c:	d00002c0 	adrp	x0, 45a000 <matrix_3+0x12ec0>
  400d10:	91270002 	add	x2, x0, #0x9c0
  400d14:	b9800be4 	ldrsw	x4, [sp, #8]
  400d18:	b9800fe1 	ldrsw	x1, [sp, #12]
  400d1c:	aa0103e0 	mov	x0, x1
  400d20:	d37ff800 	lsl	x0, x0, #1
  400d24:	8b010000 	add	x0, x0, x1
  400d28:	d37df000 	lsl	x0, x0, #3
  400d2c:	8b010000 	add	x0, x0, x1
  400d30:	d37ef400 	lsl	x0, x0, #2
  400d34:	8b040000 	add	x0, x0, x4
  400d38:	f8207843 	str	x3, [x2, x0, lsl #3]
  400d3c:	b94007e0 	ldr	w0, [sp, #4]
  400d40:	11000400 	add	w0, w0, #0x1
  400d44:	b90007e0 	str	w0, [sp, #4]
  400d48:	b94007e0 	ldr	w0, [sp, #4]
  400d4c:	71018c1f 	cmp	w0, #0x63
  400d50:	54fff92d 	b.le	400c74 <matrix_dot+0x1c>
  400d54:	b9400be0 	ldr	w0, [sp, #8]
  400d58:	11000400 	add	w0, w0, #0x1
  400d5c:	b9000be0 	str	w0, [sp, #8]
  400d60:	b9400be0 	ldr	w0, [sp, #8]
  400d64:	71018c1f 	cmp	w0, #0x63
  400d68:	54fff82d 	b.le	400c6c <matrix_dot+0x14>
  400d6c:	b9400fe0 	ldr	w0, [sp, #12]
  400d70:	11000400 	add	w0, w0, #0x1
  400d74:	b9000fe0 	str	w0, [sp, #12]
  400d78:	b9400fe0 	ldr	w0, [sp, #12]
  400d7c:	71018c1f 	cmp	w0, #0x63
  400d80:	54fff72d 	b.le	400c64 <matrix_dot+0xc>
  400d84:	d503201f 	nop
  400d88:	d503201f 	nop
  400d8c:	910043ff 	add	sp, sp, #0x10
  400d90:	d65f03c0 	ret

0000000000400d94 <fun1>:
  400d94:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400d98:	910003fd 	mov	x29, sp
  400d9c:	97fffeea 	bl	400944 <initializematrix_int>
  400da0:	97ffff77 	bl	400b7c <initializematrix_float>
  400da4:	97ffffad 	bl	400c58 <matrix_dot>
  400da8:	d503201f 	nop
  400dac:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400db0:	d65f03c0 	ret

0000000000400db4 <fun1_2>:
  400db4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400db8:	910003fd 	mov	x29, sp
  400dbc:	97ffffa7 	bl	400c58 <matrix_dot>
  400dc0:	d503201f 	nop
  400dc4:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400dc8:	d65f03c0 	ret

0000000000400dcc <fun2>:
  400dcc:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400dd0:	910003fd 	mov	x29, sp
  400dd4:	97fffe3c 	bl	4006c4 <init_array>
  400dd8:	97fffe50 	bl	400718 <insert_sort>
  400ddc:	d503201f 	nop
  400de0:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400de4:	d65f03c0 	ret

0000000000400de8 <fun3>:
  400de8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400dec:	910003fd 	mov	x29, sp
  400df0:	97fffe97 	bl	40084c <fbnc>
  400df4:	d503201f 	nop
  400df8:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400dfc:	d65f03c0 	ret

0000000000400e00 <main>:
  400e00:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400e04:	910003fd 	mov	x29, sp
  400e08:	b9001fe0 	str	w0, [sp, #28]
  400e0c:	f9000be1 	str	x1, [sp, #16]
  400e10:	97ffffe1 	bl	400d94 <fun1>
  400e14:	97ffffe8 	bl	400db4 <fun1_2>
  400e18:	97ffffed 	bl	400dcc <fun2>
  400e1c:	97fffff3 	bl	400de8 <fun3>
  400e20:	97ffffdd 	bl	400d94 <fun1>
  400e24:	97ffffe4 	bl	400db4 <fun1_2>
  400e28:	97ffffe9 	bl	400dcc <fun2>
  400e2c:	97ffffef 	bl	400de8 <fun3>
  400e30:	d0000360 	adrp	x0, 46e000 <matrix_4+0x13640>
  400e34:	91090000 	add	x0, x0, #0x240
  400e38:	b9400000 	ldr	w0, [x0]
  400e3c:	7100141f 	cmp	w0, #0x5
  400e40:	5400006d 	b.le	400e4c <main+0x4c>
  400e44:	97ffffe2 	bl	400dcc <fun2>
  400e48:	14000002 	b	400e50 <main+0x50>
  400e4c:	97ffffe7 	bl	400de8 <fun3>
  400e50:	52800000 	mov	w0, #0x0                   	// #0
  400e54:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400e58:	d65f03c0 	ret

Disassembly of section .fini:

0000000000400e5c <_fini>:
  400e5c:	d503201f 	nop
  400e60:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400e64:	910003fd 	mov	x29, sp
  400e68:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400e6c:	d65f03c0 	ret
