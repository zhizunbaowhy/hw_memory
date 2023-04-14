
bzip2.o：     文件格式 elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <hasSuffix>:
       0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
       4:	910003fd 	mov	x29, sp
       8:	a90153f3 	stp	x19, x20, [sp, #16]
       c:	aa0103f4 	mov	x20, x1
      10:	f90013f5 	str	x21, [sp, #32]
      14:	aa0003f5 	mov	x21, x0
      18:	94000000 	bl	0 <strlen>
      1c:	aa0003f3 	mov	x19, x0
      20:	aa1403e0 	mov	x0, x20
      24:	94000000 	bl	0 <strlen>
      28:	6b00027f 	cmp	w19, w0
      2c:	5400018b 	b.lt	5c <hasSuffix+0x5c>  // b.tstop
      30:	93407e73 	sxtw	x19, w19
      34:	aa1403e1 	mov	x1, x20
      38:	cb20c260 	sub	x0, x19, w0, sxtw
      3c:	8b0002a0 	add	x0, x21, x0
      40:	94000000 	bl	0 <strcmp>
      44:	7100001f 	cmp	w0, #0x0
      48:	1a9f17e0 	cset	w0, eq  // eq = none
      4c:	a94153f3 	ldp	x19, x20, [sp, #16]
      50:	f94013f5 	ldr	x21, [sp, #32]
      54:	a8c37bfd 	ldp	x29, x30, [sp], #48
      58:	d65f03c0 	ret
      5c:	52800000 	mov	w0, #0x0                   	// #0
      60:	a94153f3 	ldp	x19, x20, [sp, #16]
      64:	f94013f5 	ldr	x21, [sp, #32]
      68:	a8c37bfd 	ldp	x29, x30, [sp], #48
      6c:	d65f03c0 	ret

0000000000000070 <fileExists>:
      70:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
      74:	90000001 	adrp	x1, 0 <hasSuffix>
      78:	91000021 	add	x1, x1, #0x0
      7c:	910003fd 	mov	x29, sp
      80:	f9000bf3 	str	x19, [sp, #16]
      84:	94000000 	bl	0 <fopen64>
      88:	f100001f 	cmp	x0, #0x0
      8c:	1a9f07f3 	cset	w19, ne  // ne = any
      90:	b4000040 	cbz	x0, 98 <fileExists+0x28>
      94:	94000000 	bl	0 <fclose>
      98:	2a1303e0 	mov	w0, w19
      9c:	f9400bf3 	ldr	x19, [sp, #16]
      a0:	a8c27bfd 	ldp	x29, x30, [sp], #32
      a4:	d65f03c0 	ret

00000000000000a8 <myfeof>:
      a8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
      ac:	910003fd 	mov	x29, sp
      b0:	f9000bf3 	str	x19, [sp, #16]
      b4:	aa0003f3 	mov	x19, x0
      b8:	94000000 	bl	0 <fgetc>
      bc:	3100041f 	cmn	w0, #0x1
      c0:	540000e0 	b.eq	dc <myfeof+0x34>  // b.none
      c4:	aa1303e1 	mov	x1, x19
      c8:	94000000 	bl	0 <ungetc>
      cc:	52800000 	mov	w0, #0x0                   	// #0
      d0:	f9400bf3 	ldr	x19, [sp, #16]
      d4:	a8c27bfd 	ldp	x29, x30, [sp], #32
      d8:	d65f03c0 	ret
      dc:	52800020 	mov	w0, #0x1                   	// #1
      e0:	f9400bf3 	ldr	x19, [sp, #16]
      e4:	a8c27bfd 	ldp	x29, x30, [sp], #32
      e8:	d65f03c0 	ret
      ec:	d503201f 	nop

00000000000000f0 <configError>:
      f0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
      f4:	90000003 	adrp	x3, 0 <stderr>
      f8:	d2801d62 	mov	x2, #0xeb                  	// #235
      fc:	910003fd 	mov	x29, sp
     100:	f9400063 	ldr	x3, [x3]
     104:	d2800021 	mov	x1, #0x1                   	// #1
     108:	90000000 	adrp	x0, 0 <hasSuffix>
     10c:	91000000 	add	x0, x0, #0x0
     110:	f9400063 	ldr	x3, [x3]
     114:	94000000 	bl	0 <fwrite>
     118:	90000000 	adrp	x0, 4 <hasSuffix+0x4>
     11c:	f9400001 	ldr	x1, [x0]
     120:	b9400022 	ldr	w2, [x1]
     124:	7100085f 	cmp	w2, #0x2
     128:	5400006c 	b.gt	134 <configError+0x44>
     12c:	52800062 	mov	w2, #0x3                   	// #3
     130:	b9000022 	str	w2, [x1]
     134:	f9400000 	ldr	x0, [x0]
     138:	b9400000 	ldr	w0, [x0]
     13c:	94000000 	bl	0 <exit>

0000000000000140 <cleanUpAndFail>:
     140:	a9b47bfd 	stp	x29, x30, [sp, #-192]!
     144:	90000002 	adrp	x2, 4 <hasSuffix+0x4>
     148:	90000001 	adrp	x1, 0 <__stack_chk_guard>
     14c:	910003fd 	mov	x29, sp
     150:	f9400042 	ldr	x2, [x2]
     154:	a90153f3 	stp	x19, x20, [sp, #16]
     158:	2a0003f3 	mov	w19, w0
     15c:	f9400021 	ldr	x1, [x1]
     160:	a9025bf5 	stp	x21, x22, [sp, #32]
     164:	b9400040 	ldr	w0, [x2]
     168:	f9400022 	ldr	x2, [x1]
     16c:	f9005fe2 	str	x2, [sp, #184]
     170:	d2800002 	mov	x2, #0x0                   	// #0
     174:	71000c1f 	cmp	w0, #0x3
     178:	54000320 	b.eq	1dc <cleanUpAndFail+0x9c>  // b.none
     17c:	90000014 	adrp	x20, 1 <hasSuffix+0x1>
     180:	f9400294 	ldr	x20, [x20]
     184:	39400280 	ldrb	w0, [x20]
     188:	34000180 	cbz	w0, 1b8 <cleanUpAndFail+0x78>
     18c:	90000000 	adrp	x0, 4 <hasSuffix+0x4>
     190:	f9400000 	ldr	x0, [x0]
     194:	b9400005 	ldr	w5, [x0]
     198:	710000bf 	cmp	w5, #0x0
     19c:	540000ed 	b.le	1b8 <cleanUpAndFail+0x78>
     1a0:	90000000 	adrp	x0, 4 <hasSuffix+0x4>
     1a4:	f9400000 	ldr	x0, [x0]
     1a8:	b9400006 	ldr	w6, [x0]
     1ac:	6b0600bf 	cmp	w5, w6
     1b0:	5400064c 	b.gt	278 <cleanUpAndFail+0x138>
     1b4:	d503201f 	nop
     1b8:	90000001 	adrp	x1, 4 <hasSuffix+0x4>
     1bc:	f9400020 	ldr	x0, [x1]
     1c0:	b9400002 	ldr	w2, [x0]
     1c4:	6b02027f 	cmp	w19, w2
     1c8:	5400004d 	b.le	1d0 <cleanUpAndFail+0x90>
     1cc:	b9000013 	str	w19, [x0]
     1d0:	f9400021 	ldr	x1, [x1]
     1d4:	b9400020 	ldr	w0, [x1]
     1d8:	94000000 	bl	0 <exit>
     1dc:	90000000 	adrp	x0, 4 <hasSuffix+0x4>
     1e0:	f9400000 	ldr	x0, [x0]
     1e4:	b9400000 	ldr	w0, [x0]
     1e8:	71000c1f 	cmp	w0, #0x3
     1ec:	54fffc80 	b.eq	17c <cleanUpAndFail+0x3c>  // b.none
     1f0:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
     1f4:	f9400000 	ldr	x0, [x0]
     1f8:	39400000 	ldrb	w0, [x0]
     1fc:	34fffc00 	cbz	w0, 17c <cleanUpAndFail+0x3c>
     200:	90000001 	adrp	x1, 40a <usage+0x32>
     204:	9100e3e2 	add	x2, sp, #0x38
     208:	52800000 	mov	w0, #0x0                   	// #0
     20c:	f9400021 	ldr	x1, [x1]
     210:	94000000 	bl	0 <__xstat64>
     214:	350004c0 	cbnz	w0, 2ac <cleanUpAndFail+0x16c>
     218:	90000014 	adrp	x20, 1 <hasSuffix+0x1>
     21c:	f9400280 	ldr	x0, [x20]
     220:	39400000 	ldrb	w0, [x0]
     224:	35000840 	cbnz	w0, 32c <cleanUpAndFail+0x1ec>
     228:	90000015 	adrp	x21, 40a <usage+0x32>
     22c:	90000000 	adrp	x0, 8 <hasSuffix+0x8>
     230:	f9400000 	ldr	x0, [x0]
     234:	f9400000 	ldr	x0, [x0]
     238:	b4000040 	cbz	x0, 240 <cleanUpAndFail+0x100>
     23c:	94000000 	bl	0 <fclose>
     240:	f94002a0 	ldr	x0, [x21]
     244:	94000000 	bl	0 <remove>
     248:	34fff9c0 	cbz	w0, 180 <cleanUpAndFail+0x40>
     24c:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
     250:	90000000 	adrp	x0, 0 <stderr>
     254:	90000002 	adrp	x2, 0 <hasSuffix>
     258:	52800021 	mov	w1, #0x1                   	// #1
     25c:	f9400063 	ldr	x3, [x3]
     260:	91000042 	add	x2, x2, #0x0
     264:	f9400000 	ldr	x0, [x0]
     268:	f9400063 	ldr	x3, [x3]
     26c:	f9400000 	ldr	x0, [x0]
     270:	94000000 	bl	0 <__fprintf_chk>
     274:	17ffffc3 	b	180 <cleanUpAndFail+0x40>
     278:	90000000 	adrp	x0, 0 <stderr>
     27c:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
     280:	4b0600a6 	sub	w6, w5, w6
     284:	90000002 	adrp	x2, 0 <hasSuffix>
     288:	f9400063 	ldr	x3, [x3]
     28c:	91000042 	add	x2, x2, #0x0
     290:	f9400000 	ldr	x0, [x0]
     294:	52800021 	mov	w1, #0x1                   	// #1
     298:	f9400064 	ldr	x4, [x3]
     29c:	f9400000 	ldr	x0, [x0]
     2a0:	aa0403e3 	mov	x3, x4
     2a4:	94000000 	bl	0 <__fprintf_chk>
     2a8:	17ffffc4 	b	1b8 <cleanUpAndFail+0x78>
     2ac:	90000016 	adrp	x22, 8 <hasSuffix+0x8>
     2b0:	90000015 	adrp	x21, 0 <stderr>
     2b4:	52800021 	mov	w1, #0x1                   	// #1
     2b8:	90000002 	adrp	x2, 0 <hasSuffix>
     2bc:	f94002d6 	ldr	x22, [x22]
     2c0:	91000042 	add	x2, x2, #0x0
     2c4:	f94002b5 	ldr	x21, [x21]
     2c8:	90000014 	adrp	x20, 1 <hasSuffix+0x1>
     2cc:	f94002c3 	ldr	x3, [x22]
     2d0:	f94002a0 	ldr	x0, [x21]
     2d4:	94000000 	bl	0 <__fprintf_chk>
     2d8:	f94002c3 	ldr	x3, [x22]
     2dc:	52800021 	mov	w1, #0x1                   	// #1
     2e0:	f94002a0 	ldr	x0, [x21]
     2e4:	90000002 	adrp	x2, 0 <hasSuffix>
     2e8:	91000042 	add	x2, x2, #0x0
     2ec:	94000000 	bl	0 <__fprintf_chk>
     2f0:	90000004 	adrp	x4, 40a <usage+0x32>
     2f4:	52800021 	mov	w1, #0x1                   	// #1
     2f8:	f94002c3 	ldr	x3, [x22]
     2fc:	90000002 	adrp	x2, 0 <hasSuffix>
     300:	f9400084 	ldr	x4, [x4]
     304:	91000042 	add	x2, x2, #0x0
     308:	f94002a0 	ldr	x0, [x21]
     30c:	94000000 	bl	0 <__fprintf_chk>
     310:	f94002a0 	ldr	x0, [x21]
     314:	90000002 	adrp	x2, 0 <hasSuffix>
     318:	f94002c3 	ldr	x3, [x22]
     31c:	91000042 	add	x2, x2, #0x0
     320:	52800021 	mov	w1, #0x1                   	// #1
     324:	94000000 	bl	0 <__fprintf_chk>
     328:	17ffff96 	b	180 <cleanUpAndFail+0x40>
     32c:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
     330:	90000000 	adrp	x0, 0 <stderr>
     334:	90000015 	adrp	x21, 40a <usage+0x32>
     338:	90000002 	adrp	x2, 0 <hasSuffix>
     33c:	f9400063 	ldr	x3, [x3]
     340:	91000042 	add	x2, x2, #0x0
     344:	f9400000 	ldr	x0, [x0]
     348:	52800021 	mov	w1, #0x1                   	// #1
     34c:	f94002a4 	ldr	x4, [x21]
     350:	f9400063 	ldr	x3, [x3]
     354:	f9400000 	ldr	x0, [x0]
     358:	94000000 	bl	0 <__fprintf_chk>
     35c:	17ffffb4 	b	22c <cleanUpAndFail+0xec>

0000000000000360 <mySignalCatcher>:
     360:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
     364:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
     368:	90000000 	adrp	x0, 0 <stderr>
     36c:	910003fd 	mov	x29, sp
     370:	f9400063 	ldr	x3, [x3]
     374:	90000002 	adrp	x2, 0 <hasSuffix>
     378:	f9400000 	ldr	x0, [x0]
     37c:	91000042 	add	x2, x2, #0x0
     380:	f9400063 	ldr	x3, [x3]
     384:	52800021 	mov	w1, #0x1                   	// #1
     388:	f9400000 	ldr	x0, [x0]
     38c:	94000000 	bl	0 <__fprintf_chk>
     390:	52800020 	mov	w0, #0x1                   	// #1
     394:	97ffff6b 	bl	140 <cleanUpAndFail>

0000000000000398 <license>:
     398:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     39c:	90000000 	adrp	x0, 0 <stderr>
     3a0:	910003fd 	mov	x29, sp
     3a4:	f9400000 	ldr	x0, [x0]
     3a8:	f9000bf3 	str	x19, [sp, #16]
     3ac:	f9400013 	ldr	x19, [x0]
     3b0:	94000000 	bl	0 <BZ2_bzlibVersion>
     3b4:	aa0003e3 	mov	x3, x0
     3b8:	90000002 	adrp	x2, 0 <hasSuffix>
     3bc:	aa1303e0 	mov	x0, x19
     3c0:	91000042 	add	x2, x2, #0x0
     3c4:	f9400bf3 	ldr	x19, [sp, #16]
     3c8:	52800021 	mov	w1, #0x1                   	// #1
     3cc:	a8c27bfd 	ldp	x29, x30, [sp], #32
     3d0:	14000000 	b	0 <__fprintf_chk>
     3d4:	d503201f 	nop

00000000000003d8 <usage>:
     3d8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     3dc:	90000001 	adrp	x1, 0 <stderr>
     3e0:	910003fd 	mov	x29, sp
     3e4:	f9400021 	ldr	x1, [x1]
     3e8:	a90153f3 	stp	x19, x20, [sp, #16]
     3ec:	aa0003f3 	mov	x19, x0
     3f0:	f9400034 	ldr	x20, [x1]
     3f4:	94000000 	bl	0 <BZ2_bzlibVersion>
     3f8:	aa1303e4 	mov	x4, x19
     3fc:	aa0003e3 	mov	x3, x0
     400:	aa1403e0 	mov	x0, x20
     404:	90000002 	adrp	x2, 0 <hasSuffix>
     408:	a94153f3 	ldp	x19, x20, [sp, #16]
     40c:	91000042 	add	x2, x2, #0x0
     410:	a8c27bfd 	ldp	x29, x30, [sp], #32
     414:	52800021 	mov	w1, #0x1                   	// #1
     418:	14000000 	b	0 <__fprintf_chk>
     41c:	d503201f 	nop

0000000000000420 <uInt64_toAscii.isra.0>:
     420:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
     424:	9000000a 	adrp	x10, 0 <__stack_chk_guard>
     428:	529999a6 	mov	w6, #0xcccd                	// #52429
     42c:	910003fd 	mov	x29, sp
     430:	f9400142 	ldr	x2, [x10]
     434:	910063e9 	add	x9, sp, #0x18
     438:	aa0903e8 	mov	x8, x9
     43c:	910043e5 	add	x5, sp, #0x10
     440:	f9400043 	ldr	x3, [x2]
     444:	f9001fe3 	str	x3, [sp, #56]
     448:	d2800003 	mov	x3, #0x0                   	// #0
     44c:	d2800007 	mov	x7, #0x0                   	// #0
     450:	72b99986 	movk	w6, #0xcccc, lsl #16
     454:	f9000be1 	str	x1, [sp, #16]
     458:	91001ca4 	add	x4, x5, #0x7
     45c:	52800001 	mov	w1, #0x0                   	// #0
     460:	39400083 	ldrb	w3, [x4]
     464:	eb0400bf 	cmp	x5, x4
     468:	0b012063 	add	w3, w3, w1, lsl #8
     46c:	9ba67c62 	umull	x2, w3, w6
     470:	d363fc41 	lsr	x1, x2, #35
     474:	381ff481 	strb	w1, [x4], #-1
     478:	0b010821 	add	w1, w1, w1, lsl #2
     47c:	4b010461 	sub	w1, w3, w1, lsl #1
     480:	54ffff01 	b.ne	460 <uInt64_toAscii.isra.0+0x40>  // b.any
     484:	1100c021 	add	w1, w1, #0x30
     488:	110004e4 	add	w4, w7, #0x1
     48c:	12001c21 	and	w1, w1, #0xff
     490:	d2800022 	mov	x2, #0x1                   	// #1
     494:	39000101 	strb	w1, [x8]
     498:	8b0200a3 	add	x3, x5, x2
     49c:	385ff063 	ldurb	w3, [x3, #-1]
     4a0:	35000323 	cbnz	w3, 504 <uInt64_toAscii.isra.0+0xe4>
     4a4:	91000442 	add	x2, x2, #0x1
     4a8:	f100245f 	cmp	x2, #0x9
     4ac:	54ffff61 	b.ne	498 <uInt64_toAscii.isra.0+0x78>  // b.any
     4b0:	93407c85 	sxtw	x5, w4
     4b4:	d2800002 	mov	x2, #0x0                   	// #0
     4b8:	d10004a5 	sub	x5, x5, #0x1
     4bc:	3824c81f 	strb	wzr, [x0, w4, sxtw]
     4c0:	8b050125 	add	x5, x9, x5
     4c4:	14000004 	b	4d4 <uInt64_toAscii.isra.0+0xb4>
     4c8:	aa2203e3 	mvn	x3, x2
     4cc:	aa0103e2 	mov	x2, x1
     4d0:	386368a1 	ldrb	w1, [x5, x3]
     4d4:	38226801 	strb	w1, [x0, x2]
     4d8:	eb0200ff 	cmp	x7, x2
     4dc:	91000441 	add	x1, x2, #0x1
     4e0:	54ffff41 	b.ne	4c8 <uInt64_toAscii.isra.0+0xa8>  // b.any
     4e4:	f940014a 	ldr	x10, [x10]
     4e8:	f9401fe0 	ldr	x0, [sp, #56]
     4ec:	f9400141 	ldr	x1, [x10]
     4f0:	eb010000 	subs	x0, x0, x1
     4f4:	d2800001 	mov	x1, #0x0                   	// #0
     4f8:	540000c1 	b.ne	510 <uInt64_toAscii.isra.0+0xf0>  // b.any
     4fc:	a8c47bfd 	ldp	x29, x30, [sp], #64
     500:	d65f03c0 	ret
     504:	91000508 	add	x8, x8, #0x1
     508:	93407c87 	sxtw	x7, w4
     50c:	17ffffd3 	b	458 <uInt64_toAscii.isra.0+0x38>
     510:	94000000 	bl	0 <__stack_chk_fail>
     514:	d503201f 	nop

0000000000000518 <cadvise.part.0>:
     518:	90000003 	adrp	x3, 0 <stderr>
     51c:	90000000 	adrp	x0, 0 <hasSuffix>
     520:	d2801e02 	mov	x2, #0xf0                  	// #240
     524:	91000000 	add	x0, x0, #0x0
     528:	f9400063 	ldr	x3, [x3]
     52c:	d2800021 	mov	x1, #0x1                   	// #1
     530:	f9400063 	ldr	x3, [x3]
     534:	14000000 	b	0 <fwrite>

0000000000000538 <showFileNames.part.0>:
     538:	90000000 	adrp	x0, 0 <stderr>
     53c:	90000004 	adrp	x4, 40a <usage+0x32>
     540:	90000003 	adrp	x3, 40a <usage+0x32>
     544:	90000002 	adrp	x2, 0 <hasSuffix>
     548:	f9400000 	ldr	x0, [x0]
     54c:	91000042 	add	x2, x2, #0x0
     550:	f9400084 	ldr	x4, [x4]
     554:	52800021 	mov	w1, #0x1                   	// #1
     558:	f9400063 	ldr	x3, [x3]
     55c:	f9400000 	ldr	x0, [x0]
     560:	14000000 	b	0 <__fprintf_chk>
     564:	d503201f 	nop

0000000000000568 <mySIGSEGVorSIGBUScatcher>:
     568:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     56c:	90000000 	adrp	x0, 0 <stderr>
     570:	90000002 	adrp	x2, 8 <hasSuffix+0x8>
     574:	910003fd 	mov	x29, sp
     578:	a90153f3 	stp	x19, x20, [sp, #16]
     57c:	90000013 	adrp	x19, 4 <hasSuffix+0x4>
     580:	f9400261 	ldr	x1, [x19]
     584:	f9400000 	ldr	x0, [x0]
     588:	f9400042 	ldr	x2, [x2]
     58c:	b9400021 	ldr	w1, [x1]
     590:	f9400000 	ldr	x0, [x0]
     594:	7100043f 	cmp	w1, #0x1
     598:	f9400043 	ldr	x3, [x2]
     59c:	540001e0 	b.eq	5d8 <mySIGSEGVorSIGBUScatcher+0x70>  // b.none
     5a0:	90000002 	adrp	x2, 0 <hasSuffix>
     5a4:	52800021 	mov	w1, #0x1                   	// #1
     5a8:	91000042 	add	x2, x2, #0x0
     5ac:	94000000 	bl	0 <__fprintf_chk>
     5b0:	90000014 	adrp	x20, 1 <hasSuffix+0x1>
     5b4:	f9400294 	ldr	x20, [x20]
     5b8:	39400280 	ldrb	w0, [x20]
     5bc:	35000160 	cbnz	w0, 5e8 <mySIGSEGVorSIGBUScatcher+0x80>
     5c0:	f9400273 	ldr	x19, [x19]
     5c4:	b9400260 	ldr	w0, [x19]
     5c8:	7100041f 	cmp	w0, #0x1
     5cc:	54000200 	b.eq	60c <mySIGSEGVorSIGBUScatcher+0xa4>  // b.none
     5d0:	52800040 	mov	w0, #0x2                   	// #2
     5d4:	97fffedb 	bl	140 <cleanUpAndFail>
     5d8:	90000002 	adrp	x2, 0 <hasSuffix>
     5dc:	91000042 	add	x2, x2, #0x0
     5e0:	94000000 	bl	0 <__fprintf_chk>
     5e4:	17fffff3 	b	5b0 <mySIGSEGVorSIGBUScatcher+0x48>
     5e8:	97ffffd4 	bl	538 <showFileNames.part.0>
     5ec:	f9400273 	ldr	x19, [x19]
     5f0:	b9400260 	ldr	w0, [x19]
     5f4:	7100041f 	cmp	w0, #0x1
     5f8:	540000a0 	b.eq	60c <mySIGSEGVorSIGBUScatcher+0xa4>  // b.none
     5fc:	39400280 	ldrb	w0, [x20]
     600:	34fffe80 	cbz	w0, 5d0 <mySIGSEGVorSIGBUScatcher+0x68>
     604:	97ffffc5 	bl	518 <cadvise.part.0>
     608:	17fffff2 	b	5d0 <mySIGSEGVorSIGBUScatcher+0x68>
     60c:	52800060 	mov	w0, #0x3                   	// #3
     610:	97fffecc 	bl	140 <cleanUpAndFail>
     614:	d503201f 	nop

0000000000000618 <outOfMemory>:
     618:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
     61c:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
     620:	90000000 	adrp	x0, 0 <stderr>
     624:	910003fd 	mov	x29, sp
     628:	f9400063 	ldr	x3, [x3]
     62c:	90000002 	adrp	x2, 0 <hasSuffix>
     630:	f9400000 	ldr	x0, [x0]
     634:	91000042 	add	x2, x2, #0x0
     638:	f9400063 	ldr	x3, [x3]
     63c:	52800021 	mov	w1, #0x1                   	// #1
     640:	f9400000 	ldr	x0, [x0]
     644:	94000000 	bl	0 <__fprintf_chk>
     648:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
     64c:	f9400000 	ldr	x0, [x0]
     650:	39400000 	ldrb	w0, [x0]
     654:	35000060 	cbnz	w0, 660 <outOfMemory+0x48>
     658:	52800020 	mov	w0, #0x1                   	// #1
     65c:	97fffeb9 	bl	140 <cleanUpAndFail>
     660:	97ffffb6 	bl	538 <showFileNames.part.0>
     664:	17fffffd 	b	658 <outOfMemory+0x40>

0000000000000668 <panic>:
     668:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
     66c:	90000001 	adrp	x1, 0 <stderr>
     670:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
     674:	910003fd 	mov	x29, sp
     678:	aa0003e4 	mov	x4, x0
     67c:	f9400020 	ldr	x0, [x1]
     680:	90000002 	adrp	x2, 0 <hasSuffix>
     684:	f9400063 	ldr	x3, [x3]
     688:	91000042 	add	x2, x2, #0x0
     68c:	f9400000 	ldr	x0, [x0]
     690:	52800021 	mov	w1, #0x1                   	// #1
     694:	f9400063 	ldr	x3, [x3]
     698:	94000000 	bl	0 <__fprintf_chk>
     69c:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
     6a0:	f9400000 	ldr	x0, [x0]
     6a4:	39400000 	ldrb	w0, [x0]
     6a8:	35000060 	cbnz	w0, 6b4 <panic+0x4c>
     6ac:	52800060 	mov	w0, #0x3                   	// #3
     6b0:	97fffea4 	bl	140 <cleanUpAndFail>
     6b4:	97ffffa1 	bl	538 <showFileNames.part.0>
     6b8:	17fffffd 	b	6ac <panic+0x44>
     6bc:	d503201f 	nop

00000000000006c0 <ioError>:
     6c0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     6c4:	90000000 	adrp	x0, 0 <stderr>
     6c8:	52800021 	mov	w1, #0x1                   	// #1
     6cc:	910003fd 	mov	x29, sp
     6d0:	f9400000 	ldr	x0, [x0]
     6d4:	90000002 	adrp	x2, 0 <hasSuffix>
     6d8:	91000042 	add	x2, x2, #0x0
     6dc:	f9400000 	ldr	x0, [x0]
     6e0:	f9000bf3 	str	x19, [sp, #16]
     6e4:	90000013 	adrp	x19, 8 <hasSuffix+0x8>
     6e8:	f9400273 	ldr	x19, [x19]
     6ec:	f9400263 	ldr	x3, [x19]
     6f0:	94000000 	bl	0 <__fprintf_chk>
     6f4:	f9400260 	ldr	x0, [x19]
     6f8:	94000000 	bl	0 <perror>
     6fc:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
     700:	f9400000 	ldr	x0, [x0]
     704:	39400000 	ldrb	w0, [x0]
     708:	35000060 	cbnz	w0, 714 <ioError+0x54>
     70c:	52800020 	mov	w0, #0x1                   	// #1
     710:	97fffe8c 	bl	140 <cleanUpAndFail>
     714:	97ffff89 	bl	538 <showFileNames.part.0>
     718:	17fffffd 	b	70c <ioError+0x4c>
     71c:	d503201f 	nop

0000000000000720 <applySavedFileAttrToOutputFile>:
     720:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     724:	910003fd 	mov	x29, sp
     728:	a90153f3 	stp	x19, x20, [sp, #16]
     72c:	90000013 	adrp	x19, 0 <hasSuffix>
     730:	91000273 	add	x19, x19, #0x0
     734:	2a0003f4 	mov	w20, w0
     738:	b9401261 	ldr	w1, [x19, #16]
     73c:	94000000 	bl	0 <fchmod>
     740:	350000c0 	cbnz	w0, 758 <applySavedFileAttrToOutputFile+0x38>
     744:	29430a61 	ldp	w1, w2, [x19, #24]
     748:	2a1403e0 	mov	w0, w20
     74c:	a94153f3 	ldp	x19, x20, [sp, #16]
     750:	a8c27bfd 	ldp	x29, x30, [sp], #32
     754:	14000000 	b	0 <fchown>
     758:	97ffffda 	bl	6c0 <ioError>
     75c:	d503201f 	nop

0000000000000760 <compressStream>:
     760:	d2828e0c 	mov	x12, #0x1470                	// #5232
     764:	cb2c63ff 	sub	sp, sp, x12
     768:	a9007bfd 	stp	x29, x30, [sp]
     76c:	910003fd 	mov	x29, sp
     770:	a9046bf9 	stp	x25, x26, [sp, #64]
     774:	90000019 	adrp	x25, 0 <__stack_chk_guard>
     778:	a90363f7 	stp	x23, x24, [sp, #48]
     77c:	aa0103f8 	mov	x24, x1
     780:	f9400321 	ldr	x1, [x25]
     784:	a90153f3 	stp	x19, x20, [sp, #16]
     788:	aa0003f4 	mov	x20, x0
     78c:	f9400022 	ldr	x2, [x1]
     790:	f90a37e2 	str	x2, [sp, #5224]
     794:	d2800002 	mov	x2, #0x0                   	// #0
     798:	a9025bf5 	stp	x21, x22, [sp, #32]
     79c:	a90573fb 	stp	x27, x28, [sp, #80]
     7a0:	94000000 	bl	0 <ferror>
     7a4:	35001a00 	cbnz	w0, ae4 <compressStream+0x384>
     7a8:	aa1803e0 	mov	x0, x24
     7ac:	94000000 	bl	0 <ferror>
     7b0:	350019a0 	cbnz	w0, ae4 <compressStream+0x384>
     7b4:	90000003 	adrp	x3, 4 <hasSuffix+0x4>
     7b8:	9000001a 	adrp	x26, 4 <hasSuffix+0x4>
     7bc:	90000002 	adrp	x2, 4 <hasSuffix+0x4>
     7c0:	910223f7 	add	x23, sp, #0x88
     7c4:	f9400063 	ldr	x3, [x3]
     7c8:	aa1803e1 	mov	x1, x24
     7cc:	f9400353 	ldr	x19, [x26]
     7d0:	aa1703e0 	mov	x0, x23
     7d4:	f9400042 	ldr	x2, [x2]
     7d8:	b9400064 	ldr	w4, [x3]
     7dc:	b9400263 	ldr	w3, [x19]
     7e0:	b9400042 	ldr	w2, [x2]
     7e4:	94000000 	bl	0 <BZ2_bzWriteOpen>
     7e8:	aa0003f6 	mov	x22, x0
     7ec:	b9408be1 	ldr	w1, [sp, #136]
     7f0:	35001401 	cbnz	w1, a70 <compressStream+0x310>
     7f4:	b9400260 	ldr	w0, [x19]
     7f8:	7100041f 	cmp	w0, #0x1
     7fc:	5400168c 	b.gt	acc <compressStream+0x36c>
     800:	910383f5 	add	x21, sp, #0xe0
     804:	14000013 	b	850 <compressStream+0xf0>
     808:	aa1403e3 	mov	x3, x20
     80c:	d2827102 	mov	x2, #0x1388                	// #5000
     810:	d2800021 	mov	x1, #0x1                   	// #1
     814:	aa1503e0 	mov	x0, x21
     818:	94000000 	bl	0 <fread>
     81c:	aa0003f3 	mov	x19, x0
     820:	aa1403e0 	mov	x0, x20
     824:	94000000 	bl	0 <ferror>
     828:	350015e0 	cbnz	w0, ae4 <compressStream+0x384>
     82c:	7100027f 	cmp	w19, #0x0
     830:	540000cd 	b.le	848 <compressStream+0xe8>
     834:	2a1303e3 	mov	w3, w19
     838:	aa1503e2 	mov	x2, x21
     83c:	aa1603e1 	mov	x1, x22
     840:	aa1703e0 	mov	x0, x23
     844:	94000000 	bl	0 <BZ2_bzWrite>
     848:	b9408be0 	ldr	w0, [sp, #136]
     84c:	35001120 	cbnz	w0, a70 <compressStream+0x310>
     850:	aa1403e0 	mov	x0, x20
     854:	97fffe15 	bl	a8 <myfeof>
     858:	72001c1f 	tst	w0, #0xff
     85c:	54fffd60 	b.eq	808 <compressStream+0xa8>  // b.none
     860:	910213fc 	add	x28, sp, #0x84
     864:	910203fb 	add	x27, sp, #0x80
     868:	9101f3f5 	add	x21, sp, #0x7c
     86c:	9101e3f3 	add	x19, sp, #0x78
     870:	aa1703e0 	mov	x0, x23
     874:	aa1c03e6 	mov	x6, x28
     878:	aa1b03e5 	mov	x5, x27
     87c:	aa1503e4 	mov	x4, x21
     880:	aa1303e3 	mov	x3, x19
     884:	aa1603e1 	mov	x1, x22
     888:	52800002 	mov	w2, #0x0                   	// #0
     88c:	94000000 	bl	0 <BZ2_bzWriteClose64>
     890:	b9408be0 	ldr	w0, [sp, #136]
     894:	35000f60 	cbnz	w0, a80 <compressStream+0x320>
     898:	aa1803e0 	mov	x0, x24
     89c:	94000000 	bl	0 <ferror>
     8a0:	35001220 	cbnz	w0, ae4 <compressStream+0x384>
     8a4:	aa1803e0 	mov	x0, x24
     8a8:	94000000 	bl	0 <fflush>
     8ac:	3100041f 	cmn	w0, #0x1
     8b0:	540011a0 	b.eq	ae4 <compressStream+0x384>  // b.none
     8b4:	90000000 	adrp	x0, 0 <stdout>
     8b8:	f9400000 	ldr	x0, [x0]
     8bc:	f9400000 	ldr	x0, [x0]
     8c0:	eb18001f 	cmp	x0, x24
     8c4:	54001180 	b.eq	af4 <compressStream+0x394>  // b.none
     8c8:	aa1803e0 	mov	x0, x24
     8cc:	94000000 	bl	0 <fileno>
     8d0:	37f810a0 	tbnz	w0, #31, ae4 <compressStream+0x384>
     8d4:	97ffff93 	bl	720 <applySavedFileAttrToOutputFile>
     8d8:	aa1803e0 	mov	x0, x24
     8dc:	94000000 	bl	0 <fclose>
     8e0:	90000001 	adrp	x1, 8 <hasSuffix+0x8>
     8e4:	3100041f 	cmn	w0, #0x1
     8e8:	f9400020 	ldr	x0, [x1]
     8ec:	f900001f 	str	xzr, [x0]
     8f0:	54000fa0 	b.eq	ae4 <compressStream+0x384>  // b.none
     8f4:	f9400021 	ldr	x1, [x1]
     8f8:	aa1403e0 	mov	x0, x20
     8fc:	f900003f 	str	xzr, [x1]
     900:	94000000 	bl	0 <ferror>
     904:	35000f00 	cbnz	w0, ae4 <compressStream+0x384>
     908:	aa1403e0 	mov	x0, x20
     90c:	94000000 	bl	0 <fclose>
     910:	3100041f 	cmn	w0, #0x1
     914:	54000e80 	b.eq	ae4 <compressStream+0x384>  // b.none
     918:	f940035a 	ldr	x26, [x26]
     91c:	b9400340 	ldr	w0, [x26]
     920:	7100001f 	cmp	w0, #0x0
     924:	5400088d 	b.le	a34 <compressStream+0x2d4>
     928:	294f1be5 	ldp	w5, w6, [sp, #120]
     92c:	2a0600a0 	orr	w0, w5, w6
     930:	34000e60 	cbz	w0, afc <compressStream+0x39c>
     934:	295023e7 	ldp	w7, w8, [sp, #128]
     938:	d2e80e03 	mov	x3, #0x4070000000000000    	// #4643211215818981376
     93c:	12001ca1 	and	w1, w5, #0xff
     940:	910243e4 	add	x4, sp, #0x90
     944:	12001ce0 	and	w0, w7, #0xff
     948:	d2800002 	mov	x2, #0x0                   	// #0
     94c:	9e670061 	fmov	d1, x3
     950:	1e6e1002 	fmov	d2, #1.000000000000000000e+00
     954:	6d0627e8 	stp	d8, d9, [sp, #96]
     958:	2f00e408 	movi	d8, #0x0
     95c:	29121be5 	stp	w5, w6, [sp, #144]
     960:	291323e7 	stp	w7, w8, [sp, #152]
     964:	14000004 	b	974 <compressStream+0x214>
     968:	8b040041 	add	x1, x2, x4
     96c:	91000442 	add	x2, x2, #0x1
     970:	39400421 	ldrb	w1, [x1, #1]
     974:	1e630020 	ucvtf	d0, w1
     978:	f1001c5f 	cmp	x2, #0x7
     97c:	1f422008 	fmadd	d8, d0, d2, d8
     980:	1e610842 	fmul	d2, d2, d1
     984:	54ffff21 	b.ne	968 <compressStream+0x208>  // b.any
     988:	d2e80e02 	mov	x2, #0x4070000000000000    	// #4643211215818981376
     98c:	2f00e409 	movi	d9, #0x0
     990:	910263e3 	add	x3, sp, #0x98
     994:	d2800001 	mov	x1, #0x0                   	// #0
     998:	9e670040 	fmov	d0, x2
     99c:	1e6e1003 	fmov	d3, #1.000000000000000000e+00
     9a0:	14000004 	b	9b0 <compressStream+0x250>
     9a4:	8b030020 	add	x0, x1, x3
     9a8:	91000421 	add	x1, x1, #0x1
     9ac:	39400400 	ldrb	w0, [x0, #1]
     9b0:	1e630002 	ucvtf	d2, w0
     9b4:	f1001c3f 	cmp	x1, #0x7
     9b8:	1f432449 	fmadd	d9, d2, d3, d9
     9bc:	1e600863 	fmul	d3, d3, d0
     9c0:	54ffff21 	b.ne	9a4 <compressStream+0x244>  // b.any
     9c4:	f9404be1 	ldr	x1, [sp, #144]
     9c8:	910283f4 	add	x20, sp, #0xa0
     9cc:	aa1403e0 	mov	x0, x20
     9d0:	910303f3 	add	x19, sp, #0xc0
     9d4:	97fffe93 	bl	420 <uInt64_toAscii.isra.0>
     9d8:	f9404fe1 	ldr	x1, [sp, #152]
     9dc:	aa1303e0 	mov	x0, x19
     9e0:	97fffe90 	bl	420 <uInt64_toAscii.isra.0>
     9e4:	1e681924 	fdiv	d4, d9, d8
     9e8:	1e641001 	fmov	d1, #8.000000000000000000e+00
     9ec:	1e691900 	fdiv	d0, d8, d9
     9f0:	1e6e1003 	fmov	d3, #1.000000000000000000e+00
     9f4:	1e610921 	fmul	d1, d9, d1
     9f8:	90000001 	adrp	x1, 0 <stderr>
     9fc:	d2e80b20 	mov	x0, #0x4059000000000000    	// #4636737291354636288
     a00:	9e670002 	fmov	d2, x0
     a04:	f9400021 	ldr	x1, [x1]
     a08:	aa1303e4 	mov	x4, x19
     a0c:	1e681821 	fdiv	d1, d1, d8
     a10:	aa1403e3 	mov	x3, x20
     a14:	90000002 	adrp	x2, 0 <hasSuffix>
     a18:	91000042 	add	x2, x2, #0x0
     a1c:	f9400020 	ldr	x0, [x1]
     a20:	52800021 	mov	w1, #0x1                   	// #1
     a24:	1e643863 	fsub	d3, d3, d4
     a28:	1e620862 	fmul	d2, d3, d2
     a2c:	94000000 	bl	0 <__fprintf_chk>
     a30:	6d4627e8 	ldp	d8, d9, [sp, #96]
     a34:	f9400339 	ldr	x25, [x25]
     a38:	f94a37e0 	ldr	x0, [sp, #5224]
     a3c:	f9400321 	ldr	x1, [x25]
     a40:	eb010000 	subs	x0, x0, x1
     a44:	d2800001 	mov	x1, #0x0                   	// #0
     a48:	540006c1 	b.ne	b20 <compressStream+0x3c0>  // b.any
     a4c:	d2828e0c 	mov	x12, #0x1470                	// #5232
     a50:	a9407bfd 	ldp	x29, x30, [sp]
     a54:	a94153f3 	ldp	x19, x20, [sp, #16]
     a58:	a9425bf5 	ldp	x21, x22, [sp, #32]
     a5c:	a94363f7 	ldp	x23, x24, [sp, #48]
     a60:	a9446bf9 	ldp	x25, x26, [sp, #64]
     a64:	a94573fb 	ldp	x27, x28, [sp, #80]
     a68:	8b2c63ff 	add	sp, sp, x12
     a6c:	d65f03c0 	ret
     a70:	910213fc 	add	x28, sp, #0x84
     a74:	910203fb 	add	x27, sp, #0x80
     a78:	9101f3f5 	add	x21, sp, #0x7c
     a7c:	9101e3f3 	add	x19, sp, #0x78
     a80:	910233e0 	add	x0, sp, #0x8c
     a84:	aa1c03e6 	mov	x6, x28
     a88:	aa1b03e5 	mov	x5, x27
     a8c:	aa1503e4 	mov	x4, x21
     a90:	aa1303e3 	mov	x3, x19
     a94:	aa1603e1 	mov	x1, x22
     a98:	52800022 	mov	w2, #0x1                   	// #1
     a9c:	94000000 	bl	0 <BZ2_bzWriteClose64>
     aa0:	b9408be0 	ldr	w0, [sp, #136]
     aa4:	3100181f 	cmn	w0, #0x6
     aa8:	540001e0 	b.eq	ae4 <compressStream+0x384>  // b.none
     aac:	6d0627e8 	stp	d8, d9, [sp, #96]
     ab0:	31000c1f 	cmn	w0, #0x3
     ab4:	540001e0 	b.eq	af0 <compressStream+0x390>  // b.none
     ab8:	3100241f 	cmn	w0, #0x9
     abc:	54000180 	b.eq	aec <compressStream+0x38c>  // b.none
     ac0:	90000000 	adrp	x0, 0 <hasSuffix>
     ac4:	91000000 	add	x0, x0, #0x0
     ac8:	97fffee8 	bl	668 <panic>
     acc:	90000001 	adrp	x1, 0 <stderr>
     ad0:	52800140 	mov	w0, #0xa                   	// #10
     ad4:	f9400021 	ldr	x1, [x1]
     ad8:	f9400021 	ldr	x1, [x1]
     adc:	94000000 	bl	0 <fputc>
     ae0:	17ffff48 	b	800 <compressStream+0xa0>
     ae4:	6d0627e8 	stp	d8, d9, [sp, #96]
     ae8:	97fffef6 	bl	6c0 <ioError>
     aec:	97fffd81 	bl	f0 <configError>
     af0:	97fffeca 	bl	618 <outOfMemory>
     af4:	90000001 	adrp	x1, 8 <hasSuffix+0x8>
     af8:	17ffff7f 	b	8f4 <compressStream+0x194>
     afc:	90000003 	adrp	x3, 0 <stderr>
     b00:	90000000 	adrp	x0, 0 <hasSuffix>
     b04:	d28002a2 	mov	x2, #0x15                  	// #21
     b08:	d2800021 	mov	x1, #0x1                   	// #1
     b0c:	f9400063 	ldr	x3, [x3]
     b10:	91000000 	add	x0, x0, #0x0
     b14:	f9400063 	ldr	x3, [x3]
     b18:	94000000 	bl	0 <fwrite>
     b1c:	17ffffc6 	b	a34 <compressStream+0x2d4>
     b20:	6d0627e8 	stp	d8, d9, [sp, #96]
     b24:	94000000 	bl	0 <__stack_chk_fail>

0000000000000b28 <testStream>:
     b28:	d284f40c 	mov	x12, #0x27a0                	// #10144
     b2c:	cb2c63ff 	sub	sp, sp, x12
     b30:	a9007bfd 	stp	x29, x30, [sp]
     b34:	910003fd 	mov	x29, sp
     b38:	a9046bf9 	stp	x25, x26, [sp, #64]
     b3c:	90000019 	adrp	x25, 0 <__stack_chk_guard>
     b40:	f9400321 	ldr	x1, [x25]
     b44:	a90153f3 	stp	x19, x20, [sp, #16]
     b48:	f9400022 	ldr	x2, [x1]
     b4c:	f913cfe2 	str	x2, [sp, #10136]
     b50:	d2800002 	mov	x2, #0x0                   	// #0
     b54:	a9025bf5 	stp	x21, x22, [sp, #32]
     b58:	a90363f7 	stp	x23, x24, [sp, #48]
     b5c:	aa0003f7 	mov	x23, x0
     b60:	a90573fb 	stp	x27, x28, [sp, #80]
     b64:	b9007fff 	str	wzr, [sp, #124]
     b68:	94000000 	bl	0 <ferror>
     b6c:	35000ea0 	cbnz	w0, d40 <testStream+0x218>
     b70:	9000001a 	adrp	x26, 1 <hasSuffix+0x1>
     b74:	90000018 	adrp	x24, 4 <hasSuffix+0x4>
     b78:	2a0003f6 	mov	w22, w0
     b7c:	b9407fe5 	ldr	w5, [sp, #124]
     b80:	d2828200 	mov	x0, #0x1410                	// #5136
     b84:	9101d3f3 	add	x19, sp, #0x74
     b88:	f940035a 	ldr	x26, [x26]
     b8c:	8b2063f5 	add	x21, sp, x0
     b90:	f940031b 	ldr	x27, [x24]
     b94:	9101f3e0 	add	x0, sp, #0x7c
     b98:	910223f4 	add	x20, sp, #0x88
     b9c:	f90033e0 	str	x0, [sp, #96]
     ba0:	910203e0 	add	x0, sp, #0x80
     ba4:	f90037e0 	str	x0, [sp, #104]
     ba8:	39400343 	ldrb	w3, [x26]
     bac:	aa1503e4 	mov	x4, x21
     bb0:	b9400362 	ldr	w2, [x27]
     bb4:	aa1703e1 	mov	x1, x23
     bb8:	aa1303e0 	mov	x0, x19
     bbc:	94000000 	bl	0 <BZ2_bzReadOpen>
     bc0:	aa0003fc 	mov	x28, x0
     bc4:	b4000640 	cbz	x0, c8c <testStream+0x164>
     bc8:	b94077e0 	ldr	w0, [sp, #116]
     bcc:	35000600 	cbnz	w0, c8c <testStream+0x164>
     bd0:	110006d6 	add	w22, w22, #0x1
     bd4:	d503201f 	nop
     bd8:	aa1403e2 	mov	x2, x20
     bdc:	aa1c03e1 	mov	x1, x28
     be0:	aa1303e0 	mov	x0, x19
     be4:	52827103 	mov	w3, #0x1388                	// #5000
     be8:	94000000 	bl	0 <BZ2_bzRead>
     bec:	b94077e2 	ldr	w2, [sp, #116]
     bf0:	3100145f 	cmn	w2, #0x5
     bf4:	540004c0 	b.eq	c8c <testStream+0x164>  // b.none
     bf8:	34ffff02 	cbz	w2, bd8 <testStream+0xb0>
     bfc:	7100105f 	cmp	w2, #0x4
     c00:	54000461 	b.ne	c8c <testStream+0x164>  // b.any
     c04:	a9460be3 	ldp	x3, x2, [sp, #96]
     c08:	aa1303e0 	mov	x0, x19
     c0c:	aa1c03e1 	mov	x1, x28
     c10:	94000000 	bl	0 <BZ2_bzReadGetUnused>
     c14:	b94077e0 	ldr	w0, [sp, #116]
     c18:	35001180 	cbnz	w0, e48 <testStream+0x320>
     c1c:	b9407fe4 	ldr	w4, [sp, #124]
     c20:	f94043e5 	ldr	x5, [sp, #128]
     c24:	7100009f 	cmp	w4, #0x0
     c28:	5400018d 	b.le	c58 <testStream+0x130>
     c2c:	51000484 	sub	w4, w4, #0x1
     c30:	d10004a5 	sub	x5, x5, #0x1
     c34:	91000884 	add	x4, x4, #0x2
     c38:	d2800022 	mov	x2, #0x1                   	// #1
     c3c:	d503201f 	nop
     c40:	8b0202a0 	add	x0, x21, x2
     c44:	386268a3 	ldrb	w3, [x5, x2]
     c48:	91000442 	add	x2, x2, #0x1
     c4c:	eb04005f 	cmp	x2, x4
     c50:	381ff003 	sturb	w3, [x0, #-1]
     c54:	54ffff61 	b.ne	c40 <testStream+0x118>  // b.any
     c58:	aa1303e0 	mov	x0, x19
     c5c:	aa1c03e1 	mov	x1, x28
     c60:	94000000 	bl	0 <BZ2_bzReadClose>
     c64:	b94077e0 	ldr	w0, [sp, #116]
     c68:	35000f00 	cbnz	w0, e48 <testStream+0x320>
     c6c:	b9407fe5 	ldr	w5, [sp, #124]
     c70:	35fff9c5 	cbnz	w5, ba8 <testStream+0x80>
     c74:	aa1703e0 	mov	x0, x23
     c78:	97fffd0c 	bl	a8 <myfeof>
     c7c:	72001c1f 	tst	w0, #0xff
     c80:	54000c41 	b.ne	e08 <testStream+0x2e0>  // b.any
     c84:	b9407fe5 	ldr	w5, [sp, #124]
     c88:	17ffffc8 	b	ba8 <testStream+0x80>
     c8c:	9101e3e0 	add	x0, sp, #0x78
     c90:	aa1c03e1 	mov	x1, x28
     c94:	94000000 	bl	0 <BZ2_bzReadClose>
     c98:	f9400318 	ldr	x24, [x24]
     c9c:	b9400300 	ldr	w0, [x24]
     ca0:	340007c0 	cbz	w0, d98 <testStream+0x270>
     ca4:	b94077e0 	ldr	w0, [sp, #116]
     ca8:	3100141f 	cmn	w0, #0x5
     cac:	54000580 	b.eq	d5c <testStream+0x234>  // b.none
     cb0:	3100101f 	cmn	w0, #0x4
     cb4:	5400036a 	b.ge	d20 <testStream+0x1f8>  // b.tcont
     cb8:	31001c1f 	cmn	w0, #0x7
     cbc:	540003e1 	b.ne	d38 <testStream+0x210>  // b.any
     cc0:	90000000 	adrp	x0, 0 <hasSuffix>
     cc4:	91000000 	add	x0, x0, #0x0
     cc8:	90000003 	adrp	x3, 0 <stderr>
     ccc:	d28002e2 	mov	x2, #0x17                  	// #23
     cd0:	f9400063 	ldr	x3, [x3]
     cd4:	d2800021 	mov	x1, #0x1                   	// #1
     cd8:	f9400063 	ldr	x3, [x3]
     cdc:	94000000 	bl	0 <fwrite>
     ce0:	52800000 	mov	w0, #0x0                   	// #0
     ce4:	f9400339 	ldr	x25, [x25]
     ce8:	f953cfe1 	ldr	x1, [sp, #10136]
     cec:	f9400322 	ldr	x2, [x25]
     cf0:	eb020021 	subs	x1, x1, x2
     cf4:	d2800002 	mov	x2, #0x0                   	// #0
     cf8:	54000b41 	b.ne	e60 <testStream+0x338>  // b.any
     cfc:	d284f40c 	mov	x12, #0x27a0                	// #10144
     d00:	a9407bfd 	ldp	x29, x30, [sp]
     d04:	a94153f3 	ldp	x19, x20, [sp, #16]
     d08:	a9425bf5 	ldp	x21, x22, [sp, #32]
     d0c:	a94363f7 	ldp	x23, x24, [sp, #48]
     d10:	a9446bf9 	ldp	x25, x26, [sp, #64]
     d14:	a94573fb 	ldp	x27, x28, [sp, #80]
     d18:	8b2c63ff 	add	sp, sp, x12
     d1c:	d65f03c0 	ret
     d20:	54000121 	b.ne	d44 <testStream+0x21c>  // b.any
     d24:	90000000 	adrp	x0, 0 <hasSuffix>
     d28:	90000003 	adrp	x3, 0 <stderr>
     d2c:	91000000 	add	x0, x0, #0x0
     d30:	d2800462 	mov	x2, #0x23                  	// #35
     d34:	17ffffe7 	b	cd0 <testStream+0x1a8>
     d38:	3100181f 	cmn	w0, #0x6
     d3c:	540000a1 	b.ne	d50 <testStream+0x228>  // b.any
     d40:	97fffe60 	bl	6c0 <ioError>
     d44:	31000c1f 	cmn	w0, #0x3
     d48:	54000861 	b.ne	e54 <testStream+0x32c>  // b.any
     d4c:	97fffe33 	bl	618 <outOfMemory>
     d50:	3100241f 	cmn	w0, #0x9
     d54:	54000801 	b.ne	e54 <testStream+0x32c>  // b.any
     d58:	97fffce6 	bl	f0 <configError>
     d5c:	90000000 	adrp	x0, 0 <stdin>
     d60:	f9400000 	ldr	x0, [x0]
     d64:	f9400000 	ldr	x0, [x0]
     d68:	eb17001f 	cmp	x0, x23
     d6c:	54000060 	b.eq	d78 <testStream+0x250>  // b.none
     d70:	aa1703e0 	mov	x0, x23
     d74:	94000000 	bl	0 <fclose>
     d78:	710006df 	cmp	w22, #0x1
     d7c:	540003c0 	b.eq	df4 <testStream+0x2cc>  // b.none
     d80:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
     d84:	f9400000 	ldr	x0, [x0]
     d88:	39400000 	ldrb	w0, [x0]
     d8c:	35000200 	cbnz	w0, dcc <testStream+0x2a4>
     d90:	52800020 	mov	w0, #0x1                   	// #1
     d94:	17ffffd4 	b	ce4 <testStream+0x1bc>
     d98:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
     d9c:	90000000 	adrp	x0, 0 <stderr>
     da0:	90000004 	adrp	x4, 40a <usage+0x32>
     da4:	90000002 	adrp	x2, 0 <hasSuffix>
     da8:	f9400063 	ldr	x3, [x3]
     dac:	91000042 	add	x2, x2, #0x0
     db0:	f9400000 	ldr	x0, [x0]
     db4:	52800021 	mov	w1, #0x1                   	// #1
     db8:	f9400084 	ldr	x4, [x4]
     dbc:	f9400063 	ldr	x3, [x3]
     dc0:	f9400000 	ldr	x0, [x0]
     dc4:	94000000 	bl	0 <__fprintf_chk>
     dc8:	17ffffb7 	b	ca4 <testStream+0x17c>
     dcc:	90000000 	adrp	x0, 0 <hasSuffix>
     dd0:	91000000 	add	x0, x0, #0x0
     dd4:	90000003 	adrp	x3, 0 <stderr>
     dd8:	d2800462 	mov	x2, #0x23                  	// #35
     ddc:	f9400063 	ldr	x3, [x3]
     de0:	d2800021 	mov	x1, #0x1                   	// #1
     de4:	f9400063 	ldr	x3, [x3]
     de8:	94000000 	bl	0 <fwrite>
     dec:	52800020 	mov	w0, #0x1                   	// #1
     df0:	17ffffbd 	b	ce4 <testStream+0x1bc>
     df4:	90000000 	adrp	x0, 0 <hasSuffix>
     df8:	90000003 	adrp	x3, 0 <stderr>
     dfc:	91000000 	add	x0, x0, #0x0
     e00:	d28005a2 	mov	x2, #0x2d                  	// #45
     e04:	17ffffb3 	b	cd0 <testStream+0x1a8>
     e08:	aa1703e0 	mov	x0, x23
     e0c:	94000000 	bl	0 <ferror>
     e10:	35fff980 	cbnz	w0, d40 <testStream+0x218>
     e14:	aa1703e0 	mov	x0, x23
     e18:	94000000 	bl	0 <fclose>
     e1c:	3100041f 	cmn	w0, #0x1
     e20:	54fff900 	b.eq	d40 <testStream+0x218>  // b.none
     e24:	f9400318 	ldr	x24, [x24]
     e28:	b9400300 	ldr	w0, [x24]
     e2c:	7100041f 	cmp	w0, #0x1
     e30:	54fffb0d 	b.le	d90 <testStream+0x268>
     e34:	90000000 	adrp	x0, 0 <hasSuffix>
     e38:	90000003 	adrp	x3, 0 <stderr>
     e3c:	91000000 	add	x0, x0, #0x0
     e40:	d28000a2 	mov	x2, #0x5                   	// #5
     e44:	17ffffe6 	b	ddc <testStream+0x2b4>
     e48:	90000000 	adrp	x0, 0 <hasSuffix>
     e4c:	91000000 	add	x0, x0, #0x0
     e50:	97fffe06 	bl	668 <panic>
     e54:	90000000 	adrp	x0, 0 <hasSuffix>
     e58:	91000000 	add	x0, x0, #0x0
     e5c:	97fffe03 	bl	668 <panic>
     e60:	94000000 	bl	0 <__stack_chk_fail>
     e64:	d503201f 	nop

0000000000000e68 <uncompressStream>:
     e68:	d284f40c 	mov	x12, #0x27a0                	// #10144
     e6c:	cb2c63ff 	sub	sp, sp, x12
     e70:	a9007bfd 	stp	x29, x30, [sp]
     e74:	910003fd 	mov	x29, sp
     e78:	a9046bf9 	stp	x25, x26, [sp, #64]
     e7c:	9000001a 	adrp	x26, 0 <__stack_chk_guard>
     e80:	a90153f3 	stp	x19, x20, [sp, #16]
     e84:	aa0103f3 	mov	x19, x1
     e88:	f9400341 	ldr	x1, [x26]
     e8c:	a9025bf5 	stp	x21, x22, [sp, #32]
     e90:	aa0003f6 	mov	x22, x0
     e94:	f9400022 	ldr	x2, [x1]
     e98:	f913cfe2 	str	x2, [sp, #10136]
     e9c:	d2800002 	mov	x2, #0x0                   	// #0
     ea0:	aa1303e0 	mov	x0, x19
     ea4:	a90363f7 	stp	x23, x24, [sp, #48]
     ea8:	a90573fb 	stp	x27, x28, [sp, #80]
     eac:	b9007fff 	str	wzr, [sp, #124]
     eb0:	94000000 	bl	0 <ferror>
     eb4:	350011a0 	cbnz	w0, 10e8 <uncompressStream+0x280>
     eb8:	aa1603e0 	mov	x0, x22
     ebc:	94000000 	bl	0 <ferror>
     ec0:	2a0003f9 	mov	w25, w0
     ec4:	35001120 	cbnz	w0, 10e8 <uncompressStream+0x280>
     ec8:	d2828200 	mov	x0, #0x1410                	// #5136
     ecc:	9000001b 	adrp	x27, 1 <hasSuffix+0x1>
     ed0:	8b2063f8 	add	x24, sp, x0
     ed4:	90000000 	adrp	x0, 4 <hasSuffix+0x4>
     ed8:	f940037b 	ldr	x27, [x27]
     edc:	9101d3f7 	add	x23, sp, #0x74
     ee0:	b9407fe5 	ldr	w5, [sp, #124]
     ee4:	910223f4 	add	x20, sp, #0x88
     ee8:	f940001c 	ldr	x28, [x0]
     eec:	9101f3e0 	add	x0, sp, #0x7c
     ef0:	f90033e0 	str	x0, [sp, #96]
     ef4:	910203e0 	add	x0, sp, #0x80
     ef8:	f90037e0 	str	x0, [sp, #104]
     efc:	39400363 	ldrb	w3, [x27]
     f00:	aa1803e4 	mov	x4, x24
     f04:	b9400382 	ldr	w2, [x28]
     f08:	aa1603e1 	mov	x1, x22
     f0c:	aa1703e0 	mov	x0, x23
     f10:	94000000 	bl	0 <BZ2_bzReadOpen>
     f14:	aa0003f5 	mov	x21, x0
     f18:	b4000860 	cbz	x0, 1024 <uncompressStream+0x1bc>
     f1c:	b94077e0 	ldr	w0, [sp, #116]
     f20:	35000820 	cbnz	w0, 1024 <uncompressStream+0x1bc>
     f24:	11000739 	add	w25, w25, #0x1
     f28:	14000006 	b	f40 <uncompressStream+0xd8>
     f2c:	aa1303e0 	mov	x0, x19
     f30:	94000000 	bl	0 <ferror>
     f34:	35000da0 	cbnz	w0, 10e8 <uncompressStream+0x280>
     f38:	b94077e0 	ldr	w0, [sp, #116]
     f3c:	35000240 	cbnz	w0, f84 <uncompressStream+0x11c>
     f40:	aa1503e1 	mov	x1, x21
     f44:	aa1403e2 	mov	x2, x20
     f48:	aa1703e0 	mov	x0, x23
     f4c:	52827103 	mov	w3, #0x1388                	// #5000
     f50:	94000000 	bl	0 <BZ2_bzRead>
     f54:	b94077e1 	ldr	w1, [sp, #116]
     f58:	3100143f 	cmn	w1, #0x5
     f5c:	540005c0 	b.eq	1014 <uncompressStream+0x1ac>  // b.none
     f60:	721d783f 	tst	w1, #0xfffffffb
     f64:	7a400804 	ccmp	w0, #0x0, #0x4, eq  // eq = none
     f68:	54fffe2d 	b.le	f2c <uncompressStream+0xc4>
     f6c:	93407c02 	sxtw	x2, w0
     f70:	aa1303e3 	mov	x3, x19
     f74:	aa1403e0 	mov	x0, x20
     f78:	d2800021 	mov	x1, #0x1                   	// #1
     f7c:	94000000 	bl	0 <fwrite>
     f80:	17ffffeb 	b	f2c <uncompressStream+0xc4>
     f84:	7100101f 	cmp	w0, #0x4
     f88:	540004e1 	b.ne	1024 <uncompressStream+0x1bc>  // b.any
     f8c:	a9460be3 	ldp	x3, x2, [sp, #96]
     f90:	aa1703e0 	mov	x0, x23
     f94:	aa1503e1 	mov	x1, x21
     f98:	94000000 	bl	0 <BZ2_bzReadGetUnused>
     f9c:	b94077e0 	ldr	w0, [sp, #116]
     fa0:	35001ba0 	cbnz	w0, 1314 <uncompressStream+0x4ac>
     fa4:	b9407fe0 	ldr	w0, [sp, #124]
     fa8:	f94043e4 	ldr	x4, [sp, #128]
     fac:	7100001f 	cmp	w0, #0x0
     fb0:	5400018d 	b.le	fe0 <uncompressStream+0x178>
     fb4:	51000400 	sub	w0, w0, #0x1
     fb8:	d1000484 	sub	x4, x4, #0x1
     fbc:	91000803 	add	x3, x0, #0x2
     fc0:	d2800020 	mov	x0, #0x1                   	// #1
     fc4:	d503201f 	nop
     fc8:	8b000301 	add	x1, x24, x0
     fcc:	38606882 	ldrb	w2, [x4, x0]
     fd0:	91000400 	add	x0, x0, #0x1
     fd4:	eb03001f 	cmp	x0, x3
     fd8:	381ff022 	sturb	w2, [x1, #-1]
     fdc:	54ffff61 	b.ne	fc8 <uncompressStream+0x160>  // b.any
     fe0:	aa1703e0 	mov	x0, x23
     fe4:	aa1503e1 	mov	x1, x21
     fe8:	94000000 	bl	0 <BZ2_bzReadClose>
     fec:	b94077e0 	ldr	w0, [sp, #116]
     ff0:	35001920 	cbnz	w0, 1314 <uncompressStream+0x4ac>
     ff4:	b9407fe5 	ldr	w5, [sp, #124]
     ff8:	35fff825 	cbnz	w5, efc <uncompressStream+0x94>
     ffc:	aa1603e0 	mov	x0, x22
    1000:	97fffc2a 	bl	a8 <myfeof>
    1004:	72001c1f 	tst	w0, #0xff
    1008:	54000b41 	b.ne	1170 <uncompressStream+0x308>  // b.any
    100c:	b9407fe5 	ldr	w5, [sp, #124]
    1010:	17ffffbb 	b	efc <uncompressStream+0x94>
    1014:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    1018:	f9400000 	ldr	x0, [x0]
    101c:	39400000 	ldrb	w0, [x0]
    1020:	35000740 	cbnz	w0, 1108 <uncompressStream+0x2a0>
    1024:	9101e3e0 	add	x0, sp, #0x78
    1028:	aa1503e1 	mov	x1, x21
    102c:	94000000 	bl	0 <BZ2_bzReadClose>
    1030:	b94077e0 	ldr	w0, [sp, #116]
    1034:	3100141f 	cmn	w0, #0x5
    1038:	540004c1 	b.ne	10d0 <uncompressStream+0x268>  // b.any
    103c:	90000000 	adrp	x0, 0 <stdin>
    1040:	f9400000 	ldr	x0, [x0]
    1044:	f9400000 	ldr	x0, [x0]
    1048:	eb16001f 	cmp	x0, x22
    104c:	54000060 	b.eq	1058 <uncompressStream+0x1f0>  // b.none
    1050:	aa1603e0 	mov	x0, x22
    1054:	94000000 	bl	0 <fclose>
    1058:	90000000 	adrp	x0, 0 <stdout>
    105c:	f9400000 	ldr	x0, [x0]
    1060:	f9400000 	ldr	x0, [x0]
    1064:	eb13001f 	cmp	x0, x19
    1068:	54000060 	b.eq	1074 <uncompressStream+0x20c>  // b.none
    106c:	aa1303e0 	mov	x0, x19
    1070:	94000000 	bl	0 <fclose>
    1074:	7100073f 	cmp	w25, #0x1
    1078:	52800000 	mov	w0, #0x0                   	// #0
    107c:	540000c0 	b.eq	1094 <uncompressStream+0x22c>  // b.none
    1080:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    1084:	f9400000 	ldr	x0, [x0]
    1088:	39400000 	ldrb	w0, [x0]
    108c:	35000d60 	cbnz	w0, 1238 <uncompressStream+0x3d0>
    1090:	52800020 	mov	w0, #0x1                   	// #1
    1094:	f940035a 	ldr	x26, [x26]
    1098:	f953cfe1 	ldr	x1, [sp, #10136]
    109c:	f9400342 	ldr	x2, [x26]
    10a0:	eb020021 	subs	x1, x1, x2
    10a4:	d2800002 	mov	x2, #0x0                   	// #0
    10a8:	540013c1 	b.ne	1320 <uncompressStream+0x4b8>  // b.any
    10ac:	d284f40c 	mov	x12, #0x27a0                	// #10144
    10b0:	a9407bfd 	ldp	x29, x30, [sp]
    10b4:	a94153f3 	ldp	x19, x20, [sp, #16]
    10b8:	a9425bf5 	ldp	x21, x22, [sp, #32]
    10bc:	a94363f7 	ldp	x23, x24, [sp, #48]
    10c0:	a9446bf9 	ldp	x25, x26, [sp, #64]
    10c4:	a94573fb 	ldp	x27, x28, [sp, #80]
    10c8:	8b2c63ff 	add	sp, sp, x12
    10cc:	d65f03c0 	ret
    10d0:	3100101f 	cmn	w0, #0x4
    10d4:	540000ca 	b.ge	10ec <uncompressStream+0x284>  // b.tcont
    10d8:	31001c1f 	cmn	w0, #0x7
    10dc:	54000ee0 	b.eq	12b8 <uncompressStream+0x450>  // b.none
    10e0:	3100181f 	cmn	w0, #0x6
    10e4:	540000c1 	b.ne	10fc <uncompressStream+0x294>  // b.any
    10e8:	97fffd76 	bl	6c0 <ioError>
    10ec:	54000c60 	b.eq	1278 <uncompressStream+0x410>  // b.none
    10f0:	31000c1f 	cmn	w0, #0x3
    10f4:	54001181 	b.ne	1324 <uncompressStream+0x4bc>  // b.any
    10f8:	97fffd48 	bl	618 <outOfMemory>
    10fc:	3100241f 	cmn	w0, #0x9
    1100:	54001121 	b.ne	1324 <uncompressStream+0x4bc>  // b.any
    1104:	97fffbfb 	bl	f0 <configError>
    1108:	aa1603e0 	mov	x0, x22
    110c:	94000000 	bl	0 <rewind>
    1110:	14000014 	b	1160 <uncompressStream+0x2f8>
    1114:	aa1603e3 	mov	x3, x22
    1118:	d2827102 	mov	x2, #0x1388                	// #5000
    111c:	d2800021 	mov	x1, #0x1                   	// #1
    1120:	aa1403e0 	mov	x0, x20
    1124:	94000000 	bl	0 <fread>
    1128:	aa0003f5 	mov	x21, x0
    112c:	aa1603e0 	mov	x0, x22
    1130:	94000000 	bl	0 <ferror>
    1134:	35fffda0 	cbnz	w0, 10e8 <uncompressStream+0x280>
    1138:	710002bf 	cmp	w21, #0x0
    113c:	540000cd 	b.le	1154 <uncompressStream+0x2ec>
    1140:	93407ea2 	sxtw	x2, w21
    1144:	aa1303e3 	mov	x3, x19
    1148:	aa1403e0 	mov	x0, x20
    114c:	d2800021 	mov	x1, #0x1                   	// #1
    1150:	94000000 	bl	0 <fwrite>
    1154:	aa1303e0 	mov	x0, x19
    1158:	94000000 	bl	0 <ferror>
    115c:	35fffc60 	cbnz	w0, 10e8 <uncompressStream+0x280>
    1160:	aa1603e0 	mov	x0, x22
    1164:	97fffbd1 	bl	a8 <myfeof>
    1168:	72001c1f 	tst	w0, #0xff
    116c:	54fffd40 	b.eq	1114 <uncompressStream+0x2ac>  // b.none
    1170:	aa1603e0 	mov	x0, x22
    1174:	94000000 	bl	0 <ferror>
    1178:	35fffb80 	cbnz	w0, 10e8 <uncompressStream+0x280>
    117c:	90000014 	adrp	x20, 0 <stdout>
    1180:	f9400280 	ldr	x0, [x20]
    1184:	f9400000 	ldr	x0, [x0]
    1188:	eb13001f 	cmp	x0, x19
    118c:	540000a0 	b.eq	11a0 <uncompressStream+0x338>  // b.none
    1190:	aa1303e0 	mov	x0, x19
    1194:	94000000 	bl	0 <fileno>
    1198:	37fffa80 	tbnz	w0, #31, 10e8 <uncompressStream+0x280>
    119c:	97fffd61 	bl	720 <applySavedFileAttrToOutputFile>
    11a0:	aa1603e0 	mov	x0, x22
    11a4:	94000000 	bl	0 <fclose>
    11a8:	3100041f 	cmn	w0, #0x1
    11ac:	54fff9e0 	b.eq	10e8 <uncompressStream+0x280>  // b.none
    11b0:	aa1303e0 	mov	x0, x19
    11b4:	94000000 	bl	0 <ferror>
    11b8:	35fff980 	cbnz	w0, 10e8 <uncompressStream+0x280>
    11bc:	aa1303e0 	mov	x0, x19
    11c0:	94000000 	bl	0 <fflush>
    11c4:	35fff920 	cbnz	w0, 10e8 <uncompressStream+0x280>
    11c8:	f9400294 	ldr	x20, [x20]
    11cc:	f9400280 	ldr	x0, [x20]
    11d0:	eb13001f 	cmp	x0, x19
    11d4:	540004e0 	b.eq	1270 <uncompressStream+0x408>  // b.none
    11d8:	aa1303e0 	mov	x0, x19
    11dc:	94000000 	bl	0 <fclose>
    11e0:	90000001 	adrp	x1, 8 <hasSuffix+0x8>
    11e4:	3100041f 	cmn	w0, #0x1
    11e8:	f9400020 	ldr	x0, [x1]
    11ec:	f900001f 	str	xzr, [x0]
    11f0:	54fff7c0 	b.eq	10e8 <uncompressStream+0x280>  // b.none
    11f4:	90000000 	adrp	x0, 4 <hasSuffix+0x4>
    11f8:	f9400021 	ldr	x1, [x1]
    11fc:	f9400000 	ldr	x0, [x0]
    1200:	f900003f 	str	xzr, [x1]
    1204:	b9400000 	ldr	w0, [x0]
    1208:	7100041f 	cmp	w0, #0x1
    120c:	54fff42d 	b.le	1090 <uncompressStream+0x228>
    1210:	90000003 	adrp	x3, 0 <stderr>
    1214:	90000000 	adrp	x0, 0 <hasSuffix>
    1218:	d28000a2 	mov	x2, #0x5                   	// #5
    121c:	91000000 	add	x0, x0, #0x0
    1220:	f9400063 	ldr	x3, [x3]
    1224:	d2800021 	mov	x1, #0x1                   	// #1
    1228:	f9400063 	ldr	x3, [x3]
    122c:	94000000 	bl	0 <fwrite>
    1230:	52800020 	mov	w0, #0x1                   	// #1
    1234:	17ffff98 	b	1094 <uncompressStream+0x22c>
    1238:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
    123c:	90000000 	adrp	x0, 0 <stderr>
    1240:	90000004 	adrp	x4, 40a <usage+0x32>
    1244:	90000002 	adrp	x2, 0 <hasSuffix>
    1248:	f9400063 	ldr	x3, [x3]
    124c:	91000042 	add	x2, x2, #0x0
    1250:	f9400000 	ldr	x0, [x0]
    1254:	52800021 	mov	w1, #0x1                   	// #1
    1258:	f9400084 	ldr	x4, [x4]
    125c:	f9400000 	ldr	x0, [x0]
    1260:	f9400063 	ldr	x3, [x3]
    1264:	94000000 	bl	0 <__fprintf_chk>
    1268:	52800020 	mov	w0, #0x1                   	// #1
    126c:	17ffff8a 	b	1094 <uncompressStream+0x22c>
    1270:	90000001 	adrp	x1, 8 <hasSuffix+0x8>
    1274:	17ffffe0 	b	11f4 <uncompressStream+0x38c>
    1278:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
    127c:	90000000 	adrp	x0, 0 <stderr>
    1280:	90000013 	adrp	x19, 1 <hasSuffix+0x1>
    1284:	90000002 	adrp	x2, 0 <hasSuffix>
    1288:	f9400063 	ldr	x3, [x3]
    128c:	91000042 	add	x2, x2, #0x0
    1290:	f9400000 	ldr	x0, [x0]
    1294:	52800021 	mov	w1, #0x1                   	// #1
    1298:	f9400063 	ldr	x3, [x3]
    129c:	f9400000 	ldr	x0, [x0]
    12a0:	94000000 	bl	0 <__fprintf_chk>
    12a4:	f9400273 	ldr	x19, [x19]
    12a8:	39400260 	ldrb	w0, [x19]
    12ac:	350002a0 	cbnz	w0, 1300 <uncompressStream+0x498>
    12b0:	52800040 	mov	w0, #0x2                   	// #2
    12b4:	97fffba3 	bl	140 <cleanUpAndFail>
    12b8:	90000013 	adrp	x19, 1 <hasSuffix+0x1>
    12bc:	f9400273 	ldr	x19, [x19]
    12c0:	39400260 	ldrb	w0, [x19]
    12c4:	34ffff60 	cbz	w0, 12b0 <uncompressStream+0x448>
    12c8:	90000014 	adrp	x20, 8 <hasSuffix+0x8>
    12cc:	90000000 	adrp	x0, 0 <stderr>
    12d0:	52800021 	mov	w1, #0x1                   	// #1
    12d4:	90000002 	adrp	x2, 0 <hasSuffix>
    12d8:	f9400294 	ldr	x20, [x20]
    12dc:	91000042 	add	x2, x2, #0x0
    12e0:	f9400000 	ldr	x0, [x0]
    12e4:	f9400283 	ldr	x3, [x20]
    12e8:	f9400000 	ldr	x0, [x0]
    12ec:	94000000 	bl	0 <__fprintf_chk>
    12f0:	f9400280 	ldr	x0, [x20]
    12f4:	94000000 	bl	0 <perror>
    12f8:	39400260 	ldrb	w0, [x19]
    12fc:	34fffda0 	cbz	w0, 12b0 <uncompressStream+0x448>
    1300:	97fffc8e 	bl	538 <showFileNames.part.0>
    1304:	39400260 	ldrb	w0, [x19]
    1308:	34fffd40 	cbz	w0, 12b0 <uncompressStream+0x448>
    130c:	97fffc83 	bl	518 <cadvise.part.0>
    1310:	17ffffe8 	b	12b0 <uncompressStream+0x448>
    1314:	90000000 	adrp	x0, 0 <hasSuffix>
    1318:	91000000 	add	x0, x0, #0x0
    131c:	97fffcd3 	bl	668 <panic>
    1320:	94000000 	bl	0 <__stack_chk_fail>
    1324:	90000000 	adrp	x0, 0 <hasSuffix>
    1328:	91000000 	add	x0, x0, #0x0
    132c:	97fffccf 	bl	668 <panic>

0000000000001330 <copyFileName>:
    1330:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    1334:	910003fd 	mov	x29, sp
    1338:	a90153f3 	stp	x19, x20, [sp, #16]
    133c:	aa0103f3 	mov	x19, x1
    1340:	aa0003f4 	mov	x20, x0
    1344:	aa0103e0 	mov	x0, x1
    1348:	94000000 	bl	0 <strlen>
    134c:	f110001f 	cmp	x0, #0x400
    1350:	54000128 	b.hi	1374 <copyFileName+0x44>  // b.pmore
    1354:	aa1303e1 	mov	x1, x19
    1358:	aa1403e0 	mov	x0, x20
    135c:	d2808002 	mov	x2, #0x400                 	// #1024
    1360:	94000000 	bl	0 <strncpy>
    1364:	3910029f 	strb	wzr, [x20, #1024]
    1368:	a94153f3 	ldp	x19, x20, [sp, #16]
    136c:	a8c27bfd 	ldp	x29, x30, [sp], #32
    1370:	d65f03c0 	ret
    1374:	90000000 	adrp	x0, 0 <stderr>
    1378:	52800021 	mov	w1, #0x1                   	// #1
    137c:	aa1303e3 	mov	x3, x19
    1380:	90000002 	adrp	x2, 0 <hasSuffix>
    1384:	f9400000 	ldr	x0, [x0]
    1388:	91000042 	add	x2, x2, #0x0
    138c:	52808004 	mov	w4, #0x400                 	// #1024
    1390:	f9400000 	ldr	x0, [x0]
    1394:	94000000 	bl	0 <__fprintf_chk>
    1398:	90000000 	adrp	x0, 4 <hasSuffix+0x4>
    139c:	f9400001 	ldr	x1, [x0]
    13a0:	b9400022 	ldr	w2, [x1]
    13a4:	7100005f 	cmp	w2, #0x0
    13a8:	5400006c 	b.gt	13b4 <copyFileName+0x84>
    13ac:	52800022 	mov	w2, #0x1                   	// #1
    13b0:	b9000022 	str	w2, [x1]
    13b4:	f9400000 	ldr	x0, [x0]
    13b8:	b9400000 	ldr	w0, [x0]
    13bc:	94000000 	bl	0 <exit>

00000000000013c0 <snocString>:
    13c0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    13c4:	aa0003e2 	mov	x2, x0
    13c8:	910003fd 	mov	x29, sp
    13cc:	a90153f3 	stp	x19, x20, [sp, #16]
    13d0:	f90013f5 	str	x21, [sp, #32]
    13d4:	aa0103f5 	mov	x21, x1
    13d8:	b40001e0 	cbz	x0, 1414 <snocString+0x54>
    13dc:	d503201f 	nop
    13e0:	aa0203f4 	mov	x20, x2
    13e4:	f9400442 	ldr	x2, [x2, #8]
    13e8:	b5ffffc2 	cbnz	x2, 13e0 <snocString+0x20>
    13ec:	aa0003f3 	mov	x19, x0
    13f0:	aa1503e1 	mov	x1, x21
    13f4:	d2800000 	mov	x0, #0x0                   	// #0
    13f8:	97fffff2 	bl	13c0 <snocString>
    13fc:	f9000680 	str	x0, [x20, #8]
    1400:	aa1303e0 	mov	x0, x19
    1404:	a94153f3 	ldp	x19, x20, [sp, #16]
    1408:	f94013f5 	ldr	x21, [sp, #32]
    140c:	a8c37bfd 	ldp	x29, x30, [sp], #48
    1410:	d65f03c0 	ret
    1414:	d2800200 	mov	x0, #0x10                  	// #16
    1418:	94000000 	bl	0 <malloc>
    141c:	aa0003f3 	mov	x19, x0
    1420:	b4000240 	cbz	x0, 1468 <snocString+0xa8>
    1424:	a9007e7f 	stp	xzr, xzr, [x19]
    1428:	aa1503e0 	mov	x0, x21
    142c:	94000000 	bl	0 <strlen>
    1430:	aa0003f4 	mov	x20, x0
    1434:	11001400 	add	w0, w0, #0x5
    1438:	93407c00 	sxtw	x0, w0
    143c:	94000000 	bl	0 <malloc>
    1440:	b4000140 	cbz	x0, 1468 <snocString+0xa8>
    1444:	f9000260 	str	x0, [x19]
    1448:	91000682 	add	x2, x20, #0x1
    144c:	aa1503e1 	mov	x1, x21
    1450:	94000000 	bl	0 <memcpy>
    1454:	aa1303e0 	mov	x0, x19
    1458:	a94153f3 	ldp	x19, x20, [sp, #16]
    145c:	f94013f5 	ldr	x21, [sp, #32]
    1460:	a8c37bfd 	ldp	x29, x30, [sp], #48
    1464:	d65f03c0 	ret
    1468:	97fffc6c 	bl	618 <outOfMemory>
    146c:	d503201f 	nop

0000000000001470 <addFlagsFromEnvVar>:
    1470:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
    1474:	910003fd 	mov	x29, sp
    1478:	a9025bf5 	stp	x21, x22, [sp, #32]
    147c:	aa0003f5 	mov	x21, x0
    1480:	aa0103e0 	mov	x0, x1
    1484:	94000000 	bl	0 <getenv>
    1488:	b4000660 	cbz	x0, 1554 <addFlagsFromEnvVar+0xe4>
    148c:	a90153f3 	stp	x19, x20, [sp, #16]
    1490:	aa0003f4 	mov	x20, x0
    1494:	39400013 	ldrb	w19, [x0]
    1498:	34000653 	cbz	w19, 1560 <addFlagsFromEnvVar+0xf0>
    149c:	a90363f7 	stp	x23, x24, [sp, #48]
    14a0:	90000018 	adrp	x24, 40a <usage+0x32>
    14a4:	52808016 	mov	w22, #0x400                 	// #1024
    14a8:	a9046bf9 	stp	x25, x26, [sp, #64]
    14ac:	94000000 	bl	0 <__ctype_b_loc>
    14b0:	aa0003f9 	mov	x25, x0
    14b4:	f9400318 	ldr	x24, [x24]
    14b8:	5280003a 	mov	w26, #0x1                   	// #1
    14bc:	f9400324 	ldr	x4, [x25]
    14c0:	14000002 	b	14c8 <addFlagsFromEnvVar+0x58>
    14c4:	38401e93 	ldrb	w19, [x20, #1]!
    14c8:	d37f1e62 	ubfiz	x2, x19, #1, #8
    14cc:	78626882 	ldrh	w2, [x4, x2]
    14d0:	376fffa2 	tbnz	w2, #13, 14c4 <addFlagsFromEnvVar+0x54>
    14d4:	340003b3 	cbz	w19, 1548 <addFlagsFromEnvVar+0xd8>
    14d8:	91000682 	add	x2, x20, #0x1
    14dc:	4b020347 	sub	w7, w26, w2
    14e0:	39400043 	ldrb	w3, [x2]
    14e4:	0b0200e6 	add	w6, w7, w2
    14e8:	aa0203f7 	mov	x23, x2
    14ec:	91000442 	add	x2, x2, #0x1
    14f0:	d37f1c65 	ubfiz	x5, x3, #1, #8
    14f4:	34000063 	cbz	w3, 1500 <addFlagsFromEnvVar+0x90>
    14f8:	78656883 	ldrh	w3, [x4, x5]
    14fc:	366fff23 	tbz	w3, #13, 14e0 <addFlagsFromEnvVar+0x70>
    1500:	711000df 	cmp	w6, #0x400
    1504:	d2800002 	mov	x2, #0x0                   	// #0
    1508:	1a96d0c6 	csel	w6, w6, w22, le
    150c:	14000002 	b	1514 <addFlagsFromEnvVar+0xa4>
    1510:	38626a93 	ldrb	w19, [x20, x2]
    1514:	38386853 	strb	w19, [x2, x24]
    1518:	91000442 	add	x2, x2, #0x1
    151c:	6b0200df 	cmp	w6, w2
    1520:	54ffff8c 	b.gt	1510 <addFlagsFromEnvVar+0xa0>
    1524:	3826cb1f 	strb	wzr, [x24, w6, sxtw]
    1528:	aa1803e1 	mov	x1, x24
    152c:	f94002a0 	ldr	x0, [x21]
    1530:	97ffffa4 	bl	13c0 <snocString>
    1534:	f90002a0 	str	x0, [x21]
    1538:	394002f3 	ldrb	w19, [x23]
    153c:	34000073 	cbz	w19, 1548 <addFlagsFromEnvVar+0xd8>
    1540:	aa1703f4 	mov	x20, x23
    1544:	17ffffde 	b	14bc <addFlagsFromEnvVar+0x4c>
    1548:	a94153f3 	ldp	x19, x20, [sp, #16]
    154c:	a94363f7 	ldp	x23, x24, [sp, #48]
    1550:	a9446bf9 	ldp	x25, x26, [sp, #64]
    1554:	a9425bf5 	ldp	x21, x22, [sp, #32]
    1558:	a8c57bfd 	ldp	x29, x30, [sp], #80
    155c:	d65f03c0 	ret
    1560:	a94153f3 	ldp	x19, x20, [sp, #16]
    1564:	17fffffc 	b	1554 <addFlagsFromEnvVar+0xe4>

0000000000001568 <applySavedTimeInfoToOutputFile.constprop.0>:
    1568:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    156c:	90000002 	adrp	x2, 0 <hasSuffix>
    1570:	91000042 	add	x2, x2, #0x0
    1574:	910003fd 	mov	x29, sp
    1578:	90000000 	adrp	x0, 40a <usage+0x32>
    157c:	9100a3e1 	add	x1, sp, #0x28
    1580:	f9402443 	ldr	x3, [x2, #72]
    1584:	f9402c42 	ldr	x2, [x2, #88]
    1588:	f9000bf3 	str	x19, [sp, #16]
    158c:	90000013 	adrp	x19, 0 <__stack_chk_guard>
    1590:	a9028be3 	stp	x3, x2, [sp, #40]
    1594:	f9400273 	ldr	x19, [x19]
    1598:	f9400000 	ldr	x0, [x0]
    159c:	f9400264 	ldr	x4, [x19]
    15a0:	f9001fe4 	str	x4, [sp, #56]
    15a4:	d2800004 	mov	x4, #0x0                   	// #0
    15a8:	94000000 	bl	0 <utime>
    15ac:	35000120 	cbnz	w0, 15d0 <applySavedTimeInfoToOutputFile.constprop.0+0x68>
    15b0:	f9401fe0 	ldr	x0, [sp, #56]
    15b4:	f9400261 	ldr	x1, [x19]
    15b8:	eb010000 	subs	x0, x0, x1
    15bc:	d2800001 	mov	x1, #0x0                   	// #0
    15c0:	540000a1 	b.ne	15d4 <applySavedTimeInfoToOutputFile.constprop.0+0x6c>  // b.any
    15c4:	f9400bf3 	ldr	x19, [sp, #16]
    15c8:	a8c47bfd 	ldp	x29, x30, [sp], #64
    15cc:	d65f03c0 	ret
    15d0:	97fffc3c 	bl	6c0 <ioError>
    15d4:	94000000 	bl	0 <__stack_chk_fail>

00000000000015d8 <saveInputFileMetaInfo.constprop.0>:
    15d8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    15dc:	90000001 	adrp	x1, 40a <usage+0x32>
    15e0:	90000002 	adrp	x2, 0 <hasSuffix>
    15e4:	910003fd 	mov	x29, sp
    15e8:	f9400021 	ldr	x1, [x1]
    15ec:	91000042 	add	x2, x2, #0x0
    15f0:	52800000 	mov	w0, #0x0                   	// #0
    15f4:	94000000 	bl	0 <__xstat64>
    15f8:	35000060 	cbnz	w0, 1604 <saveInputFileMetaInfo.constprop.0+0x2c>
    15fc:	a8c17bfd 	ldp	x29, x30, [sp], #16
    1600:	d65f03c0 	ret
    1604:	97fffc2f 	bl	6c0 <ioError>

0000000000001608 <notAStandardFile.constprop.0>:
    1608:	a9b57bfd 	stp	x29, x30, [sp, #-176]!
    160c:	90000001 	adrp	x1, 40a <usage+0x32>
    1610:	52800000 	mov	w0, #0x0                   	// #0
    1614:	910003fd 	mov	x29, sp
    1618:	f9000bf3 	str	x19, [sp, #16]
    161c:	90000013 	adrp	x19, 0 <__stack_chk_guard>
    1620:	f9400021 	ldr	x1, [x1]
    1624:	9100a3e2 	add	x2, sp, #0x28
    1628:	f9400263 	ldr	x3, [x19]
    162c:	f9400064 	ldr	x4, [x3]
    1630:	f90057e4 	str	x4, [sp, #168]
    1634:	d2800004 	mov	x4, #0x0                   	// #0
    1638:	94000000 	bl	0 <__lxstat64>
    163c:	52800021 	mov	w1, #0x1                   	// #1
    1640:	350000a0 	cbnz	w0, 1654 <notAStandardFile.constprop.0+0x4c>
    1644:	b9403be0 	ldr	w0, [sp, #56]
    1648:	12140c00 	and	w0, w0, #0xf000
    164c:	7140201f 	cmp	w0, #0x8, lsl #12
    1650:	1a9f07e1 	cset	w1, ne  // ne = any
    1654:	f9400273 	ldr	x19, [x19]
    1658:	f94057e0 	ldr	x0, [sp, #168]
    165c:	f9400262 	ldr	x2, [x19]
    1660:	eb020000 	subs	x0, x0, x2
    1664:	d2800002 	mov	x2, #0x0                   	// #0
    1668:	540000a1 	b.ne	167c <notAStandardFile.constprop.0+0x74>  // b.any
    166c:	2a0103e0 	mov	w0, w1
    1670:	f9400bf3 	ldr	x19, [sp, #16]
    1674:	a8cb7bfd 	ldp	x29, x30, [sp], #176
    1678:	d65f03c0 	ret
    167c:	94000000 	bl	0 <__stack_chk_fail>

0000000000001680 <fopen_output_safely.constprop.0>:
    1680:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    1684:	90000000 	adrp	x0, 40a <usage+0x32>
    1688:	52803002 	mov	w2, #0x180                 	// #384
    168c:	910003fd 	mov	x29, sp
    1690:	f9400000 	ldr	x0, [x0]
    1694:	52801821 	mov	w1, #0xc1                  	// #193
    1698:	a90153f3 	stp	x19, x20, [sp, #16]
    169c:	94000000 	bl	0 <open64>
    16a0:	3100041f 	cmn	w0, #0x1
    16a4:	54000160 	b.eq	16d0 <fopen_output_safely.constprop.0+0x50>  // b.none
    16a8:	2a0003f4 	mov	w20, w0
    16ac:	90000001 	adrp	x1, 0 <hasSuffix>
    16b0:	91000021 	add	x1, x1, #0x0
    16b4:	94000000 	bl	0 <fdopen>
    16b8:	aa0003f3 	mov	x19, x0
    16bc:	b4000140 	cbz	x0, 16e4 <fopen_output_safely.constprop.0+0x64>
    16c0:	aa1303e0 	mov	x0, x19
    16c4:	a94153f3 	ldp	x19, x20, [sp, #16]
    16c8:	a8c27bfd 	ldp	x29, x30, [sp], #32
    16cc:	d65f03c0 	ret
    16d0:	d2800013 	mov	x19, #0x0                   	// #0
    16d4:	aa1303e0 	mov	x0, x19
    16d8:	a94153f3 	ldp	x19, x20, [sp, #16]
    16dc:	a8c27bfd 	ldp	x29, x30, [sp], #32
    16e0:	d65f03c0 	ret
    16e4:	2a1403e0 	mov	w0, w20
    16e8:	94000000 	bl	0 <close>
    16ec:	aa1303e0 	mov	x0, x19
    16f0:	a94153f3 	ldp	x19, x20, [sp, #16]
    16f4:	a8c27bfd 	ldp	x29, x30, [sp], #32
    16f8:	d65f03c0 	ret
    16fc:	d503201f 	nop

0000000000001700 <pad.constprop.0>:
    1700:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    1704:	910003fd 	mov	x29, sp
    1708:	a9025bf5 	stp	x21, x22, [sp, #32]
    170c:	90000015 	adrp	x21, 40a <usage+0x32>
    1710:	90000016 	adrp	x22, 4 <hasSuffix+0x4>
    1714:	f94002b5 	ldr	x21, [x21]
    1718:	a90153f3 	stp	x19, x20, [sp, #16]
    171c:	aa1503e0 	mov	x0, x21
    1720:	94000000 	bl	0 <strlen>
    1724:	f94002d6 	ldr	x22, [x22]
    1728:	b94002d3 	ldr	w19, [x22]
    172c:	6b00027f 	cmp	w19, w0
    1730:	5400026d 	b.le	177c <pad.constprop.0+0x7c>
    1734:	f9001bf7 	str	x23, [sp, #48]
    1738:	90000017 	adrp	x23, 0 <stderr>
    173c:	aa0003e1 	mov	x1, x0
    1740:	52800034 	mov	w20, #0x1                   	// #1
    1744:	f94002f7 	ldr	x23, [x23]
    1748:	14000007 	b	1764 <pad.constprop.0+0x64>
    174c:	f94002e1 	ldr	x1, [x23]
    1750:	94000000 	bl	0 <fputc>
    1754:	aa1503e0 	mov	x0, x21
    1758:	94000000 	bl	0 <strlen>
    175c:	b94002d3 	ldr	w19, [x22]
    1760:	aa0003e1 	mov	x1, x0
    1764:	4b010261 	sub	w1, w19, w1
    1768:	52800400 	mov	w0, #0x20                  	// #32
    176c:	6b01029f 	cmp	w20, w1
    1770:	11000694 	add	w20, w20, #0x1
    1774:	54fffecd 	b.le	174c <pad.constprop.0+0x4c>
    1778:	f9401bf7 	ldr	x23, [sp, #48]
    177c:	a94153f3 	ldp	x19, x20, [sp, #16]
    1780:	a9425bf5 	ldp	x21, x22, [sp, #32]
    1784:	a8c47bfd 	ldp	x29, x30, [sp], #64
    1788:	d65f03c0 	ret
    178c:	d503201f 	nop

0000000000001790 <uncompress>:
    1790:	a9a97bfd 	stp	x29, x30, [sp, #-368]!
    1794:	910003fd 	mov	x29, sp
    1798:	a90153f3 	stp	x19, x20, [sp, #16]
    179c:	90000014 	adrp	x20, 0 <__stack_chk_guard>
    17a0:	90000013 	adrp	x19, 4 <hasSuffix+0x4>
    17a4:	a9025bf5 	stp	x21, x22, [sp, #32]
    17a8:	90000016 	adrp	x22, 1 <hasSuffix+0x1>
    17ac:	aa0003f5 	mov	x21, x0
    17b0:	f9400281 	ldr	x1, [x20]
    17b4:	a90363f7 	stp	x23, x24, [sp, #48]
    17b8:	f94002c0 	ldr	x0, [x22]
    17bc:	f9400022 	ldr	x2, [x1]
    17c0:	f900b7e2 	str	x2, [sp, #360]
    17c4:	d2800002 	mov	x2, #0x0                   	// #0
    17c8:	f9400277 	ldr	x23, [x19]
    17cc:	a9046bf9 	stp	x25, x26, [sp, #64]
    17d0:	f9002bfb 	str	x27, [sp, #80]
    17d4:	3900001f 	strb	wzr, [x0]
    17d8:	b94002e0 	ldr	w0, [x23]
    17dc:	b4001715 	cbz	x21, 1abc <uncompress+0x32c>
    17e0:	71000c1f 	cmp	w0, #0x3
    17e4:	54000d20 	b.eq	1988 <uncompress+0x1f8>  // b.none
    17e8:	5400026c 	b.gt	1834 <uncompress+0xa4>
    17ec:	7100041f 	cmp	w0, #0x1
    17f0:	540016a0 	b.eq	1ac4 <uncompress+0x334>  // b.none
    17f4:	7100081f 	cmp	w0, #0x2
    17f8:	540001e1 	b.ne	1834 <uncompress+0xa4>  // b.any
    17fc:	90000018 	adrp	x24, 40a <usage+0x32>
    1800:	aa1503e1 	mov	x1, x21
    1804:	f9400300 	ldr	x0, [x24]
    1808:	97fffeca 	bl	1330 <copyFileName>
    180c:	90000000 	adrp	x0, 40a <usage+0x32>
    1810:	90000001 	adrp	x1, 0 <hasSuffix>
    1814:	91000021 	add	x1, x1, #0x0
    1818:	f9400000 	ldr	x0, [x0]
    181c:	97fffec5 	bl	1330 <copyFileName>
    1820:	b94002e0 	ldr	w0, [x23]
    1824:	7100041f 	cmp	w0, #0x1
    1828:	54000f80 	b.eq	1a18 <uncompress+0x288>  // b.none
    182c:	52800015 	mov	w21, #0x0                   	// #0
    1830:	14000003 	b	183c <uncompress+0xac>
    1834:	52800015 	mov	w21, #0x0                   	// #0
    1838:	90000018 	adrp	x24, 40a <usage+0x32>
    183c:	f9400319 	ldr	x25, [x24]
    1840:	aa1903e0 	mov	x0, x25
    1844:	97fffa0b 	bl	70 <fileExists>
    1848:	72001c1f 	tst	w0, #0xff
    184c:	54002980 	b.eq	1d7c <uncompress+0x5ec>  // b.none
    1850:	f9400277 	ldr	x23, [x19]
    1854:	b94002e0 	ldr	w0, [x23]
    1858:	51000800 	sub	w0, w0, #0x2
    185c:	7100041f 	cmp	w0, #0x1
    1860:	540027e8 	b.hi	1d5c <uncompress+0x5cc>  // b.pmore
    1864:	9101a3e2 	add	x2, sp, #0x68
    1868:	aa1903e1 	mov	x1, x25
    186c:	52800000 	mov	w0, #0x0                   	// #0
    1870:	94000000 	bl	0 <__xstat64>
    1874:	b9407be0 	ldr	w0, [sp, #120]
    1878:	12140c00 	and	w0, w0, #0xf000
    187c:	7140101f 	cmp	w0, #0x4, lsl #12
    1880:	54003520 	b.eq	1f24 <uncompress+0x794>  // b.none
    1884:	b94002e0 	ldr	w0, [x23]
    1888:	71000c1f 	cmp	w0, #0x3
    188c:	54002681 	b.ne	1d5c <uncompress+0x5cc>  // b.any
    1890:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    1894:	f9400000 	ldr	x0, [x0]
    1898:	39400000 	ldrb	w0, [x0]
    189c:	340025a0 	cbz	w0, 1d50 <uncompress+0x5c0>
    18a0:	35000eb5 	cbnz	w21, 1a74 <uncompress+0x2e4>
    18a4:	9000001b 	adrp	x27, 40a <usage+0x32>
    18a8:	f9400375 	ldr	x21, [x27]
    18ac:	aa1503e0 	mov	x0, x21
    18b0:	97fff9f0 	bl	70 <fileExists>
    18b4:	72001c1f 	tst	w0, #0xff
    18b8:	540000e0 	b.eq	18d4 <uncompress+0x144>  // b.none
    18bc:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    18c0:	f9400000 	ldr	x0, [x0]
    18c4:	39400000 	ldrb	w0, [x0]
    18c8:	34003200 	cbz	w0, 1f08 <uncompress+0x778>
    18cc:	aa1503e0 	mov	x0, x21
    18d0:	94000000 	bl	0 <remove>
    18d4:	f9400260 	ldr	x0, [x19]
    18d8:	b9400015 	ldr	w21, [x0]
    18dc:	71000ebf 	cmp	w21, #0x3
    18e0:	54000a41 	b.ne	1a28 <uncompress+0x298>  // b.any
    18e4:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    18e8:	f9400000 	ldr	x0, [x0]
    18ec:	39400000 	ldrb	w0, [x0]
    18f0:	34002680 	cbz	w0, 1dc0 <uncompress+0x630>
    18f4:	97ffff39 	bl	15d8 <saveInputFileMetaInfo.constprop.0>
    18f8:	f9400260 	ldr	x0, [x19]
    18fc:	b9400015 	ldr	w21, [x0]
    1900:	71000abf 	cmp	w21, #0x2
    1904:	54001b80 	b.eq	1c74 <uncompress+0x4e4>  // b.none
    1908:	71000ebf 	cmp	w21, #0x3
    190c:	54000921 	b.ne	1a30 <uncompress+0x2a0>  // b.any
    1910:	f9400315 	ldr	x21, [x24]
    1914:	90000001 	adrp	x1, 0 <hasSuffix>
    1918:	91000021 	add	x1, x1, #0x0
    191c:	aa1503e0 	mov	x0, x21
    1920:	94000000 	bl	0 <fopen64>
    1924:	aa0003f9 	mov	x25, x0
    1928:	97ffff56 	bl	1680 <fopen_output_safely.constprop.0>
    192c:	aa0003fa 	mov	x26, x0
    1930:	b4003080 	cbz	x0, 1f40 <uncompress+0x7b0>
    1934:	b5000fd9 	cbnz	x25, 1b2c <uncompress+0x39c>
    1938:	90000001 	adrp	x1, 0 <stderr>
    193c:	90000000 	adrp	x0, 8 <hasSuffix+0x8>
    1940:	f9400021 	ldr	x1, [x1]
    1944:	f9400000 	ldr	x0, [x0]
    1948:	f9400033 	ldr	x19, [x1]
    194c:	f9400016 	ldr	x22, [x0]
    1950:	94000000 	bl	0 <__errno_location>
    1954:	b9400000 	ldr	w0, [x0]
    1958:	94000000 	bl	0 <strerror>
    195c:	aa0003e5 	mov	x5, x0
    1960:	aa1603e3 	mov	x3, x22
    1964:	aa1503e4 	mov	x4, x21
    1968:	90000002 	adrp	x2, 0 <hasSuffix>
    196c:	91000042 	add	x2, x2, #0x0
    1970:	52800021 	mov	w1, #0x1                   	// #1
    1974:	aa1303e0 	mov	x0, x19
    1978:	94000000 	bl	0 <__fprintf_chk>
    197c:	aa1a03e0 	mov	x0, x26
    1980:	94000000 	bl	0 <fclose>
    1984:	140000d7 	b	1ce0 <uncompress+0x550>
    1988:	90000018 	adrp	x24, 40a <usage+0x32>
    198c:	9000001b 	adrp	x27, 40a <usage+0x32>
    1990:	aa1503e1 	mov	x1, x21
    1994:	d2800017 	mov	x23, #0x0                   	// #0
    1998:	f9400300 	ldr	x0, [x24]
    199c:	97fffe65 	bl	1330 <copyFileName>
    19a0:	f9400360 	ldr	x0, [x27]
    19a4:	aa1503e1 	mov	x1, x21
    19a8:	90000015 	adrp	x21, 0 <hasSuffix>
    19ac:	910002b5 	add	x21, x21, #0x0
    19b0:	aa0003f9 	mov	x25, x0
    19b4:	97fffe5f 	bl	1330 <copyFileName>
    19b8:	f8777aba 	ldr	x26, [x21, x23, lsl #3]
    19bc:	aa1903e0 	mov	x0, x25
    19c0:	2a1703fb 	mov	w27, w23
    19c4:	aa1a03e1 	mov	x1, x26
    19c8:	97fff98e 	bl	0 <hasSuffix>
    19cc:	72001c1f 	tst	w0, #0xff
    19d0:	540003a0 	b.eq	1a44 <uncompress+0x2b4>  // b.none
    19d4:	910082b5 	add	x21, x21, #0x20
    19d8:	aa1903e0 	mov	x0, x25
    19dc:	94000000 	bl	0 <strlen>
    19e0:	f87bdab7 	ldr	x23, [x21, w27, sxtw #3]
    19e4:	aa0003f5 	mov	x21, x0
    19e8:	aa1a03e0 	mov	x0, x26
    19ec:	94000000 	bl	0 <strlen>
    19f0:	cb0002b5 	sub	x21, x21, x0
    19f4:	aa1703e1 	mov	x1, x23
    19f8:	aa1903e0 	mov	x0, x25
    19fc:	d2808142 	mov	x2, #0x40a                 	// #1034
    1a00:	38396abf 	strb	wzr, [x21, x25]
    1a04:	94000000 	bl	0 <__strcat_chk>
    1a08:	f9400260 	ldr	x0, [x19]
    1a0c:	b9400000 	ldr	w0, [x0]
    1a10:	7100041f 	cmp	w0, #0x1
    1a14:	54fff0c1 	b.ne	182c <uncompress+0x9c>  // b.any
    1a18:	f9400260 	ldr	x0, [x19]
    1a1c:	b9400015 	ldr	w21, [x0]
    1a20:	71000ebf 	cmp	w21, #0x3
    1a24:	54fff400 	b.eq	18a4 <uncompress+0x114>  // b.none
    1a28:	71000abf 	cmp	w21, #0x2
    1a2c:	54001240 	b.eq	1c74 <uncompress+0x4e4>  // b.none
    1a30:	710006bf 	cmp	w21, #0x1
    1a34:	54000680 	b.eq	1b04 <uncompress+0x374>  // b.none
    1a38:	90000000 	adrp	x0, 0 <hasSuffix>
    1a3c:	91000000 	add	x0, x0, #0x0
    1a40:	97fffb0a 	bl	668 <panic>
    1a44:	910006f7 	add	x23, x23, #0x1
    1a48:	f10012ff 	cmp	x23, #0x4
    1a4c:	54fffb61 	b.ne	19b8 <uncompress+0x228>  // b.any
    1a50:	aa1903e0 	mov	x0, x25
    1a54:	90000001 	adrp	x1, 0 <hasSuffix>
    1a58:	d2808142 	mov	x2, #0x40a                 	// #1034
    1a5c:	91000021 	add	x1, x1, #0x0
    1a60:	94000000 	bl	0 <__strcat_chk>
    1a64:	f9400260 	ldr	x0, [x19]
    1a68:	b9400000 	ldr	w0, [x0]
    1a6c:	7100041f 	cmp	w0, #0x1
    1a70:	54001821 	b.ne	1d74 <uncompress+0x5e4>  // b.any
    1a74:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    1a78:	f9400000 	ldr	x0, [x0]
    1a7c:	39400000 	ldrb	w0, [x0]
    1a80:	34fffcc0 	cbz	w0, 1a18 <uncompress+0x288>
    1a84:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
    1a88:	90000000 	adrp	x0, 0 <stderr>
    1a8c:	90000005 	adrp	x5, 40a <usage+0x32>
    1a90:	90000002 	adrp	x2, 0 <hasSuffix>
    1a94:	f9400063 	ldr	x3, [x3]
    1a98:	91000042 	add	x2, x2, #0x0
    1a9c:	f9400000 	ldr	x0, [x0]
    1aa0:	52800021 	mov	w1, #0x1                   	// #1
    1aa4:	f94000a5 	ldr	x5, [x5]
    1aa8:	f9400304 	ldr	x4, [x24]
    1aac:	f9400063 	ldr	x3, [x3]
    1ab0:	f9400000 	ldr	x0, [x0]
    1ab4:	94000000 	bl	0 <__fprintf_chk>
    1ab8:	17ffffd8 	b	1a18 <uncompress+0x288>
    1abc:	7100041f 	cmp	w0, #0x1
    1ac0:	540026c1 	b.ne	1f98 <uncompress+0x808>  // b.any
    1ac4:	90000018 	adrp	x24, 40a <usage+0x32>
    1ac8:	90000001 	adrp	x1, 0 <hasSuffix>
    1acc:	91000021 	add	x1, x1, #0x0
    1ad0:	f9400300 	ldr	x0, [x24]
    1ad4:	97fffe17 	bl	1330 <copyFileName>
    1ad8:	90000000 	adrp	x0, 40a <usage+0x32>
    1adc:	90000001 	adrp	x1, 0 <hasSuffix>
    1ae0:	91000021 	add	x1, x1, #0x0
    1ae4:	f9400000 	ldr	x0, [x0]
    1ae8:	97fffe12 	bl	1330 <copyFileName>
    1aec:	f9400260 	ldr	x0, [x19]
    1af0:	b9400000 	ldr	w0, [x0]
    1af4:	7100041f 	cmp	w0, #0x1
    1af8:	54fff900 	b.eq	1a18 <uncompress+0x288>  // b.none
    1afc:	52800015 	mov	w21, #0x0                   	// #0
    1b00:	17ffff4f 	b	183c <uncompress+0xac>
    1b04:	90000001 	adrp	x1, 0 <stdin>
    1b08:	90000000 	adrp	x0, 0 <stdout>
    1b0c:	f9400021 	ldr	x1, [x1]
    1b10:	f9400000 	ldr	x0, [x0]
    1b14:	f9400039 	ldr	x25, [x1]
    1b18:	f940001a 	ldr	x26, [x0]
    1b1c:	aa1903e0 	mov	x0, x25
    1b20:	94000000 	bl	0 <fileno>
    1b24:	94000000 	bl	0 <isatty>
    1b28:	35001880 	cbnz	w0, 1e38 <uncompress+0x6a8>
    1b2c:	90000015 	adrp	x21, 4 <hasSuffix+0x4>
    1b30:	f94002a0 	ldr	x0, [x21]
    1b34:	b9400000 	ldr	w0, [x0]
    1b38:	7100001f 	cmp	w0, #0x0
    1b3c:	5400018d 	b.le	1b6c <uncompress+0x3dc>
    1b40:	90000017 	adrp	x23, 0 <stderr>
    1b44:	90000002 	adrp	x2, 0 <hasSuffix>
    1b48:	f9400303 	ldr	x3, [x24]
    1b4c:	91000042 	add	x2, x2, #0x0
    1b50:	f94002f7 	ldr	x23, [x23]
    1b54:	52800021 	mov	w1, #0x1                   	// #1
    1b58:	f94002e0 	ldr	x0, [x23]
    1b5c:	94000000 	bl	0 <__fprintf_chk>
    1b60:	97fffee8 	bl	1700 <pad.constprop.0>
    1b64:	f94002e0 	ldr	x0, [x23]
    1b68:	94000000 	bl	0 <fflush>
    1b6c:	90000017 	adrp	x23, 8 <hasSuffix+0x8>
    1b70:	aa1903e0 	mov	x0, x25
    1b74:	f94002d9 	ldr	x25, [x22]
    1b78:	aa1a03e1 	mov	x1, x26
    1b7c:	f94002f7 	ldr	x23, [x23]
    1b80:	5280003b 	mov	w27, #0x1                   	// #1
    1b84:	3900033b 	strb	w27, [x25]
    1b88:	f90002fa 	str	x26, [x23]
    1b8c:	97fffcb7 	bl	e68 <uncompressStream>
    1b90:	f90002ff 	str	xzr, [x23]
    1b94:	72001c1f 	tst	w0, #0xff
    1b98:	54000320 	b.eq	1bfc <uncompress+0x46c>  // b.none
    1b9c:	f9400273 	ldr	x19, [x19]
    1ba0:	b9400260 	ldr	w0, [x19]
    1ba4:	71000c1f 	cmp	w0, #0x3
    1ba8:	540012a0 	b.eq	1dfc <uncompress+0x66c>  // b.none
    1bac:	f94002b5 	ldr	x21, [x21]
    1bb0:	f94002d6 	ldr	x22, [x22]
    1bb4:	b94002a0 	ldr	w0, [x21]
    1bb8:	390002df 	strb	wzr, [x22]
    1bbc:	7100001f 	cmp	w0, #0x0
    1bc0:	54000a2c 	b.gt	1d04 <uncompress+0x574>
    1bc4:	d503201f 	nop
    1bc8:	f9400294 	ldr	x20, [x20]
    1bcc:	f940b7e0 	ldr	x0, [sp, #360]
    1bd0:	f9400281 	ldr	x1, [x20]
    1bd4:	eb010000 	subs	x0, x0, x1
    1bd8:	d2800001 	mov	x1, #0x0                   	// #0
    1bdc:	54001dc1 	b.ne	1f94 <uncompress+0x804>  // b.any
    1be0:	a94153f3 	ldp	x19, x20, [sp, #16]
    1be4:	a9425bf5 	ldp	x21, x22, [sp, #32]
    1be8:	a94363f7 	ldp	x23, x24, [sp, #48]
    1bec:	a9446bf9 	ldp	x25, x26, [sp, #64]
    1bf0:	f9402bfb 	ldr	x27, [sp, #80]
    1bf4:	a8d77bfd 	ldp	x29, x30, [sp], #368
    1bf8:	d65f03c0 	ret
    1bfc:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    1c00:	3900033f 	strb	wzr, [x25]
    1c04:	f9400273 	ldr	x19, [x19]
    1c08:	f9400000 	ldr	x0, [x0]
    1c0c:	b9400261 	ldr	w1, [x19]
    1c10:	3900001b 	strb	w27, [x0]
    1c14:	71000c3f 	cmp	w1, #0x3
    1c18:	54001060 	b.eq	1e24 <uncompress+0x694>  // b.none
    1c1c:	90000000 	adrp	x0, 4 <hasSuffix+0x4>
    1c20:	f94002d6 	ldr	x22, [x22]
    1c24:	f9400000 	ldr	x0, [x0]
    1c28:	390002df 	strb	wzr, [x22]
    1c2c:	b9400001 	ldr	w1, [x0]
    1c30:	7100043f 	cmp	w1, #0x1
    1c34:	5400006c 	b.gt	1c40 <uncompress+0x4b0>
    1c38:	52800041 	mov	w1, #0x2                   	// #2
    1c3c:	b9000001 	str	w1, [x0]
    1c40:	f94002b5 	ldr	x21, [x21]
    1c44:	90000000 	adrp	x0, 0 <stderr>
    1c48:	f9400000 	ldr	x0, [x0]
    1c4c:	b94002a1 	ldr	w1, [x21]
    1c50:	7100003f 	cmp	w1, #0x0
    1c54:	f9400003 	ldr	x3, [x0]
    1c58:	5400068d 	b.le	1d28 <uncompress+0x598>
    1c5c:	90000000 	adrp	x0, 0 <hasSuffix>
    1c60:	d2800242 	mov	x2, #0x12                  	// #18
    1c64:	d2800021 	mov	x1, #0x1                   	// #1
    1c68:	91000000 	add	x0, x0, #0x0
    1c6c:	94000000 	bl	0 <fwrite>
    1c70:	17ffffd6 	b	1bc8 <uncompress+0x438>
    1c74:	f9400315 	ldr	x21, [x24]
    1c78:	90000001 	adrp	x1, 0 <hasSuffix>
    1c7c:	91000021 	add	x1, x1, #0x0
    1c80:	aa1503e0 	mov	x0, x21
    1c84:	94000000 	bl	0 <fopen64>
    1c88:	90000001 	adrp	x1, 0 <stdout>
    1c8c:	aa0003f9 	mov	x25, x0
    1c90:	f9400021 	ldr	x1, [x1]
    1c94:	f940003a 	ldr	x26, [x1]
    1c98:	b5fff4a0 	cbnz	x0, 1b2c <uncompress+0x39c>
    1c9c:	90000001 	adrp	x1, 0 <stderr>
    1ca0:	90000000 	adrp	x0, 8 <hasSuffix+0x8>
    1ca4:	f9400021 	ldr	x1, [x1]
    1ca8:	f9400000 	ldr	x0, [x0]
    1cac:	f9400033 	ldr	x19, [x1]
    1cb0:	f9400016 	ldr	x22, [x0]
    1cb4:	94000000 	bl	0 <__errno_location>
    1cb8:	b9400000 	ldr	w0, [x0]
    1cbc:	94000000 	bl	0 <strerror>
    1cc0:	aa0003e5 	mov	x5, x0
    1cc4:	90000002 	adrp	x2, 0 <hasSuffix>
    1cc8:	aa1603e3 	mov	x3, x22
    1ccc:	aa1303e0 	mov	x0, x19
    1cd0:	aa1503e4 	mov	x4, x21
    1cd4:	91000042 	add	x2, x2, #0x0
    1cd8:	52800021 	mov	w1, #0x1                   	// #1
    1cdc:	94000000 	bl	0 <__fprintf_chk>
    1ce0:	90000000 	adrp	x0, 4 <hasSuffix+0x4>
    1ce4:	f9400001 	ldr	x1, [x0]
    1ce8:	b9400021 	ldr	w1, [x1]
    1cec:	7100003f 	cmp	w1, #0x0
    1cf0:	54fff6cc 	b.gt	1bc8 <uncompress+0x438>
    1cf4:	f9400000 	ldr	x0, [x0]
    1cf8:	52800021 	mov	w1, #0x1                   	// #1
    1cfc:	b9000001 	str	w1, [x0]
    1d00:	17ffffb2 	b	1bc8 <uncompress+0x438>
    1d04:	90000003 	adrp	x3, 0 <stderr>
    1d08:	90000000 	adrp	x0, 0 <hasSuffix>
    1d0c:	d28000a2 	mov	x2, #0x5                   	// #5
    1d10:	d2800021 	mov	x1, #0x1                   	// #1
    1d14:	f9400063 	ldr	x3, [x3]
    1d18:	91000000 	add	x0, x0, #0x0
    1d1c:	f9400063 	ldr	x3, [x3]
    1d20:	94000000 	bl	0 <fwrite>
    1d24:	17ffffa9 	b	1bc8 <uncompress+0x438>
    1d28:	90000001 	adrp	x1, 8 <hasSuffix+0x8>
    1d2c:	aa0303e0 	mov	x0, x3
    1d30:	f9400304 	ldr	x4, [x24]
    1d34:	90000002 	adrp	x2, 0 <hasSuffix>
    1d38:	f9400023 	ldr	x3, [x1]
    1d3c:	91000042 	add	x2, x2, #0x0
    1d40:	52800021 	mov	w1, #0x1                   	// #1
    1d44:	f9400063 	ldr	x3, [x3]
    1d48:	94000000 	bl	0 <__fprintf_chk>
    1d4c:	17ffff9f 	b	1bc8 <uncompress+0x438>
    1d50:	97fffe2e 	bl	1608 <notAStandardFile.constprop.0>
    1d54:	72001c1f 	tst	w0, #0xff
    1d58:	54000941 	b.ne	1e80 <uncompress+0x6f0>  // b.any
    1d5c:	34ffe5f5 	cbz	w21, 1a18 <uncompress+0x288>
    1d60:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    1d64:	f9400000 	ldr	x0, [x0]
    1d68:	39400000 	ldrb	w0, [x0]
    1d6c:	34ffe560 	cbz	w0, 1a18 <uncompress+0x288>
    1d70:	17ffff45 	b	1a84 <uncompress+0x2f4>
    1d74:	52800035 	mov	w21, #0x1                   	// #1
    1d78:	17fffeb1 	b	183c <uncompress+0xac>
    1d7c:	90000001 	adrp	x1, 0 <stderr>
    1d80:	90000000 	adrp	x0, 8 <hasSuffix+0x8>
    1d84:	f9400021 	ldr	x1, [x1]
    1d88:	f9400000 	ldr	x0, [x0]
    1d8c:	f9400033 	ldr	x19, [x1]
    1d90:	f9400015 	ldr	x21, [x0]
    1d94:	94000000 	bl	0 <__errno_location>
    1d98:	b9400000 	ldr	w0, [x0]
    1d9c:	94000000 	bl	0 <strerror>
    1da0:	aa0003e5 	mov	x5, x0
    1da4:	90000002 	adrp	x2, 0 <hasSuffix>
    1da8:	aa1503e3 	mov	x3, x21
    1dac:	aa1303e0 	mov	x0, x19
    1db0:	aa1903e4 	mov	x4, x25
    1db4:	91000042 	add	x2, x2, #0x0
    1db8:	52800021 	mov	w1, #0x1                   	// #1
    1dbc:	17ffffc8 	b	1cdc <uncompress+0x54c>
    1dc0:	f9400315 	ldr	x21, [x24]
    1dc4:	9103a3e2 	add	x2, sp, #0xe8
    1dc8:	52800000 	mov	w0, #0x0                   	// #0
    1dcc:	aa1503e1 	mov	x1, x21
    1dd0:	94000000 	bl	0 <__lxstat64>
    1dd4:	350000a0 	cbnz	w0, 1de8 <uncompress+0x658>
    1dd8:	b940ffe5 	ldr	w5, [sp, #252]
    1ddc:	510004a5 	sub	w5, w5, #0x1
    1de0:	710000bf 	cmp	w5, #0x0
    1de4:	540006ec 	b.gt	1ec0 <uncompress+0x730>
    1de8:	f9400260 	ldr	x0, [x19]
    1dec:	b9400015 	ldr	w21, [x0]
    1df0:	71000ebf 	cmp	w21, #0x3
    1df4:	54ffe1a1 	b.ne	1a28 <uncompress+0x298>  // b.any
    1df8:	17fffebf 	b	18f4 <uncompress+0x164>
    1dfc:	97fffddb 	bl	1568 <applySavedTimeInfoToOutputFile.constprop.0>
    1e00:	3900033f 	strb	wzr, [x25]
    1e04:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    1e08:	f9400000 	ldr	x0, [x0]
    1e0c:	39400000 	ldrb	w0, [x0]
    1e10:	35ffece0 	cbnz	w0, 1bac <uncompress+0x41c>
    1e14:	f9400300 	ldr	x0, [x24]
    1e18:	94000000 	bl	0 <remove>
    1e1c:	34ffec80 	cbz	w0, 1bac <uncompress+0x41c>
    1e20:	97fffa28 	bl	6c0 <ioError>
    1e24:	90000000 	adrp	x0, 40a <usage+0x32>
    1e28:	f9400000 	ldr	x0, [x0]
    1e2c:	94000000 	bl	0 <remove>
    1e30:	34ffef60 	cbz	w0, 1c1c <uncompress+0x48c>
    1e34:	97fffa23 	bl	6c0 <ioError>
    1e38:	90000013 	adrp	x19, 8 <hasSuffix+0x8>
    1e3c:	90000016 	adrp	x22, 0 <stderr>
    1e40:	2a1503e1 	mov	w1, w21
    1e44:	90000002 	adrp	x2, 0 <hasSuffix>
    1e48:	f9400273 	ldr	x19, [x19]
    1e4c:	91000042 	add	x2, x2, #0x0
    1e50:	f94002d6 	ldr	x22, [x22]
    1e54:	f9400263 	ldr	x3, [x19]
    1e58:	f94002c0 	ldr	x0, [x22]
    1e5c:	94000000 	bl	0 <__fprintf_chk>
    1e60:	f9400264 	ldr	x4, [x19]
    1e64:	2a1503e1 	mov	w1, w21
    1e68:	f94002c0 	ldr	x0, [x22]
    1e6c:	aa0403e3 	mov	x3, x4
    1e70:	90000002 	adrp	x2, 0 <hasSuffix>
    1e74:	91000042 	add	x2, x2, #0x0
    1e78:	94000000 	bl	0 <__fprintf_chk>
    1e7c:	17ffff99 	b	1ce0 <uncompress+0x550>
    1e80:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    1e84:	f9400000 	ldr	x0, [x0]
    1e88:	39400000 	ldrb	w0, [x0]
    1e8c:	34fff2a0 	cbz	w0, 1ce0 <uncompress+0x550>
    1e90:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
    1e94:	90000002 	adrp	x2, 0 <hasSuffix>
    1e98:	aa1903e4 	mov	x4, x25
    1e9c:	91000042 	add	x2, x2, #0x0
    1ea0:	f9400063 	ldr	x3, [x3]
    1ea4:	90000000 	adrp	x0, 0 <stderr>
    1ea8:	f9400000 	ldr	x0, [x0]
    1eac:	52800021 	mov	w1, #0x1                   	// #1
    1eb0:	f9400063 	ldr	x3, [x3]
    1eb4:	f9400000 	ldr	x0, [x0]
    1eb8:	94000000 	bl	0 <__fprintf_chk>
    1ebc:	17ffff89 	b	1ce0 <uncompress+0x550>
    1ec0:	90000000 	adrp	x0, 0 <stderr>
    1ec4:	90000002 	adrp	x2, 8 <hasSuffix+0x8>
    1ec8:	710004bf 	cmp	w5, #0x1
    1ecc:	90000001 	adrp	x1, 0 <hasSuffix>
    1ed0:	f9400042 	ldr	x2, [x2]
    1ed4:	91000021 	add	x1, x1, #0x0
    1ed8:	f9400000 	ldr	x0, [x0]
    1edc:	90000006 	adrp	x6, 0 <hasSuffix>
    1ee0:	f9400043 	ldr	x3, [x2]
    1ee4:	910000c6 	add	x6, x6, #0x0
    1ee8:	f9400000 	ldr	x0, [x0]
    1eec:	9a8110c6 	csel	x6, x6, x1, ne  // ne = any
    1ef0:	aa1503e4 	mov	x4, x21
    1ef4:	52800021 	mov	w1, #0x1                   	// #1
    1ef8:	90000002 	adrp	x2, 0 <hasSuffix>
    1efc:	91000042 	add	x2, x2, #0x0
    1f00:	94000000 	bl	0 <__fprintf_chk>
    1f04:	17ffff77 	b	1ce0 <uncompress+0x550>
    1f08:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
    1f0c:	90000002 	adrp	x2, 0 <hasSuffix>
    1f10:	aa1503e4 	mov	x4, x21
    1f14:	91000042 	add	x2, x2, #0x0
    1f18:	f9400063 	ldr	x3, [x3]
    1f1c:	90000000 	adrp	x0, 0 <stderr>
    1f20:	17ffffe2 	b	1ea8 <uncompress+0x718>
    1f24:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
    1f28:	90000002 	adrp	x2, 0 <hasSuffix>
    1f2c:	aa1903e4 	mov	x4, x25
    1f30:	91000042 	add	x2, x2, #0x0
    1f34:	f9400063 	ldr	x3, [x3]
    1f38:	90000000 	adrp	x0, 0 <stderr>
    1f3c:	17ffffdb 	b	1ea8 <uncompress+0x718>
    1f40:	90000001 	adrp	x1, 0 <stderr>
    1f44:	90000000 	adrp	x0, 8 <hasSuffix+0x8>
    1f48:	f9400021 	ldr	x1, [x1]
    1f4c:	f9400000 	ldr	x0, [x0]
    1f50:	f9400033 	ldr	x19, [x1]
    1f54:	f9400015 	ldr	x21, [x0]
    1f58:	94000000 	bl	0 <__errno_location>
    1f5c:	b9400000 	ldr	w0, [x0]
    1f60:	94000000 	bl	0 <strerror>
    1f64:	aa0003e5 	mov	x5, x0
    1f68:	f9400364 	ldr	x4, [x27]
    1f6c:	90000002 	adrp	x2, 0 <hasSuffix>
    1f70:	aa1503e3 	mov	x3, x21
    1f74:	aa1303e0 	mov	x0, x19
    1f78:	91000042 	add	x2, x2, #0x0
    1f7c:	52800021 	mov	w1, #0x1                   	// #1
    1f80:	94000000 	bl	0 <__fprintf_chk>
    1f84:	b4ffeaf9 	cbz	x25, 1ce0 <uncompress+0x550>
    1f88:	aa1903e0 	mov	x0, x25
    1f8c:	94000000 	bl	0 <fclose>
    1f90:	17ffff54 	b	1ce0 <uncompress+0x550>
    1f94:	94000000 	bl	0 <__stack_chk_fail>
    1f98:	90000000 	adrp	x0, 0 <hasSuffix>
    1f9c:	91000000 	add	x0, x0, #0x0
    1fa0:	97fff9b2 	bl	668 <panic>
    1fa4:	d503201f 	nop

0000000000001fa8 <testf>:
    1fa8:	a9b37bfd 	stp	x29, x30, [sp, #-208]!
    1fac:	90000001 	adrp	x1, 1 <hasSuffix+0x1>
    1fb0:	910003fd 	mov	x29, sp
    1fb4:	a90153f3 	stp	x19, x20, [sp, #16]
    1fb8:	90000014 	adrp	x20, 0 <__stack_chk_guard>
    1fbc:	aa0003f3 	mov	x19, x0
    1fc0:	f9400282 	ldr	x2, [x20]
    1fc4:	a9025bf5 	stp	x21, x22, [sp, #32]
    1fc8:	90000015 	adrp	x21, 4 <hasSuffix+0x4>
    1fcc:	f9400021 	ldr	x1, [x1]
    1fd0:	f9400040 	ldr	x0, [x2]
    1fd4:	f90067e0 	str	x0, [sp, #200]
    1fd8:	d2800000 	mov	x0, #0x0                   	// #0
    1fdc:	f9001bf7 	str	x23, [sp, #48]
    1fe0:	3900003f 	strb	wzr, [x1]
    1fe4:	b4000f33 	cbz	x19, 21c8 <testf+0x220>
    1fe8:	90000000 	adrp	x0, 40a <usage+0x32>
    1fec:	90000001 	adrp	x1, 0 <hasSuffix>
    1ff0:	91000021 	add	x1, x1, #0x0
    1ff4:	f9400000 	ldr	x0, [x0]
    1ff8:	97fffcce 	bl	1330 <copyFileName>
    1ffc:	f94002b7 	ldr	x23, [x21]
    2000:	b94002e0 	ldr	w0, [x23]
    2004:	7100041f 	cmp	w0, #0x1
    2008:	54000f80 	b.eq	21f8 <testf+0x250>  // b.none
    200c:	51000800 	sub	w0, w0, #0x2
    2010:	90000016 	adrp	x22, 40a <usage+0x32>
    2014:	7100041f 	cmp	w0, #0x1
    2018:	540007a8 	b.hi	210c <testf+0x164>  // b.pmore
    201c:	f94002c0 	ldr	x0, [x22]
    2020:	aa1303e1 	mov	x1, x19
    2024:	97fffcc3 	bl	1330 <copyFileName>
    2028:	b94002e0 	ldr	w0, [x23]
    202c:	7100041f 	cmp	w0, #0x1
    2030:	540006e1 	b.ne	210c <testf+0x164>  // b.any
    2034:	90000013 	adrp	x19, 0 <stdin>
    2038:	f9400273 	ldr	x19, [x19]
    203c:	f9400260 	ldr	x0, [x19]
    2040:	94000000 	bl	0 <fileno>
    2044:	94000000 	bl	0 <isatty>
    2048:	35000e60 	cbnz	w0, 2214 <testf+0x26c>
    204c:	f9400273 	ldr	x19, [x19]
    2050:	90000015 	adrp	x21, 4 <hasSuffix+0x4>
    2054:	f94002a0 	ldr	x0, [x21]
    2058:	b9400000 	ldr	w0, [x0]
    205c:	7100001f 	cmp	w0, #0x0
    2060:	5400018d 	b.le	2090 <testf+0xe8>
    2064:	90000000 	adrp	x0, 0 <stderr>
    2068:	90000002 	adrp	x2, 0 <hasSuffix>
    206c:	f94002c3 	ldr	x3, [x22]
    2070:	91000042 	add	x2, x2, #0x0
    2074:	f9400016 	ldr	x22, [x0]
    2078:	52800021 	mov	w1, #0x1                   	// #1
    207c:	f94002c0 	ldr	x0, [x22]
    2080:	94000000 	bl	0 <__fprintf_chk>
    2084:	97fffd9f 	bl	1700 <pad.constprop.0>
    2088:	f94002c0 	ldr	x0, [x22]
    208c:	94000000 	bl	0 <fflush>
    2090:	90000001 	adrp	x1, 8 <hasSuffix+0x8>
    2094:	aa1303e0 	mov	x0, x19
    2098:	f9400021 	ldr	x1, [x1]
    209c:	f900003f 	str	xzr, [x1]
    20a0:	97fffaa2 	bl	b28 <testStream>
    20a4:	72001c1f 	tst	w0, #0xff
    20a8:	540009e0 	b.eq	21e4 <testf+0x23c>  // b.none
    20ac:	f94002b5 	ldr	x21, [x21]
    20b0:	b94002a0 	ldr	w0, [x21]
    20b4:	7100001f 	cmp	w0, #0x0
    20b8:	5400014d 	b.le	20e0 <testf+0x138>
    20bc:	90000003 	adrp	x3, 0 <stderr>
    20c0:	90000000 	adrp	x0, 0 <hasSuffix>
    20c4:	d2800062 	mov	x2, #0x3                   	// #3
    20c8:	91000000 	add	x0, x0, #0x0
    20cc:	f9400063 	ldr	x3, [x3]
    20d0:	d2800021 	mov	x1, #0x1                   	// #1
    20d4:	f9400063 	ldr	x3, [x3]
    20d8:	94000000 	bl	0 <fwrite>
    20dc:	d503201f 	nop
    20e0:	f9400294 	ldr	x20, [x20]
    20e4:	f94067e0 	ldr	x0, [sp, #200]
    20e8:	f9400281 	ldr	x1, [x20]
    20ec:	eb010000 	subs	x0, x0, x1
    20f0:	d2800001 	mov	x1, #0x0                   	// #0
    20f4:	54001001 	b.ne	22f4 <testf+0x34c>  // b.any
    20f8:	a94153f3 	ldp	x19, x20, [sp, #16]
    20fc:	a9425bf5 	ldp	x21, x22, [sp, #32]
    2100:	f9401bf7 	ldr	x23, [sp, #48]
    2104:	a8cd7bfd 	ldp	x29, x30, [sp], #208
    2108:	d65f03c0 	ret
    210c:	f94002d7 	ldr	x23, [x22]
    2110:	aa1703e0 	mov	x0, x23
    2114:	97fff7d7 	bl	70 <fileExists>
    2118:	72001c1f 	tst	w0, #0xff
    211c:	54000b00 	b.eq	227c <testf+0x2d4>  // b.none
    2120:	f94002b5 	ldr	x21, [x21]
    2124:	b94002a0 	ldr	w0, [x21]
    2128:	7100041f 	cmp	w0, #0x1
    212c:	54fff840 	b.eq	2034 <testf+0x8c>  // b.none
    2130:	910123e2 	add	x2, sp, #0x48
    2134:	aa1703e1 	mov	x1, x23
    2138:	52800000 	mov	w0, #0x0                   	// #0
    213c:	94000000 	bl	0 <__xstat64>
    2140:	b9405be0 	ldr	w0, [sp, #88]
    2144:	12140c00 	and	w0, w0, #0xf000
    2148:	7140101f 	cmp	w0, #0x4, lsl #12
    214c:	54000bc0 	b.eq	22c4 <testf+0x31c>  // b.none
    2150:	b94002a0 	ldr	w0, [x21]
    2154:	7100041f 	cmp	w0, #0x1
    2158:	54fff6e0 	b.eq	2034 <testf+0x8c>  // b.none
    215c:	51000800 	sub	w0, w0, #0x2
    2160:	7100041f 	cmp	w0, #0x1
    2164:	54000ca8 	b.hi	22f8 <testf+0x350>  // b.pmore
    2168:	aa1703e0 	mov	x0, x23
    216c:	90000001 	adrp	x1, 0 <hasSuffix>
    2170:	91000021 	add	x1, x1, #0x0
    2174:	94000000 	bl	0 <fopen64>
    2178:	aa0003f3 	mov	x19, x0
    217c:	b5fff6a0 	cbnz	x0, 2050 <testf+0xa8>
    2180:	90000001 	adrp	x1, 0 <stderr>
    2184:	90000000 	adrp	x0, 8 <hasSuffix+0x8>
    2188:	f9400021 	ldr	x1, [x1]
    218c:	f9400000 	ldr	x0, [x0]
    2190:	f9400033 	ldr	x19, [x1]
    2194:	f9400015 	ldr	x21, [x0]
    2198:	94000000 	bl	0 <__errno_location>
    219c:	b9400000 	ldr	w0, [x0]
    21a0:	94000000 	bl	0 <strerror>
    21a4:	aa0003e5 	mov	x5, x0
    21a8:	aa1503e3 	mov	x3, x21
    21ac:	aa1303e0 	mov	x0, x19
    21b0:	aa1703e4 	mov	x4, x23
    21b4:	90000002 	adrp	x2, 0 <hasSuffix>
    21b8:	52800021 	mov	w1, #0x1                   	// #1
    21bc:	91000042 	add	x2, x2, #0x0
    21c0:	94000000 	bl	0 <__fprintf_chk>
    21c4:	14000025 	b	2258 <testf+0x2b0>
    21c8:	f94002a0 	ldr	x0, [x21]
    21cc:	b9400000 	ldr	w0, [x0]
    21d0:	7100041f 	cmp	w0, #0x1
    21d4:	54fff0a0 	b.eq	1fe8 <testf+0x40>  // b.none
    21d8:	90000000 	adrp	x0, 0 <hasSuffix>
    21dc:	91000000 	add	x0, x0, #0x0
    21e0:	97fff922 	bl	668 <panic>
    21e4:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    21e8:	52800021 	mov	w1, #0x1                   	// #1
    21ec:	f9400000 	ldr	x0, [x0]
    21f0:	39000001 	strb	w1, [x0]
    21f4:	17ffffbb 	b	20e0 <testf+0x138>
    21f8:	90000016 	adrp	x22, 40a <usage+0x32>
    21fc:	90000001 	adrp	x1, 0 <hasSuffix>
    2200:	91000021 	add	x1, x1, #0x0
    2204:	f94002c0 	ldr	x0, [x22]
    2208:	97fffc4a 	bl	1330 <copyFileName>
    220c:	b94002e0 	ldr	w0, [x23]
    2210:	17ffff87 	b	202c <testf+0x84>
    2214:	90000013 	adrp	x19, 8 <hasSuffix+0x8>
    2218:	90000015 	adrp	x21, 0 <stderr>
    221c:	52800021 	mov	w1, #0x1                   	// #1
    2220:	90000002 	adrp	x2, 0 <hasSuffix>
    2224:	f9400273 	ldr	x19, [x19]
    2228:	91000042 	add	x2, x2, #0x0
    222c:	f94002b5 	ldr	x21, [x21]
    2230:	f9400263 	ldr	x3, [x19]
    2234:	f94002a0 	ldr	x0, [x21]
    2238:	94000000 	bl	0 <__fprintf_chk>
    223c:	f9400264 	ldr	x4, [x19]
    2240:	90000002 	adrp	x2, 0 <hasSuffix>
    2244:	f94002a0 	ldr	x0, [x21]
    2248:	91000042 	add	x2, x2, #0x0
    224c:	aa0403e3 	mov	x3, x4
    2250:	52800021 	mov	w1, #0x1                   	// #1
    2254:	94000000 	bl	0 <__fprintf_chk>
    2258:	90000000 	adrp	x0, 4 <hasSuffix+0x4>
    225c:	f9400001 	ldr	x1, [x0]
    2260:	b9400021 	ldr	w1, [x1]
    2264:	7100003f 	cmp	w1, #0x0
    2268:	54fff3cc 	b.gt	20e0 <testf+0x138>
    226c:	f9400000 	ldr	x0, [x0]
    2270:	52800021 	mov	w1, #0x1                   	// #1
    2274:	b9000001 	str	w1, [x0]
    2278:	17ffff9a 	b	20e0 <testf+0x138>
    227c:	90000001 	adrp	x1, 0 <stderr>
    2280:	90000000 	adrp	x0, 8 <hasSuffix+0x8>
    2284:	f9400021 	ldr	x1, [x1]
    2288:	f9400000 	ldr	x0, [x0]
    228c:	f9400033 	ldr	x19, [x1]
    2290:	f9400015 	ldr	x21, [x0]
    2294:	94000000 	bl	0 <__errno_location>
    2298:	b9400000 	ldr	w0, [x0]
    229c:	94000000 	bl	0 <strerror>
    22a0:	aa0003e5 	mov	x5, x0
    22a4:	aa1503e3 	mov	x3, x21
    22a8:	aa1303e0 	mov	x0, x19
    22ac:	aa1703e4 	mov	x4, x23
    22b0:	90000002 	adrp	x2, 0 <hasSuffix>
    22b4:	52800021 	mov	w1, #0x1                   	// #1
    22b8:	91000042 	add	x2, x2, #0x0
    22bc:	94000000 	bl	0 <__fprintf_chk>
    22c0:	17ffffe6 	b	2258 <testf+0x2b0>
    22c4:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
    22c8:	90000000 	adrp	x0, 0 <stderr>
    22cc:	aa1703e4 	mov	x4, x23
    22d0:	90000002 	adrp	x2, 0 <hasSuffix>
    22d4:	f9400063 	ldr	x3, [x3]
    22d8:	91000042 	add	x2, x2, #0x0
    22dc:	f9400000 	ldr	x0, [x0]
    22e0:	52800021 	mov	w1, #0x1                   	// #1
    22e4:	f9400063 	ldr	x3, [x3]
    22e8:	f9400000 	ldr	x0, [x0]
    22ec:	94000000 	bl	0 <__fprintf_chk>
    22f0:	17ffffda 	b	2258 <testf+0x2b0>
    22f4:	94000000 	bl	0 <__stack_chk_fail>
    22f8:	90000000 	adrp	x0, 0 <hasSuffix>
    22fc:	91000000 	add	x0, x0, #0x0
    2300:	97fff8da 	bl	668 <panic>
    2304:	d503201f 	nop

0000000000002308 <compress>:
    2308:	a9aa7bfd 	stp	x29, x30, [sp, #-352]!
    230c:	910003fd 	mov	x29, sp
    2310:	a9025bf5 	stp	x21, x22, [sp, #32]
    2314:	90000016 	adrp	x22, 0 <__stack_chk_guard>
    2318:	a9046bf9 	stp	x25, x26, [sp, #64]
    231c:	90000019 	adrp	x25, 1 <hasSuffix+0x1>
    2320:	f94002c1 	ldr	x1, [x22]
    2324:	a90153f3 	stp	x19, x20, [sp, #16]
    2328:	aa0003f3 	mov	x19, x0
    232c:	f9400320 	ldr	x0, [x25]
    2330:	a90363f7 	stp	x23, x24, [sp, #48]
    2334:	90000017 	adrp	x23, 4 <hasSuffix+0x4>
    2338:	f9400022 	ldr	x2, [x1]
    233c:	f900afe2 	str	x2, [sp, #344]
    2340:	d2800002 	mov	x2, #0x0                   	// #0
    2344:	f94002f4 	ldr	x20, [x23]
    2348:	3900001f 	strb	wzr, [x0]
    234c:	b9400282 	ldr	w2, [x20]
    2350:	b4001453 	cbz	x19, 25d8 <compress+0x2d0>
    2354:	71000c5f 	cmp	w2, #0x3
    2358:	54001020 	b.eq	255c <compress+0x254>  // b.none
    235c:	90000018 	adrp	x24, 40a <usage+0x32>
    2360:	540001ec 	b.gt	239c <compress+0x94>
    2364:	7100045f 	cmp	w2, #0x1
    2368:	540013c0 	b.eq	25e0 <compress+0x2d8>  // b.none
    236c:	7100085f 	cmp	w2, #0x2
    2370:	90000018 	adrp	x24, 40a <usage+0x32>
    2374:	54000b61 	b.ne	24e0 <compress+0x1d8>  // b.any
    2378:	f9400300 	ldr	x0, [x24]
    237c:	aa1303e1 	mov	x1, x19
    2380:	97fffbec 	bl	1330 <copyFileName>
    2384:	90000000 	adrp	x0, 40a <usage+0x32>
    2388:	90000001 	adrp	x1, 0 <hasSuffix>
    238c:	91000021 	add	x1, x1, #0x0
    2390:	f9400000 	ldr	x0, [x0]
    2394:	97fffbe7 	bl	1330 <copyFileName>
    2398:	b9400282 	ldr	w2, [x20]
    239c:	7100045f 	cmp	w2, #0x1
    23a0:	54000a01 	b.ne	24e0 <compress+0x1d8>  // b.any
    23a4:	f940031a 	ldr	x26, [x24]
    23a8:	90000015 	adrp	x21, 0 <hasSuffix>
    23ac:	910002b5 	add	x21, x21, #0x0
    23b0:	d2800013 	mov	x19, #0x0                   	// #0
    23b4:	f8737ab4 	ldr	x20, [x21, x19, lsl #3]
    23b8:	aa1a03e0 	mov	x0, x26
    23bc:	aa1403e1 	mov	x1, x20
    23c0:	97fff710 	bl	0 <hasSuffix>
    23c4:	72001c1f 	tst	w0, #0xff
    23c8:	54001b21 	b.ne	272c <compress+0x424>  // b.any
    23cc:	91000673 	add	x19, x19, #0x1
    23d0:	f100127f 	cmp	x19, #0x4
    23d4:	54ffff01 	b.ne	23b4 <compress+0xac>  // b.any
    23d8:	f94002f4 	ldr	x20, [x23]
    23dc:	b9400293 	ldr	w19, [x20]
    23e0:	51000a60 	sub	w0, w19, #0x2
    23e4:	7100041f 	cmp	w0, #0x1
    23e8:	54001169 	b.ls	2614 <compress+0x30c>  // b.plast
    23ec:	71000a7f 	cmp	w19, #0x2
    23f0:	54000d60 	b.eq	259c <compress+0x294>  // b.none
    23f4:	7100067f 	cmp	w19, #0x1
    23f8:	54000080 	b.eq	2408 <compress+0x100>  // b.none
    23fc:	90000000 	adrp	x0, 0 <hasSuffix>
    2400:	91000000 	add	x0, x0, #0x0
    2404:	97fff899 	bl	668 <panic>
    2408:	90000001 	adrp	x1, 0 <stdout>
    240c:	90000000 	adrp	x0, 0 <stdin>
    2410:	f9400021 	ldr	x1, [x1]
    2414:	f9400000 	ldr	x0, [x0]
    2418:	f9400034 	ldr	x20, [x1]
    241c:	f9400015 	ldr	x21, [x0]
    2420:	aa1403e0 	mov	x0, x20
    2424:	94000000 	bl	0 <fileno>
    2428:	94000000 	bl	0 <isatty>
    242c:	35002060 	cbnz	w0, 2838 <compress+0x530>
    2430:	90000000 	adrp	x0, 4 <hasSuffix+0x4>
    2434:	f9400000 	ldr	x0, [x0]
    2438:	b9400000 	ldr	w0, [x0]
    243c:	7100001f 	cmp	w0, #0x0
    2440:	5400018d 	b.le	2470 <compress+0x168>
    2444:	90000013 	adrp	x19, 0 <stderr>
    2448:	90000002 	adrp	x2, 0 <hasSuffix>
    244c:	f9400303 	ldr	x3, [x24]
    2450:	91000042 	add	x2, x2, #0x0
    2454:	f9400273 	ldr	x19, [x19]
    2458:	52800021 	mov	w1, #0x1                   	// #1
    245c:	f9400260 	ldr	x0, [x19]
    2460:	94000000 	bl	0 <__fprintf_chk>
    2464:	97fffca7 	bl	1700 <pad.constprop.0>
    2468:	f9400260 	ldr	x0, [x19]
    246c:	94000000 	bl	0 <fflush>
    2470:	90000013 	adrp	x19, 8 <hasSuffix+0x8>
    2474:	aa1503e0 	mov	x0, x21
    2478:	f9400335 	ldr	x21, [x25]
    247c:	52800022 	mov	w2, #0x1                   	// #1
    2480:	f9400273 	ldr	x19, [x19]
    2484:	aa1403e1 	mov	x1, x20
    2488:	390002a2 	strb	w2, [x21]
    248c:	f9000274 	str	x20, [x19]
    2490:	97fff8b4 	bl	760 <compressStream>
    2494:	f94002f7 	ldr	x23, [x23]
    2498:	f900027f 	str	xzr, [x19]
    249c:	b94002e0 	ldr	w0, [x23]
    24a0:	71000c1f 	cmp	w0, #0x3
    24a4:	54001660 	b.eq	2770 <compress+0x468>  // b.none
    24a8:	f9400339 	ldr	x25, [x25]
    24ac:	3900033f 	strb	wzr, [x25]
    24b0:	f94002d6 	ldr	x22, [x22]
    24b4:	f940afe0 	ldr	x0, [sp, #344]
    24b8:	f94002c1 	ldr	x1, [x22]
    24bc:	eb010000 	subs	x0, x0, x1
    24c0:	d2800001 	mov	x1, #0x0                   	// #0
    24c4:	540026a1 	b.ne	2998 <compress+0x690>  // b.any
    24c8:	a94153f3 	ldp	x19, x20, [sp, #16]
    24cc:	a9425bf5 	ldp	x21, x22, [sp, #32]
    24d0:	a94363f7 	ldp	x23, x24, [sp, #48]
    24d4:	a9446bf9 	ldp	x25, x26, [sp, #64]
    24d8:	a8d67bfd 	ldp	x29, x30, [sp], #352
    24dc:	d65f03c0 	ret
    24e0:	f9400313 	ldr	x19, [x24]
    24e4:	aa1303e0 	mov	x0, x19
    24e8:	97fff6e2 	bl	70 <fileExists>
    24ec:	72001c1f 	tst	w0, #0xff
    24f0:	54fff5a1 	b.ne	23a4 <compress+0x9c>  // b.any
    24f4:	90000001 	adrp	x1, 0 <stderr>
    24f8:	90000000 	adrp	x0, 8 <hasSuffix+0x8>
    24fc:	f9400021 	ldr	x1, [x1]
    2500:	f9400000 	ldr	x0, [x0]
    2504:	f9400034 	ldr	x20, [x1]
    2508:	f9400015 	ldr	x21, [x0]
    250c:	94000000 	bl	0 <__errno_location>
    2510:	b9400000 	ldr	w0, [x0]
    2514:	94000000 	bl	0 <strerror>
    2518:	aa0003e5 	mov	x5, x0
    251c:	90000002 	adrp	x2, 0 <hasSuffix>
    2520:	aa1503e3 	mov	x3, x21
    2524:	aa1403e0 	mov	x0, x20
    2528:	aa1303e4 	mov	x4, x19
    252c:	91000042 	add	x2, x2, #0x0
    2530:	52800021 	mov	w1, #0x1                   	// #1
    2534:	94000000 	bl	0 <__fprintf_chk>
    2538:	90000000 	adrp	x0, 4 <hasSuffix+0x4>
    253c:	f9400001 	ldr	x1, [x0]
    2540:	b9400021 	ldr	w1, [x1]
    2544:	7100003f 	cmp	w1, #0x0
    2548:	54fffb4c 	b.gt	24b0 <compress+0x1a8>
    254c:	f9400000 	ldr	x0, [x0]
    2550:	52800021 	mov	w1, #0x1                   	// #1
    2554:	b9000001 	str	w1, [x0]
    2558:	17ffffd6 	b	24b0 <compress+0x1a8>
    255c:	90000018 	adrp	x24, 40a <usage+0x32>
    2560:	aa1303e1 	mov	x1, x19
    2564:	f9400300 	ldr	x0, [x24]
    2568:	97fffb72 	bl	1330 <copyFileName>
    256c:	90000000 	adrp	x0, 40a <usage+0x32>
    2570:	aa1303e1 	mov	x1, x19
    2574:	f9400013 	ldr	x19, [x0]
    2578:	aa1303e0 	mov	x0, x19
    257c:	97fffb6d 	bl	1330 <copyFileName>
    2580:	d2808142 	mov	x2, #0x40a                 	// #1034
    2584:	aa1303e0 	mov	x0, x19
    2588:	90000001 	adrp	x1, 0 <hasSuffix>
    258c:	91000021 	add	x1, x1, #0x0
    2590:	94000000 	bl	0 <__strcat_chk>
    2594:	b9400282 	ldr	w2, [x20]
    2598:	17ffff81 	b	239c <compress+0x94>
    259c:	f9400313 	ldr	x19, [x24]
    25a0:	90000001 	adrp	x1, 0 <hasSuffix>
    25a4:	91000021 	add	x1, x1, #0x0
    25a8:	aa1303e0 	mov	x0, x19
    25ac:	94000000 	bl	0 <fopen64>
    25b0:	90000001 	adrp	x1, 0 <stdout>
    25b4:	aa0003f5 	mov	x21, x0
    25b8:	f9400021 	ldr	x1, [x1]
    25bc:	f9400034 	ldr	x20, [x1]
    25c0:	aa1403e0 	mov	x0, x20
    25c4:	94000000 	bl	0 <fileno>
    25c8:	94000000 	bl	0 <isatty>
    25cc:	350015a0 	cbnz	w0, 2880 <compress+0x578>
    25d0:	b5fff315 	cbnz	x21, 2430 <compress+0x128>
    25d4:	17ffffc8 	b	24f4 <compress+0x1ec>
    25d8:	7100045f 	cmp	w2, #0x1
    25dc:	54001e01 	b.ne	299c <compress+0x694>  // b.any
    25e0:	90000018 	adrp	x24, 40a <usage+0x32>
    25e4:	90000001 	adrp	x1, 0 <hasSuffix>
    25e8:	91000021 	add	x1, x1, #0x0
    25ec:	f9400300 	ldr	x0, [x24]
    25f0:	97fffb50 	bl	1330 <copyFileName>
    25f4:	90000000 	adrp	x0, 40a <usage+0x32>
    25f8:	90000001 	adrp	x1, 0 <hasSuffix>
    25fc:	91000021 	add	x1, x1, #0x0
    2600:	f9400000 	ldr	x0, [x0]
    2604:	97fffb4b 	bl	1330 <copyFileName>
    2608:	f94002e0 	ldr	x0, [x23]
    260c:	b9400002 	ldr	w2, [x0]
    2610:	17ffff63 	b	239c <compress+0x94>
    2614:	910163e2 	add	x2, sp, #0x58
    2618:	aa1a03e1 	mov	x1, x26
    261c:	52800000 	mov	w0, #0x0                   	// #0
    2620:	94000000 	bl	0 <__xstat64>
    2624:	b9406be0 	ldr	w0, [sp, #104]
    2628:	12140c00 	and	w0, w0, #0xf000
    262c:	7140101f 	cmp	w0, #0x4, lsl #12
    2630:	54001800 	b.eq	2930 <compress+0x628>  // b.none
    2634:	b9400293 	ldr	w19, [x20]
    2638:	71000e7f 	cmp	w19, #0x3
    263c:	54ffed81 	b.ne	23ec <compress+0xe4>  // b.any
    2640:	90000015 	adrp	x21, 1 <hasSuffix+0x1>
    2644:	f94002a0 	ldr	x0, [x21]
    2648:	39400000 	ldrb	w0, [x0]
    264c:	34000a60 	cbz	w0, 2798 <compress+0x490>
    2650:	9000001a 	adrp	x26, 40a <usage+0x32>
    2654:	f9400353 	ldr	x19, [x26]
    2658:	aa1303e0 	mov	x0, x19
    265c:	97fff685 	bl	70 <fileExists>
    2660:	72001c1f 	tst	w0, #0xff
    2664:	540000c0 	b.eq	267c <compress+0x374>  // b.none
    2668:	f94002a0 	ldr	x0, [x21]
    266c:	39400000 	ldrb	w0, [x0]
    2670:	34001320 	cbz	w0, 28d4 <compress+0x5cc>
    2674:	aa1303e0 	mov	x0, x19
    2678:	94000000 	bl	0 <remove>
    267c:	f94002e0 	ldr	x0, [x23]
    2680:	b9400013 	ldr	w19, [x0]
    2684:	71000e7f 	cmp	w19, #0x3
    2688:	54ffeb21 	b.ne	23ec <compress+0xe4>  // b.any
    268c:	f94002b5 	ldr	x21, [x21]
    2690:	394002a0 	ldrb	w0, [x21]
    2694:	34000900 	cbz	w0, 27b4 <compress+0x4ac>
    2698:	97fffbd0 	bl	15d8 <saveInputFileMetaInfo.constprop.0>
    269c:	f94002e0 	ldr	x0, [x23]
    26a0:	b9400013 	ldr	w19, [x0]
    26a4:	71000a7f 	cmp	w19, #0x2
    26a8:	54fff7a0 	b.eq	259c <compress+0x294>  // b.none
    26ac:	71000e7f 	cmp	w19, #0x3
    26b0:	54ffea21 	b.ne	23f4 <compress+0xec>  // b.any
    26b4:	f9400313 	ldr	x19, [x24]
    26b8:	90000001 	adrp	x1, 0 <hasSuffix>
    26bc:	91000021 	add	x1, x1, #0x0
    26c0:	aa1303e0 	mov	x0, x19
    26c4:	94000000 	bl	0 <fopen64>
    26c8:	aa0003f5 	mov	x21, x0
    26cc:	97fffbed 	bl	1680 <fopen_output_safely.constprop.0>
    26d0:	aa0003f4 	mov	x20, x0
    26d4:	b40013c0 	cbz	x0, 294c <compress+0x644>
    26d8:	b5ffead5 	cbnz	x21, 2430 <compress+0x128>
    26dc:	90000001 	adrp	x1, 0 <stderr>
    26e0:	90000000 	adrp	x0, 8 <hasSuffix+0x8>
    26e4:	f9400021 	ldr	x1, [x1]
    26e8:	f9400000 	ldr	x0, [x0]
    26ec:	f9400035 	ldr	x21, [x1]
    26f0:	f9400017 	ldr	x23, [x0]
    26f4:	94000000 	bl	0 <__errno_location>
    26f8:	b9400000 	ldr	w0, [x0]
    26fc:	94000000 	bl	0 <strerror>
    2700:	aa0003e5 	mov	x5, x0
    2704:	aa1703e3 	mov	x3, x23
    2708:	aa1303e4 	mov	x4, x19
    270c:	90000002 	adrp	x2, 0 <hasSuffix>
    2710:	91000042 	add	x2, x2, #0x0
    2714:	52800021 	mov	w1, #0x1                   	// #1
    2718:	aa1503e0 	mov	x0, x21
    271c:	94000000 	bl	0 <__fprintf_chk>
    2720:	aa1403e0 	mov	x0, x20
    2724:	94000000 	bl	0 <fclose>
    2728:	17ffff84 	b	2538 <compress+0x230>
    272c:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    2730:	f9400000 	ldr	x0, [x0]
    2734:	39400000 	ldrb	w0, [x0]
    2738:	34fff000 	cbz	w0, 2538 <compress+0x230>
    273c:	90000001 	adrp	x1, 8 <hasSuffix+0x8>
    2740:	90000000 	adrp	x0, 0 <stderr>
    2744:	aa1403e5 	mov	x5, x20
    2748:	aa1a03e4 	mov	x4, x26
    274c:	f9400021 	ldr	x1, [x1]
    2750:	90000002 	adrp	x2, 0 <hasSuffix>
    2754:	f9400000 	ldr	x0, [x0]
    2758:	91000042 	add	x2, x2, #0x0
    275c:	f9400023 	ldr	x3, [x1]
    2760:	52800021 	mov	w1, #0x1                   	// #1
    2764:	f9400000 	ldr	x0, [x0]
    2768:	94000000 	bl	0 <__fprintf_chk>
    276c:	17ffff73 	b	2538 <compress+0x230>
    2770:	97fffb7e 	bl	1568 <applySavedTimeInfoToOutputFile.constprop.0>
    2774:	390002bf 	strb	wzr, [x21]
    2778:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    277c:	f9400000 	ldr	x0, [x0]
    2780:	39400000 	ldrb	w0, [x0]
    2784:	35ffe920 	cbnz	w0, 24a8 <compress+0x1a0>
    2788:	f9400300 	ldr	x0, [x24]
    278c:	94000000 	bl	0 <remove>
    2790:	34ffe8c0 	cbz	w0, 24a8 <compress+0x1a0>
    2794:	97fff7cb 	bl	6c0 <ioError>
    2798:	97fffb9c 	bl	1608 <notAStandardFile.constprop.0>
    279c:	72001c1f 	tst	w0, #0xff
    27a0:	54000b21 	b.ne	2904 <compress+0x5fc>  // b.any
    27a4:	b9400293 	ldr	w19, [x20]
    27a8:	71000e7f 	cmp	w19, #0x3
    27ac:	54ffe201 	b.ne	23ec <compress+0xe4>  // b.any
    27b0:	17ffffa8 	b	2650 <compress+0x348>
    27b4:	f9400313 	ldr	x19, [x24]
    27b8:	910363e2 	add	x2, sp, #0xd8
    27bc:	52800000 	mov	w0, #0x0                   	// #0
    27c0:	aa1303e1 	mov	x1, x19
    27c4:	94000000 	bl	0 <__lxstat64>
    27c8:	350002e0 	cbnz	w0, 2824 <compress+0x51c>
    27cc:	b940efe5 	ldr	w5, [sp, #236]
    27d0:	510004a5 	sub	w5, w5, #0x1
    27d4:	710000bf 	cmp	w5, #0x0
    27d8:	5400026d 	b.le	2824 <compress+0x51c>
    27dc:	90000000 	adrp	x0, 0 <stderr>
    27e0:	90000002 	adrp	x2, 8 <hasSuffix+0x8>
    27e4:	710004bf 	cmp	w5, #0x1
    27e8:	90000001 	adrp	x1, 0 <hasSuffix>
    27ec:	f9400042 	ldr	x2, [x2]
    27f0:	91000021 	add	x1, x1, #0x0
    27f4:	f9400000 	ldr	x0, [x0]
    27f8:	90000006 	adrp	x6, 0 <hasSuffix>
    27fc:	f9400043 	ldr	x3, [x2]
    2800:	910000c6 	add	x6, x6, #0x0
    2804:	f9400000 	ldr	x0, [x0]
    2808:	9a8110c6 	csel	x6, x6, x1, ne  // ne = any
    280c:	aa1303e4 	mov	x4, x19
    2810:	52800021 	mov	w1, #0x1                   	// #1
    2814:	90000002 	adrp	x2, 0 <hasSuffix>
    2818:	91000042 	add	x2, x2, #0x0
    281c:	94000000 	bl	0 <__fprintf_chk>
    2820:	17ffff46 	b	2538 <compress+0x230>
    2824:	f94002e0 	ldr	x0, [x23]
    2828:	b9400013 	ldr	w19, [x0]
    282c:	71000e7f 	cmp	w19, #0x3
    2830:	54ffdde1 	b.ne	23ec <compress+0xe4>  // b.any
    2834:	17ffff99 	b	2698 <compress+0x390>
    2838:	90000014 	adrp	x20, 8 <hasSuffix+0x8>
    283c:	90000015 	adrp	x21, 0 <stderr>
    2840:	2a1303e1 	mov	w1, w19
    2844:	90000002 	adrp	x2, 0 <hasSuffix>
    2848:	f9400294 	ldr	x20, [x20]
    284c:	91000042 	add	x2, x2, #0x0
    2850:	f94002b5 	ldr	x21, [x21]
    2854:	f9400283 	ldr	x3, [x20]
    2858:	f94002a0 	ldr	x0, [x21]
    285c:	94000000 	bl	0 <__fprintf_chk>
    2860:	f9400284 	ldr	x4, [x20]
    2864:	2a1303e1 	mov	w1, w19
    2868:	f94002a0 	ldr	x0, [x21]
    286c:	aa0403e3 	mov	x3, x4
    2870:	90000002 	adrp	x2, 0 <hasSuffix>
    2874:	91000042 	add	x2, x2, #0x0
    2878:	94000000 	bl	0 <__fprintf_chk>
    287c:	17ffff2f 	b	2538 <compress+0x230>
    2880:	90000013 	adrp	x19, 8 <hasSuffix+0x8>
    2884:	90000014 	adrp	x20, 0 <stderr>
    2888:	52800021 	mov	w1, #0x1                   	// #1
    288c:	90000002 	adrp	x2, 0 <hasSuffix>
    2890:	f9400273 	ldr	x19, [x19]
    2894:	91000042 	add	x2, x2, #0x0
    2898:	f9400294 	ldr	x20, [x20]
    289c:	f9400263 	ldr	x3, [x19]
    28a0:	f9400280 	ldr	x0, [x20]
    28a4:	94000000 	bl	0 <__fprintf_chk>
    28a8:	f9400264 	ldr	x4, [x19]
    28ac:	90000002 	adrp	x2, 0 <hasSuffix>
    28b0:	f9400280 	ldr	x0, [x20]
    28b4:	91000042 	add	x2, x2, #0x0
    28b8:	aa0403e3 	mov	x3, x4
    28bc:	52800021 	mov	w1, #0x1                   	// #1
    28c0:	94000000 	bl	0 <__fprintf_chk>
    28c4:	b4ffe3b5 	cbz	x21, 2538 <compress+0x230>
    28c8:	aa1503e0 	mov	x0, x21
    28cc:	94000000 	bl	0 <fclose>
    28d0:	17ffff1a 	b	2538 <compress+0x230>
    28d4:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
    28d8:	90000002 	adrp	x2, 0 <hasSuffix>
    28dc:	aa1303e4 	mov	x4, x19
    28e0:	91000042 	add	x2, x2, #0x0
    28e4:	f9400063 	ldr	x3, [x3]
    28e8:	90000000 	adrp	x0, 0 <stderr>
    28ec:	f9400000 	ldr	x0, [x0]
    28f0:	52800021 	mov	w1, #0x1                   	// #1
    28f4:	f9400063 	ldr	x3, [x3]
    28f8:	f9400000 	ldr	x0, [x0]
    28fc:	94000000 	bl	0 <__fprintf_chk>
    2900:	17ffff0e 	b	2538 <compress+0x230>
    2904:	90000000 	adrp	x0, 1 <hasSuffix+0x1>
    2908:	f9400000 	ldr	x0, [x0]
    290c:	39400000 	ldrb	w0, [x0]
    2910:	34ffe140 	cbz	w0, 2538 <compress+0x230>
    2914:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
    2918:	90000002 	adrp	x2, 0 <hasSuffix>
    291c:	aa1a03e4 	mov	x4, x26
    2920:	91000042 	add	x2, x2, #0x0
    2924:	f9400063 	ldr	x3, [x3]
    2928:	90000000 	adrp	x0, 0 <stderr>
    292c:	17fffff0 	b	28ec <compress+0x5e4>
    2930:	90000003 	adrp	x3, 8 <hasSuffix+0x8>
    2934:	90000002 	adrp	x2, 0 <hasSuffix>
    2938:	aa1a03e4 	mov	x4, x26
    293c:	91000042 	add	x2, x2, #0x0
    2940:	f9400063 	ldr	x3, [x3]
    2944:	90000000 	adrp	x0, 0 <stderr>
    2948:	17ffffe9 	b	28ec <compress+0x5e4>
    294c:	90000001 	adrp	x1, 0 <stderr>
    2950:	90000000 	adrp	x0, 8 <hasSuffix+0x8>
    2954:	f9400021 	ldr	x1, [x1]
    2958:	f9400000 	ldr	x0, [x0]
    295c:	f9400033 	ldr	x19, [x1]
    2960:	f9400014 	ldr	x20, [x0]
    2964:	94000000 	bl	0 <__errno_location>
    2968:	b9400000 	ldr	w0, [x0]
    296c:	94000000 	bl	0 <strerror>
    2970:	aa0003e5 	mov	x5, x0
    2974:	f9400344 	ldr	x4, [x26]
    2978:	90000002 	adrp	x2, 0 <hasSuffix>
    297c:	aa1403e3 	mov	x3, x20
    2980:	aa1303e0 	mov	x0, x19
    2984:	91000042 	add	x2, x2, #0x0
    2988:	52800021 	mov	w1, #0x1                   	// #1
    298c:	94000000 	bl	0 <__fprintf_chk>
    2990:	b5fff9d5 	cbnz	x21, 28c8 <compress+0x5c0>
    2994:	17fffee9 	b	2538 <compress+0x230>
    2998:	94000000 	bl	0 <__stack_chk_fail>
    299c:	90000000 	adrp	x0, 0 <hasSuffix>
    29a0:	91000000 	add	x0, x0, #0x0
    29a4:	97fff731 	bl	668 <panic>

Disassembly of section .text.startup:

0000000000000000 <main>:
   0:	a9b87bfd 	stp	x29, x30, [sp, #-128]!
   4:	90000005 	adrp	x5, 1 <main+0x1>
   8:	90000004 	adrp	x4, 1 <main+0x1>
   c:	910003fd 	mov	x29, sp
  10:	a90153f3 	stp	x19, x20, [sp, #16]
  14:	2a0003f4 	mov	w20, w0
  18:	90000000 	adrp	x0, 1 <main+0x1>
  1c:	f94000a7 	ldr	x7, [x5]
  20:	90000003 	adrp	x3, 8 <main+0x8>
  24:	f9400005 	ldr	x5, [x0]
  28:	90000000 	adrp	x0, 1 <main+0x1>
  2c:	f9400084 	ldr	x4, [x4]
  30:	aa0103f3 	mov	x19, x1
  34:	f9400063 	ldr	x3, [x3]
  38:	a9025bf5 	stp	x21, x22, [sp, #32]
  3c:	90000015 	adrp	x21, 4 <main+0x4>
  40:	f9400001 	ldr	x1, [x0]
  44:	a90363f7 	stp	x23, x24, [sp, #48]
  48:	90000000 	adrp	x0, 1 <main+0x1>
  4c:	a9046bf9 	stp	x25, x26, [sp, #64]
  50:	90000019 	adrp	x25, 4 <main+0x4>
  54:	9000001a 	adrp	x26, 4 <main+0x4>
  58:	a90573fb 	stp	x27, x28, [sp, #80]
  5c:	90000002 	adrp	x2, 1 <main+0x1>
  60:	90000016 	adrp	x22, 0 <main>
  64:	3900009f 	strb	wzr, [x4]
  68:	910002d6 	add	x22, x22, #0x0
  6c:	f94002a4 	ldr	x4, [x21]
  70:	390000bf 	strb	wzr, [x5]
  74:	f9400326 	ldr	x6, [x25]
  78:	52800025 	mov	w5, #0x1                   	// #1
  7c:	f9400000 	ldr	x0, [x0]
  80:	39000025 	strb	w5, [x1]
  84:	f9400341 	ldr	x1, [x26]
  88:	f900007f 	str	xzr, [x3]
  8c:	90000003 	adrp	x3, 1 <main+0x1>
  90:	52800125 	mov	w5, #0x9                   	// #9
  94:	b9000085 	str	w5, [x4]
  98:	90000004 	adrp	x4, 4 <main+0x4>
  9c:	f9400063 	ldr	x3, [x3]
  a0:	390000ff 	strb	wzr, [x7]
  a4:	b90000df 	str	wzr, [x6]
  a8:	90000017 	adrp	x23, 8 <main+0x8>
  ac:	f9400042 	ldr	x2, [x2]
  b0:	f9400084 	ldr	x4, [x4]
  b4:	3900001f 	strb	wzr, [x0]
  b8:	b900003f 	str	wzr, [x1]
  bc:	90000001 	adrp	x1, 0 <__stack_chk_guard>
  c0:	90000000 	adrp	x0, 4 <main+0x4>
  c4:	3900007f 	strb	wzr, [x3]
  c8:	f9400021 	ldr	x1, [x1]
  cc:	90000003 	adrp	x3, 4 <main+0x4>
  d0:	f9400000 	ldr	x0, [x0]
  d4:	3900005f 	strb	wzr, [x2]
  d8:	f9400063 	ldr	x3, [x3]
  dc:	f9400022 	ldr	x2, [x1]
  e0:	f9003fe2 	str	x2, [sp, #120]
  e4:	d2800002 	mov	x2, #0x0                   	// #0
  e8:	b900009f 	str	wzr, [x4]
  ec:	528003c4 	mov	w4, #0x1e                  	// #30
  f0:	aa1603e1 	mov	x1, x22
  f4:	b9000004 	str	w4, [x0]
  f8:	52800160 	mov	w0, #0xb                   	// #11
  fc:	b900007f 	str	wzr, [x3]
 100:	94000000 	bl	0 <signal>
 104:	aa1603e1 	mov	x1, x22
 108:	528000e0 	mov	w0, #0x7                   	// #7
 10c:	94000000 	bl	0 <signal>
 110:	90000016 	adrp	x22, 0 <main>
 114:	90000000 	adrp	x0, 40a <main+0x40a>
 118:	910002d6 	add	x22, x22, #0x0
 11c:	aa1603e1 	mov	x1, x22
 120:	f9400000 	ldr	x0, [x0]
 124:	94000000 	bl	0 <main>
 128:	90000000 	adrp	x0, 40a <main+0x40a>
 12c:	aa1603e1 	mov	x1, x22
 130:	f9400000 	ldr	x0, [x0]
 134:	94000000 	bl	0 <main>
 138:	90000000 	adrp	x0, 40a <main+0x40a>
 13c:	f9400261 	ldr	x1, [x19]
 140:	f9400016 	ldr	x22, [x0]
 144:	aa1603e0 	mov	x0, x22
 148:	94000000 	bl	0 <main>
 14c:	f94002e0 	ldr	x0, [x23]
 150:	394002c1 	ldrb	w1, [x22]
 154:	f9000016 	str	x22, [x0]
 158:	340001e1 	cbz	w1, 194 <main+0x194>
 15c:	aa1603e0 	mov	x0, x22
 160:	aa1603e2 	mov	x2, x22
 164:	52800003 	mov	w3, #0x0                   	// #0
 168:	52800024 	mov	w4, #0x1                   	// #1
 16c:	d503201f 	nop
 170:	91000442 	add	x2, x2, #0x1
 174:	7100bc3f 	cmp	w1, #0x2f
 178:	9a821000 	csel	x0, x0, x2, ne  // ne = any
 17c:	1a841063 	csel	w3, w3, w4, ne  // ne = any
 180:	39400041 	ldrb	w1, [x2]
 184:	35ffff61 	cbnz	w1, 170 <main+0x170>
 188:	34000063 	cbz	w3, 194 <main+0x194>
 18c:	f94002e1 	ldr	x1, [x23]
 190:	f9000020 	str	x0, [x1]
 194:	9101c3f6 	add	x22, sp, #0x70
 198:	90000001 	adrp	x1, 0 <main>
 19c:	aa1603e0 	mov	x0, x22
 1a0:	91000021 	add	x1, x1, #0x0
 1a4:	f9003bff 	str	xzr, [sp, #112]
 1a8:	94000000 	bl	0 <main>
 1ac:	aa1603e0 	mov	x0, x22
 1b0:	90000001 	adrp	x1, 0 <main>
 1b4:	91000021 	add	x1, x1, #0x0
 1b8:	94000000 	bl	0 <main>
 1bc:	7100069f 	cmp	w20, #0x1
 1c0:	54003bad 	b.le	934 <main+0x934>
 1c4:	51000a94 	sub	w20, w20, #0x2
 1c8:	91004260 	add	x0, x19, #0x10
 1cc:	f9403bf6 	ldr	x22, [sp, #112]
 1d0:	8b344c14 	add	x20, x0, w20, uxtw #3
 1d4:	91002273 	add	x19, x19, #0x8
 1d8:	f8408661 	ldr	x1, [x19], #8
 1dc:	aa1603e0 	mov	x0, x22
 1e0:	94000000 	bl	0 <main>
 1e4:	f9003be0 	str	x0, [sp, #112]
 1e8:	aa0003f6 	mov	x22, x0
 1ec:	eb13029f 	cmp	x20, x19
 1f0:	54ffff41 	b.ne	1d8 <main+0x1d8>  // b.any
 1f4:	90000003 	adrp	x3, 4 <main+0x4>
 1f8:	528000e0 	mov	w0, #0x7                   	// #7
 1fc:	f9400354 	ldr	x20, [x26]
 200:	f9400063 	ldr	x3, [x3]
 204:	b900029f 	str	wzr, [x20]
 208:	b9000060 	str	w0, [x3]
 20c:	b4003996 	cbz	x22, 93c <main+0x93c>
 210:	aa0303fc 	mov	x28, x3
 214:	aa1603f8 	mov	x24, x22
 218:	5280001b 	mov	w27, #0x0                   	// #0
 21c:	52800033 	mov	w19, #0x1                   	// #1
 220:	14000009 	b	244 <main+0x244>
 224:	39400401 	ldrb	w1, [x0, #1]
 228:	7100b43f 	cmp	w1, #0x2d
 22c:	54000141 	b.ne	254 <main+0x254>  // b.any
 230:	39400801 	ldrb	w1, [x0, #2]
 234:	35000101 	cbnz	w1, 254 <main+0x254>
 238:	52800013 	mov	w19, #0x0                   	// #0
 23c:	f9400718 	ldr	x24, [x24, #8]
 240:	b4000258 	cbz	x24, 288 <main+0x288>
 244:	f9400300 	ldr	x0, [x24]
 248:	39400001 	ldrb	w1, [x0]
 24c:	7100b43f 	cmp	w1, #0x2d
 250:	54fffea0 	b.eq	224 <main+0x224>  // b.none
 254:	39400001 	ldrb	w1, [x0]
 258:	7100b43f 	cmp	w1, #0x2d
 25c:	1a9f0261 	csel	w1, w19, wzr, eq  // eq = none
 260:	350016c1 	cbnz	w1, 538 <main+0x538>
 264:	1100077b 	add	w27, w27, #0x1
 268:	b900029b 	str	w27, [x20]
 26c:	94000000 	bl	0 <strlen>
 270:	b9400381 	ldr	w1, [x28]
 274:	6b01001f 	cmp	w0, w1
 278:	54fffe2d 	b.le	23c <main+0x23c>
 27c:	f9400718 	ldr	x24, [x24, #8]
 280:	b9000380 	str	w0, [x28]
 284:	b5fffe18 	cbnz	x24, 244 <main+0x244>
 288:	7100037f 	cmp	w27, #0x0
 28c:	52800061 	mov	w1, #0x3                   	// #3
 290:	1a9f1421 	csinc	w1, w1, wzr, ne  // ne = any
 294:	f94002e0 	ldr	x0, [x23]
 298:	90000013 	adrp	x19, 4 <main+0x4>
 29c:	90000014 	adrp	x20, 4 <main+0x4>
 2a0:	52800024 	mov	w4, #0x1                   	// #1
 2a4:	f9400265 	ldr	x5, [x19]
 2a8:	f9400283 	ldr	x3, [x20]
 2ac:	f9400018 	ldr	x24, [x0]
 2b0:	b90000a1 	str	w1, [x5]
 2b4:	90000001 	adrp	x1, 0 <main>
 2b8:	91000021 	add	x1, x1, #0x0
 2bc:	aa1803e0 	mov	x0, x24
 2c0:	b9000064 	str	w4, [x3]
 2c4:	94000000 	bl	0 <strstr>
 2c8:	b40024c0 	cbz	x0, 760 <main+0x760>
 2cc:	f9400280 	ldr	x0, [x20]
 2d0:	52800041 	mov	w1, #0x2                   	// #2
 2d4:	b9000001 	str	w1, [x0]
 2d8:	90000001 	adrp	x1, 0 <main>
 2dc:	aa1803e0 	mov	x0, x24
 2e0:	91000021 	add	x1, x1, #0x0
 2e4:	94000000 	bl	0 <strstr>
 2e8:	b40021c0 	cbz	x0, 720 <main+0x720>
 2ec:	f9400263 	ldr	x3, [x19]
 2f0:	7100037f 	cmp	w27, #0x0
 2f4:	f9400280 	ldr	x0, [x20]
 2f8:	1a9f07e1 	cset	w1, ne  // ne = any
 2fc:	11000421 	add	w1, w1, #0x1
 300:	b9000061 	str	w1, [x3]
 304:	52800041 	mov	w1, #0x2                   	// #2
 308:	b9000001 	str	w1, [x0]
 30c:	90000001 	adrp	x1, 0 <main>
 310:	9100003c 	add	x28, x1, #0x0
 314:	f940033b 	ldr	x27, [x25]
 318:	b5000096 	cbnz	x22, 328 <main+0x328>
 31c:	14000089 	b	540 <main+0x540>
 320:	f94006d6 	ldr	x22, [x22, #8]
 324:	b4001836 	cbz	x22, 628 <main+0x628>
 328:	f94002c4 	ldr	x4, [x22]
 32c:	39400080 	ldrb	w0, [x4]
 330:	7100b41f 	cmp	w0, #0x2d
 334:	540000e1 	b.ne	350 <main+0x350>  // b.any
 338:	39400480 	ldrb	w0, [x4, #1]
 33c:	7100b41f 	cmp	w0, #0x2d
 340:	54000081 	b.ne	350 <main+0x350>  // b.any
 344:	39400880 	ldrb	w0, [x4, #2]
 348:	34001700 	cbz	w0, 628 <main+0x628>
 34c:	d503201f 	nop
 350:	39400080 	ldrb	w0, [x4]
 354:	7100b41f 	cmp	w0, #0x2d
 358:	54fffe41 	b.ne	320 <main+0x320>  // b.any
 35c:	39400480 	ldrb	w0, [x4, #1]
 360:	7100b41f 	cmp	w0, #0x2d
 364:	54fffde0 	b.eq	320 <main+0x320>  // b.none
 368:	34fffdc0 	cbz	w0, 320 <main+0x320>
 36c:	f94002a5 	ldr	x5, [x21]
 370:	d2800058 	mov	x24, #0x2                   	// #2
 374:	52800123 	mov	w3, #0x9                   	// #9
 378:	5100c400 	sub	w0, w0, #0x31
 37c:	7101241f 	cmp	w0, #0x49
 380:	540001c9 	b.ls	3b8 <main+0x3b8>  // b.plast
 384:	90000000 	adrp	x0, 0 <stderr>
 388:	f94002f7 	ldr	x23, [x23]
 38c:	52800021 	mov	w1, #0x1                   	// #1
 390:	f9400000 	ldr	x0, [x0]
 394:	90000002 	adrp	x2, 0 <main>
 398:	f94002e3 	ldr	x3, [x23]
 39c:	91000042 	add	x2, x2, #0x0
 3a0:	f9400000 	ldr	x0, [x0]
 3a4:	94000000 	bl	0 <__fprintf_chk>
 3a8:	f94002e0 	ldr	x0, [x23]
 3ac:	94000000 	bl	0 <main>
 3b0:	52800020 	mov	w0, #0x1                   	// #1
 3b4:	94000000 	bl	0 <exit>
 3b8:	38604b80 	ldrb	w0, [x28, w0, uxtw]
 3bc:	10000061 	adr	x1, 3c8 <main+0x3c8>
 3c0:	8b208820 	add	x0, x1, w0, sxtb #2
 3c4:	d61f0000 	br	x0
 3c8:	f90037e5 	str	x5, [sp, #104]
 3cc:	94000000 	bl	0 <main>
 3d0:	f94002c4 	ldr	x4, [x22]
 3d4:	52800123 	mov	w3, #0x9                   	// #9
 3d8:	f94037e5 	ldr	x5, [sp, #104]
 3dc:	d503201f 	nop
 3e0:	38786880 	ldrb	w0, [x4, x24]
 3e4:	91000718 	add	x24, x24, #0x1
 3e8:	35fffc80 	cbnz	w0, 378 <main+0x378>
 3ec:	17ffffcd 	b	320 <main+0x320>
 3f0:	f9400280 	ldr	x0, [x20]
 3f4:	52800026 	mov	w6, #0x1                   	// #1
 3f8:	b9000006 	str	w6, [x0]
 3fc:	17fffff9 	b	3e0 <main+0x3e0>
 400:	b9400360 	ldr	w0, [x27]
 404:	11000400 	add	w0, w0, #0x1
 408:	b9000360 	str	w0, [x27]
 40c:	17fffff5 	b	3e0 <main+0x3e0>
 410:	f9400280 	ldr	x0, [x20]
 414:	52800066 	mov	w6, #0x3                   	// #3
 418:	b9000006 	str	w6, [x0]
 41c:	17fffff1 	b	3e0 <main+0x3e0>
 420:	90000000 	adrp	x0, 1 <main+0x1>
 424:	52800024 	mov	w4, #0x1                   	// #1
 428:	f9400000 	ldr	x0, [x0]
 42c:	39000004 	strb	w4, [x0]
 430:	f94002c4 	ldr	x4, [x22]
 434:	17ffffeb 	b	3e0 <main+0x3e0>
 438:	b90000a3 	str	w3, [x5]
 43c:	17ffffe9 	b	3e0 <main+0x3e0>
 440:	f9400280 	ldr	x0, [x20]
 444:	52800046 	mov	w6, #0x2                   	// #2
 448:	b9000006 	str	w6, [x0]
 44c:	17ffffe5 	b	3e0 <main+0x3e0>
 450:	f9400260 	ldr	x0, [x19]
 454:	52800046 	mov	w6, #0x2                   	// #2
 458:	b9000006 	str	w6, [x0]
 45c:	17ffffe1 	b	3e0 <main+0x3e0>
 460:	90000000 	adrp	x0, 1 <main+0x1>
 464:	f9400000 	ldr	x0, [x0]
 468:	3900001f 	strb	wzr, [x0]
 46c:	f94002c4 	ldr	x4, [x22]
 470:	17ffffdc 	b	3e0 <main+0x3e0>
 474:	90000000 	adrp	x0, 1 <main+0x1>
 478:	52800024 	mov	w4, #0x1                   	// #1
 47c:	f9400000 	ldr	x0, [x0]
 480:	39000004 	strb	w4, [x0]
 484:	f94002c4 	ldr	x4, [x22]
 488:	17ffffd6 	b	3e0 <main+0x3e0>
 48c:	f94002f7 	ldr	x23, [x23]
 490:	f94002e0 	ldr	x0, [x23]
 494:	94000000 	bl	0 <main>
 498:	52800000 	mov	w0, #0x0                   	// #0
 49c:	94000000 	bl	0 <exit>
 4a0:	90000000 	adrp	x0, 1 <main+0x1>
 4a4:	52800024 	mov	w4, #0x1                   	// #1
 4a8:	f9400000 	ldr	x0, [x0]
 4ac:	39000004 	strb	w4, [x0]
 4b0:	f94002c4 	ldr	x4, [x22]
 4b4:	17ffffcb 	b	3e0 <main+0x3e0>
 4b8:	f94002a0 	ldr	x0, [x21]
 4bc:	52800106 	mov	w6, #0x8                   	// #8
 4c0:	b9000006 	str	w6, [x0]
 4c4:	17ffffc7 	b	3e0 <main+0x3e0>
 4c8:	f94002a0 	ldr	x0, [x21]
 4cc:	528000e6 	mov	w6, #0x7                   	// #7
 4d0:	b9000006 	str	w6, [x0]
 4d4:	17ffffc3 	b	3e0 <main+0x3e0>
 4d8:	f94002a0 	ldr	x0, [x21]
 4dc:	528000c6 	mov	w6, #0x6                   	// #6
 4e0:	b9000006 	str	w6, [x0]
 4e4:	17ffffbf 	b	3e0 <main+0x3e0>
 4e8:	f94002a0 	ldr	x0, [x21]
 4ec:	528000a6 	mov	w6, #0x5                   	// #5
 4f0:	b9000006 	str	w6, [x0]
 4f4:	17ffffbb 	b	3e0 <main+0x3e0>
 4f8:	f94002a0 	ldr	x0, [x21]
 4fc:	52800086 	mov	w6, #0x4                   	// #4
 500:	b9000006 	str	w6, [x0]
 504:	17ffffb7 	b	3e0 <main+0x3e0>
 508:	f94002a0 	ldr	x0, [x21]
 50c:	52800066 	mov	w6, #0x3                   	// #3
 510:	b9000006 	str	w6, [x0]
 514:	17ffffb3 	b	3e0 <main+0x3e0>
 518:	f94002a0 	ldr	x0, [x21]
 51c:	52800046 	mov	w6, #0x2                   	// #2
 520:	b9000006 	str	w6, [x0]
 524:	17ffffaf 	b	3e0 <main+0x3e0>
 528:	f94002a0 	ldr	x0, [x21]
 52c:	52800026 	mov	w6, #0x1                   	// #1
 530:	b9000006 	str	w6, [x0]
 534:	17ffffab 	b	3e0 <main+0x3e0>
 538:	52800033 	mov	w19, #0x1                   	// #1
 53c:	17ffff40 	b	23c <main+0x23c>
 540:	f9400339 	ldr	x25, [x25]
 544:	b9400320 	ldr	w0, [x25]
 548:	7100101f 	cmp	w0, #0x4
 54c:	5400006d 	b.le	558 <main+0x558>
 550:	52800080 	mov	w0, #0x4                   	// #4
 554:	b9000320 	str	w0, [x25]
 558:	f9400280 	ldr	x0, [x20]
 55c:	f9400261 	ldr	x1, [x19]
 560:	b9400000 	ldr	w0, [x0]
 564:	b9400022 	ldr	w2, [x1]
 568:	7100041f 	cmp	w0, #0x1
 56c:	54001800 	b.eq	86c <main+0x86c>  // b.none
 570:	71000c1f 	cmp	w0, #0x3
 574:	54001201 	b.ne	7b4 <main+0x7b4>  // b.any
 578:	7100085f 	cmp	w2, #0x2
 57c:	54003620 	b.eq	c40 <main+0xc40>  // b.none
 580:	f94002b5 	ldr	x21, [x21]
 584:	f9400261 	ldr	x1, [x19]
 588:	b90002bf 	str	wzr, [x21]
 58c:	b9400021 	ldr	w1, [x1]
 590:	71000c3f 	cmp	w1, #0x3
 594:	540022a0 	b.eq	9e8 <main+0x9e8>  // b.none
 598:	f9400273 	ldr	x19, [x19]
 59c:	7100081f 	cmp	w0, #0x2
 5a0:	b9400261 	ldr	w1, [x19]
 5a4:	54001d60 	b.eq	950 <main+0x950>  // b.none
 5a8:	90000000 	adrp	x0, 1 <main+0x1>
 5ac:	7100043f 	cmp	w1, #0x1
 5b0:	f9400000 	ldr	x0, [x0]
 5b4:	3900001f 	strb	wzr, [x0]
 5b8:	54001180 	b.eq	7e8 <main+0x7e8>  // b.none
 5bc:	f9403bf3 	ldr	x19, [sp, #112]
 5c0:	b4001353 	cbz	x19, 828 <main+0x828>
 5c4:	90000000 	adrp	x0, 4 <main+0x4>
 5c8:	52800035 	mov	w21, #0x1                   	// #1
 5cc:	f9400014 	ldr	x20, [x0]
 5d0:	14000009 	b	5f4 <main+0x5f4>
 5d4:	39400401 	ldrb	w1, [x0, #1]
 5d8:	7100b43f 	cmp	w1, #0x2d
 5dc:	54000141 	b.ne	604 <main+0x604>  // b.any
 5e0:	39400801 	ldrb	w1, [x0, #2]
 5e4:	35000101 	cbnz	w1, 604 <main+0x604>
 5e8:	52800015 	mov	w21, #0x0                   	// #0
 5ec:	f9400673 	ldr	x19, [x19, #8]
 5f0:	b4001013 	cbz	x19, 7f0 <main+0x7f0>
 5f4:	f9400260 	ldr	x0, [x19]
 5f8:	39400001 	ldrb	w1, [x0]
 5fc:	7100b43f 	cmp	w1, #0x2d
 600:	54fffea0 	b.eq	5d4 <main+0x5d4>  // b.none
 604:	39400001 	ldrb	w1, [x0]
 608:	7100b43f 	cmp	w1, #0x2d
 60c:	1a9f02a1 	csel	w1, w21, wzr, eq  // eq = none
 610:	350018e1 	cbnz	w1, 92c <main+0x92c>
 614:	b9400281 	ldr	w1, [x20]
 618:	11000421 	add	w1, w1, #0x1
 61c:	b9000281 	str	w1, [x20]
 620:	94000000 	bl	0 <main>
 624:	17fffff2 	b	5ec <main+0x5ec>
 628:	f9403bfc 	ldr	x28, [sp, #112]
 62c:	b4fff8bc 	cbz	x28, 540 <main+0x540>
 630:	90000016 	adrp	x22, 0 <main>
 634:	90000018 	adrp	x24, 0 <main>
 638:	910002d6 	add	x22, x22, #0x0
 63c:	91000318 	add	x24, x24, #0x0
 640:	14000006 	b	658 <main+0x658>
 644:	f9400260 	ldr	x0, [x19]
 648:	52800041 	mov	w1, #0x2                   	// #2
 64c:	b9000001 	str	w1, [x0]
 650:	f940079c 	ldr	x28, [x28, #8]
 654:	b4fff77c 	cbz	x28, 540 <main+0x540>
 658:	f940039b 	ldr	x27, [x28]
 65c:	39400360 	ldrb	w0, [x27]
 660:	7100b41f 	cmp	w0, #0x2d
 664:	540000e1 	b.ne	680 <main+0x680>  // b.any
 668:	39400760 	ldrb	w0, [x27, #1]
 66c:	7100b41f 	cmp	w0, #0x2d
 670:	54000081 	b.ne	680 <main+0x680>  // b.any
 674:	39400b60 	ldrb	w0, [x27, #2]
 678:	34fff640 	cbz	w0, 540 <main+0x540>
 67c:	d503201f 	nop
 680:	aa1603e1 	mov	x1, x22
 684:	aa1b03e0 	mov	x0, x27
 688:	94000000 	bl	0 <strcmp>
 68c:	34fffdc0 	cbz	w0, 644 <main+0x644>
 690:	aa1803e1 	mov	x1, x24
 694:	aa1b03e0 	mov	x0, x27
 698:	94000000 	bl	0 <strcmp>
 69c:	350000a0 	cbnz	w0, 6b0 <main+0x6b0>
 6a0:	f9400280 	ldr	x0, [x20]
 6a4:	52800041 	mov	w1, #0x2                   	// #2
 6a8:	b9000001 	str	w1, [x0]
 6ac:	17ffffe9 	b	650 <main+0x650>
 6b0:	90000000 	adrp	x0, 0 <main>
 6b4:	91000001 	add	x1, x0, #0x0
 6b8:	aa1b03e0 	mov	x0, x27
 6bc:	94000000 	bl	0 <strcmp>
 6c0:	350000a0 	cbnz	w0, 6d4 <main+0x6d4>
 6c4:	f9400280 	ldr	x0, [x20]
 6c8:	52800021 	mov	w1, #0x1                   	// #1
 6cc:	b9000001 	str	w1, [x0]
 6d0:	17ffffe0 	b	650 <main+0x650>
 6d4:	90000001 	adrp	x1, 0 <main>
 6d8:	aa1b03e0 	mov	x0, x27
 6dc:	91000021 	add	x1, x1, #0x0
 6e0:	94000000 	bl	0 <strcmp>
 6e4:	350000c0 	cbnz	w0, 6fc <main+0x6fc>
 6e8:	90000000 	adrp	x0, 1 <main+0x1>
 6ec:	52800021 	mov	w1, #0x1                   	// #1
 6f0:	f9400000 	ldr	x0, [x0]
 6f4:	39000001 	strb	w1, [x0]
 6f8:	17ffffd6 	b	650 <main+0x650>
 6fc:	90000001 	adrp	x1, 0 <main>
 700:	aa1b03e0 	mov	x0, x27
 704:	91000021 	add	x1, x1, #0x0
 708:	94000000 	bl	0 <strcmp>
 70c:	35000360 	cbnz	w0, 778 <main+0x778>
 710:	f9400280 	ldr	x0, [x20]
 714:	52800061 	mov	w1, #0x3                   	// #3
 718:	b9000001 	str	w1, [x0]
 71c:	17ffffcd 	b	650 <main+0x650>
 720:	90000001 	adrp	x1, 0 <main>
 724:	aa1803e0 	mov	x0, x24
 728:	91000021 	add	x1, x1, #0x0
 72c:	94000000 	bl	0 <strstr>
 730:	b5ffdde0 	cbnz	x0, 2ec <main+0x2ec>
 734:	90000001 	adrp	x1, 0 <main>
 738:	aa1803e0 	mov	x0, x24
 73c:	91000021 	add	x1, x1, #0x0
 740:	94000000 	bl	0 <strstr>
 744:	b5ffdd40 	cbnz	x0, 2ec <main+0x2ec>
 748:	90000001 	adrp	x1, 0 <main>
 74c:	aa1803e0 	mov	x0, x24
 750:	91000021 	add	x1, x1, #0x0
 754:	94000000 	bl	0 <strstr>
 758:	b5ffdca0 	cbnz	x0, 2ec <main+0x2ec>
 75c:	17fffeec 	b	30c <main+0x30c>
 760:	90000001 	adrp	x1, 0 <main>
 764:	aa1803e0 	mov	x0, x24
 768:	91000021 	add	x1, x1, #0x0
 76c:	94000000 	bl	0 <strstr>
 770:	b5ffdae0 	cbnz	x0, 2cc <main+0x2cc>
 774:	17fffed9 	b	2d8 <main+0x2d8>
 778:	90000001 	adrp	x1, 0 <main>
 77c:	aa1b03e0 	mov	x0, x27
 780:	91000021 	add	x1, x1, #0x0
 784:	94000000 	bl	0 <strcmp>
 788:	34000260 	cbz	w0, 7d4 <main+0x7d4>
 78c:	90000001 	adrp	x1, 0 <main>
 790:	aa1b03e0 	mov	x0, x27
 794:	91000021 	add	x1, x1, #0x0
 798:	94000000 	bl	0 <strcmp>
 79c:	350014a0 	cbnz	w0, a30 <main+0xa30>
 7a0:	90000000 	adrp	x0, 1 <main+0x1>
 7a4:	52800021 	mov	w1, #0x1                   	// #1
 7a8:	f9400000 	ldr	x0, [x0]
 7ac:	39000001 	strb	w1, [x0]
 7b0:	17ffffa8 	b	650 <main+0x650>
 7b4:	7100085f 	cmp	w2, #0x2
 7b8:	54ffee41 	b.ne	580 <main+0x580>  // b.any
 7bc:	f940035a 	ldr	x26, [x26]
 7c0:	b9400342 	ldr	w2, [x26]
 7c4:	350017e2 	cbnz	w2, ac0 <main+0xac0>
 7c8:	52800022 	mov	w2, #0x1                   	// #1
 7cc:	b9000022 	str	w2, [x1]
 7d0:	17ffff6c 	b	580 <main+0x580>
 7d4:	90000000 	adrp	x0, 1 <main+0x1>
 7d8:	52800021 	mov	w1, #0x1                   	// #1
 7dc:	f9400000 	ldr	x0, [x0]
 7e0:	39000001 	strb	w1, [x0]
 7e4:	17ffff9b 	b	650 <main+0x650>
 7e8:	d2800000 	mov	x0, #0x0                   	// #0
 7ec:	94000000 	bl	0 <main>
 7f0:	90000000 	adrp	x0, 1 <main+0x1>
 7f4:	f9400000 	ldr	x0, [x0]
 7f8:	39400000 	ldrb	w0, [x0]
 7fc:	35001d40 	cbnz	w0, ba4 <main+0xba4>
 800:	f9403bf3 	ldr	x19, [sp, #112]
 804:	b4000133 	cbz	x19, 828 <main+0x828>
 808:	aa1303f4 	mov	x20, x19
 80c:	f9400673 	ldr	x19, [x19, #8]
 810:	f9400280 	ldr	x0, [x20]
 814:	b4000040 	cbz	x0, 81c <main+0x81c>
 818:	94000000 	bl	0 <free>
 81c:	aa1403e0 	mov	x0, x20
 820:	94000000 	bl	0 <free>
 824:	b5ffff33 	cbnz	x19, 808 <main+0x808>
 828:	90000000 	adrp	x0, 4 <main+0x4>
 82c:	90000001 	adrp	x1, 0 <__stack_chk_guard>
 830:	f9400000 	ldr	x0, [x0]
 834:	f9400021 	ldr	x1, [x1]
 838:	b9400000 	ldr	w0, [x0]
 83c:	f9403fe2 	ldr	x2, [sp, #120]
 840:	f9400023 	ldr	x3, [x1]
 844:	eb030042 	subs	x2, x2, x3
 848:	d2800003 	mov	x3, #0x0                   	// #0
 84c:	54001f81 	b.ne	c3c <main+0xc3c>  // b.any
 850:	a94153f3 	ldp	x19, x20, [sp, #16]
 854:	a9425bf5 	ldp	x21, x22, [sp, #32]
 858:	a94363f7 	ldp	x23, x24, [sp, #48]
 85c:	a9446bf9 	ldp	x25, x26, [sp, #64]
 860:	a94573fb 	ldp	x27, x28, [sp, #80]
 864:	a8c87bfd 	ldp	x29, x30, [sp], #128
 868:	d65f03c0 	ret
 86c:	90000000 	adrp	x0, 1 <main+0x1>
 870:	f940001b 	ldr	x27, [x0]
 874:	39400360 	ldrb	w0, [x27]
 878:	340000a0 	cbz	w0, 88c <main+0x88c>
 87c:	f94002b5 	ldr	x21, [x21]
 880:	b94002a0 	ldr	w0, [x21]
 884:	7100081f 	cmp	w0, #0x2
 888:	5400106c 	b.gt	a94 <main+0xa94>
 88c:	7100085f 	cmp	w2, #0x2
 890:	54000081 	b.ne	8a0 <main+0x8a0>  // b.any
 894:	f940035a 	ldr	x26, [x26]
 898:	b9400340 	ldr	w0, [x26]
 89c:	34001020 	cbz	w0, aa0 <main+0xaa0>
 8a0:	f9400260 	ldr	x0, [x19]
 8a4:	b9400000 	ldr	w0, [x0]
 8a8:	71000c1f 	cmp	w0, #0x3
 8ac:	540009e0 	b.eq	9e8 <main+0x9e8>  // b.none
 8b0:	f9400273 	ldr	x19, [x19]
 8b4:	b9400260 	ldr	w0, [x19]
 8b8:	7100041f 	cmp	w0, #0x1
 8bc:	54001080 	b.eq	acc <main+0xacc>  // b.none
 8c0:	f9403bf3 	ldr	x19, [sp, #112]
 8c4:	90000000 	adrp	x0, 4 <main+0x4>
 8c8:	52800035 	mov	w21, #0x1                   	// #1
 8cc:	f9400014 	ldr	x20, [x0]
 8d0:	b5000153 	cbnz	x19, 8f8 <main+0x8f8>
 8d4:	17ffffd5 	b	828 <main+0x828>
 8d8:	39400401 	ldrb	w1, [x0, #1]
 8dc:	7100b43f 	cmp	w1, #0x2d
 8e0:	54000141 	b.ne	908 <main+0x908>  // b.any
 8e4:	39400801 	ldrb	w1, [x0, #2]
 8e8:	35000101 	cbnz	w1, 908 <main+0x908>
 8ec:	52800015 	mov	w21, #0x0                   	// #0
 8f0:	f9400673 	ldr	x19, [x19, #8]
 8f4:	b4fff873 	cbz	x19, 800 <main+0x800>
 8f8:	f9400260 	ldr	x0, [x19]
 8fc:	39400001 	ldrb	w1, [x0]
 900:	7100b43f 	cmp	w1, #0x2d
 904:	54fffea0 	b.eq	8d8 <main+0x8d8>  // b.none
 908:	39400001 	ldrb	w1, [x0]
 90c:	7100b43f 	cmp	w1, #0x2d
 910:	1a9f02a1 	csel	w1, w21, wzr, eq  // eq = none
 914:	350001a1 	cbnz	w1, 948 <main+0x948>
 918:	b9400281 	ldr	w1, [x20]
 91c:	11000421 	add	w1, w1, #0x1
 920:	b9000281 	str	w1, [x20]
 924:	94000000 	bl	0 <main>
 928:	17fffff2 	b	8f0 <main+0x8f0>
 92c:	52800035 	mov	w21, #0x1                   	// #1
 930:	17ffff2f 	b	5ec <main+0x5ec>
 934:	f9403bf6 	ldr	x22, [sp, #112]
 938:	17fffe2f 	b	1f4 <main+0x1f4>
 93c:	5280001b 	mov	w27, #0x0                   	// #0
 940:	52800021 	mov	w1, #0x1                   	// #1
 944:	17fffe54 	b	294 <main+0x294>
 948:	52800035 	mov	w21, #0x1                   	// #1
 94c:	17ffffe9 	b	8f0 <main+0x8f0>
 950:	90000000 	adrp	x0, 1 <main+0x1>
 954:	7100043f 	cmp	w1, #0x1
 958:	f9400000 	ldr	x0, [x0]
 95c:	3900001f 	strb	wzr, [x0]
 960:	54000360 	b.eq	9cc <main+0x9cc>  // b.none
 964:	f9403bf3 	ldr	x19, [sp, #112]
 968:	b4fff613 	cbz	x19, 828 <main+0x828>
 96c:	90000000 	adrp	x0, 4 <main+0x4>
 970:	90000001 	adrp	x1, 0 <main>
 974:	52800036 	mov	w22, #0x1                   	// #1
 978:	91000035 	add	x21, x1, #0x0
 97c:	f9400017 	ldr	x23, [x0]
 980:	1400000c 	b	9b0 <main+0x9b0>
 984:	39400280 	ldrb	w0, [x20]
 988:	7100b41f 	cmp	w0, #0x2d
 98c:	1a9f02c0 	csel	w0, w22, wzr, eq  // eq = none
 990:	350004c0 	cbnz	w0, a28 <main+0xa28>
 994:	b94002e1 	ldr	w1, [x23]
 998:	aa1403e0 	mov	x0, x20
 99c:	11000421 	add	w1, w1, #0x1
 9a0:	b90002e1 	str	w1, [x23]
 9a4:	94000000 	bl	0 <main>
 9a8:	f9400673 	ldr	x19, [x19, #8]
 9ac:	b4000153 	cbz	x19, 9d4 <main+0x9d4>
 9b0:	f9400274 	ldr	x20, [x19]
 9b4:	aa1503e1 	mov	x1, x21
 9b8:	aa1403e0 	mov	x0, x20
 9bc:	94000000 	bl	0 <strcmp>
 9c0:	35fffe20 	cbnz	w0, 984 <main+0x984>
 9c4:	52800016 	mov	w22, #0x0                   	// #0
 9c8:	17fffff8 	b	9a8 <main+0x9a8>
 9cc:	d2800000 	mov	x0, #0x0                   	// #0
 9d0:	94000000 	bl	0 <main>
 9d4:	90000000 	adrp	x0, 1 <main+0x1>
 9d8:	f9400000 	ldr	x0, [x0]
 9dc:	39400000 	ldrb	w0, [x0]
 9e0:	34fff100 	cbz	w0, 800 <main+0x800>
 9e4:	14000074 	b	bb4 <main+0xbb4>
 9e8:	90000015 	adrp	x21, 0 <main>
 9ec:	910002b5 	add	x21, x21, #0x0
 9f0:	aa1503e1 	mov	x1, x21
 9f4:	52800040 	mov	w0, #0x2                   	// #2
 9f8:	94000000 	bl	0 <signal>
 9fc:	aa1503e1 	mov	x1, x21
 a00:	528001e0 	mov	w0, #0xf                   	// #15
 a04:	94000000 	bl	0 <signal>
 a08:	aa1503e1 	mov	x1, x21
 a0c:	52800020 	mov	w0, #0x1                   	// #1
 a10:	94000000 	bl	0 <signal>
 a14:	f9400294 	ldr	x20, [x20]
 a18:	b9400280 	ldr	w0, [x20]
 a1c:	7100041f 	cmp	w0, #0x1
 a20:	54ffdbc1 	b.ne	598 <main+0x598>  // b.any
 a24:	17ffffa3 	b	8b0 <main+0x8b0>
 a28:	52800036 	mov	w22, #0x1                   	// #1
 a2c:	17ffffdf 	b	9a8 <main+0x9a8>
 a30:	90000001 	adrp	x1, 0 <main>
 a34:	aa1b03e0 	mov	x0, x27
 a38:	91000021 	add	x1, x1, #0x0
 a3c:	94000000 	bl	0 <strcmp>
 a40:	34000380 	cbz	w0, ab0 <main+0xab0>
 a44:	90000001 	adrp	x1, 0 <main>
 a48:	aa1b03e0 	mov	x0, x27
 a4c:	91000021 	add	x1, x1, #0x0
 a50:	94000000 	bl	0 <strcmp>
 a54:	34000420 	cbz	w0, ad8 <main+0xad8>
 a58:	90000001 	adrp	x1, 0 <main>
 a5c:	aa1b03e0 	mov	x0, x27
 a60:	91000021 	add	x1, x1, #0x0
 a64:	94000000 	bl	0 <strcmp>
 a68:	34000380 	cbz	w0, ad8 <main+0xad8>
 a6c:	90000001 	adrp	x1, 0 <main>
 a70:	aa1b03e0 	mov	x0, x27
 a74:	91000021 	add	x1, x1, #0x0
 a78:	94000000 	bl	0 <strcmp>
 a7c:	35000320 	cbnz	w0, ae0 <main+0xae0>
 a80:	90000000 	adrp	x0, 4 <main+0x4>
 a84:	52800021 	mov	w1, #0x1                   	// #1
 a88:	f9400000 	ldr	x0, [x0]
 a8c:	b9000001 	str	w1, [x0]
 a90:	17fffef0 	b	650 <main+0x650>
 a94:	52800040 	mov	w0, #0x2                   	// #2
 a98:	b90002a0 	str	w0, [x21]
 a9c:	17ffff7c 	b	88c <main+0x88c>
 aa0:	f9400260 	ldr	x0, [x19]
 aa4:	52800021 	mov	w1, #0x1                   	// #1
 aa8:	b9000001 	str	w1, [x0]
 aac:	17ffff81 	b	8b0 <main+0x8b0>
 ab0:	90000000 	adrp	x0, 1 <main+0x1>
 ab4:	f9400000 	ldr	x0, [x0]
 ab8:	3900001f 	strb	wzr, [x0]
 abc:	17fffee5 	b	650 <main+0x650>
 ac0:	7100041f 	cmp	w0, #0x1
 ac4:	54ffd5e1 	b.ne	580 <main+0x580>  // b.any
 ac8:	17ffff76 	b	8a0 <main+0x8a0>
 acc:	d2800000 	mov	x0, #0x0                   	// #0
 ad0:	94000000 	bl	0 <main>
 ad4:	17ffff4b 	b	800 <main+0x800>
 ad8:	94000000 	bl	0 <main>
 adc:	17fffedd 	b	650 <main+0x650>
 ae0:	90000001 	adrp	x1, 0 <main>
 ae4:	aa1b03e0 	mov	x0, x27
 ae8:	91000021 	add	x1, x1, #0x0
 aec:	94000000 	bl	0 <strcmp>
 af0:	340001e0 	cbz	w0, b2c <main+0xb2c>
 af4:	90000001 	adrp	x1, 0 <main>
 af8:	aa1b03e0 	mov	x0, x27
 afc:	91000021 	add	x1, x1, #0x0
 b00:	94000000 	bl	0 <strcmp>
 b04:	34000140 	cbz	w0, b2c <main+0xb2c>
 b08:	90000001 	adrp	x1, 0 <main>
 b0c:	aa1b03e0 	mov	x0, x27
 b10:	91000021 	add	x1, x1, #0x0
 b14:	94000000 	bl	0 <strcmp>
 b18:	35000200 	cbnz	w0, b58 <main+0xb58>
 b1c:	f94002a0 	ldr	x0, [x21]
 b20:	52800021 	mov	w1, #0x1                   	// #1
 b24:	b9000001 	str	w1, [x0]
 b28:	17fffeca 	b	650 <main+0x650>
 b2c:	90000000 	adrp	x0, 0 <stderr>
 b30:	aa1b03e4 	mov	x4, x27
 b34:	f94002e1 	ldr	x1, [x23]
 b38:	90000002 	adrp	x2, 0 <main>
 b3c:	f9400000 	ldr	x0, [x0]
 b40:	91000042 	add	x2, x2, #0x0
 b44:	f9400023 	ldr	x3, [x1]
 b48:	52800021 	mov	w1, #0x1                   	// #1
 b4c:	f9400000 	ldr	x0, [x0]
 b50:	94000000 	bl	0 <__fprintf_chk>
 b54:	17fffebf 	b	650 <main+0x650>
 b58:	90000001 	adrp	x1, 0 <main>
 b5c:	aa1b03e0 	mov	x0, x27
 b60:	91000021 	add	x1, x1, #0x0
 b64:	94000000 	bl	0 <strcmp>
 b68:	350000a0 	cbnz	w0, b7c <main+0xb7c>
 b6c:	f94002a0 	ldr	x0, [x21]
 b70:	52800121 	mov	w1, #0x9                   	// #9
 b74:	b9000001 	str	w1, [x0]
 b78:	17fffeb6 	b	650 <main+0x650>
 b7c:	90000001 	adrp	x1, 0 <main>
 b80:	aa1b03e0 	mov	x0, x27
 b84:	91000021 	add	x1, x1, #0x0
 b88:	94000000 	bl	0 <strcmp>
 b8c:	350003c0 	cbnz	w0, c04 <main+0xc04>
 b90:	f9400321 	ldr	x1, [x25]
 b94:	b9400020 	ldr	w0, [x1]
 b98:	11000400 	add	w0, w0, #0x1
 b9c:	b9000020 	str	w0, [x1]
 ba0:	17fffeac 	b	650 <main+0x650>
 ba4:	90000000 	adrp	x0, 1 <main+0x1>
 ba8:	f9400000 	ldr	x0, [x0]
 bac:	39400000 	ldrb	w0, [x0]
 bb0:	35000180 	cbnz	w0, be0 <main+0xbe0>
 bb4:	90000000 	adrp	x0, 4 <main+0x4>
 bb8:	f9400000 	ldr	x0, [x0]
 bbc:	b9400001 	ldr	w1, [x0]
 bc0:	7100043f 	cmp	w1, #0x1
 bc4:	5400006c 	b.gt	bd0 <main+0xbd0>
 bc8:	52800041 	mov	w1, #0x2                   	// #2
 bcc:	b9000001 	str	w1, [x0]
 bd0:	90000000 	adrp	x0, 4 <main+0x4>
 bd4:	f9400000 	ldr	x0, [x0]
 bd8:	b9400000 	ldr	w0, [x0]
 bdc:	94000000 	bl	0 <exit>
 be0:	90000003 	adrp	x3, 0 <stderr>
 be4:	90000000 	adrp	x0, 0 <main>
 be8:	d2800e02 	mov	x2, #0x70                  	// #112
 bec:	d2800021 	mov	x1, #0x1                   	// #1
 bf0:	f9400063 	ldr	x3, [x3]
 bf4:	91000000 	add	x0, x0, #0x0
 bf8:	f9400063 	ldr	x3, [x3]
 bfc:	94000000 	bl	0 <fwrite>
 c00:	17ffffed 	b	bb4 <main+0xbb4>
 c04:	90000001 	adrp	x1, 0 <main>
 c08:	aa1b03e0 	mov	x0, x27
 c0c:	91000021 	add	x1, x1, #0x0
 c10:	94000000 	bl	0 <strcmp>
 c14:	34ffc3c0 	cbz	w0, 48c <main+0x48c>
 c18:	90000001 	adrp	x1, 0 <main>
 c1c:	aa1b03e0 	mov	x0, x27
 c20:	91000021 	add	x1, x1, #0x0
 c24:	d2800042 	mov	x2, #0x2                   	// #2
 c28:	94000000 	bl	0 <strncmp>
 c2c:	35ffd120 	cbnz	w0, 650 <main+0x650>
 c30:	aa1b03e4 	mov	x4, x27
 c34:	90000000 	adrp	x0, 0 <stderr>
 c38:	17fffdd4 	b	388 <main+0x388>
 c3c:	94000000 	bl	0 <__stack_chk_fail>
 c40:	90000000 	adrp	x0, 0 <stderr>
 c44:	90000002 	adrp	x2, 0 <main>
 c48:	f94002f7 	ldr	x23, [x23]
 c4c:	91000042 	add	x2, x2, #0x0
 c50:	f9400000 	ldr	x0, [x0]
 c54:	52800021 	mov	w1, #0x1                   	// #1
 c58:	f94002e3 	ldr	x3, [x23]
 c5c:	f9400000 	ldr	x0, [x0]
 c60:	94000000 	bl	0 <__fprintf_chk>
 c64:	52800020 	mov	w0, #0x1                   	// #1
 c68:	94000000 	bl	0 <exit>
