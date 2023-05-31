
ts.out：     文件格式 elf64-littleaarch64


Disassembly of section .init:

0000000000400498 <_init>:
  400498:	d503201f 	nop
  40049c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  4004a0:	910003fd 	mov	x29, sp
  4004a4:	94000028 	bl	400544 <call_weak_fn>
  4004a8:	a8c17bfd 	ldp	x29, x30, [sp], #16
  4004ac:	d65f03c0 	ret

Disassembly of section .plt:

00000000004004b0 <.plt>:
  4004b0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  4004b4:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1e7a8>
  4004b8:	f947fe11 	ldr	x17, [x16, #4088]
  4004bc:	913fe210 	add	x16, x16, #0xff8
  4004c0:	d61f0220 	br	x17
  4004c4:	d503201f 	nop
  4004c8:	d503201f 	nop
  4004cc:	d503201f 	nop

00000000004004d0 <__libc_start_main@plt>:
  4004d0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4004d4:	f9400211 	ldr	x17, [x16]
  4004d8:	91000210 	add	x16, x16, #0x0
  4004dc:	d61f0220 	br	x17

00000000004004e0 <__gmon_start__@plt>:
  4004e0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4004e4:	f9400611 	ldr	x17, [x16, #8]
  4004e8:	91002210 	add	x16, x16, #0x8
  4004ec:	d61f0220 	br	x17

00000000004004f0 <abort@plt>:
  4004f0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4004f4:	f9400a11 	ldr	x17, [x16, #16]
  4004f8:	91004210 	add	x16, x16, #0x10
  4004fc:	d61f0220 	br	x17

Disassembly of section .text:

0000000000400500 <_start>:
  400500:	d503201f 	nop
  400504:	d280001d 	mov	x29, #0x0                   	// #0
  400508:	d280001e 	mov	x30, #0x0                   	// #0
  40050c:	aa0003e5 	mov	x5, x0
  400510:	f94003e1 	ldr	x1, [sp]
  400514:	910023e2 	add	x2, sp, #0x8
  400518:	910003e6 	mov	x6, sp
  40051c:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400520:	9114d000 	add	x0, x0, #0x534
  400524:	d2800003 	mov	x3, #0x0                   	// #0
  400528:	d2800004 	mov	x4, #0x0                   	// #0
  40052c:	97ffffe9 	bl	4004d0 <__libc_start_main@plt>
  400530:	97fffff0 	bl	4004f0 <abort@plt>

0000000000400534 <__wrap_main>:
  400534:	d503201f 	nop
  400538:	14000033 	b	400604 <main>
  40053c:	d503201f 	nop

0000000000400540 <_dl_relocate_static_pie>:
  400540:	d65f03c0 	ret

0000000000400544 <call_weak_fn>:
  400544:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1e7a8>
  400548:	f947ec00 	ldr	x0, [x0, #4056]
  40054c:	b4000040 	cbz	x0, 400554 <call_weak_fn+0x10>
  400550:	17ffffe4 	b	4004e0 <__gmon_start__@plt>
  400554:	d65f03c0 	ret
  400558:	d503201f 	nop
  40055c:	d503201f 	nop

0000000000400560 <deregister_tm_clones>:
  400560:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400564:	9100c000 	add	x0, x0, #0x30
  400568:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40056c:	9100c021 	add	x1, x1, #0x30
  400570:	eb00003f 	cmp	x1, x0
  400574:	540000c0 	b.eq	40058c <deregister_tm_clones+0x2c>  // b.none
  400578:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1e7a8>
  40057c:	f947e821 	ldr	x1, [x1, #4048]
  400580:	b4000061 	cbz	x1, 40058c <deregister_tm_clones+0x2c>
  400584:	aa0103f0 	mov	x16, x1
  400588:	d61f0200 	br	x16
  40058c:	d65f03c0 	ret

0000000000400590 <register_tm_clones>:
  400590:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400594:	9100c000 	add	x0, x0, #0x30
  400598:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40059c:	9100c021 	add	x1, x1, #0x30
  4005a0:	cb000021 	sub	x1, x1, x0
  4005a4:	d37ffc22 	lsr	x2, x1, #63
  4005a8:	8b810c41 	add	x1, x2, x1, asr #3
  4005ac:	9341fc21 	asr	x1, x1, #1
  4005b0:	b40000c1 	cbz	x1, 4005c8 <register_tm_clones+0x38>
  4005b4:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1e7a8>
  4005b8:	f947f042 	ldr	x2, [x2, #4064]
  4005bc:	b4000062 	cbz	x2, 4005c8 <register_tm_clones+0x38>
  4005c0:	aa0203f0 	mov	x16, x2
  4005c4:	d61f0200 	br	x16
  4005c8:	d65f03c0 	ret
  4005cc:	d503201f 	nop

00000000004005d0 <__do_global_dtors_aux>:
  4005d0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4005d4:	910003fd 	mov	x29, sp
  4005d8:	f9000bf3 	str	x19, [sp, #16]
  4005dc:	90000113 	adrp	x19, 420000 <__libc_start_main@GLIBC_2.34>
  4005e0:	3940b260 	ldrb	w0, [x19, #44]
  4005e4:	35000080 	cbnz	w0, 4005f4 <__do_global_dtors_aux+0x24>
  4005e8:	97ffffde 	bl	400560 <deregister_tm_clones>
  4005ec:	52800020 	mov	w0, #0x1                   	// #1
  4005f0:	3900b260 	strb	w0, [x19, #44]
  4005f4:	f9400bf3 	ldr	x19, [sp, #16]
  4005f8:	a8c27bfd 	ldp	x29, x30, [sp], #32
  4005fc:	d65f03c0 	ret

0000000000400600 <frame_dummy>:
  400600:	17ffffe4 	b	400590 <register_tm_clones>

0000000000400604 <main>:
  400604:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400608:	910003fd 	mov	x29, sp
  40060c:	b9001fe0 	str	w0, [sp, #28]
  400610:	f9000be1 	str	x1, [sp, #16]
  400614:	52800020 	mov	w0, #0x1                   	// #1
  400618:	94000014 	bl	400668 <mainplu1>
  40061c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400620:	9100a000 	add	x0, x0, #0x28
  400624:	b9400000 	ldr	w0, [x0]
  400628:	94000025 	bl	4006bc <mainplu2>
  40062c:	2a0003e1 	mov	w1, w0
  400630:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400634:	9100a000 	add	x0, x0, #0x28
  400638:	b9000001 	str	w1, [x0]
  40063c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400640:	9100a000 	add	x0, x0, #0x28
  400644:	b9400000 	ldr	w0, [x0]
  400648:	94000015 	bl	40069c <mainplu3>
  40064c:	2a0003e1 	mov	w1, w0
  400650:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400654:	9100a000 	add	x0, x0, #0x28
  400658:	b9000001 	str	w1, [x0]
  40065c:	52800000 	mov	w0, #0x0                   	// #0
  400660:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400664:	d65f03c0 	ret

0000000000400668 <mainplu1>:
  400668:	d10043ff 	sub	sp, sp, #0x10
  40066c:	b9000fe0 	str	w0, [sp, #12]
  400670:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400674:	9100a000 	add	x0, x0, #0x28
  400678:	b9400001 	ldr	w1, [x0]
  40067c:	b9400fe0 	ldr	w0, [sp, #12]
  400680:	0b000021 	add	w1, w1, w0
  400684:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400688:	9100a000 	add	x0, x0, #0x28
  40068c:	b9000001 	str	w1, [x0]
  400690:	d503201f 	nop
  400694:	910043ff 	add	sp, sp, #0x10
  400698:	d65f03c0 	ret

000000000040069c <mainplu3>:
  40069c:	d10043ff 	sub	sp, sp, #0x10
  4006a0:	b9000fe0 	str	w0, [sp, #12]
  4006a4:	b9400fe0 	ldr	w0, [sp, #12]
  4006a8:	11000800 	add	w0, w0, #0x2
  4006ac:	b9000fe0 	str	w0, [sp, #12]
  4006b0:	b9400fe0 	ldr	w0, [sp, #12]
  4006b4:	910043ff 	add	sp, sp, #0x10
  4006b8:	d65f03c0 	ret

00000000004006bc <mainplu2>:
  4006bc:	d10043ff 	sub	sp, sp, #0x10
  4006c0:	b9000fe0 	str	w0, [sp, #12]
  4006c4:	b9400fe0 	ldr	w0, [sp, #12]
  4006c8:	11000800 	add	w0, w0, #0x2
  4006cc:	b9000fe0 	str	w0, [sp, #12]
  4006d0:	b9400fe0 	ldr	w0, [sp, #12]
  4006d4:	910043ff 	add	sp, sp, #0x10
  4006d8:	d65f03c0 	ret

Disassembly of section .fini:

00000000004006dc <_fini>:
  4006dc:	d503201f 	nop
  4006e0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  4006e4:	910003fd 	mov	x29, sp
  4006e8:	a8c17bfd 	ldp	x29, x30, [sp], #16
  4006ec:	d65f03c0 	ret
