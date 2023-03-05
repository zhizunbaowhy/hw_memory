
benchmark.out：     文件格式 elf64-littleaarch64


Disassembly of section .init:

0000000000400c68 <_init>:
  400c68:	d503233f 	paciasp
  400c6c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400c70:	910003fd 	mov	x29, sp
  400c74:	940000c5 	bl	400f88 <call_weak_fn>
  400c78:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400c7c:	d50323bf 	autiasp
  400c80:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400c90 <.plt>:
  400c90:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  400c94:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1c594>
  400c98:	f947fe11 	ldr	x17, [x16, #4088]
  400c9c:	913fe210 	add	x16, x16, #0xff8
  400ca0:	d61f0220 	br	x17
  400ca4:	d503201f 	nop
  400ca8:	d503201f 	nop
  400cac:	d503201f 	nop

0000000000400cb0 <strlen@plt>:
  400cb0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400cb4:	f9400211 	ldr	x17, [x16]
  400cb8:	91000210 	add	x16, x16, #0x0
  400cbc:	d61f0220 	br	x17

0000000000400cc0 <exit@plt>:
  400cc0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400cc4:	f9400611 	ldr	x17, [x16, #8]
  400cc8:	91002210 	add	x16, x16, #0x8
  400ccc:	d61f0220 	br	x17

0000000000400cd0 <__libc_start_main@plt>:
  400cd0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400cd4:	f9400a11 	ldr	x17, [x16, #16]
  400cd8:	91004210 	add	x16, x16, #0x10
  400cdc:	d61f0220 	br	x17

0000000000400ce0 <execl@plt>:
  400ce0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400ce4:	f9400e11 	ldr	x17, [x16, #24]
  400ce8:	91006210 	add	x16, x16, #0x18
  400cec:	d61f0220 	br	x17

0000000000400cf0 <perror@plt>:
  400cf0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400cf4:	f9401211 	ldr	x17, [x16, #32]
  400cf8:	91008210 	add	x16, x16, #0x20
  400cfc:	d61f0220 	br	x17

0000000000400d00 <listen@plt>:
  400d00:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400d04:	f9401611 	ldr	x17, [x16, #40]
  400d08:	9100a210 	add	x16, x16, #0x28
  400d0c:	d61f0220 	br	x17

0000000000400d10 <htonl@plt>:
  400d10:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400d14:	f9401a11 	ldr	x17, [x16, #48]
  400d18:	9100c210 	add	x16, x16, #0x30
  400d1c:	d61f0220 	br	x17

0000000000400d20 <bind@plt>:
  400d20:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400d24:	f9401e11 	ldr	x17, [x16, #56]
  400d28:	9100e210 	add	x16, x16, #0x38
  400d2c:	d61f0220 	br	x17

0000000000400d30 <sprintf@plt>:
  400d30:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400d34:	f9402211 	ldr	x17, [x16, #64]
  400d38:	91010210 	add	x16, x16, #0x40
  400d3c:	d61f0220 	br	x17

0000000000400d40 <pipe@plt>:
  400d40:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400d44:	f9402611 	ldr	x17, [x16, #72]
  400d48:	91012210 	add	x16, x16, #0x48
  400d4c:	d61f0220 	br	x17

0000000000400d50 <fork@plt>:
  400d50:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400d54:	f9402a11 	ldr	x17, [x16, #80]
  400d58:	91014210 	add	x16, x16, #0x50
  400d5c:	d61f0220 	br	x17

0000000000400d60 <fclose@plt>:
  400d60:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400d64:	f9402e11 	ldr	x17, [x16, #88]
  400d68:	91016210 	add	x16, x16, #0x58
  400d6c:	d61f0220 	br	x17

0000000000400d70 <atoi@plt>:
  400d70:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400d74:	f9403211 	ldr	x17, [x16, #96]
  400d78:	91018210 	add	x16, x16, #0x60
  400d7c:	d61f0220 	br	x17

0000000000400d80 <fopen@plt>:
  400d80:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400d84:	f9403611 	ldr	x17, [x16, #104]
  400d88:	9101a210 	add	x16, x16, #0x68
  400d8c:	d61f0220 	br	x17

0000000000400d90 <ntohs@plt>:
  400d90:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400d94:	f9403a11 	ldr	x17, [x16, #112]
  400d98:	9101c210 	add	x16, x16, #0x70
  400d9c:	d61f0220 	br	x17

0000000000400da0 <setsockopt@plt>:
  400da0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400da4:	f9403e11 	ldr	x17, [x16, #120]
  400da8:	9101e210 	add	x16, x16, #0x78
  400dac:	d61f0220 	br	x17

0000000000400db0 <memset@plt>:
  400db0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400db4:	f9404211 	ldr	x17, [x16, #128]
  400db8:	91020210 	add	x16, x16, #0x80
  400dbc:	d61f0220 	br	x17

0000000000400dc0 <accept@plt>:
  400dc0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400dc4:	f9404611 	ldr	x17, [x16, #136]
  400dc8:	91022210 	add	x16, x16, #0x88
  400dcc:	d61f0220 	br	x17

0000000000400dd0 <strcasecmp@plt>:
  400dd0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400dd4:	f9404a11 	ldr	x17, [x16, #144]
  400dd8:	91024210 	add	x16, x16, #0x90
  400ddc:	d61f0220 	br	x17

0000000000400de0 <htons@plt>:
  400de0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400de4:	f9404e11 	ldr	x17, [x16, #152]
  400de8:	91026210 	add	x16, x16, #0x98
  400dec:	d61f0220 	br	x17

0000000000400df0 <putenv@plt>:
  400df0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400df4:	f9405211 	ldr	x17, [x16, #160]
  400df8:	91028210 	add	x16, x16, #0xa0
  400dfc:	d61f0220 	br	x17

0000000000400e00 <close@plt>:
  400e00:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400e04:	f9405611 	ldr	x17, [x16, #168]
  400e08:	9102a210 	add	x16, x16, #0xa8
  400e0c:	d61f0220 	br	x17

0000000000400e10 <recv@plt>:
  400e10:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400e14:	f9405a11 	ldr	x17, [x16, #176]
  400e18:	9102c210 	add	x16, x16, #0xb0
  400e1c:	d61f0220 	br	x17

0000000000400e20 <__gmon_start__@plt>:
  400e20:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400e24:	f9405e11 	ldr	x17, [x16, #184]
  400e28:	9102e210 	add	x16, x16, #0xb8
  400e2c:	d61f0220 	br	x17

0000000000400e30 <stat@plt>:
  400e30:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400e34:	f9406211 	ldr	x17, [x16, #192]
  400e38:	91030210 	add	x16, x16, #0xc0
  400e3c:	d61f0220 	br	x17

0000000000400e40 <write@plt>:
  400e40:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400e44:	f9406611 	ldr	x17, [x16, #200]
  400e48:	91032210 	add	x16, x16, #0xc8
  400e4c:	d61f0220 	br	x17

0000000000400e50 <abort@plt>:
  400e50:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400e54:	f9406a11 	ldr	x17, [x16, #208]
  400e58:	91034210 	add	x16, x16, #0xd0
  400e5c:	d61f0220 	br	x17

0000000000400e60 <feof@plt>:
  400e60:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400e64:	f9406e11 	ldr	x17, [x16, #216]
  400e68:	91036210 	add	x16, x16, #0xd8
  400e6c:	d61f0220 	br	x17

0000000000400e70 <strcmp@plt>:
  400e70:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400e74:	f9407211 	ldr	x17, [x16, #224]
  400e78:	91038210 	add	x16, x16, #0xe0
  400e7c:	d61f0220 	br	x17

0000000000400e80 <__ctype_b_loc@plt>:
  400e80:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400e84:	f9407611 	ldr	x17, [x16, #232]
  400e88:	9103a210 	add	x16, x16, #0xe8
  400e8c:	d61f0220 	br	x17

0000000000400e90 <send@plt>:
  400e90:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400e94:	f9407a11 	ldr	x17, [x16, #240]
  400e98:	9103c210 	add	x16, x16, #0xf0
  400e9c:	d61f0220 	br	x17

0000000000400ea0 <socket@plt>:
  400ea0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400ea4:	f9407e11 	ldr	x17, [x16, #248]
  400ea8:	9103e210 	add	x16, x16, #0xf8
  400eac:	d61f0220 	br	x17

0000000000400eb0 <read@plt>:
  400eb0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400eb4:	f9408211 	ldr	x17, [x16, #256]
  400eb8:	91040210 	add	x16, x16, #0x100
  400ebc:	d61f0220 	br	x17

0000000000400ec0 <dup2@plt>:
  400ec0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400ec4:	f9408611 	ldr	x17, [x16, #264]
  400ec8:	91042210 	add	x16, x16, #0x108
  400ecc:	d61f0220 	br	x17

0000000000400ed0 <printf@plt>:
  400ed0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400ed4:	f9408a11 	ldr	x17, [x16, #272]
  400ed8:	91044210 	add	x16, x16, #0x110
  400edc:	d61f0220 	br	x17

0000000000400ee0 <getsockname@plt>:
  400ee0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400ee4:	f9408e11 	ldr	x17, [x16, #280]
  400ee8:	91046210 	add	x16, x16, #0x118
  400eec:	d61f0220 	br	x17

0000000000400ef0 <waitpid@plt>:
  400ef0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400ef4:	f9409211 	ldr	x17, [x16, #288]
  400ef8:	91048210 	add	x16, x16, #0x120
  400efc:	d61f0220 	br	x17

0000000000400f00 <fgets@plt>:
  400f00:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400f04:	f9409611 	ldr	x17, [x16, #296]
  400f08:	9104a210 	add	x16, x16, #0x128
  400f0c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000400f40 <_start>:
  400f40:	d503245f 	bti	c
  400f44:	d280001d 	mov	x29, #0x0                   	// #0
  400f48:	d280001e 	mov	x30, #0x0                   	// #0
  400f4c:	aa0003e5 	mov	x5, x0
  400f50:	f94003e1 	ldr	x1, [sp]
  400f54:	910023e2 	add	x2, sp, #0x8
  400f58:	910003e6 	mov	x6, sp
  400f5c:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400f60:	913dd000 	add	x0, x0, #0xf74
  400f64:	d2800003 	mov	x3, #0x0                   	// #0
  400f68:	d2800004 	mov	x4, #0x0                   	// #0
  400f6c:	97ffff59 	bl	400cd0 <__libc_start_main@plt>
  400f70:	97ffffb8 	bl	400e50 <abort@plt>

0000000000400f74 <__wrap_main>:
  400f74:	d503245f 	bti	c
  400f78:	140004dc 	b	4022e8 <main>

0000000000400f7c <.annobin_abi_note.c>:
  400f7c:	d503201f 	nop

0000000000400f80 <_dl_relocate_static_pie>:
  400f80:	d503245f 	bti	c
  400f84:	d65f03c0 	ret

0000000000400f88 <call_weak_fn>:
  400f88:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1c594>
  400f8c:	f947ec00 	ldr	x0, [x0, #4056]
  400f90:	b4000040 	cbz	x0, 400f98 <call_weak_fn+0x10>
  400f94:	17ffffa3 	b	400e20 <__gmon_start__@plt>
  400f98:	d65f03c0 	ret
  400f9c:	d503201f 	nop

0000000000400fa0 <deregister_tm_clones>:
  400fa0:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400fa4:	9104e000 	add	x0, x0, #0x138
  400fa8:	90000101 	adrp	x1, 420000 <strlen@GLIBC_2.17>
  400fac:	9104e021 	add	x1, x1, #0x138
  400fb0:	eb00003f 	cmp	x1, x0
  400fb4:	540000c0 	b.eq	400fcc <deregister_tm_clones+0x2c>  // b.none
  400fb8:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1c594>
  400fbc:	f947e821 	ldr	x1, [x1, #4048]
  400fc0:	b4000061 	cbz	x1, 400fcc <deregister_tm_clones+0x2c>
  400fc4:	aa0103f0 	mov	x16, x1
  400fc8:	d61f0200 	br	x16
  400fcc:	d65f03c0 	ret

0000000000400fd0 <register_tm_clones>:
  400fd0:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400fd4:	9104e000 	add	x0, x0, #0x138
  400fd8:	90000101 	adrp	x1, 420000 <strlen@GLIBC_2.17>
  400fdc:	9104e021 	add	x1, x1, #0x138
  400fe0:	cb000021 	sub	x1, x1, x0
  400fe4:	d37ffc22 	lsr	x2, x1, #63
  400fe8:	8b810c41 	add	x1, x2, x1, asr #3
  400fec:	9341fc21 	asr	x1, x1, #1
  400ff0:	b40000c1 	cbz	x1, 401008 <register_tm_clones+0x38>
  400ff4:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1c594>
  400ff8:	f947f042 	ldr	x2, [x2, #4064]
  400ffc:	b4000062 	cbz	x2, 401008 <register_tm_clones+0x38>
  401000:	aa0203f0 	mov	x16, x2
  401004:	d61f0200 	br	x16
  401008:	d65f03c0 	ret
  40100c:	d503201f 	nop

0000000000401010 <__do_global_dtors_aux>:
  401010:	d503233f 	paciasp
  401014:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  401018:	910003fd 	mov	x29, sp
  40101c:	f9000bf3 	str	x19, [sp, #16]
  401020:	f00000f3 	adrp	x19, 420000 <strlen@GLIBC_2.17>
  401024:	3944d260 	ldrb	w0, [x19, #308]
  401028:	35000080 	cbnz	w0, 401038 <__do_global_dtors_aux+0x28>
  40102c:	97ffffdd 	bl	400fa0 <deregister_tm_clones>
  401030:	52800020 	mov	w0, #0x1                   	// #1
  401034:	3904d260 	strb	w0, [x19, #308]
  401038:	f9400bf3 	ldr	x19, [sp, #16]
  40103c:	a8c27bfd 	ldp	x29, x30, [sp], #32
  401040:	d50323bf 	autiasp
  401044:	d65f03c0 	ret
  401048:	d503201f 	nop
  40104c:	d503201f 	nop

0000000000401050 <frame_dummy>:
  401050:	d503245f 	bti	c
  401054:	17ffffdf 	b	400fd0 <register_tm_clones>

0000000000401058 <accept_request>:
  401058:	d12343ff 	sub	sp, sp, #0x8d0
  40105c:	a9007bfd 	stp	x29, x30, [sp]
  401060:	910003fd 	mov	x29, sp
  401064:	f9000fe0 	str	x0, [sp, #24]
  401068:	f9400fe0 	ldr	x0, [sp, #24]
  40106c:	b908a7e0 	str	w0, [sp, #2212]
  401070:	b908b7ff 	str	wzr, [sp, #2228]
  401074:	f90457ff 	str	xzr, [sp, #2216]
  401078:	911283e0 	add	x0, sp, #0x4a0
  40107c:	52808002 	mov	w2, #0x400                 	// #1024
  401080:	aa0003e1 	mov	x1, x0
  401084:	b948a7e0 	ldr	w0, [sp, #2212]
  401088:	94000281 	bl	401a8c <get_line>
  40108c:	93407c00 	sxtw	x0, w0
  401090:	f90467e0 	str	x0, [sp, #2248]
  401094:	f90463ff 	str	xzr, [sp, #2240]
  401098:	f9045fff 	str	xzr, [sp, #2232]
  40109c:	1400000a 	b	4010c4 <accept_request+0x6c>
  4010a0:	f94463e0 	ldr	x0, [sp, #2240]
  4010a4:	911283e1 	add	x1, sp, #0x4a0
  4010a8:	38606822 	ldrb	w2, [x1, x0]
  4010ac:	f94463e0 	ldr	x0, [sp, #2240]
  4010b0:	910e83e1 	add	x1, sp, #0x3a0
  4010b4:	38206822 	strb	w2, [x1, x0]
  4010b8:	f94463e0 	ldr	x0, [sp, #2240]
  4010bc:	91000400 	add	x0, x0, #0x1
  4010c0:	f90463e0 	str	x0, [sp, #2240]
  4010c4:	97ffff6f 	bl	400e80 <__ctype_b_loc@plt>
  4010c8:	f9400001 	ldr	x1, [x0]
  4010cc:	f94463e0 	ldr	x0, [sp, #2240]
  4010d0:	911283e2 	add	x2, sp, #0x4a0
  4010d4:	38606840 	ldrb	w0, [x2, x0]
  4010d8:	92401c00 	and	x0, x0, #0xff
  4010dc:	d37ff800 	lsl	x0, x0, #1
  4010e0:	8b000020 	add	x0, x1, x0
  4010e4:	79400000 	ldrh	w0, [x0]
  4010e8:	12130000 	and	w0, w0, #0x2000
  4010ec:	7100001f 	cmp	w0, #0x0
  4010f0:	54000081 	b.ne	401100 <accept_request+0xa8>  // b.any
  4010f4:	f94463e0 	ldr	x0, [sp, #2240]
  4010f8:	f103f41f 	cmp	x0, #0xfd
  4010fc:	54fffd29 	b.ls	4010a0 <accept_request+0x48>  // b.plast
  401100:	f94463e0 	ldr	x0, [sp, #2240]
  401104:	f9045fe0 	str	x0, [sp, #2232]
  401108:	f94463e0 	ldr	x0, [sp, #2240]
  40110c:	910e83e1 	add	x1, sp, #0x3a0
  401110:	3820683f 	strb	wzr, [x1, x0]
  401114:	910e83e2 	add	x2, sp, #0x3a0
  401118:	b0000000 	adrp	x0, 402000 <startup+0x50>
  40111c:	910e6001 	add	x1, x0, #0x398
  401120:	aa0203e0 	mov	x0, x2
  401124:	97ffff2b 	bl	400dd0 <strcasecmp@plt>
  401128:	7100001f 	cmp	w0, #0x0
  40112c:	54000160 	b.eq	401158 <accept_request+0x100>  // b.none
  401130:	910e83e2 	add	x2, sp, #0x3a0
  401134:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401138:	910e8001 	add	x1, x0, #0x3a0
  40113c:	aa0203e0 	mov	x0, x2
  401140:	97ffff24 	bl	400dd0 <strcasecmp@plt>
  401144:	7100001f 	cmp	w0, #0x0
  401148:	54000080 	b.eq	401158 <accept_request+0x100>  // b.none
  40114c:	b948a7e0 	ldr	w0, [sp, #2212]
  401150:	940003ee 	bl	402108 <unimplemented>
  401154:	140000c5 	b	401468 <accept_request+0x410>
  401158:	910e83e2 	add	x2, sp, #0x3a0
  40115c:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401160:	910e8001 	add	x1, x0, #0x3a0
  401164:	aa0203e0 	mov	x0, x2
  401168:	97ffff1a 	bl	400dd0 <strcasecmp@plt>
  40116c:	7100001f 	cmp	w0, #0x0
  401170:	54000061 	b.ne	40117c <accept_request+0x124>  // b.any
  401174:	52800020 	mov	w0, #0x1                   	// #1
  401178:	b908b7e0 	str	w0, [sp, #2228]
  40117c:	f90463ff 	str	xzr, [sp, #2240]
  401180:	14000004 	b	401190 <accept_request+0x138>
  401184:	f9445fe0 	ldr	x0, [sp, #2232]
  401188:	91000400 	add	x0, x0, #0x1
  40118c:	f9045fe0 	str	x0, [sp, #2232]
  401190:	97ffff3c 	bl	400e80 <__ctype_b_loc@plt>
  401194:	f9400001 	ldr	x1, [x0]
  401198:	f9445fe0 	ldr	x0, [sp, #2232]
  40119c:	911283e2 	add	x2, sp, #0x4a0
  4011a0:	38606840 	ldrb	w0, [x2, x0]
  4011a4:	92401c00 	and	x0, x0, #0xff
  4011a8:	d37ff800 	lsl	x0, x0, #1
  4011ac:	8b000020 	add	x0, x1, x0
  4011b0:	79400000 	ldrh	w0, [x0]
  4011b4:	12130000 	and	w0, w0, #0x2000
  4011b8:	7100001f 	cmp	w0, #0x0
  4011bc:	54000240 	b.eq	401204 <accept_request+0x1ac>  // b.none
  4011c0:	f9445fe1 	ldr	x1, [sp, #2232]
  4011c4:	f94467e0 	ldr	x0, [sp, #2248]
  4011c8:	eb00003f 	cmp	x1, x0
  4011cc:	54fffdc3 	b.cc	401184 <accept_request+0x12c>  // b.lo, b.ul, b.last
  4011d0:	1400000d 	b	401204 <accept_request+0x1ac>
  4011d4:	f9445fe0 	ldr	x0, [sp, #2232]
  4011d8:	911283e1 	add	x1, sp, #0x4a0
  4011dc:	38606822 	ldrb	w2, [x1, x0]
  4011e0:	f94463e0 	ldr	x0, [sp, #2240]
  4011e4:	910a83e1 	add	x1, sp, #0x2a0
  4011e8:	38206822 	strb	w2, [x1, x0]
  4011ec:	f94463e0 	ldr	x0, [sp, #2240]
  4011f0:	91000400 	add	x0, x0, #0x1
  4011f4:	f90463e0 	str	x0, [sp, #2240]
  4011f8:	f9445fe0 	ldr	x0, [sp, #2232]
  4011fc:	91000400 	add	x0, x0, #0x1
  401200:	f9045fe0 	str	x0, [sp, #2232]
  401204:	97ffff1f 	bl	400e80 <__ctype_b_loc@plt>
  401208:	f9400001 	ldr	x1, [x0]
  40120c:	f9445fe0 	ldr	x0, [sp, #2232]
  401210:	911283e2 	add	x2, sp, #0x4a0
  401214:	38606840 	ldrb	w0, [x2, x0]
  401218:	92401c00 	and	x0, x0, #0xff
  40121c:	d37ff800 	lsl	x0, x0, #1
  401220:	8b000020 	add	x0, x1, x0
  401224:	79400000 	ldrh	w0, [x0]
  401228:	12130000 	and	w0, w0, #0x2000
  40122c:	7100001f 	cmp	w0, #0x0
  401230:	54000101 	b.ne	401250 <accept_request+0x1f8>  // b.any
  401234:	f94463e0 	ldr	x0, [sp, #2240]
  401238:	f103f41f 	cmp	x0, #0xfd
  40123c:	540000a8 	b.hi	401250 <accept_request+0x1f8>  // b.pmore
  401240:	f9445fe1 	ldr	x1, [sp, #2232]
  401244:	f94467e0 	ldr	x0, [sp, #2248]
  401248:	eb00003f 	cmp	x1, x0
  40124c:	54fffc43 	b.cc	4011d4 <accept_request+0x17c>  // b.lo, b.ul, b.last
  401250:	f94463e0 	ldr	x0, [sp, #2240]
  401254:	910a83e1 	add	x1, sp, #0x2a0
  401258:	3820683f 	strb	wzr, [x1, x0]
  40125c:	910e83e2 	add	x2, sp, #0x3a0
  401260:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401264:	910e6001 	add	x1, x0, #0x398
  401268:	aa0203e0 	mov	x0, x2
  40126c:	97fffed9 	bl	400dd0 <strcasecmp@plt>
  401270:	7100001f 	cmp	w0, #0x0
  401274:	54000341 	b.ne	4012dc <accept_request+0x284>  // b.any
  401278:	910a83e0 	add	x0, sp, #0x2a0
  40127c:	f90457e0 	str	x0, [sp, #2216]
  401280:	14000004 	b	401290 <accept_request+0x238>
  401284:	f94457e0 	ldr	x0, [sp, #2216]
  401288:	91000400 	add	x0, x0, #0x1
  40128c:	f90457e0 	str	x0, [sp, #2216]
  401290:	f94457e0 	ldr	x0, [sp, #2216]
  401294:	39400000 	ldrb	w0, [x0]
  401298:	7100fc1f 	cmp	w0, #0x3f
  40129c:	540000a0 	b.eq	4012b0 <accept_request+0x258>  // b.none
  4012a0:	f94457e0 	ldr	x0, [sp, #2216]
  4012a4:	39400000 	ldrb	w0, [x0]
  4012a8:	7100001f 	cmp	w0, #0x0
  4012ac:	54fffec1 	b.ne	401284 <accept_request+0x22c>  // b.any
  4012b0:	f94457e0 	ldr	x0, [sp, #2216]
  4012b4:	39400000 	ldrb	w0, [x0]
  4012b8:	7100fc1f 	cmp	w0, #0x3f
  4012bc:	54000101 	b.ne	4012dc <accept_request+0x284>  // b.any
  4012c0:	52800020 	mov	w0, #0x1                   	// #1
  4012c4:	b908b7e0 	str	w0, [sp, #2228]
  4012c8:	f94457e0 	ldr	x0, [sp, #2216]
  4012cc:	3900001f 	strb	wzr, [x0]
  4012d0:	f94457e0 	ldr	x0, [sp, #2216]
  4012d4:	91000400 	add	x0, x0, #0x1
  4012d8:	f90457e0 	str	x0, [sp, #2216]
  4012dc:	910a83e0 	add	x0, sp, #0x2a0
  4012e0:	910283e3 	add	x3, sp, #0xa0
  4012e4:	aa0003e2 	mov	x2, x0
  4012e8:	b0000000 	adrp	x0, 402000 <startup+0x50>
  4012ec:	910ea001 	add	x1, x0, #0x3a8
  4012f0:	aa0303e0 	mov	x0, x3
  4012f4:	97fffe8f 	bl	400d30 <sprintf@plt>
  4012f8:	910283e0 	add	x0, sp, #0xa0
  4012fc:	97fffe6d 	bl	400cb0 <strlen@plt>
  401300:	d1000400 	sub	x0, x0, #0x1
  401304:	910283e1 	add	x1, sp, #0xa0
  401308:	38606820 	ldrb	w0, [x1, x0]
  40130c:	7100bc1f 	cmp	w0, #0x2f
  401310:	540001a1 	b.ne	401344 <accept_request+0x2ec>  // b.any
  401314:	910283e0 	add	x0, sp, #0xa0
  401318:	97fffe66 	bl	400cb0 <strlen@plt>
  40131c:	aa0003e1 	mov	x1, x0
  401320:	910283e0 	add	x0, sp, #0xa0
  401324:	8b010002 	add	x2, x0, x1
  401328:	b0000000 	adrp	x0, 402000 <startup+0x50>
  40132c:	910ee001 	add	x1, x0, #0x3b8
  401330:	aa0203e0 	mov	x0, x2
  401334:	f9400022 	ldr	x2, [x1]
  401338:	f9000002 	str	x2, [x0]
  40133c:	b8407021 	ldur	w1, [x1, #7]
  401340:	b8007001 	stur	w1, [x0, #7]
  401344:	910083e1 	add	x1, sp, #0x20
  401348:	910283e0 	add	x0, sp, #0xa0
  40134c:	97fffeb9 	bl	400e30 <stat@plt>
  401350:	3100041f 	cmn	w0, #0x1
  401354:	540002c1 	b.ne	4013ac <accept_request+0x354>  // b.any
  401358:	14000008 	b	401378 <accept_request+0x320>
  40135c:	911283e0 	add	x0, sp, #0x4a0
  401360:	52808002 	mov	w2, #0x400                 	// #1024
  401364:	aa0003e1 	mov	x1, x0
  401368:	b948a7e0 	ldr	w0, [sp, #2212]
  40136c:	940001c8 	bl	401a8c <get_line>
  401370:	93407c00 	sxtw	x0, w0
  401374:	f90467e0 	str	x0, [sp, #2248]
  401378:	f94467e0 	ldr	x0, [sp, #2248]
  40137c:	f100001f 	cmp	x0, #0x0
  401380:	54000100 	b.eq	4013a0 <accept_request+0x348>  // b.none
  401384:	911283e0 	add	x0, sp, #0x4a0
  401388:	aa0003e1 	mov	x1, x0
  40138c:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401390:	910f2000 	add	x0, x0, #0x3c8
  401394:	97fffeb7 	bl	400e70 <strcmp@plt>
  401398:	7100001f 	cmp	w0, #0x0
  40139c:	54fffe01 	b.ne	40135c <accept_request+0x304>  // b.any
  4013a0:	b948a7e0 	ldr	w0, [sp, #2212]
  4013a4:	9400024a 	bl	401ccc <not_found>
  4013a8:	1400002e 	b	401460 <accept_request+0x408>
  4013ac:	b94033e0 	ldr	w0, [sp, #48]
  4013b0:	12140c00 	and	w0, w0, #0xf000
  4013b4:	7140101f 	cmp	w0, #0x4, lsl #12
  4013b8:	540001a1 	b.ne	4013ec <accept_request+0x394>  // b.any
  4013bc:	910283e0 	add	x0, sp, #0xa0
  4013c0:	97fffe3c 	bl	400cb0 <strlen@plt>
  4013c4:	aa0003e1 	mov	x1, x0
  4013c8:	910283e0 	add	x0, sp, #0xa0
  4013cc:	8b010002 	add	x2, x0, x1
  4013d0:	b0000000 	adrp	x0, 402000 <startup+0x50>
  4013d4:	910f4001 	add	x1, x0, #0x3d0
  4013d8:	aa0203e0 	mov	x0, x2
  4013dc:	f9400022 	ldr	x2, [x1]
  4013e0:	f9000002 	str	x2, [x0]
  4013e4:	b9400821 	ldr	w1, [x1, #8]
  4013e8:	b9000801 	str	w1, [x0, #8]
  4013ec:	b94033e0 	ldr	w0, [sp, #48]
  4013f0:	121a0000 	and	w0, w0, #0x40
  4013f4:	7100001f 	cmp	w0, #0x0
  4013f8:	54000121 	b.ne	40141c <accept_request+0x3c4>  // b.any
  4013fc:	b94033e0 	ldr	w0, [sp, #48]
  401400:	121d0000 	and	w0, w0, #0x8
  401404:	7100001f 	cmp	w0, #0x0
  401408:	540000a1 	b.ne	40141c <accept_request+0x3c4>  // b.any
  40140c:	b94033e0 	ldr	w0, [sp, #48]
  401410:	12000000 	and	w0, w0, #0x1
  401414:	7100001f 	cmp	w0, #0x0
  401418:	54000060 	b.eq	401424 <accept_request+0x3cc>  // b.none
  40141c:	52800020 	mov	w0, #0x1                   	// #1
  401420:	b908b7e0 	str	w0, [sp, #2228]
  401424:	b948b7e0 	ldr	w0, [sp, #2228]
  401428:	7100001f 	cmp	w0, #0x0
  40142c:	540000c1 	b.ne	401444 <accept_request+0x3ec>  // b.any
  401430:	910283e0 	add	x0, sp, #0xa0
  401434:	aa0003e1 	mov	x1, x0
  401438:	b948a7e0 	ldr	w0, [sp, #2212]
  40143c:	940002aa 	bl	401ee4 <serve_file>
  401440:	14000008 	b	401460 <accept_request+0x408>
  401444:	910e83e1 	add	x1, sp, #0x3a0
  401448:	910283e0 	add	x0, sp, #0xa0
  40144c:	f94457e3 	ldr	x3, [sp, #2216]
  401450:	aa0103e2 	mov	x2, x1
  401454:	aa0003e1 	mov	x1, x0
  401458:	b948a7e0 	ldr	w0, [sp, #2212]
  40145c:	940000ac 	bl	40170c <execute_cgi>
  401460:	b948a7e0 	ldr	w0, [sp, #2212]
  401464:	97fffe67 	bl	400e00 <close@plt>
  401468:	a9407bfd 	ldp	x29, x30, [sp]
  40146c:	912343ff 	add	sp, sp, #0x8d0
  401470:	d65f03c0 	ret

0000000000401474 <bad_request>:
  401474:	d11083ff 	sub	sp, sp, #0x420
  401478:	a9007bfd 	stp	x29, x30, [sp]
  40147c:	910003fd 	mov	x29, sp
  401480:	b9001fe0 	str	w0, [sp, #28]
  401484:	910083e2 	add	x2, sp, #0x20
  401488:	b0000000 	adrp	x0, 402000 <startup+0x50>
  40148c:	910f8001 	add	x1, x0, #0x3e0
  401490:	aa0203e0 	mov	x0, x2
  401494:	97fffe27 	bl	400d30 <sprintf@plt>
  401498:	910083e0 	add	x0, sp, #0x20
  40149c:	52800003 	mov	w3, #0x0                   	// #0
  4014a0:	d2808002 	mov	x2, #0x400                 	// #1024
  4014a4:	aa0003e1 	mov	x1, x0
  4014a8:	b9401fe0 	ldr	w0, [sp, #28]
  4014ac:	97fffe79 	bl	400e90 <send@plt>
  4014b0:	910083e2 	add	x2, sp, #0x20
  4014b4:	b0000000 	adrp	x0, 402000 <startup+0x50>
  4014b8:	91100001 	add	x1, x0, #0x400
  4014bc:	aa0203e0 	mov	x0, x2
  4014c0:	97fffe1c 	bl	400d30 <sprintf@plt>
  4014c4:	910083e0 	add	x0, sp, #0x20
  4014c8:	52800003 	mov	w3, #0x0                   	// #0
  4014cc:	d2808002 	mov	x2, #0x400                 	// #1024
  4014d0:	aa0003e1 	mov	x1, x0
  4014d4:	b9401fe0 	ldr	w0, [sp, #28]
  4014d8:	97fffe6e 	bl	400e90 <send@plt>
  4014dc:	910083e2 	add	x2, sp, #0x20
  4014e0:	b0000000 	adrp	x0, 402000 <startup+0x50>
  4014e4:	91108001 	add	x1, x0, #0x420
  4014e8:	aa0203e0 	mov	x0, x2
  4014ec:	97fffe11 	bl	400d30 <sprintf@plt>
  4014f0:	910083e0 	add	x0, sp, #0x20
  4014f4:	52800003 	mov	w3, #0x0                   	// #0
  4014f8:	d2808002 	mov	x2, #0x400                 	// #1024
  4014fc:	aa0003e1 	mov	x1, x0
  401500:	b9401fe0 	ldr	w0, [sp, #28]
  401504:	97fffe63 	bl	400e90 <send@plt>
  401508:	910083e2 	add	x2, sp, #0x20
  40150c:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401510:	9110a001 	add	x1, x0, #0x428
  401514:	aa0203e0 	mov	x0, x2
  401518:	97fffe06 	bl	400d30 <sprintf@plt>
  40151c:	910083e0 	add	x0, sp, #0x20
  401520:	52800003 	mov	w3, #0x0                   	// #0
  401524:	d2808002 	mov	x2, #0x400                 	// #1024
  401528:	aa0003e1 	mov	x1, x0
  40152c:	b9401fe0 	ldr	w0, [sp, #28]
  401530:	97fffe58 	bl	400e90 <send@plt>
  401534:	910083e2 	add	x2, sp, #0x20
  401538:	b0000000 	adrp	x0, 402000 <startup+0x50>
  40153c:	91114001 	add	x1, x0, #0x450
  401540:	aa0203e0 	mov	x0, x2
  401544:	97fffdfb 	bl	400d30 <sprintf@plt>
  401548:	910083e0 	add	x0, sp, #0x20
  40154c:	52800003 	mov	w3, #0x0                   	// #0
  401550:	d2808002 	mov	x2, #0x400                 	// #1024
  401554:	aa0003e1 	mov	x1, x0
  401558:	b9401fe0 	ldr	w0, [sp, #28]
  40155c:	97fffe4d 	bl	400e90 <send@plt>
  401560:	d503201f 	nop
  401564:	a9407bfd 	ldp	x29, x30, [sp]
  401568:	911083ff 	add	sp, sp, #0x420
  40156c:	d65f03c0 	ret

0000000000401570 <cat>:
  401570:	d11083ff 	sub	sp, sp, #0x420
  401574:	a9007bfd 	stp	x29, x30, [sp]
  401578:	910003fd 	mov	x29, sp
  40157c:	b9001fe0 	str	w0, [sp, #28]
  401580:	f9000be1 	str	x1, [sp, #16]
  401584:	910083e0 	add	x0, sp, #0x20
  401588:	f9400be2 	ldr	x2, [sp, #16]
  40158c:	52808001 	mov	w1, #0x400                 	// #1024
  401590:	97fffe5c 	bl	400f00 <fgets@plt>
  401594:	1400000e 	b	4015cc <cat+0x5c>
  401598:	910083e0 	add	x0, sp, #0x20
  40159c:	97fffdc5 	bl	400cb0 <strlen@plt>
  4015a0:	aa0003e1 	mov	x1, x0
  4015a4:	910083e0 	add	x0, sp, #0x20
  4015a8:	52800003 	mov	w3, #0x0                   	// #0
  4015ac:	aa0103e2 	mov	x2, x1
  4015b0:	aa0003e1 	mov	x1, x0
  4015b4:	b9401fe0 	ldr	w0, [sp, #28]
  4015b8:	97fffe36 	bl	400e90 <send@plt>
  4015bc:	910083e0 	add	x0, sp, #0x20
  4015c0:	f9400be2 	ldr	x2, [sp, #16]
  4015c4:	52808001 	mov	w1, #0x400                 	// #1024
  4015c8:	97fffe4e 	bl	400f00 <fgets@plt>
  4015cc:	f9400be0 	ldr	x0, [sp, #16]
  4015d0:	97fffe24 	bl	400e60 <feof@plt>
  4015d4:	7100001f 	cmp	w0, #0x0
  4015d8:	54fffe00 	b.eq	401598 <cat+0x28>  // b.none
  4015dc:	d503201f 	nop
  4015e0:	d503201f 	nop
  4015e4:	a9407bfd 	ldp	x29, x30, [sp]
  4015e8:	911083ff 	add	sp, sp, #0x420
  4015ec:	d65f03c0 	ret

00000000004015f0 <cannot_execute>:
  4015f0:	d11083ff 	sub	sp, sp, #0x420
  4015f4:	a9007bfd 	stp	x29, x30, [sp]
  4015f8:	910003fd 	mov	x29, sp
  4015fc:	b9001fe0 	str	w0, [sp, #28]
  401600:	910083e2 	add	x2, sp, #0x20
  401604:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401608:	91120001 	add	x1, x0, #0x480
  40160c:	aa0203e0 	mov	x0, x2
  401610:	97fffdc8 	bl	400d30 <sprintf@plt>
  401614:	910083e0 	add	x0, sp, #0x20
  401618:	97fffda6 	bl	400cb0 <strlen@plt>
  40161c:	aa0003e1 	mov	x1, x0
  401620:	910083e0 	add	x0, sp, #0x20
  401624:	52800003 	mov	w3, #0x0                   	// #0
  401628:	aa0103e2 	mov	x2, x1
  40162c:	aa0003e1 	mov	x1, x0
  401630:	b9401fe0 	ldr	w0, [sp, #28]
  401634:	97fffe17 	bl	400e90 <send@plt>
  401638:	910083e2 	add	x2, sp, #0x20
  40163c:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401640:	91100001 	add	x1, x0, #0x400
  401644:	aa0203e0 	mov	x0, x2
  401648:	97fffdba 	bl	400d30 <sprintf@plt>
  40164c:	910083e0 	add	x0, sp, #0x20
  401650:	97fffd98 	bl	400cb0 <strlen@plt>
  401654:	aa0003e1 	mov	x1, x0
  401658:	910083e0 	add	x0, sp, #0x20
  40165c:	52800003 	mov	w3, #0x0                   	// #0
  401660:	aa0103e2 	mov	x2, x1
  401664:	aa0003e1 	mov	x1, x0
  401668:	b9401fe0 	ldr	w0, [sp, #28]
  40166c:	97fffe09 	bl	400e90 <send@plt>
  401670:	910083e2 	add	x2, sp, #0x20
  401674:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401678:	91108001 	add	x1, x0, #0x420
  40167c:	aa0203e0 	mov	x0, x2
  401680:	97fffdac 	bl	400d30 <sprintf@plt>
  401684:	910083e0 	add	x0, sp, #0x20
  401688:	97fffd8a 	bl	400cb0 <strlen@plt>
  40168c:	aa0003e1 	mov	x1, x0
  401690:	910083e0 	add	x0, sp, #0x20
  401694:	52800003 	mov	w3, #0x0                   	// #0
  401698:	aa0103e2 	mov	x2, x1
  40169c:	aa0003e1 	mov	x1, x0
  4016a0:	b9401fe0 	ldr	w0, [sp, #28]
  4016a4:	97fffdfb 	bl	400e90 <send@plt>
  4016a8:	910083e2 	add	x2, sp, #0x20
  4016ac:	b0000000 	adrp	x0, 402000 <startup+0x50>
  4016b0:	9112a001 	add	x1, x0, #0x4a8
  4016b4:	aa0203e0 	mov	x0, x2
  4016b8:	97fffd9e 	bl	400d30 <sprintf@plt>
  4016bc:	910083e0 	add	x0, sp, #0x20
  4016c0:	97fffd7c 	bl	400cb0 <strlen@plt>
  4016c4:	aa0003e1 	mov	x1, x0
  4016c8:	910083e0 	add	x0, sp, #0x20
  4016cc:	52800003 	mov	w3, #0x0                   	// #0
  4016d0:	aa0103e2 	mov	x2, x1
  4016d4:	aa0003e1 	mov	x1, x0
  4016d8:	b9401fe0 	ldr	w0, [sp, #28]
  4016dc:	97fffded 	bl	400e90 <send@plt>
  4016e0:	d503201f 	nop
  4016e4:	a9407bfd 	ldp	x29, x30, [sp]
  4016e8:	911083ff 	add	sp, sp, #0x420
  4016ec:	d65f03c0 	ret

00000000004016f0 <error_die>:
  4016f0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4016f4:	910003fd 	mov	x29, sp
  4016f8:	f9000fe0 	str	x0, [sp, #24]
  4016fc:	f9400fe0 	ldr	x0, [sp, #24]
  401700:	97fffd7c 	bl	400cf0 <perror@plt>
  401704:	52800020 	mov	w0, #0x1                   	// #1
  401708:	97fffd6e 	bl	400cc0 <exit@plt>

000000000040170c <execute_cgi>:
  40170c:	d11d83ff 	sub	sp, sp, #0x760
  401710:	a9007bfd 	stp	x29, x30, [sp]
  401714:	910003fd 	mov	x29, sp
  401718:	b9002fe0 	str	w0, [sp, #44]
  40171c:	f90013e1 	str	x1, [sp, #32]
  401720:	f9000fe2 	str	x2, [sp, #24]
  401724:	f9000be3 	str	x3, [sp, #16]
  401728:	52800020 	mov	w0, #0x1                   	// #1
  40172c:	b9075be0 	str	w0, [sp, #1880]
  401730:	12800000 	mov	w0, #0xffffffff            	// #-1
  401734:	b90757e0 	str	w0, [sp, #1876]
  401738:	52800820 	mov	w0, #0x41                  	// #65
  40173c:	390d43e0 	strb	w0, [sp, #848]
  401740:	390d47ff 	strb	wzr, [sp, #849]
  401744:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401748:	910e6001 	add	x1, x0, #0x398
  40174c:	f9400fe0 	ldr	x0, [sp, #24]
  401750:	97fffda0 	bl	400dd0 <strcasecmp@plt>
  401754:	7100001f 	cmp	w0, #0x0
  401758:	54000261 	b.ne	4017a4 <execute_cgi+0x98>  // b.any
  40175c:	14000007 	b	401778 <execute_cgi+0x6c>
  401760:	910d43e0 	add	x0, sp, #0x350
  401764:	52808002 	mov	w2, #0x400                 	// #1024
  401768:	aa0003e1 	mov	x1, x0
  40176c:	b9402fe0 	ldr	w0, [sp, #44]
  401770:	940000c7 	bl	401a8c <get_line>
  401774:	b9075be0 	str	w0, [sp, #1880]
  401778:	b9475be0 	ldr	w0, [sp, #1880]
  40177c:	7100001f 	cmp	w0, #0x0
  401780:	5400070d 	b.le	401860 <execute_cgi+0x154>
  401784:	910d43e0 	add	x0, sp, #0x350
  401788:	aa0003e1 	mov	x1, x0
  40178c:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401790:	910f2000 	add	x0, x0, #0x3c8
  401794:	97fffdb7 	bl	400e70 <strcmp@plt>
  401798:	7100001f 	cmp	w0, #0x0
  40179c:	54fffe21 	b.ne	401760 <execute_cgi+0x54>  // b.any
  4017a0:	14000030 	b	401860 <execute_cgi+0x154>
  4017a4:	b0000000 	adrp	x0, 402000 <startup+0x50>
  4017a8:	910e8001 	add	x1, x0, #0x3a0
  4017ac:	f9400fe0 	ldr	x0, [sp, #24]
  4017b0:	97fffd88 	bl	400dd0 <strcasecmp@plt>
  4017b4:	7100001f 	cmp	w0, #0x0
  4017b8:	54000541 	b.ne	401860 <execute_cgi+0x154>  // b.any
  4017bc:	910d43e0 	add	x0, sp, #0x350
  4017c0:	52808002 	mov	w2, #0x400                 	// #1024
  4017c4:	aa0003e1 	mov	x1, x0
  4017c8:	b9402fe0 	ldr	w0, [sp, #44]
  4017cc:	940000b0 	bl	401a8c <get_line>
  4017d0:	b9075be0 	str	w0, [sp, #1880]
  4017d4:	14000013 	b	401820 <execute_cgi+0x114>
  4017d8:	390d7fff 	strb	wzr, [sp, #863]
  4017dc:	910d43e2 	add	x2, sp, #0x350
  4017e0:	b0000000 	adrp	x0, 402000 <startup+0x50>
  4017e4:	91134001 	add	x1, x0, #0x4d0
  4017e8:	aa0203e0 	mov	x0, x2
  4017ec:	97fffd79 	bl	400dd0 <strcasecmp@plt>
  4017f0:	7100001f 	cmp	w0, #0x0
  4017f4:	540000a1 	b.ne	401808 <execute_cgi+0xfc>  // b.any
  4017f8:	910d43e0 	add	x0, sp, #0x350
  4017fc:	91004000 	add	x0, x0, #0x10
  401800:	97fffd5c 	bl	400d70 <atoi@plt>
  401804:	b90757e0 	str	w0, [sp, #1876]
  401808:	910d43e0 	add	x0, sp, #0x350
  40180c:	52808002 	mov	w2, #0x400                 	// #1024
  401810:	aa0003e1 	mov	x1, x0
  401814:	b9402fe0 	ldr	w0, [sp, #44]
  401818:	9400009d 	bl	401a8c <get_line>
  40181c:	b9075be0 	str	w0, [sp, #1880]
  401820:	b9475be0 	ldr	w0, [sp, #1880]
  401824:	7100001f 	cmp	w0, #0x0
  401828:	5400010d 	b.le	401848 <execute_cgi+0x13c>
  40182c:	910d43e0 	add	x0, sp, #0x350
  401830:	aa0003e1 	mov	x1, x0
  401834:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401838:	910f2000 	add	x0, x0, #0x3c8
  40183c:	97fffd8d 	bl	400e70 <strcmp@plt>
  401840:	7100001f 	cmp	w0, #0x0
  401844:	54fffca1 	b.ne	4017d8 <execute_cgi+0xcc>  // b.any
  401848:	b94757e0 	ldr	w0, [sp, #1876]
  40184c:	3100041f 	cmn	w0, #0x1
  401850:	54000081 	b.ne	401860 <execute_cgi+0x154>  // b.any
  401854:	b9402fe0 	ldr	w0, [sp, #44]
  401858:	97ffff07 	bl	401474 <bad_request>
  40185c:	14000089 	b	401a80 <execute_cgi+0x374>
  401860:	910d23e0 	add	x0, sp, #0x348
  401864:	97fffd37 	bl	400d40 <pipe@plt>
  401868:	7100001f 	cmp	w0, #0x0
  40186c:	5400008a 	b.ge	40187c <execute_cgi+0x170>  // b.tcont
  401870:	b9402fe0 	ldr	w0, [sp, #44]
  401874:	97ffff5f 	bl	4015f0 <cannot_execute>
  401878:	14000082 	b	401a80 <execute_cgi+0x374>
  40187c:	910d03e0 	add	x0, sp, #0x340
  401880:	97fffd30 	bl	400d40 <pipe@plt>
  401884:	7100001f 	cmp	w0, #0x0
  401888:	5400008a 	b.ge	401898 <execute_cgi+0x18c>  // b.tcont
  40188c:	b9402fe0 	ldr	w0, [sp, #44]
  401890:	97ffff58 	bl	4015f0 <cannot_execute>
  401894:	1400007b 	b	401a80 <execute_cgi+0x374>
  401898:	97fffd2e 	bl	400d50 <fork@plt>
  40189c:	b90753e0 	str	w0, [sp, #1872]
  4018a0:	b94753e0 	ldr	w0, [sp, #1872]
  4018a4:	7100001f 	cmp	w0, #0x0
  4018a8:	5400008a 	b.ge	4018b8 <execute_cgi+0x1ac>  // b.tcont
  4018ac:	b9402fe0 	ldr	w0, [sp, #44]
  4018b0:	97ffff50 	bl	4015f0 <cannot_execute>
  4018b4:	14000073 	b	401a80 <execute_cgi+0x374>
  4018b8:	910d43e2 	add	x2, sp, #0x350
  4018bc:	b0000000 	adrp	x0, 402000 <startup+0x50>
  4018c0:	91138001 	add	x1, x0, #0x4e0
  4018c4:	aa0203e0 	mov	x0, x2
  4018c8:	97fffd1a 	bl	400d30 <sprintf@plt>
  4018cc:	910d43e0 	add	x0, sp, #0x350
  4018d0:	97fffcf8 	bl	400cb0 <strlen@plt>
  4018d4:	aa0003e1 	mov	x1, x0
  4018d8:	910d43e0 	add	x0, sp, #0x350
  4018dc:	52800003 	mov	w3, #0x0                   	// #0
  4018e0:	aa0103e2 	mov	x2, x1
  4018e4:	aa0003e1 	mov	x1, x0
  4018e8:	b9402fe0 	ldr	w0, [sp, #44]
  4018ec:	97fffd69 	bl	400e90 <send@plt>
  4018f0:	b94753e0 	ldr	w0, [sp, #1872]
  4018f4:	7100001f 	cmp	w0, #0x0
  4018f8:	540005e1 	b.ne	4019b4 <execute_cgi+0x2a8>  // b.any
  4018fc:	b9434fe0 	ldr	w0, [sp, #844]
  401900:	52800021 	mov	w1, #0x1                   	// #1
  401904:	97fffd6f 	bl	400ec0 <dup2@plt>
  401908:	b94343e0 	ldr	w0, [sp, #832]
  40190c:	52800001 	mov	w1, #0x0                   	// #0
  401910:	97fffd6c 	bl	400ec0 <dup2@plt>
  401914:	b9434be0 	ldr	w0, [sp, #840]
  401918:	97fffd3a 	bl	400e00 <close@plt>
  40191c:	b94347e0 	ldr	w0, [sp, #836]
  401920:	97fffd38 	bl	400e00 <close@plt>
  401924:	9100e3e3 	add	x3, sp, #0x38
  401928:	f9400fe2 	ldr	x2, [sp, #24]
  40192c:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401930:	9113e001 	add	x1, x0, #0x4f8
  401934:	aa0303e0 	mov	x0, x3
  401938:	97fffcfe 	bl	400d30 <sprintf@plt>
  40193c:	9100e3e0 	add	x0, sp, #0x38
  401940:	97fffd2c 	bl	400df0 <putenv@plt>
  401944:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401948:	910e6001 	add	x1, x0, #0x398
  40194c:	f9400fe0 	ldr	x0, [sp, #24]
  401950:	97fffd20 	bl	400dd0 <strcasecmp@plt>
  401954:	7100001f 	cmp	w0, #0x0
  401958:	54000141 	b.ne	401980 <execute_cgi+0x274>  // b.any
  40195c:	9104e3e3 	add	x3, sp, #0x138
  401960:	f9400be2 	ldr	x2, [sp, #16]
  401964:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401968:	91144001 	add	x1, x0, #0x510
  40196c:	aa0303e0 	mov	x0, x3
  401970:	97fffcf0 	bl	400d30 <sprintf@plt>
  401974:	9104e3e0 	add	x0, sp, #0x138
  401978:	97fffd1e 	bl	400df0 <putenv@plt>
  40197c:	14000009 	b	4019a0 <execute_cgi+0x294>
  401980:	9108e3e3 	add	x3, sp, #0x238
  401984:	b94757e2 	ldr	w2, [sp, #1876]
  401988:	b0000000 	adrp	x0, 402000 <startup+0x50>
  40198c:	91148001 	add	x1, x0, #0x520
  401990:	aa0303e0 	mov	x0, x3
  401994:	97fffce7 	bl	400d30 <sprintf@plt>
  401998:	9108e3e0 	add	x0, sp, #0x238
  40199c:	97fffd15 	bl	400df0 <putenv@plt>
  4019a0:	d2800001 	mov	x1, #0x0                   	// #0
  4019a4:	f94013e0 	ldr	x0, [sp, #32]
  4019a8:	97fffcce 	bl	400ce0 <execl@plt>
  4019ac:	52800000 	mov	w0, #0x0                   	// #0
  4019b0:	97fffcc4 	bl	400cc0 <exit@plt>
  4019b4:	b9434fe0 	ldr	w0, [sp, #844]
  4019b8:	97fffd12 	bl	400e00 <close@plt>
  4019bc:	b94343e0 	ldr	w0, [sp, #832]
  4019c0:	97fffd10 	bl	400e00 <close@plt>
  4019c4:	b0000000 	adrp	x0, 402000 <startup+0x50>
  4019c8:	910e8001 	add	x1, x0, #0x3a0
  4019cc:	f9400fe0 	ldr	x0, [sp, #24]
  4019d0:	97fffd00 	bl	400dd0 <strcasecmp@plt>
  4019d4:	7100001f 	cmp	w0, #0x0
  4019d8:	54000361 	b.ne	401a44 <execute_cgi+0x338>  // b.any
  4019dc:	b9075fff 	str	wzr, [sp, #1884]
  4019e0:	1400000e 	b	401a18 <execute_cgi+0x30c>
  4019e4:	910cefe0 	add	x0, sp, #0x33b
  4019e8:	52800003 	mov	w3, #0x0                   	// #0
  4019ec:	d2800022 	mov	x2, #0x1                   	// #1
  4019f0:	aa0003e1 	mov	x1, x0
  4019f4:	b9402fe0 	ldr	w0, [sp, #44]
  4019f8:	97fffd06 	bl	400e10 <recv@plt>
  4019fc:	b94347e0 	ldr	w0, [sp, #836]
  401a00:	910cefe1 	add	x1, sp, #0x33b
  401a04:	d2800022 	mov	x2, #0x1                   	// #1
  401a08:	97fffd0e 	bl	400e40 <write@plt>
  401a0c:	b9475fe0 	ldr	w0, [sp, #1884]
  401a10:	11000400 	add	w0, w0, #0x1
  401a14:	b9075fe0 	str	w0, [sp, #1884]
  401a18:	b9475fe1 	ldr	w1, [sp, #1884]
  401a1c:	b94757e0 	ldr	w0, [sp, #1876]
  401a20:	6b00003f 	cmp	w1, w0
  401a24:	54fffe0b 	b.lt	4019e4 <execute_cgi+0x2d8>  // b.tstop
  401a28:	14000007 	b	401a44 <execute_cgi+0x338>
  401a2c:	910cefe0 	add	x0, sp, #0x33b
  401a30:	52800003 	mov	w3, #0x0                   	// #0
  401a34:	d2800022 	mov	x2, #0x1                   	// #1
  401a38:	aa0003e1 	mov	x1, x0
  401a3c:	b9402fe0 	ldr	w0, [sp, #44]
  401a40:	97fffd14 	bl	400e90 <send@plt>
  401a44:	b9434be0 	ldr	w0, [sp, #840]
  401a48:	910cefe1 	add	x1, sp, #0x33b
  401a4c:	d2800022 	mov	x2, #0x1                   	// #1
  401a50:	97fffd18 	bl	400eb0 <read@plt>
  401a54:	f100001f 	cmp	x0, #0x0
  401a58:	54fffeac 	b.gt	401a2c <execute_cgi+0x320>
  401a5c:	b9434be0 	ldr	w0, [sp, #840]
  401a60:	97fffce8 	bl	400e00 <close@plt>
  401a64:	b94347e0 	ldr	w0, [sp, #836]
  401a68:	97fffce6 	bl	400e00 <close@plt>
  401a6c:	910cf3e0 	add	x0, sp, #0x33c
  401a70:	52800002 	mov	w2, #0x0                   	// #0
  401a74:	aa0003e1 	mov	x1, x0
  401a78:	b94753e0 	ldr	w0, [sp, #1872]
  401a7c:	97fffd1d 	bl	400ef0 <waitpid@plt>
  401a80:	a9407bfd 	ldp	x29, x30, [sp]
  401a84:	911d83ff 	add	sp, sp, #0x760
  401a88:	d65f03c0 	ret

0000000000401a8c <get_line>:
  401a8c:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
  401a90:	910003fd 	mov	x29, sp
  401a94:	b9001fe0 	str	w0, [sp, #28]
  401a98:	f9000be1 	str	x1, [sp, #16]
  401a9c:	b9001be2 	str	w2, [sp, #24]
  401aa0:	b9002fff 	str	wzr, [sp, #44]
  401aa4:	39009fff 	strb	wzr, [sp, #39]
  401aa8:	1400002f 	b	401b64 <get_line+0xd8>
  401aac:	91009fe0 	add	x0, sp, #0x27
  401ab0:	52800003 	mov	w3, #0x0                   	// #0
  401ab4:	d2800022 	mov	x2, #0x1                   	// #1
  401ab8:	aa0003e1 	mov	x1, x0
  401abc:	b9401fe0 	ldr	w0, [sp, #28]
  401ac0:	97fffcd4 	bl	400e10 <recv@plt>
  401ac4:	b9002be0 	str	w0, [sp, #40]
  401ac8:	b9402be0 	ldr	w0, [sp, #40]
  401acc:	7100001f 	cmp	w0, #0x0
  401ad0:	5400046d 	b.le	401b5c <get_line+0xd0>
  401ad4:	39409fe0 	ldrb	w0, [sp, #39]
  401ad8:	7100341f 	cmp	w0, #0xd
  401adc:	540002e1 	b.ne	401b38 <get_line+0xac>  // b.any
  401ae0:	91009fe0 	add	x0, sp, #0x27
  401ae4:	52800043 	mov	w3, #0x2                   	// #2
  401ae8:	d2800022 	mov	x2, #0x1                   	// #1
  401aec:	aa0003e1 	mov	x1, x0
  401af0:	b9401fe0 	ldr	w0, [sp, #28]
  401af4:	97fffcc7 	bl	400e10 <recv@plt>
  401af8:	b9002be0 	str	w0, [sp, #40]
  401afc:	b9402be0 	ldr	w0, [sp, #40]
  401b00:	7100001f 	cmp	w0, #0x0
  401b04:	5400016d 	b.le	401b30 <get_line+0xa4>
  401b08:	39409fe0 	ldrb	w0, [sp, #39]
  401b0c:	7100281f 	cmp	w0, #0xa
  401b10:	54000101 	b.ne	401b30 <get_line+0xa4>  // b.any
  401b14:	91009fe0 	add	x0, sp, #0x27
  401b18:	52800003 	mov	w3, #0x0                   	// #0
  401b1c:	d2800022 	mov	x2, #0x1                   	// #1
  401b20:	aa0003e1 	mov	x1, x0
  401b24:	b9401fe0 	ldr	w0, [sp, #28]
  401b28:	97fffcba 	bl	400e10 <recv@plt>
  401b2c:	14000003 	b	401b38 <get_line+0xac>
  401b30:	52800140 	mov	w0, #0xa                   	// #10
  401b34:	39009fe0 	strb	w0, [sp, #39]
  401b38:	b9802fe0 	ldrsw	x0, [sp, #44]
  401b3c:	f9400be1 	ldr	x1, [sp, #16]
  401b40:	8b000020 	add	x0, x1, x0
  401b44:	39409fe1 	ldrb	w1, [sp, #39]
  401b48:	39000001 	strb	w1, [x0]
  401b4c:	b9402fe0 	ldr	w0, [sp, #44]
  401b50:	11000400 	add	w0, w0, #0x1
  401b54:	b9002fe0 	str	w0, [sp, #44]
  401b58:	14000003 	b	401b64 <get_line+0xd8>
  401b5c:	52800140 	mov	w0, #0xa                   	// #10
  401b60:	39009fe0 	strb	w0, [sp, #39]
  401b64:	b9401be0 	ldr	w0, [sp, #24]
  401b68:	51000400 	sub	w0, w0, #0x1
  401b6c:	b9402fe1 	ldr	w1, [sp, #44]
  401b70:	6b00003f 	cmp	w1, w0
  401b74:	5400008a 	b.ge	401b84 <get_line+0xf8>  // b.tcont
  401b78:	39409fe0 	ldrb	w0, [sp, #39]
  401b7c:	7100281f 	cmp	w0, #0xa
  401b80:	54fff961 	b.ne	401aac <get_line+0x20>  // b.any
  401b84:	b9802fe0 	ldrsw	x0, [sp, #44]
  401b88:	f9400be1 	ldr	x1, [sp, #16]
  401b8c:	8b000020 	add	x0, x1, x0
  401b90:	3900001f 	strb	wzr, [x0]
  401b94:	b9402fe0 	ldr	w0, [sp, #44]
  401b98:	a8c37bfd 	ldp	x29, x30, [sp], #48
  401b9c:	d65f03c0 	ret

0000000000401ba0 <headers>:
  401ba0:	d11083ff 	sub	sp, sp, #0x420
  401ba4:	a9007bfd 	stp	x29, x30, [sp]
  401ba8:	910003fd 	mov	x29, sp
  401bac:	b9001fe0 	str	w0, [sp, #28]
  401bb0:	f9000be1 	str	x1, [sp, #16]
  401bb4:	910083e1 	add	x1, sp, #0x20
  401bb8:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401bbc:	91138000 	add	x0, x0, #0x4e0
  401bc0:	aa0103e2 	mov	x2, x1
  401bc4:	aa0003e3 	mov	x3, x0
  401bc8:	a9400460 	ldp	x0, x1, [x3]
  401bcc:	a9000440 	stp	x0, x1, [x2]
  401bd0:	79402060 	ldrh	w0, [x3, #16]
  401bd4:	79002040 	strh	w0, [x2, #16]
  401bd8:	910083e0 	add	x0, sp, #0x20
  401bdc:	97fffc35 	bl	400cb0 <strlen@plt>
  401be0:	aa0003e1 	mov	x1, x0
  401be4:	910083e0 	add	x0, sp, #0x20
  401be8:	52800003 	mov	w3, #0x0                   	// #0
  401bec:	aa0103e2 	mov	x2, x1
  401bf0:	aa0003e1 	mov	x1, x0
  401bf4:	b9401fe0 	ldr	w0, [sp, #28]
  401bf8:	97fffca6 	bl	400e90 <send@plt>
  401bfc:	910083e2 	add	x2, sp, #0x20
  401c00:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401c04:	9114e001 	add	x1, x0, #0x538
  401c08:	aa0203e0 	mov	x0, x2
  401c0c:	3dc00020 	ldr	q0, [x1]
  401c10:	3d800000 	str	q0, [x0]
  401c14:	3cc09020 	ldur	q0, [x1, #9]
  401c18:	3c809000 	stur	q0, [x0, #9]
  401c1c:	910083e0 	add	x0, sp, #0x20
  401c20:	97fffc24 	bl	400cb0 <strlen@plt>
  401c24:	aa0003e1 	mov	x1, x0
  401c28:	910083e0 	add	x0, sp, #0x20
  401c2c:	52800003 	mov	w3, #0x0                   	// #0
  401c30:	aa0103e2 	mov	x2, x1
  401c34:	aa0003e1 	mov	x1, x0
  401c38:	b9401fe0 	ldr	w0, [sp, #28]
  401c3c:	97fffc95 	bl	400e90 <send@plt>
  401c40:	910083e2 	add	x2, sp, #0x20
  401c44:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401c48:	91156001 	add	x1, x0, #0x558
  401c4c:	aa0203e0 	mov	x0, x2
  401c50:	97fffc38 	bl	400d30 <sprintf@plt>
  401c54:	910083e0 	add	x0, sp, #0x20
  401c58:	97fffc16 	bl	400cb0 <strlen@plt>
  401c5c:	aa0003e1 	mov	x1, x0
  401c60:	910083e0 	add	x0, sp, #0x20
  401c64:	52800003 	mov	w3, #0x0                   	// #0
  401c68:	aa0103e2 	mov	x2, x1
  401c6c:	aa0003e1 	mov	x1, x0
  401c70:	b9401fe0 	ldr	w0, [sp, #28]
  401c74:	97fffc87 	bl	400e90 <send@plt>
  401c78:	910083e2 	add	x2, sp, #0x20
  401c7c:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401c80:	91108001 	add	x1, x0, #0x420
  401c84:	aa0203e0 	mov	x0, x2
  401c88:	79400022 	ldrh	w2, [x1]
  401c8c:	79000002 	strh	w2, [x0]
  401c90:	39400821 	ldrb	w1, [x1, #2]
  401c94:	39000801 	strb	w1, [x0, #2]
  401c98:	910083e0 	add	x0, sp, #0x20
  401c9c:	97fffc05 	bl	400cb0 <strlen@plt>
  401ca0:	aa0003e1 	mov	x1, x0
  401ca4:	910083e0 	add	x0, sp, #0x20
  401ca8:	52800003 	mov	w3, #0x0                   	// #0
  401cac:	aa0103e2 	mov	x2, x1
  401cb0:	aa0003e1 	mov	x1, x0
  401cb4:	b9401fe0 	ldr	w0, [sp, #28]
  401cb8:	97fffc76 	bl	400e90 <send@plt>
  401cbc:	d503201f 	nop
  401cc0:	a9407bfd 	ldp	x29, x30, [sp]
  401cc4:	911083ff 	add	sp, sp, #0x420
  401cc8:	d65f03c0 	ret

0000000000401ccc <not_found>:
  401ccc:	d11083ff 	sub	sp, sp, #0x420
  401cd0:	a9007bfd 	stp	x29, x30, [sp]
  401cd4:	910003fd 	mov	x29, sp
  401cd8:	b9001fe0 	str	w0, [sp, #28]
  401cdc:	910083e2 	add	x2, sp, #0x20
  401ce0:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401ce4:	9115e001 	add	x1, x0, #0x578
  401ce8:	aa0203e0 	mov	x0, x2
  401cec:	97fffc11 	bl	400d30 <sprintf@plt>
  401cf0:	910083e0 	add	x0, sp, #0x20
  401cf4:	97fffbef 	bl	400cb0 <strlen@plt>
  401cf8:	aa0003e1 	mov	x1, x0
  401cfc:	910083e0 	add	x0, sp, #0x20
  401d00:	52800003 	mov	w3, #0x0                   	// #0
  401d04:	aa0103e2 	mov	x2, x1
  401d08:	aa0003e1 	mov	x1, x0
  401d0c:	b9401fe0 	ldr	w0, [sp, #28]
  401d10:	97fffc60 	bl	400e90 <send@plt>
  401d14:	910083e2 	add	x2, sp, #0x20
  401d18:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401d1c:	9114e001 	add	x1, x0, #0x538
  401d20:	aa0203e0 	mov	x0, x2
  401d24:	97fffc03 	bl	400d30 <sprintf@plt>
  401d28:	910083e0 	add	x0, sp, #0x20
  401d2c:	97fffbe1 	bl	400cb0 <strlen@plt>
  401d30:	aa0003e1 	mov	x1, x0
  401d34:	910083e0 	add	x0, sp, #0x20
  401d38:	52800003 	mov	w3, #0x0                   	// #0
  401d3c:	aa0103e2 	mov	x2, x1
  401d40:	aa0003e1 	mov	x1, x0
  401d44:	b9401fe0 	ldr	w0, [sp, #28]
  401d48:	97fffc52 	bl	400e90 <send@plt>
  401d4c:	910083e2 	add	x2, sp, #0x20
  401d50:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401d54:	91156001 	add	x1, x0, #0x558
  401d58:	aa0203e0 	mov	x0, x2
  401d5c:	97fffbf5 	bl	400d30 <sprintf@plt>
  401d60:	910083e0 	add	x0, sp, #0x20
  401d64:	97fffbd3 	bl	400cb0 <strlen@plt>
  401d68:	aa0003e1 	mov	x1, x0
  401d6c:	910083e0 	add	x0, sp, #0x20
  401d70:	52800003 	mov	w3, #0x0                   	// #0
  401d74:	aa0103e2 	mov	x2, x1
  401d78:	aa0003e1 	mov	x1, x0
  401d7c:	b9401fe0 	ldr	w0, [sp, #28]
  401d80:	97fffc44 	bl	400e90 <send@plt>
  401d84:	910083e2 	add	x2, sp, #0x20
  401d88:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401d8c:	91108001 	add	x1, x0, #0x420
  401d90:	aa0203e0 	mov	x0, x2
  401d94:	97fffbe7 	bl	400d30 <sprintf@plt>
  401d98:	910083e0 	add	x0, sp, #0x20
  401d9c:	97fffbc5 	bl	400cb0 <strlen@plt>
  401da0:	aa0003e1 	mov	x1, x0
  401da4:	910083e0 	add	x0, sp, #0x20
  401da8:	52800003 	mov	w3, #0x0                   	// #0
  401dac:	aa0103e2 	mov	x2, x1
  401db0:	aa0003e1 	mov	x1, x0
  401db4:	b9401fe0 	ldr	w0, [sp, #28]
  401db8:	97fffc36 	bl	400e90 <send@plt>
  401dbc:	910083e2 	add	x2, sp, #0x20
  401dc0:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401dc4:	91166001 	add	x1, x0, #0x598
  401dc8:	aa0203e0 	mov	x0, x2
  401dcc:	97fffbd9 	bl	400d30 <sprintf@plt>
  401dd0:	910083e0 	add	x0, sp, #0x20
  401dd4:	97fffbb7 	bl	400cb0 <strlen@plt>
  401dd8:	aa0003e1 	mov	x1, x0
  401ddc:	910083e0 	add	x0, sp, #0x20
  401de0:	52800003 	mov	w3, #0x0                   	// #0
  401de4:	aa0103e2 	mov	x2, x1
  401de8:	aa0003e1 	mov	x1, x0
  401dec:	b9401fe0 	ldr	w0, [sp, #28]
  401df0:	97fffc28 	bl	400e90 <send@plt>
  401df4:	910083e2 	add	x2, sp, #0x20
  401df8:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401dfc:	91170001 	add	x1, x0, #0x5c0
  401e00:	aa0203e0 	mov	x0, x2
  401e04:	97fffbcb 	bl	400d30 <sprintf@plt>
  401e08:	910083e0 	add	x0, sp, #0x20
  401e0c:	97fffba9 	bl	400cb0 <strlen@plt>
  401e10:	aa0003e1 	mov	x1, x0
  401e14:	910083e0 	add	x0, sp, #0x20
  401e18:	52800003 	mov	w3, #0x0                   	// #0
  401e1c:	aa0103e2 	mov	x2, x1
  401e20:	aa0003e1 	mov	x1, x0
  401e24:	b9401fe0 	ldr	w0, [sp, #28]
  401e28:	97fffc1a 	bl	400e90 <send@plt>
  401e2c:	910083e2 	add	x2, sp, #0x20
  401e30:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401e34:	9117a001 	add	x1, x0, #0x5e8
  401e38:	aa0203e0 	mov	x0, x2
  401e3c:	97fffbbd 	bl	400d30 <sprintf@plt>
  401e40:	910083e0 	add	x0, sp, #0x20
  401e44:	97fffb9b 	bl	400cb0 <strlen@plt>
  401e48:	aa0003e1 	mov	x1, x0
  401e4c:	910083e0 	add	x0, sp, #0x20
  401e50:	52800003 	mov	w3, #0x0                   	// #0
  401e54:	aa0103e2 	mov	x2, x1
  401e58:	aa0003e1 	mov	x1, x0
  401e5c:	b9401fe0 	ldr	w0, [sp, #28]
  401e60:	97fffc0c 	bl	400e90 <send@plt>
  401e64:	910083e2 	add	x2, sp, #0x20
  401e68:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401e6c:	91186001 	add	x1, x0, #0x618
  401e70:	aa0203e0 	mov	x0, x2
  401e74:	97fffbaf 	bl	400d30 <sprintf@plt>
  401e78:	910083e0 	add	x0, sp, #0x20
  401e7c:	97fffb8d 	bl	400cb0 <strlen@plt>
  401e80:	aa0003e1 	mov	x1, x0
  401e84:	910083e0 	add	x0, sp, #0x20
  401e88:	52800003 	mov	w3, #0x0                   	// #0
  401e8c:	aa0103e2 	mov	x2, x1
  401e90:	aa0003e1 	mov	x1, x0
  401e94:	b9401fe0 	ldr	w0, [sp, #28]
  401e98:	97fffbfe 	bl	400e90 <send@plt>
  401e9c:	910083e2 	add	x2, sp, #0x20
  401ea0:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401ea4:	91190001 	add	x1, x0, #0x640
  401ea8:	aa0203e0 	mov	x0, x2
  401eac:	97fffba1 	bl	400d30 <sprintf@plt>
  401eb0:	910083e0 	add	x0, sp, #0x20
  401eb4:	97fffb7f 	bl	400cb0 <strlen@plt>
  401eb8:	aa0003e1 	mov	x1, x0
  401ebc:	910083e0 	add	x0, sp, #0x20
  401ec0:	52800003 	mov	w3, #0x0                   	// #0
  401ec4:	aa0103e2 	mov	x2, x1
  401ec8:	aa0003e1 	mov	x1, x0
  401ecc:	b9401fe0 	ldr	w0, [sp, #28]
  401ed0:	97fffbf0 	bl	400e90 <send@plt>
  401ed4:	d503201f 	nop
  401ed8:	a9407bfd 	ldp	x29, x30, [sp]
  401edc:	911083ff 	add	sp, sp, #0x420
  401ee0:	d65f03c0 	ret

0000000000401ee4 <serve_file>:
  401ee4:	d110c3ff 	sub	sp, sp, #0x430
  401ee8:	a9007bfd 	stp	x29, x30, [sp]
  401eec:	910003fd 	mov	x29, sp
  401ef0:	b9001fe0 	str	w0, [sp, #28]
  401ef4:	f9000be1 	str	x1, [sp, #16]
  401ef8:	f90213ff 	str	xzr, [sp, #1056]
  401efc:	52800020 	mov	w0, #0x1                   	// #1
  401f00:	b9042fe0 	str	w0, [sp, #1068]
  401f04:	52800820 	mov	w0, #0x41                  	// #65
  401f08:	390083e0 	strb	w0, [sp, #32]
  401f0c:	390087ff 	strb	wzr, [sp, #33]
  401f10:	14000007 	b	401f2c <serve_file+0x48>
  401f14:	910083e0 	add	x0, sp, #0x20
  401f18:	52808002 	mov	w2, #0x400                 	// #1024
  401f1c:	aa0003e1 	mov	x1, x0
  401f20:	b9401fe0 	ldr	w0, [sp, #28]
  401f24:	97fffeda 	bl	401a8c <get_line>
  401f28:	b9042fe0 	str	w0, [sp, #1068]
  401f2c:	b9442fe0 	ldr	w0, [sp, #1068]
  401f30:	7100001f 	cmp	w0, #0x0
  401f34:	5400010d 	b.le	401f54 <serve_file+0x70>
  401f38:	910083e0 	add	x0, sp, #0x20
  401f3c:	aa0003e1 	mov	x1, x0
  401f40:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401f44:	910f2000 	add	x0, x0, #0x3c8
  401f48:	97fffbca 	bl	400e70 <strcmp@plt>
  401f4c:	7100001f 	cmp	w0, #0x0
  401f50:	54fffe21 	b.ne	401f14 <serve_file+0x30>  // b.any
  401f54:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401f58:	91196001 	add	x1, x0, #0x658
  401f5c:	f9400be0 	ldr	x0, [sp, #16]
  401f60:	97fffb88 	bl	400d80 <fopen@plt>
  401f64:	f90213e0 	str	x0, [sp, #1056]
  401f68:	f94213e0 	ldr	x0, [sp, #1056]
  401f6c:	f100001f 	cmp	x0, #0x0
  401f70:	54000081 	b.ne	401f80 <serve_file+0x9c>  // b.any
  401f74:	b9401fe0 	ldr	w0, [sp, #28]
  401f78:	97ffff55 	bl	401ccc <not_found>
  401f7c:	14000007 	b	401f98 <serve_file+0xb4>
  401f80:	f9400be1 	ldr	x1, [sp, #16]
  401f84:	b9401fe0 	ldr	w0, [sp, #28]
  401f88:	97ffff06 	bl	401ba0 <headers>
  401f8c:	f94213e1 	ldr	x1, [sp, #1056]
  401f90:	b9401fe0 	ldr	w0, [sp, #28]
  401f94:	97fffd77 	bl	401570 <cat>
  401f98:	f94213e0 	ldr	x0, [sp, #1056]
  401f9c:	97fffb71 	bl	400d60 <fclose@plt>
  401fa0:	d503201f 	nop
  401fa4:	a9407bfd 	ldp	x29, x30, [sp]
  401fa8:	9110c3ff 	add	sp, sp, #0x430
  401fac:	d65f03c0 	ret

0000000000401fb0 <startup>:
  401fb0:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  401fb4:	910003fd 	mov	x29, sp
  401fb8:	f9000fe0 	str	x0, [sp, #24]
  401fbc:	b9003fff 	str	wzr, [sp, #60]
  401fc0:	52800020 	mov	w0, #0x1                   	// #1
  401fc4:	b9003be0 	str	w0, [sp, #56]
  401fc8:	52800002 	mov	w2, #0x0                   	// #0
  401fcc:	52800021 	mov	w1, #0x1                   	// #1
  401fd0:	52800040 	mov	w0, #0x2                   	// #2
  401fd4:	97fffbb3 	bl	400ea0 <socket@plt>
  401fd8:	b9003fe0 	str	w0, [sp, #60]
  401fdc:	b9403fe0 	ldr	w0, [sp, #60]
  401fe0:	3100041f 	cmn	w0, #0x1
  401fe4:	54000081 	b.ne	401ff4 <startup+0x44>  // b.any
  401fe8:	b0000000 	adrp	x0, 402000 <startup+0x50>
  401fec:	91198000 	add	x0, x0, #0x660
  401ff0:	97fffdc0 	bl	4016f0 <error_die>
  401ff4:	9100a3e0 	add	x0, sp, #0x28
  401ff8:	d2800202 	mov	x2, #0x10                  	// #16
  401ffc:	52800001 	mov	w1, #0x0                   	// #0
  402000:	97fffb6c 	bl	400db0 <memset@plt>
  402004:	52800040 	mov	w0, #0x2                   	// #2
  402008:	790053e0 	strh	w0, [sp, #40]
  40200c:	f9400fe0 	ldr	x0, [sp, #24]
  402010:	79400000 	ldrh	w0, [x0]
  402014:	97fffb73 	bl	400de0 <htons@plt>
  402018:	12003c00 	and	w0, w0, #0xffff
  40201c:	790057e0 	strh	w0, [sp, #42]
  402020:	52800000 	mov	w0, #0x0                   	// #0
  402024:	97fffb3b 	bl	400d10 <htonl@plt>
  402028:	b9002fe0 	str	w0, [sp, #44]
  40202c:	9100e3e0 	add	x0, sp, #0x38
  402030:	52800084 	mov	w4, #0x4                   	// #4
  402034:	aa0003e3 	mov	x3, x0
  402038:	52800042 	mov	w2, #0x2                   	// #2
  40203c:	52800021 	mov	w1, #0x1                   	// #1
  402040:	b9403fe0 	ldr	w0, [sp, #60]
  402044:	97fffb57 	bl	400da0 <setsockopt@plt>
  402048:	7100001f 	cmp	w0, #0x0
  40204c:	5400008a 	b.ge	40205c <startup+0xac>  // b.tcont
  402050:	90000000 	adrp	x0, 402000 <startup+0x50>
  402054:	9119a000 	add	x0, x0, #0x668
  402058:	97fffda6 	bl	4016f0 <error_die>
  40205c:	9100a3e0 	add	x0, sp, #0x28
  402060:	52800202 	mov	w2, #0x10                  	// #16
  402064:	aa0003e1 	mov	x1, x0
  402068:	b9403fe0 	ldr	w0, [sp, #60]
  40206c:	97fffb2d 	bl	400d20 <bind@plt>
  402070:	7100001f 	cmp	w0, #0x0
  402074:	5400008a 	b.ge	402084 <startup+0xd4>  // b.tcont
  402078:	90000000 	adrp	x0, 402000 <startup+0x50>
  40207c:	911a0000 	add	x0, x0, #0x680
  402080:	97fffd9c 	bl	4016f0 <error_die>
  402084:	f9400fe0 	ldr	x0, [sp, #24]
  402088:	79400000 	ldrh	w0, [x0]
  40208c:	7100001f 	cmp	w0, #0x0
  402090:	54000261 	b.ne	4020dc <startup+0x12c>  // b.any
  402094:	52800200 	mov	w0, #0x10                  	// #16
  402098:	b90027e0 	str	w0, [sp, #36]
  40209c:	910093e1 	add	x1, sp, #0x24
  4020a0:	9100a3e0 	add	x0, sp, #0x28
  4020a4:	aa0103e2 	mov	x2, x1
  4020a8:	aa0003e1 	mov	x1, x0
  4020ac:	b9403fe0 	ldr	w0, [sp, #60]
  4020b0:	97fffb8c 	bl	400ee0 <getsockname@plt>
  4020b4:	3100041f 	cmn	w0, #0x1
  4020b8:	54000081 	b.ne	4020c8 <startup+0x118>  // b.any
  4020bc:	90000000 	adrp	x0, 402000 <startup+0x50>
  4020c0:	911a2000 	add	x0, x0, #0x688
  4020c4:	97fffd8b 	bl	4016f0 <error_die>
  4020c8:	794057e0 	ldrh	w0, [sp, #42]
  4020cc:	97fffb31 	bl	400d90 <ntohs@plt>
  4020d0:	12003c01 	and	w1, w0, #0xffff
  4020d4:	f9400fe0 	ldr	x0, [sp, #24]
  4020d8:	79000001 	strh	w1, [x0]
  4020dc:	528000a1 	mov	w1, #0x5                   	// #5
  4020e0:	b9403fe0 	ldr	w0, [sp, #60]
  4020e4:	97fffb07 	bl	400d00 <listen@plt>
  4020e8:	7100001f 	cmp	w0, #0x0
  4020ec:	5400008a 	b.ge	4020fc <startup+0x14c>  // b.tcont
  4020f0:	90000000 	adrp	x0, 402000 <startup+0x50>
  4020f4:	911a6000 	add	x0, x0, #0x698
  4020f8:	97fffd7e 	bl	4016f0 <error_die>
  4020fc:	b9403fe0 	ldr	w0, [sp, #60]
  402100:	a8c47bfd 	ldp	x29, x30, [sp], #64
  402104:	d65f03c0 	ret

0000000000402108 <unimplemented>:
  402108:	d11083ff 	sub	sp, sp, #0x420
  40210c:	a9007bfd 	stp	x29, x30, [sp]
  402110:	910003fd 	mov	x29, sp
  402114:	b9001fe0 	str	w0, [sp, #28]
  402118:	910083e2 	add	x2, sp, #0x20
  40211c:	90000000 	adrp	x0, 402000 <startup+0x50>
  402120:	911a8001 	add	x1, x0, #0x6a0
  402124:	aa0203e0 	mov	x0, x2
  402128:	97fffb02 	bl	400d30 <sprintf@plt>
  40212c:	910083e0 	add	x0, sp, #0x20
  402130:	97fffae0 	bl	400cb0 <strlen@plt>
  402134:	aa0003e1 	mov	x1, x0
  402138:	910083e0 	add	x0, sp, #0x20
  40213c:	52800003 	mov	w3, #0x0                   	// #0
  402140:	aa0103e2 	mov	x2, x1
  402144:	aa0003e1 	mov	x1, x0
  402148:	b9401fe0 	ldr	w0, [sp, #28]
  40214c:	97fffb51 	bl	400e90 <send@plt>
  402150:	910083e2 	add	x2, sp, #0x20
  402154:	90000000 	adrp	x0, 402000 <startup+0x50>
  402158:	9114e001 	add	x1, x0, #0x538
  40215c:	aa0203e0 	mov	x0, x2
  402160:	97fffaf4 	bl	400d30 <sprintf@plt>
  402164:	910083e0 	add	x0, sp, #0x20
  402168:	97fffad2 	bl	400cb0 <strlen@plt>
  40216c:	aa0003e1 	mov	x1, x0
  402170:	910083e0 	add	x0, sp, #0x20
  402174:	52800003 	mov	w3, #0x0                   	// #0
  402178:	aa0103e2 	mov	x2, x1
  40217c:	aa0003e1 	mov	x1, x0
  402180:	b9401fe0 	ldr	w0, [sp, #28]
  402184:	97fffb43 	bl	400e90 <send@plt>
  402188:	910083e2 	add	x2, sp, #0x20
  40218c:	90000000 	adrp	x0, 402000 <startup+0x50>
  402190:	91156001 	add	x1, x0, #0x558
  402194:	aa0203e0 	mov	x0, x2
  402198:	97fffae6 	bl	400d30 <sprintf@plt>
  40219c:	910083e0 	add	x0, sp, #0x20
  4021a0:	97fffac4 	bl	400cb0 <strlen@plt>
  4021a4:	aa0003e1 	mov	x1, x0
  4021a8:	910083e0 	add	x0, sp, #0x20
  4021ac:	52800003 	mov	w3, #0x0                   	// #0
  4021b0:	aa0103e2 	mov	x2, x1
  4021b4:	aa0003e1 	mov	x1, x0
  4021b8:	b9401fe0 	ldr	w0, [sp, #28]
  4021bc:	97fffb35 	bl	400e90 <send@plt>
  4021c0:	910083e2 	add	x2, sp, #0x20
  4021c4:	90000000 	adrp	x0, 402000 <startup+0x50>
  4021c8:	91108001 	add	x1, x0, #0x420
  4021cc:	aa0203e0 	mov	x0, x2
  4021d0:	97fffad8 	bl	400d30 <sprintf@plt>
  4021d4:	910083e0 	add	x0, sp, #0x20
  4021d8:	97fffab6 	bl	400cb0 <strlen@plt>
  4021dc:	aa0003e1 	mov	x1, x0
  4021e0:	910083e0 	add	x0, sp, #0x20
  4021e4:	52800003 	mov	w3, #0x0                   	// #0
  4021e8:	aa0103e2 	mov	x2, x1
  4021ec:	aa0003e1 	mov	x1, x0
  4021f0:	b9401fe0 	ldr	w0, [sp, #28]
  4021f4:	97fffb27 	bl	400e90 <send@plt>
  4021f8:	910083e2 	add	x2, sp, #0x20
  4021fc:	90000000 	adrp	x0, 402000 <startup+0x50>
  402200:	911b2001 	add	x1, x0, #0x6c8
  402204:	aa0203e0 	mov	x0, x2
  402208:	97fffaca 	bl	400d30 <sprintf@plt>
  40220c:	910083e0 	add	x0, sp, #0x20
  402210:	97fffaa8 	bl	400cb0 <strlen@plt>
  402214:	aa0003e1 	mov	x1, x0
  402218:	910083e0 	add	x0, sp, #0x20
  40221c:	52800003 	mov	w3, #0x0                   	// #0
  402220:	aa0103e2 	mov	x2, x1
  402224:	aa0003e1 	mov	x1, x0
  402228:	b9401fe0 	ldr	w0, [sp, #28]
  40222c:	97fffb19 	bl	400e90 <send@plt>
  402230:	910083e2 	add	x2, sp, #0x20
  402234:	90000000 	adrp	x0, 402000 <startup+0x50>
  402238:	911be001 	add	x1, x0, #0x6f8
  40223c:	aa0203e0 	mov	x0, x2
  402240:	97fffabc 	bl	400d30 <sprintf@plt>
  402244:	910083e0 	add	x0, sp, #0x20
  402248:	97fffa9a 	bl	400cb0 <strlen@plt>
  40224c:	aa0003e1 	mov	x1, x0
  402250:	910083e0 	add	x0, sp, #0x20
  402254:	52800003 	mov	w3, #0x0                   	// #0
  402258:	aa0103e2 	mov	x2, x1
  40225c:	aa0003e1 	mov	x1, x0
  402260:	b9401fe0 	ldr	w0, [sp, #28]
  402264:	97fffb0b 	bl	400e90 <send@plt>
  402268:	910083e2 	add	x2, sp, #0x20
  40226c:	90000000 	adrp	x0, 402000 <startup+0x50>
  402270:	911c4001 	add	x1, x0, #0x710
  402274:	aa0203e0 	mov	x0, x2
  402278:	97fffaae 	bl	400d30 <sprintf@plt>
  40227c:	910083e0 	add	x0, sp, #0x20
  402280:	97fffa8c 	bl	400cb0 <strlen@plt>
  402284:	aa0003e1 	mov	x1, x0
  402288:	910083e0 	add	x0, sp, #0x20
  40228c:	52800003 	mov	w3, #0x0                   	// #0
  402290:	aa0103e2 	mov	x2, x1
  402294:	aa0003e1 	mov	x1, x0
  402298:	b9401fe0 	ldr	w0, [sp, #28]
  40229c:	97fffafd 	bl	400e90 <send@plt>
  4022a0:	910083e2 	add	x2, sp, #0x20
  4022a4:	90000000 	adrp	x0, 402000 <startup+0x50>
  4022a8:	91190001 	add	x1, x0, #0x640
  4022ac:	aa0203e0 	mov	x0, x2
  4022b0:	97fffaa0 	bl	400d30 <sprintf@plt>
  4022b4:	910083e0 	add	x0, sp, #0x20
  4022b8:	97fffa7e 	bl	400cb0 <strlen@plt>
  4022bc:	aa0003e1 	mov	x1, x0
  4022c0:	910083e0 	add	x0, sp, #0x20
  4022c4:	52800003 	mov	w3, #0x0                   	// #0
  4022c8:	aa0103e2 	mov	x2, x1
  4022cc:	aa0003e1 	mov	x1, x0
  4022d0:	b9401fe0 	ldr	w0, [sp, #28]
  4022d4:	97fffaef 	bl	400e90 <send@plt>
  4022d8:	d503201f 	nop
  4022dc:	a9407bfd 	ldp	x29, x30, [sp]
  4022e0:	911083ff 	add	sp, sp, #0x420
  4022e4:	d65f03c0 	ret

00000000004022e8 <main>:
  4022e8:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  4022ec:	910003fd 	mov	x29, sp
  4022f0:	12800000 	mov	w0, #0xffffffff            	// #-1
  4022f4:	b9003fe0 	str	w0, [sp, #60]
  4022f8:	5281f400 	mov	w0, #0xfa0                 	// #4000
  4022fc:	790077e0 	strh	w0, [sp, #58]
  402300:	12800000 	mov	w0, #0xffffffff            	// #-1
  402304:	b90037e0 	str	w0, [sp, #52]
  402308:	52800200 	mov	w0, #0x10                  	// #16
  40230c:	b9001fe0 	str	w0, [sp, #28]
  402310:	9100ebe0 	add	x0, sp, #0x3a
  402314:	97ffff27 	bl	401fb0 <startup>
  402318:	b9003fe0 	str	w0, [sp, #60]
  40231c:	794077e0 	ldrh	w0, [sp, #58]
  402320:	2a0003e1 	mov	w1, w0
  402324:	90000000 	adrp	x0, 402000 <startup+0x50>
  402328:	911d0000 	add	x0, x0, #0x740
  40232c:	97fffae9 	bl	400ed0 <printf@plt>
  402330:	910073e1 	add	x1, sp, #0x1c
  402334:	910083e0 	add	x0, sp, #0x20
  402338:	aa0103e2 	mov	x2, x1
  40233c:	aa0003e1 	mov	x1, x0
  402340:	b9403fe0 	ldr	w0, [sp, #60]
  402344:	97fffa9f 	bl	400dc0 <accept@plt>
  402348:	b90037e0 	str	w0, [sp, #52]
  40234c:	b94037e0 	ldr	w0, [sp, #52]
  402350:	3100041f 	cmn	w0, #0x1
  402354:	54000081 	b.ne	402364 <main+0x7c>  // b.any
  402358:	90000000 	adrp	x0, 402000 <startup+0x50>
  40235c:	911d8000 	add	x0, x0, #0x760
  402360:	97fffce4 	bl	4016f0 <error_die>
  402364:	9100d3e0 	add	x0, sp, #0x34
  402368:	97fffb3c 	bl	401058 <accept_request>
  40236c:	17fffff1 	b	402330 <main+0x48>

Disassembly of section .fini:

0000000000402370 <_fini>:
  402370:	d503233f 	paciasp
  402374:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  402378:	910003fd 	mov	x29, sp
  40237c:	a8c17bfd 	ldp	x29, x30, [sp], #16
  402380:	d50323bf 	autiasp
  402384:	d65f03c0 	ret
