
all.out：     文件格式 elf64-littleaarch64


Disassembly of section .init:

00000000004004d0 <_init>:
  4004d0:	d503233f 	paciasp
  4004d4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  4004d8:	910003fd 	mov	x29, sp
  4004dc:	9400003b 	bl	4005c8 <call_weak_fn>
  4004e0:	a8c17bfd 	ldp	x29, x30, [sp], #16
  4004e4:	d50323bf 	autiasp
  4004e8:	d65f03c0 	ret

Disassembly of section .plt:

00000000004004f0 <.plt>:
  4004f0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  4004f4:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1e6c0>
  4004f8:	f947fe11 	ldr	x17, [x16, #4088]
  4004fc:	913fe210 	add	x16, x16, #0xff8
  400500:	d61f0220 	br	x17
  400504:	d503201f 	nop
  400508:	d503201f 	nop
  40050c:	d503201f 	nop

0000000000400510 <__libc_start_main@plt>:
  400510:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400514:	f9400211 	ldr	x17, [x16]
  400518:	91000210 	add	x16, x16, #0x0
  40051c:	d61f0220 	br	x17

0000000000400520 <__gmon_start__@plt>:
  400520:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400524:	f9400611 	ldr	x17, [x16, #8]
  400528:	91002210 	add	x16, x16, #0x8
  40052c:	d61f0220 	br	x17

0000000000400530 <abort@plt>:
  400530:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400534:	f9400a11 	ldr	x17, [x16, #16]
  400538:	91004210 	add	x16, x16, #0x10
  40053c:	d61f0220 	br	x17

0000000000400540 <printf@plt>:
  400540:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400544:	f9400e11 	ldr	x17, [x16, #24]
  400548:	91006210 	add	x16, x16, #0x18
  40054c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000400580 <_start>:
  400580:	d503245f 	bti	c
  400584:	d280001d 	mov	x29, #0x0                   	// #0
  400588:	d280001e 	mov	x30, #0x0                   	// #0
  40058c:	aa0003e5 	mov	x5, x0
  400590:	f94003e1 	ldr	x1, [sp]
  400594:	910023e2 	add	x2, sp, #0x8
  400598:	910003e6 	mov	x6, sp
  40059c:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  4005a0:	9116d000 	add	x0, x0, #0x5b4
  4005a4:	d2800003 	mov	x3, #0x0                   	// #0
  4005a8:	d2800004 	mov	x4, #0x0                   	// #0
  4005ac:	97ffffd9 	bl	400510 <__libc_start_main@plt>
  4005b0:	97ffffe0 	bl	400530 <abort@plt>

00000000004005b4 <__wrap_main>:
  4005b4:	d503245f 	bti	c
  4005b8:	1400003e 	b	4006b0 <main>

00000000004005bc <.annobin_abi_note.c>:
  4005bc:	d503201f 	nop

00000000004005c0 <_dl_relocate_static_pie>:
  4005c0:	d503245f 	bti	c
  4005c4:	d65f03c0 	ret

00000000004005c8 <call_weak_fn>:
  4005c8:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1e6c0>
  4005cc:	f947ec00 	ldr	x0, [x0, #4056]
  4005d0:	b4000040 	cbz	x0, 4005d8 <call_weak_fn+0x10>
  4005d4:	17ffffd3 	b	400520 <__gmon_start__@plt>
  4005d8:	d65f03c0 	ret
  4005dc:	d503201f 	nop

00000000004005e0 <deregister_tm_clones>:
  4005e0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4005e4:	9100c000 	add	x0, x0, #0x30
  4005e8:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  4005ec:	9100c021 	add	x1, x1, #0x30
  4005f0:	eb00003f 	cmp	x1, x0
  4005f4:	540000c0 	b.eq	40060c <deregister_tm_clones+0x2c>  // b.none
  4005f8:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1e6c0>
  4005fc:	f947e821 	ldr	x1, [x1, #4048]
  400600:	b4000061 	cbz	x1, 40060c <deregister_tm_clones+0x2c>
  400604:	aa0103f0 	mov	x16, x1
  400608:	d61f0200 	br	x16
  40060c:	d65f03c0 	ret

0000000000400610 <register_tm_clones>:
  400610:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400614:	9100c000 	add	x0, x0, #0x30
  400618:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40061c:	9100c021 	add	x1, x1, #0x30
  400620:	cb000021 	sub	x1, x1, x0
  400624:	d37ffc22 	lsr	x2, x1, #63
  400628:	8b810c41 	add	x1, x2, x1, asr #3
  40062c:	9341fc21 	asr	x1, x1, #1
  400630:	b40000c1 	cbz	x1, 400648 <register_tm_clones+0x38>
  400634:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1e6c0>
  400638:	f947f042 	ldr	x2, [x2, #4064]
  40063c:	b4000062 	cbz	x2, 400648 <register_tm_clones+0x38>
  400640:	aa0203f0 	mov	x16, x2
  400644:	d61f0200 	br	x16
  400648:	d65f03c0 	ret
  40064c:	d503201f 	nop

0000000000400650 <__do_global_dtors_aux>:
  400650:	d503233f 	paciasp
  400654:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400658:	910003fd 	mov	x29, sp
  40065c:	f9000bf3 	str	x19, [sp, #16]
  400660:	90000113 	adrp	x19, 420000 <__libc_start_main@GLIBC_2.34>
  400664:	3940b260 	ldrb	w0, [x19, #44]
  400668:	35000080 	cbnz	w0, 400678 <__do_global_dtors_aux+0x28>
  40066c:	97ffffdd 	bl	4005e0 <deregister_tm_clones>
  400670:	52800020 	mov	w0, #0x1                   	// #1
  400674:	3900b260 	strb	w0, [x19, #44]
  400678:	f9400bf3 	ldr	x19, [sp, #16]
  40067c:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400680:	d50323bf 	autiasp
  400684:	d65f03c0 	ret
  400688:	d503201f 	nop
  40068c:	d503201f 	nop

0000000000400690 <frame_dummy>:
  400690:	d503245f 	bti	c
  400694:	17ffffdf 	b	400610 <register_tm_clones>

0000000000400698 <varFunc>:
  400698:	d10043ff 	sub	sp, sp, #0x10
  40069c:	528000a0 	mov	w0, #0x5                   	// #5
  4006a0:	b9000fe0 	str	w0, [sp, #12]
  4006a4:	b9400fe0 	ldr	w0, [sp, #12]
  4006a8:	910043ff 	add	sp, sp, #0x10
  4006ac:	d65f03c0 	ret

00000000004006b0 <main>:
  4006b0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
  4006b4:	910003fd 	mov	x29, sp
  4006b8:	b9001fe0 	str	w0, [sp, #28]
  4006bc:	f9000be1 	str	x1, [sp, #16]
  4006c0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4006c4:	9100c000 	add	x0, x0, #0x30
  4006c8:	52800061 	mov	w1, #0x3                   	// #3
  4006cc:	b9000001 	str	w1, [x0]
  4006d0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4006d4:	9100d000 	add	x0, x0, #0x34
  4006d8:	52800081 	mov	w1, #0x4                   	// #4
  4006dc:	b9000001 	str	w1, [x0]
  4006e0:	528000c0 	mov	w0, #0x6                   	// #6
  4006e4:	b9002fe0 	str	w0, [sp, #44]
  4006e8:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4006ec:	91009000 	add	x0, x0, #0x24
  4006f0:	b9400000 	ldr	w0, [x0]
  4006f4:	2a0003e1 	mov	w1, w0
  4006f8:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  4006fc:	911ec000 	add	x0, x0, #0x7b0
  400700:	97ffff90 	bl	400540 <printf@plt>
  400704:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400708:	9100a000 	add	x0, x0, #0x28
  40070c:	b9400000 	ldr	w0, [x0]
  400710:	2a0003e1 	mov	w1, w0
  400714:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400718:	911f0000 	add	x0, x0, #0x7c0
  40071c:	97ffff89 	bl	400540 <printf@plt>
  400720:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400724:	9100c000 	add	x0, x0, #0x30
  400728:	b9400000 	ldr	w0, [x0]
  40072c:	2a0003e1 	mov	w1, w0
  400730:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400734:	911f4000 	add	x0, x0, #0x7d0
  400738:	97ffff82 	bl	400540 <printf@plt>
  40073c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400740:	9100d000 	add	x0, x0, #0x34
  400744:	b9400000 	ldr	w0, [x0]
  400748:	2a0003e1 	mov	w1, w0
  40074c:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400750:	911f8000 	add	x0, x0, #0x7e0
  400754:	97ffff7b 	bl	400540 <printf@plt>
  400758:	97ffffd0 	bl	400698 <varFunc>
  40075c:	2a0003e1 	mov	w1, w0
  400760:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400764:	911fc000 	add	x0, x0, #0x7f0
  400768:	97ffff76 	bl	400540 <printf@plt>
  40076c:	b9402fe1 	ldr	w1, [sp, #44]
  400770:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400774:	91200000 	add	x0, x0, #0x800
  400778:	97ffff72 	bl	400540 <printf@plt>
  40077c:	52800000 	mov	w0, #0x0                   	// #0
  400780:	a8c37bfd 	ldp	x29, x30, [sp], #48
  400784:	d65f03c0 	ret

Disassembly of section .fini:

0000000000400788 <_fini>:
  400788:	d503233f 	paciasp
  40078c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400790:	910003fd 	mov	x29, sp
  400794:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400798:	d50323bf 	autiasp
  40079c:	d65f03c0 	ret
