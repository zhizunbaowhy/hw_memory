benchmark.out：     文件格式 elf64-littleaarch64


Disassembly of section .init:

0000000000400c68 <_init>:
  400c68:       d503201f        nop
  400c6c:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
  400c70:       910003fd        mov     x29, sp
  400c74:       940000b4        bl      400f44 <call_weak_fn>
  400c78:       a8c17bfd        ldp     x29, x30, [sp], #16
  400c7c:       d65f03c0        ret

Disassembly of section .plt:

0000000000400c80 <.plt>:
  400c80:       a9bf7bf0        stp     x16, x30, [sp, #-16]!
  400c84:       f00000f0        adrp    x16, 41f000 <__FRAME_END__+0x1c5f4>
  400c88:       f947fe11        ldr     x17, [x16, #4088]
  400c8c:       913fe210        add     x16, x16, #0xff8
  400c90:       d61f0220        br      x17
  400c94:       d503201f        nop
  400c98:       d503201f        nop
  400c9c:       d503201f        nop

0000000000400ca0 <strlen@plt>:
  400ca0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400ca4:       f9400211        ldr     x17, [x16]
  400ca8:       91000210        add     x16, x16, #0x0
  400cac:       d61f0220        br      x17

0000000000400cb0 <exit@plt>:
  400cb0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400cb4:       f9400611        ldr     x17, [x16, #8]
  400cb8:       91002210        add     x16, x16, #0x8
  400cbc:       d61f0220        br      x17

0000000000400cc0 <__libc_start_main@plt>:
  400cc0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400cc4:       f9400a11        ldr     x17, [x16, #16]
  400cc8:       91004210        add     x16, x16, #0x10
  400ccc:       d61f0220        br      x17

0000000000400cd0 <execl@plt>:
  400cd0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400cd4:       f9400e11        ldr     x17, [x16, #24]
  400cd8:       91006210        add     x16, x16, #0x18
  400cdc:       d61f0220        br      x17

0000000000400ce0 <perror@plt>:
  400ce0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400ce4:       f9401211        ldr     x17, [x16, #32]
  400ce8:       91008210        add     x16, x16, #0x20
  400cec:       d61f0220        br      x17

0000000000400cf0 <listen@plt>:
  400cf0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400cf4:       f9401611        ldr     x17, [x16, #40]
  400cf8:       9100a210        add     x16, x16, #0x28
  400cfc:       d61f0220        br      x17

0000000000400d00 <htonl@plt>:
  400d00:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400d04:       f9401a11        ldr     x17, [x16, #48]
  400d08:       9100c210        add     x16, x16, #0x30
  400d0c:       d61f0220        br      x17

0000000000400d10 <bind@plt>:
  400d10:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400d14:       f9401e11        ldr     x17, [x16, #56]
  400d18:       9100e210        add     x16, x16, #0x38
  400d1c:       d61f0220        br      x17

0000000000400d20 <sprintf@plt>:
  400d20:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400d24:       f9402211        ldr     x17, [x16, #64]
  400d28:       91010210        add     x16, x16, #0x40
  400d2c:       d61f0220        br      x17

0000000000400d30 <pipe@plt>:
  400d30:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400d34:       f9402611        ldr     x17, [x16, #72]
  400d38:       91012210        add     x16, x16, #0x48
  400d3c:       d61f0220        br      x17

0000000000400d40 <fork@plt>:
  400d40:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400d44:       f9402a11        ldr     x17, [x16, #80]
  400d48:       91014210        add     x16, x16, #0x50
  400d4c:       d61f0220        br      x17

0000000000400d50 <fclose@plt>:
  400d50:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400d54:       f9402e11        ldr     x17, [x16, #88]
  400d58:       91016210        add     x16, x16, #0x58
  400d5c:       d61f0220        br      x17

0000000000400d60 <atoi@plt>:
  400d60:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400d64:       f9403211        ldr     x17, [x16, #96]
  400d68:       91018210        add     x16, x16, #0x60
  400d6c:       d61f0220        br      x17

0000000000400d70 <fopen@plt>:
  400d70:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400d74:       f9403611        ldr     x17, [x16, #104]
  400d78:       9101a210        add     x16, x16, #0x68
  400d7c:       d61f0220        br      x17

0000000000400d80 <ntohs@plt>:
  400d80:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400d84:       f9403a11        ldr     x17, [x16, #112]
  400d88:       9101c210        add     x16, x16, #0x70
  400d8c:       d61f0220        br      x17

0000000000400d90 <setsockopt@plt>:
  400d90:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400d94:       f9403e11        ldr     x17, [x16, #120]
  400d98:       9101e210        add     x16, x16, #0x78
  400d9c:       d61f0220        br      x17

0000000000400da0 <memset@plt>:
  400da0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400da4:       f9404211        ldr     x17, [x16, #128]
  400da8:       91020210        add     x16, x16, #0x80
  400dac:       d61f0220        br      x17

0000000000400db0 <accept@plt>:
  400db0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400db4:       f9404611        ldr     x17, [x16, #136]
  400db8:       91022210        add     x16, x16, #0x88
  400dbc:       d61f0220        br      x17

0000000000400dc0 <strcasecmp@plt>:
  400dc0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400dc4:       f9404a11        ldr     x17, [x16, #144]
  400dc8:       91024210        add     x16, x16, #0x90
  400dcc:       d61f0220        br      x17

0000000000400dd0 <htons@plt>:
  400dd0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400dd4:       f9404e11        ldr     x17, [x16, #152]
  400dd8:       91026210        add     x16, x16, #0x98
  400ddc:       d61f0220        br      x17

0000000000400de0 <putenv@plt>:
  400de0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400de4:       f9405211        ldr     x17, [x16, #160]
  400de8:       91028210        add     x16, x16, #0xa0
  400dec:       d61f0220        br      x17

0000000000400df0 <close@plt>:
  400df0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400df4:       f9405611        ldr     x17, [x16, #168]
  400df8:       9102a210        add     x16, x16, #0xa8
  400dfc:       d61f0220        br      x17

0000000000400e00 <recv@plt>:
  400e00:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400e04:       f9405a11        ldr     x17, [x16, #176]
  400e08:       9102c210        add     x16, x16, #0xb0
  400e0c:       d61f0220        br      x17

0000000000400e10 <__gmon_start__@plt>:
  400e10:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400e14:       f9405e11        ldr     x17, [x16, #184]
  400e18:       9102e210        add     x16, x16, #0xb8
  400e1c:       d61f0220        br      x17

0000000000400e20 <stat@plt>:
  400e20:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400e24:       f9406211        ldr     x17, [x16, #192]
  400e28:       91030210        add     x16, x16, #0xc0
  400e2c:       d61f0220        br      x17

0000000000400e30 <write@plt>:
  400e30:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400e34:       f9406611        ldr     x17, [x16, #200]
  400e38:       91032210        add     x16, x16, #0xc8
  400e3c:       d61f0220        br      x17

0000000000400e40 <abort@plt>:
  400e40:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400e44:       f9406a11        ldr     x17, [x16, #208]
  400e48:       91034210        add     x16, x16, #0xd0
  400e4c:       d61f0220        br      x17

0000000000400e50 <feof@plt>:
  400e50:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400e54:       f9406e11        ldr     x17, [x16, #216]
  400e58:       91036210        add     x16, x16, #0xd8
  400e5c:       d61f0220        br      x17

0000000000400e60 <strcmp@plt>:
  400e60:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400e64:       f9407211        ldr     x17, [x16, #224]
  400e68:       91038210        add     x16, x16, #0xe0
  400e6c:       d61f0220        br      x17

0000000000400e70 <__ctype_b_loc@plt>:
  400e70:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400e74:       f9407611        ldr     x17, [x16, #232]
  400e78:       9103a210        add     x16, x16, #0xe8
  400e7c:       d61f0220        br      x17

0000000000400e80 <send@plt>:
  400e80:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400e84:       f9407a11        ldr     x17, [x16, #240]
  400e88:       9103c210        add     x16, x16, #0xf0
  400e8c:       d61f0220        br      x17

0000000000400e90 <socket@plt>:
  400e90:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400e94:       f9407e11        ldr     x17, [x16, #248]
  400e98:       9103e210        add     x16, x16, #0xf8
  400e9c:       d61f0220        br      x17

0000000000400ea0 <read@plt>:
  400ea0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400ea4:       f9408211        ldr     x17, [x16, #256]
  400ea8:       91040210        add     x16, x16, #0x100
  400eac:       d61f0220        br      x17

0000000000400eb0 <dup2@plt>:
  400eb0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400eb4:       f9408611        ldr     x17, [x16, #264]
  400eb8:       91042210        add     x16, x16, #0x108
  400ebc:       d61f0220        br      x17

0000000000400ec0 <printf@plt>:
  400ec0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400ec4:       f9408a11        ldr     x17, [x16, #272]
  400ec8:       91044210        add     x16, x16, #0x110
  400ecc:       d61f0220        br      x17

0000000000400ed0 <getsockname@plt>:
  400ed0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400ed4:       f9408e11        ldr     x17, [x16, #280]
  400ed8:       91046210        add     x16, x16, #0x118
  400edc:       d61f0220        br      x17

0000000000400ee0 <waitpid@plt>:
  400ee0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400ee4:       f9409211        ldr     x17, [x16, #288]
  400ee8:       91048210        add     x16, x16, #0x120
  400eec:       d61f0220        br      x17

0000000000400ef0 <fgets@plt>:
  400ef0:       90000110        adrp    x16, 420000 <strlen@GLIBC_2.17>
  400ef4:       f9409611        ldr     x17, [x16, #296]
  400ef8:       9104a210        add     x16, x16, #0x128
  400efc:       d61f0220        br      x17

Disassembly of section .text:

0000000000400f00 <_start>:
  400f00:       d503201f        nop
  400f04:       d280001d        mov     x29, #0x0                       // #0
  400f08:       d280001e        mov     x30, #0x0                       // #0
  400f0c:       aa0003e5        mov     x5, x0
  400f10:       f94003e1        ldr     x1, [sp]
  400f14:       910023e2        add     x2, sp, #0x8
  400f18:       910003e6        mov     x6, sp
  400f1c:       90000000        adrp    x0, 400000 <__abi_tag-0x278>
  400f20:       913cd000        add     x0, x0, #0xf34
  400f24:       d2800003        mov     x3, #0x0                        // #0
  400f28:       d2800004        mov     x4, #0x0                        // #0
  400f2c:       97ffff65        bl      400cc0 <__libc_start_main@plt>
  400f30:       97ffffc4        bl      400e40 <abort@plt>

0000000000400f34 <__wrap_main>:
  400f34:       d503201f        nop
  400f38:       140004d9        b       40229c <main>
  400f3c:       d503201f        nop

0000000000400f40 <_dl_relocate_static_pie>:
  400f40:       d65f03c0        ret

0000000000400f44 <call_weak_fn>:
  400f44:       f00000e0        adrp    x0, 41f000 <__FRAME_END__+0x1c5f4>
  400f48:       f947ec00        ldr     x0, [x0, #4056]
  400f4c:       b4000040        cbz     x0, 400f54 <call_weak_fn+0x10>
  400f50:       17ffffb0        b       400e10 <__gmon_start__@plt>
  400f54:       d65f03c0        ret
  400f58:       d503201f        nop
  400f5c:       d503201f        nop

0000000000400f60 <deregister_tm_clones>:
  400f60:       90000100        adrp    x0, 420000 <strlen@GLIBC_2.17>
  400f64:       91050000        add     x0, x0, #0x140
  400f68:       90000101        adrp    x1, 420000 <strlen@GLIBC_2.17>
  400f6c:       91050021        add     x1, x1, #0x140
  400f70:       eb00003f        cmp     x1, x0
  400f74:       540000c0        b.eq    400f8c <deregister_tm_clones+0x2c>  // b.none
  400f78:       f00000e1        adrp    x1, 41f000 <__FRAME_END__+0x1c5f4>
  400f7c:       f947e821        ldr     x1, [x1, #4048]
  400f80:       b4000061        cbz     x1, 400f8c <deregister_tm_clones+0x2c>
  400f84:       aa0103f0        mov     x16, x1
  400f88:       d61f0200        br      x16
  400f8c:       d65f03c0        ret

0000000000400f90 <register_tm_clones>:
  400f90:       90000100        adrp    x0, 420000 <strlen@GLIBC_2.17>
  400f94:       91050000        add     x0, x0, #0x140
  400f98:       90000101        adrp    x1, 420000 <strlen@GLIBC_2.17>
  400f9c:       91050021        add     x1, x1, #0x140
  400fa0:       cb000021        sub     x1, x1, x0
  400fa4:       d37ffc22        lsr     x2, x1, #63
  400fa8:       8b810c41        add     x1, x2, x1, asr #3
  400fac:       9341fc21        asr     x1, x1, #1
  400fb0:       b40000c1        cbz     x1, 400fc8 <register_tm_clones+0x38>
  400fb4:       f00000e2        adrp    x2, 41f000 <__FRAME_END__+0x1c5f4>
  400fb8:       f947f042        ldr     x2, [x2, #4064]
  400fbc:       b4000062        cbz     x2, 400fc8 <register_tm_clones+0x38>
  400fc0:       aa0203f0        mov     x16, x2
  400fc4:       d61f0200        br      x16
  400fc8:       d65f03c0        ret
  400fcc:       d503201f        nop

0000000000400fd0 <__do_global_dtors_aux>:
  400fd0:       a9be7bfd        stp     x29, x30, [sp, #-32]!
  400fd4:       910003fd        mov     x29, sp
  400fd8:       f9000bf3        str     x19, [sp, #16]
  400fdc:       90000113        adrp    x19, 420000 <strlen@GLIBC_2.17>
  400fe0:       39450260        ldrb    w0, [x19, #320]
  400fe4:       35000080        cbnz    w0, 400ff4 <__do_global_dtors_aux+0x24>
  400fe8:       97ffffde        bl      400f60 <deregister_tm_clones>
  400fec:       52800020        mov     w0, #0x1                        // #1
  400ff0:       39050260        strb    w0, [x19, #320]
  400ff4:       f9400bf3        ldr     x19, [sp, #16]
  400ff8:       a8c27bfd        ldp     x29, x30, [sp], #32
  400ffc:       d65f03c0        ret

0000000000401000 <frame_dummy>:
  401000:       17ffffe4        b       400f90 <register_tm_clones>

0000000000401004 <accept_request>:
  401004:       d12343ff        sub     sp, sp, #0x8d0
  401008:       a9007bfd        stp     x29, x30, [sp]
  40100c:       910003fd        mov     x29, sp
  401010:       f9000fe0        str     x0, [sp, #24]
  401014:       f9400fe0        ldr     x0, [sp, #24]
  401018:       b908a7e0        str     w0, [sp, #2212]
  40101c:       b908b7ff        str     wzr, [sp, #2228]
  401020:       f90457ff        str     xzr, [sp, #2216]
  401024:       911283e0        add     x0, sp, #0x4a0
  401028:       52808002        mov     w2, #0x400                      // #1024
  40102c:       aa0003e1        mov     x1, x0
  401030:       b948a7e0        ldr     w0, [sp, #2212]
  401034:       94000281        bl      401a38 <get_line>
  401038:       93407c00        sxtw    x0, w0
  40103c:       f90467e0        str     x0, [sp, #2248]
  401040:       f90463ff        str     xzr, [sp, #2240]
  401044:       f9045fff        str     xzr, [sp, #2232]
  401048:       1400000a        b       401070 <accept_request+0x6c>
  40104c:       f94463e0        ldr     x0, [sp, #2240]
  401050:       911283e1        add     x1, sp, #0x4a0
  401054:       38606822        ldrb    w2, [x1, x0]
  401058:       f94463e0        ldr     x0, [sp, #2240]
  40105c:       910e83e1        add     x1, sp, #0x3a0
  401060:       38206822        strb    w2, [x1, x0]
  401064:       f94463e0        ldr     x0, [sp, #2240]
  401068:       91000400        add     x0, x0, #0x1
  40106c:       f90463e0        str     x0, [sp, #2240]
  401070:       97ffff80        bl      400e70 <__ctype_b_loc@plt>
  401074:       f9400001        ldr     x1, [x0]
  401078:       f94463e0        ldr     x0, [sp, #2240]
  40107c:       911283e2        add     x2, sp, #0x4a0
  401080:       38606840        ldrb    w0, [x2, x0]
  401084:       92401c00        and     x0, x0, #0xff
  401088:       d37ff800        lsl     x0, x0, #1
  40108c:       8b000020        add     x0, x1, x0
  401090:       79400000        ldrh    w0, [x0]
  401094:       12130000        and     w0, w0, #0x2000
  401098:       7100001f        cmp     w0, #0x0
  40109c:       54000081        b.ne    4010ac <accept_request+0xa8>  // b.any
  4010a0:       f94463e0        ldr     x0, [sp, #2240]
  4010a4:       f103f41f        cmp     x0, #0xfd
  4010a8:       54fffd29        b.ls    40104c <accept_request+0x48>  // b.plast
  4010ac:       f94463e0        ldr     x0, [sp, #2240]
  4010b0:       f9045fe0        str     x0, [sp, #2232]
  4010b4:       f94463e0        ldr     x0, [sp, #2240]
  4010b8:       910e83e1        add     x1, sp, #0x3a0
  4010bc:       3820683f        strb    wzr, [x1, x0]
  4010c0:       910e83e2        add     x2, sp, #0x3a0
  4010c4:       b0000000        adrp    x0, 402000 <startup+0x9c>
  4010c8:       910d0001        add     x1, x0, #0x340
  4010cc:       aa0203e0        mov     x0, x2
  4010d0:       97ffff3c        bl      400dc0 <strcasecmp@plt>
  4010d4:       7100001f        cmp     w0, #0x0
  4010d8:       54000160        b.eq    401104 <accept_request+0x100>  // b.none
  4010dc:       910e83e2        add     x2, sp, #0x3a0
  4010e0:       b0000000        adrp    x0, 402000 <startup+0x9c>
  4010e4:       910d2001        add     x1, x0, #0x348
  4010e8:       aa0203e0        mov     x0, x2
  4010ec:       97ffff35        bl      400dc0 <strcasecmp@plt>
  4010f0:       7100001f        cmp     w0, #0x0
  4010f4:       54000080        b.eq    401104 <accept_request+0x100>  // b.none
  4010f8:       b948a7e0        ldr     w0, [sp, #2212]
  4010fc:       940003f0        bl      4020bc <unimplemented>
  401100:       140000c5        b       401414 <accept_request+0x410>
  401104:       910e83e2        add     x2, sp, #0x3a0
  401108:       b0000000        adrp    x0, 402000 <startup+0x9c>
  40110c:       910d2001        add     x1, x0, #0x348
  401110:       aa0203e0        mov     x0, x2
  401114:       97ffff2b        bl      400dc0 <strcasecmp@plt>
  401118:       7100001f        cmp     w0, #0x0
  40111c:       54000061        b.ne    401128 <accept_request+0x124>  // b.any
  401120:       52800020        mov     w0, #0x1                        // #1
  401124:       b908b7e0        str     w0, [sp, #2228]
  401128:       f90463ff        str     xzr, [sp, #2240]
  40112c:       14000004        b       40113c <accept_request+0x138>
  401130:       f9445fe0        ldr     x0, [sp, #2232]
  401134:       91000400        add     x0, x0, #0x1
  401138:       f9045fe0        str     x0, [sp, #2232]
  40113c:       97ffff4d        bl      400e70 <__ctype_b_loc@plt>
  401140:       f9400001        ldr     x1, [x0]
  401144:       f9445fe0        ldr     x0, [sp, #2232]
  401148:       911283e2        add     x2, sp, #0x4a0
  40114c:       38606840        ldrb    w0, [x2, x0]
  401150:       92401c00        and     x0, x0, #0xff
  401154:       d37ff800        lsl     x0, x0, #1
  401158:       8b000020        add     x0, x1, x0
  40115c:       79400000        ldrh    w0, [x0]
  401160:       12130000        and     w0, w0, #0x2000
  401164:       7100001f        cmp     w0, #0x0
  401168:       54000240        b.eq    4011b0 <accept_request+0x1ac>  // b.none
  40116c:       f9445fe1        ldr     x1, [sp, #2232]
  401170:       f94467e0        ldr     x0, [sp, #2248]
  401174:       eb00003f        cmp     x1, x0
  401178:       54fffdc3        b.cc    401130 <accept_request+0x12c>  // b.lo, b.ul, b.last
  40117c:       1400000d        b       4011b0 <accept_request+0x1ac>
  401180:       f9445fe0        ldr     x0, [sp, #2232]
  401184:       911283e1        add     x1, sp, #0x4a0
  401188:       38606822        ldrb    w2, [x1, x0]
  40118c:       f94463e0        ldr     x0, [sp, #2240]
  401190:       910a83e1        add     x1, sp, #0x2a0
  401194:       38206822        strb    w2, [x1, x0]
  401198:       f94463e0        ldr     x0, [sp, #2240]
  40119c:       91000400        add     x0, x0, #0x1
  4011a0:       f90463e0        str     x0, [sp, #2240]
  4011a4:       f9445fe0        ldr     x0, [sp, #2232]
  4011a8:       91000400        add     x0, x0, #0x1
  4011ac:       f9045fe0        str     x0, [sp, #2232]
  4011b0:       97ffff30        bl      400e70 <__ctype_b_loc@plt>
  4011b4:       f9400001        ldr     x1, [x0]
  4011b8:       f9445fe0        ldr     x0, [sp, #2232]
  4011bc:       911283e2        add     x2, sp, #0x4a0
  4011c0:       38606840        ldrb    w0, [x2, x0]
  4011c4:       92401c00        and     x0, x0, #0xff
  4011c8:       d37ff800        lsl     x0, x0, #1
  4011cc:       8b000020        add     x0, x1, x0
  4011d0:       79400000        ldrh    w0, [x0]
  4011d4:       12130000        and     w0, w0, #0x2000
  4011d8:       7100001f        cmp     w0, #0x0
  4011dc:       54000101        b.ne    4011fc <accept_request+0x1f8>  // b.any
  4011e0:       f94463e0        ldr     x0, [sp, #2240]
  4011e4:       f103f41f        cmp     x0, #0xfd
  4011e8:       540000a8        b.hi    4011fc <accept_request+0x1f8>  // b.pmore
  4011ec:       f9445fe1        ldr     x1, [sp, #2232]
  4011f0:       f94467e0        ldr     x0, [sp, #2248]
  4011f4:       eb00003f        cmp     x1, x0
  4011f8:       54fffc43        b.cc    401180 <accept_request+0x17c>  // b.lo, b.ul, b.last
  4011fc:       f94463e0        ldr     x0, [sp, #2240]
  401200:       910a83e1        add     x1, sp, #0x2a0
  401204:       3820683f        strb    wzr, [x1, x0]
  401208:       910e83e2        add     x2, sp, #0x3a0
  40120c:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401210:       910d0001        add     x1, x0, #0x340
  401214:       aa0203e0        mov     x0, x2
  401218:       97fffeea        bl      400dc0 <strcasecmp@plt>
  40121c:       7100001f        cmp     w0, #0x0
  401220:       54000341        b.ne    401288 <accept_request+0x284>  // b.any
  401224:       910a83e0        add     x0, sp, #0x2a0
  401228:       f90457e0        str     x0, [sp, #2216]
  40122c:       14000004        b       40123c <accept_request+0x238>
  401230:       f94457e0        ldr     x0, [sp, #2216]
  401234:       91000400        add     x0, x0, #0x1
  401238:       f90457e0        str     x0, [sp, #2216]
  40123c:       f94457e0        ldr     x0, [sp, #2216]
  401240:       39400000        ldrb    w0, [x0]
  401244:       7100fc1f        cmp     w0, #0x3f
  401248:       540000a0        b.eq    40125c <accept_request+0x258>  // b.none
  40124c:       f94457e0        ldr     x0, [sp, #2216]
  401250:       39400000        ldrb    w0, [x0]
  401254:       7100001f        cmp     w0, #0x0
  401258:       54fffec1        b.ne    401230 <accept_request+0x22c>  // b.any
  40125c:       f94457e0        ldr     x0, [sp, #2216]
  401260:       39400000        ldrb    w0, [x0]
  401264:       7100fc1f        cmp     w0, #0x3f
  401268:       54000101        b.ne    401288 <accept_request+0x284>  // b.any
  40126c:       52800020        mov     w0, #0x1                        // #1
  401270:       b908b7e0        str     w0, [sp, #2228]
  401274:       f94457e0        ldr     x0, [sp, #2216]
  401278:       3900001f        strb    wzr, [x0]
  40127c:       f94457e0        ldr     x0, [sp, #2216]
  401280:       91000400        add     x0, x0, #0x1
  401284:       f90457e0        str     x0, [sp, #2216]
  401288:       910a83e0        add     x0, sp, #0x2a0
  40128c:       910283e3        add     x3, sp, #0xa0
  401290:       aa0003e2        mov     x2, x0
  401294:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401298:       910d4001        add     x1, x0, #0x350
  40129c:       aa0303e0        mov     x0, x3
  4012a0:       97fffea0        bl      400d20 <sprintf@plt>
  4012a4:       910283e0        add     x0, sp, #0xa0
  4012a8:       97fffe7e        bl      400ca0 <strlen@plt>
  4012ac:       d1000400        sub     x0, x0, #0x1
  4012b0:       910283e1        add     x1, sp, #0xa0
  4012b4:       38606820        ldrb    w0, [x1, x0]
  4012b8:       7100bc1f        cmp     w0, #0x2f
  4012bc:       540001a1        b.ne    4012f0 <accept_request+0x2ec>  // b.any
  4012c0:       910283e0        add     x0, sp, #0xa0
  4012c4:       97fffe77        bl      400ca0 <strlen@plt>
  4012c8:       aa0003e1        mov     x1, x0
  4012cc:       910283e0        add     x0, sp, #0xa0
  4012d0:       8b010002        add     x2, x0, x1
  4012d4:       b0000000        adrp    x0, 402000 <startup+0x9c>
  4012d8:       910d8001        add     x1, x0, #0x360
  4012dc:       aa0203e0        mov     x0, x2
  4012e0:       f9400022        ldr     x2, [x1]
  4012e4:       f9000002        str     x2, [x0]
  4012e8:       b8407021        ldur    w1, [x1, #7]
  4012ec:       b8007001        stur    w1, [x0, #7]
  4012f0:       910083e1        add     x1, sp, #0x20
  4012f4:       910283e0        add     x0, sp, #0xa0
  4012f8:       97fffeca        bl      400e20 <stat@plt>
  4012fc:       3100041f        cmn     w0, #0x1
  401300:       540002c1        b.ne    401358 <accept_request+0x354>  // b.any
  401304:       14000008        b       401324 <accept_request+0x320>
  401308:       911283e0        add     x0, sp, #0x4a0
  40130c:       52808002        mov     w2, #0x400                      // #1024
  401310:       aa0003e1        mov     x1, x0
  401314:       b948a7e0        ldr     w0, [sp, #2212]
  401318:       940001c8        bl      401a38 <get_line>
  40131c:       93407c00        sxtw    x0, w0
  401320:       f90467e0        str     x0, [sp, #2248]
  401324:       f94467e0        ldr     x0, [sp, #2248]
  401328:       f100001f        cmp     x0, #0x0
  40132c:       54000100        b.eq    40134c <accept_request+0x348>  // b.none
  401330:       911283e0        add     x0, sp, #0x4a0
  401334:       aa0003e1        mov     x1, x0
  401338:       b0000000        adrp    x0, 402000 <startup+0x9c>
  40133c:       910dc000        add     x0, x0, #0x370
  401340:       97fffec8        bl      400e60 <strcmp@plt>
  401344:       7100001f        cmp     w0, #0x0
  401348:       54fffe01        b.ne    401308 <accept_request+0x304>  // b.any
  40134c:       b948a7e0        ldr     w0, [sp, #2212]
  401350:       9400024c        bl      401c80 <not_found>
  401354:       1400002e        b       40140c <accept_request+0x408>
  401358:       b94033e0        ldr     w0, [sp, #48]
  40135c:       12140c00        and     w0, w0, #0xf000
  401360:       7140101f        cmp     w0, #0x4, lsl #12
  401364:       540001a1        b.ne    401398 <accept_request+0x394>  // b.any
  401368:       910283e0        add     x0, sp, #0xa0
  40136c:       97fffe4d        bl      400ca0 <strlen@plt>
  401370:       aa0003e1        mov     x1, x0
  401374:       910283e0        add     x0, sp, #0xa0
  401378:       8b010002        add     x2, x0, x1
  40137c:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401380:       910de001        add     x1, x0, #0x378
  401384:       aa0203e0        mov     x0, x2
  401388:       f9400022        ldr     x2, [x1]
  40138c:       f9000002        str     x2, [x0]
  401390:       b9400821        ldr     w1, [x1, #8]
  401394:       b9000801        str     w1, [x0, #8]
  401398:       b94033e0        ldr     w0, [sp, #48]
  40139c:       121a0000        and     w0, w0, #0x40
  4013a0:       7100001f        cmp     w0, #0x0
  4013a4:       54000121        b.ne    4013c8 <accept_request+0x3c4>  // b.any
  4013a8:       b94033e0        ldr     w0, [sp, #48]
  4013ac:       121d0000        and     w0, w0, #0x8
  4013b0:       7100001f        cmp     w0, #0x0
  4013b4:       540000a1        b.ne    4013c8 <accept_request+0x3c4>  // b.any
  4013b8:       b94033e0        ldr     w0, [sp, #48]
  4013bc:       12000000        and     w0, w0, #0x1
  4013c0:       7100001f        cmp     w0, #0x0
  4013c4:       54000060        b.eq    4013d0 <accept_request+0x3cc>  // b.none
  4013c8:       52800020        mov     w0, #0x1                        // #1
  4013cc:       b908b7e0        str     w0, [sp, #2228]
  4013d0:       b948b7e0        ldr     w0, [sp, #2228]
  4013d4:       7100001f        cmp     w0, #0x0
  4013d8:       540000c1        b.ne    4013f0 <accept_request+0x3ec>  // b.any
  4013dc:       910283e0        add     x0, sp, #0xa0
  4013e0:       aa0003e1        mov     x1, x0
  4013e4:       b948a7e0        ldr     w0, [sp, #2212]
  4013e8:       940002ac        bl      401e98 <serve_file>
  4013ec:       14000008        b       40140c <accept_request+0x408>
  4013f0:       910e83e1        add     x1, sp, #0x3a0
  4013f4:       910283e0        add     x0, sp, #0xa0
  4013f8:       f94457e3        ldr     x3, [sp, #2216]
  4013fc:       aa0103e2        mov     x2, x1
  401400:       aa0003e1        mov     x1, x0
  401404:       b948a7e0        ldr     w0, [sp, #2212]
  401408:       940000ac        bl      4016b8 <execute_cgi>
  40140c:       b948a7e0        ldr     w0, [sp, #2212]
  401410:       97fffe78        bl      400df0 <close@plt>
  401414:       a9407bfd        ldp     x29, x30, [sp]
  401418:       912343ff        add     sp, sp, #0x8d0
  40141c:       d65f03c0        ret

0000000000401420 <bad_request>:
  401420:       d11083ff        sub     sp, sp, #0x420
  401424:       a9007bfd        stp     x29, x30, [sp]
  401428:       910003fd        mov     x29, sp
  40142c:       b9001fe0        str     w0, [sp, #28]
  401430:       910083e2        add     x2, sp, #0x20
  401434:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401438:       910e2001        add     x1, x0, #0x388
  40143c:       aa0203e0        mov     x0, x2
  401440:       97fffe38        bl      400d20 <sprintf@plt>
  401444:       910083e0        add     x0, sp, #0x20
  401448:       52800003        mov     w3, #0x0                        // #0
  40144c:       d2808002        mov     x2, #0x400                      // #1024
  401450:       aa0003e1        mov     x1, x0
  401454:       b9401fe0        ldr     w0, [sp, #28]
  401458:       97fffe8a        bl      400e80 <send@plt>
  40145c:       910083e2        add     x2, sp, #0x20
  401460:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401464:       910ea001        add     x1, x0, #0x3a8
  401468:       aa0203e0        mov     x0, x2
  40146c:       97fffe2d        bl      400d20 <sprintf@plt>
  401470:       910083e0        add     x0, sp, #0x20
  401474:       52800003        mov     w3, #0x0                        // #0
  401478:       d2808002        mov     x2, #0x400                      // #1024
  40147c:       aa0003e1        mov     x1, x0
  401480:       b9401fe0        ldr     w0, [sp, #28]
  401484:       97fffe7f        bl      400e80 <send@plt>
  401488:       910083e2        add     x2, sp, #0x20
  40148c:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401490:       910f2001        add     x1, x0, #0x3c8
  401494:       aa0203e0        mov     x0, x2
  401498:       97fffe22        bl      400d20 <sprintf@plt>
  40149c:       910083e0        add     x0, sp, #0x20
  4014a0:       52800003        mov     w3, #0x0                        // #0
  4014a4:       d2808002        mov     x2, #0x400                      // #1024
  4014a8:       aa0003e1        mov     x1, x0
  4014ac:       b9401fe0        ldr     w0, [sp, #28]
  4014b0:       97fffe74        bl      400e80 <send@plt>
  4014b4:       910083e2        add     x2, sp, #0x20
  4014b8:       b0000000        adrp    x0, 402000 <startup+0x9c>
  4014bc:       910f4001        add     x1, x0, #0x3d0
  4014c0:       aa0203e0        mov     x0, x2
  4014c4:       97fffe17        bl      400d20 <sprintf@plt>
  4014c8:       910083e0        add     x0, sp, #0x20
  4014cc:       52800003        mov     w3, #0x0                        // #0
  4014d0:       d2808002        mov     x2, #0x400                      // #1024
  4014d4:       aa0003e1        mov     x1, x0
  4014d8:       b9401fe0        ldr     w0, [sp, #28]
  4014dc:       97fffe69        bl      400e80 <send@plt>
  4014e0:       910083e2        add     x2, sp, #0x20
  4014e4:       b0000000        adrp    x0, 402000 <startup+0x9c>
  4014e8:       910fe001        add     x1, x0, #0x3f8
  4014ec:       aa0203e0        mov     x0, x2
  4014f0:       97fffe0c        bl      400d20 <sprintf@plt>
  4014f4:       910083e0        add     x0, sp, #0x20
  4014f8:       52800003        mov     w3, #0x0                        // #0
  4014fc:       d2808002        mov     x2, #0x400                      // #1024
  401500:       aa0003e1        mov     x1, x0
  401504:       b9401fe0        ldr     w0, [sp, #28]
  401508:       97fffe5e        bl      400e80 <send@plt>
  40150c:       d503201f        nop
  401510:       a9407bfd        ldp     x29, x30, [sp]
  401514:       911083ff        add     sp, sp, #0x420
  401518:       d65f03c0        ret

000000000040151c <cat>:
  40151c:       d11083ff        sub     sp, sp, #0x420
  401520:       a9007bfd        stp     x29, x30, [sp]
  401524:       910003fd        mov     x29, sp
  401528:       b9001fe0        str     w0, [sp, #28]
  40152c:       f9000be1        str     x1, [sp, #16]
  401530:       910083e0        add     x0, sp, #0x20
  401534:       f9400be2        ldr     x2, [sp, #16]
  401538:       52808001        mov     w1, #0x400                      // #1024
  40153c:       97fffe6d        bl      400ef0 <fgets@plt>
  401540:       1400000e        b       401578 <cat+0x5c>
  401544:       910083e0        add     x0, sp, #0x20
  401548:       97fffdd6        bl      400ca0 <strlen@plt>
  40154c:       aa0003e1        mov     x1, x0
  401550:       910083e0        add     x0, sp, #0x20
  401554:       52800003        mov     w3, #0x0                        // #0
  401558:       aa0103e2        mov     x2, x1
  40155c:       aa0003e1        mov     x1, x0
  401560:       b9401fe0        ldr     w0, [sp, #28]
  401564:       97fffe47        bl      400e80 <send@plt>
  401568:       910083e0        add     x0, sp, #0x20
  40156c:       f9400be2        ldr     x2, [sp, #16]
  401570:       52808001        mov     w1, #0x400                      // #1024
  401574:       97fffe5f        bl      400ef0 <fgets@plt>
  401578:       f9400be0        ldr     x0, [sp, #16]
  40157c:       97fffe35        bl      400e50 <feof@plt>
  401580:       7100001f        cmp     w0, #0x0
  401584:       54fffe00        b.eq    401544 <cat+0x28>  // b.none
  401588:       d503201f        nop
  40158c:       d503201f        nop
  401590:       a9407bfd        ldp     x29, x30, [sp]
  401594:       911083ff        add     sp, sp, #0x420
  401598:       d65f03c0        ret

000000000040159c <cannot_execute>:
  40159c:       d11083ff        sub     sp, sp, #0x420
  4015a0:       a9007bfd        stp     x29, x30, [sp]
  4015a4:       910003fd        mov     x29, sp
  4015a8:       b9001fe0        str     w0, [sp, #28]
  4015ac:       910083e2        add     x2, sp, #0x20
  4015b0:       b0000000        adrp    x0, 402000 <startup+0x9c>
  4015b4:       9110a001        add     x1, x0, #0x428
  4015b8:       aa0203e0        mov     x0, x2
  4015bc:       97fffdd9        bl      400d20 <sprintf@plt>
  4015c0:       910083e0        add     x0, sp, #0x20
  4015c4:       97fffdb7        bl      400ca0 <strlen@plt>
  4015c8:       aa0003e1        mov     x1, x0
  4015cc:       910083e0        add     x0, sp, #0x20
  4015d0:       52800003        mov     w3, #0x0                        // #0
  4015d4:       aa0103e2        mov     x2, x1
  4015d8:       aa0003e1        mov     x1, x0
  4015dc:       b9401fe0        ldr     w0, [sp, #28]
  4015e0:       97fffe28        bl      400e80 <send@plt>
  4015e4:       910083e2        add     x2, sp, #0x20
  4015e8:       b0000000        adrp    x0, 402000 <startup+0x9c>
  4015ec:       910ea001        add     x1, x0, #0x3a8
  4015f0:       aa0203e0        mov     x0, x2
  4015f4:       97fffdcb        bl      400d20 <sprintf@plt>
  4015f8:       910083e0        add     x0, sp, #0x20
  4015fc:       97fffda9        bl      400ca0 <strlen@plt>
  401600:       aa0003e1        mov     x1, x0
  401604:       910083e0        add     x0, sp, #0x20
  401608:       52800003        mov     w3, #0x0                        // #0
  40160c:       aa0103e2        mov     x2, x1
  401610:       aa0003e1        mov     x1, x0
  401614:       b9401fe0        ldr     w0, [sp, #28]
  401618:       97fffe1a        bl      400e80 <send@plt>
  40161c:       910083e2        add     x2, sp, #0x20
  401620:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401624:       910f2001        add     x1, x0, #0x3c8
  401628:       aa0203e0        mov     x0, x2
  40162c:       97fffdbd        bl      400d20 <sprintf@plt>
  401630:       910083e0        add     x0, sp, #0x20
  401634:       97fffd9b        bl      400ca0 <strlen@plt>
  401638:       aa0003e1        mov     x1, x0
  40163c:       910083e0        add     x0, sp, #0x20
  401640:       52800003        mov     w3, #0x0                        // #0
  401644:       aa0103e2        mov     x2, x1
  401648:       aa0003e1        mov     x1, x0
  40164c:       b9401fe0        ldr     w0, [sp, #28]
  401650:       97fffe0c        bl      400e80 <send@plt>
  401654:       910083e2        add     x2, sp, #0x20
  401658:       b0000000        adrp    x0, 402000 <startup+0x9c>
  40165c:       91114001        add     x1, x0, #0x450
  401660:       aa0203e0        mov     x0, x2
  401664:       97fffdaf        bl      400d20 <sprintf@plt>
  401668:       910083e0        add     x0, sp, #0x20
  40166c:       97fffd8d        bl      400ca0 <strlen@plt>
  401670:       aa0003e1        mov     x1, x0
  401674:       910083e0        add     x0, sp, #0x20
  401678:       52800003        mov     w3, #0x0                        // #0
  40167c:       aa0103e2        mov     x2, x1
  401680:       aa0003e1        mov     x1, x0
  401684:       b9401fe0        ldr     w0, [sp, #28]
  401688:       97fffdfe        bl      400e80 <send@plt>
  40168c:       d503201f        nop
  401690:       a9407bfd        ldp     x29, x30, [sp]
  401694:       911083ff        add     sp, sp, #0x420
  401698:       d65f03c0        ret

000000000040169c <error_die>:
  40169c:       a9be7bfd        stp     x29, x30, [sp, #-32]!
  4016a0:       910003fd        mov     x29, sp
  4016a4:       f9000fe0        str     x0, [sp, #24]
  4016a8:       f9400fe0        ldr     x0, [sp, #24]
  4016ac:       97fffd8d        bl      400ce0 <perror@plt>
  4016b0:       52800020        mov     w0, #0x1                        // #1
  4016b4:       97fffd7f        bl      400cb0 <exit@plt>

00000000004016b8 <execute_cgi>:
  4016b8:       d11d83ff        sub     sp, sp, #0x760
  4016bc:       a9007bfd        stp     x29, x30, [sp]
  4016c0:       910003fd        mov     x29, sp
  4016c4:       b9002fe0        str     w0, [sp, #44]
  4016c8:       f90013e1        str     x1, [sp, #32]
  4016cc:       f9000fe2        str     x2, [sp, #24]
  4016d0:       f9000be3        str     x3, [sp, #16]
  4016d4:       52800020        mov     w0, #0x1                        // #1
  4016d8:       b9075be0        str     w0, [sp, #1880]
  4016dc:       12800000        mov     w0, #0xffffffff                 // #-1
  4016e0:       b90757e0        str     w0, [sp, #1876]
  4016e4:       52800820        mov     w0, #0x41                       // #65
  4016e8:       390d43e0        strb    w0, [sp, #848]
  4016ec:       390d47ff        strb    wzr, [sp, #849]
  4016f0:       b0000000        adrp    x0, 402000 <startup+0x9c>
  4016f4:       910d0001        add     x1, x0, #0x340
  4016f8:       f9400fe0        ldr     x0, [sp, #24]
  4016fc:       97fffdb1        bl      400dc0 <strcasecmp@plt>
  401700:       7100001f        cmp     w0, #0x0
  401704:       54000261        b.ne    401750 <execute_cgi+0x98>  // b.any
  401708:       14000007        b       401724 <execute_cgi+0x6c>
  40170c:       910d43e0        add     x0, sp, #0x350
  401710:       52808002        mov     w2, #0x400                      // #1024
  401714:       aa0003e1        mov     x1, x0
  401718:       b9402fe0        ldr     w0, [sp, #44]
  40171c:       940000c7        bl      401a38 <get_line>
  401720:       b9075be0        str     w0, [sp, #1880]
  401724:       b9475be0        ldr     w0, [sp, #1880]
  401728:       7100001f        cmp     w0, #0x0
  40172c:       5400070d        b.le    40180c <execute_cgi+0x154>
  401730:       910d43e0        add     x0, sp, #0x350
  401734:       aa0003e1        mov     x1, x0
  401738:       b0000000        adrp    x0, 402000 <startup+0x9c>
  40173c:       910dc000        add     x0, x0, #0x370
  401740:       97fffdc8        bl      400e60 <strcmp@plt>
  401744:       7100001f        cmp     w0, #0x0
  401748:       54fffe21        b.ne    40170c <execute_cgi+0x54>  // b.any
  40174c:       14000030        b       40180c <execute_cgi+0x154>
  401750:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401754:       910d2001        add     x1, x0, #0x348
  401758:       f9400fe0        ldr     x0, [sp, #24]
  40175c:       97fffd99        bl      400dc0 <strcasecmp@plt>
  401760:       7100001f        cmp     w0, #0x0
  401764:       54000541        b.ne    40180c <execute_cgi+0x154>  // b.any
  401768:       910d43e0        add     x0, sp, #0x350
  40176c:       52808002        mov     w2, #0x400                      // #1024
  401770:       aa0003e1        mov     x1, x0
  401774:       b9402fe0        ldr     w0, [sp, #44]
  401778:       940000b0        bl      401a38 <get_line>
  40177c:       b9075be0        str     w0, [sp, #1880]
  401780:       14000013        b       4017cc <execute_cgi+0x114>
  401784:       390d7fff        strb    wzr, [sp, #863]
  401788:       910d43e2        add     x2, sp, #0x350
  40178c:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401790:       9111e001        add     x1, x0, #0x478
  401794:       aa0203e0        mov     x0, x2
  401798:       97fffd8a        bl      400dc0 <strcasecmp@plt>
  40179c:       7100001f        cmp     w0, #0x0
  4017a0:       540000a1        b.ne    4017b4 <execute_cgi+0xfc>  // b.any
  4017a4:       910d43e0        add     x0, sp, #0x350
  4017a8:       91004000        add     x0, x0, #0x10
  4017ac:       97fffd6d        bl      400d60 <atoi@plt>
  4017b0:       b90757e0        str     w0, [sp, #1876]
  4017b4:       910d43e0        add     x0, sp, #0x350
  4017b8:       52808002        mov     w2, #0x400                      // #1024
  4017bc:       aa0003e1        mov     x1, x0
  4017c0:       b9402fe0        ldr     w0, [sp, #44]
  4017c4:       9400009d        bl      401a38 <get_line>
  4017c8:       b9075be0        str     w0, [sp, #1880]
  4017cc:       b9475be0        ldr     w0, [sp, #1880]
  4017d0:       7100001f        cmp     w0, #0x0
  4017d4:       5400010d        b.le    4017f4 <execute_cgi+0x13c>
  4017d8:       910d43e0        add     x0, sp, #0x350
  4017dc:       aa0003e1        mov     x1, x0
  4017e0:       b0000000        adrp    x0, 402000 <startup+0x9c>
  4017e4:       910dc000        add     x0, x0, #0x370
  4017e8:       97fffd9e        bl      400e60 <strcmp@plt>
  4017ec:       7100001f        cmp     w0, #0x0
  4017f0:       54fffca1        b.ne    401784 <execute_cgi+0xcc>  // b.any
  4017f4:       b94757e0        ldr     w0, [sp, #1876]
  4017f8:       3100041f        cmn     w0, #0x1
  4017fc:       54000081        b.ne    40180c <execute_cgi+0x154>  // b.any
  401800:       b9402fe0        ldr     w0, [sp, #44]
  401804:       97ffff07        bl      401420 <bad_request>
  401808:       14000089        b       401a2c <execute_cgi+0x374>
  40180c:       910d23e0        add     x0, sp, #0x348
  401810:       97fffd48        bl      400d30 <pipe@plt>
  401814:       7100001f        cmp     w0, #0x0
  401818:       5400008a        b.ge    401828 <execute_cgi+0x170>  // b.tcont
  40181c:       b9402fe0        ldr     w0, [sp, #44]
  401820:       97ffff5f        bl      40159c <cannot_execute>
  401824:       14000082        b       401a2c <execute_cgi+0x374>
  401828:       910d03e0        add     x0, sp, #0x340
  40182c:       97fffd41        bl      400d30 <pipe@plt>
  401830:       7100001f        cmp     w0, #0x0
  401834:       5400008a        b.ge    401844 <execute_cgi+0x18c>  // b.tcont
  401838:       b9402fe0        ldr     w0, [sp, #44]
  40183c:       97ffff58        bl      40159c <cannot_execute>
  401840:       1400007b        b       401a2c <execute_cgi+0x374>
  401844:       97fffd3f        bl      400d40 <fork@plt>
  401848:       b90753e0        str     w0, [sp, #1872]
  40184c:       b94753e0        ldr     w0, [sp, #1872]
  401850:       7100001f        cmp     w0, #0x0
  401854:       5400008a        b.ge    401864 <execute_cgi+0x1ac>  // b.tcont
  401858:       b9402fe0        ldr     w0, [sp, #44]
  40185c:       97ffff50        bl      40159c <cannot_execute>
  401860:       14000073        b       401a2c <execute_cgi+0x374>
  401864:       910d43e2        add     x2, sp, #0x350
  401868:       b0000000        adrp    x0, 402000 <startup+0x9c>
  40186c:       91122001        add     x1, x0, #0x488
  401870:       aa0203e0        mov     x0, x2
  401874:       97fffd2b        bl      400d20 <sprintf@plt>
  401878:       910d43e0        add     x0, sp, #0x350
  40187c:       97fffd09        bl      400ca0 <strlen@plt>
  401880:       aa0003e1        mov     x1, x0
  401884:       910d43e0        add     x0, sp, #0x350
  401888:       52800003        mov     w3, #0x0                        // #0
  40188c:       aa0103e2        mov     x2, x1
  401890:       aa0003e1        mov     x1, x0
  401894:       b9402fe0        ldr     w0, [sp, #44]
  401898:       97fffd7a        bl      400e80 <send@plt>
  40189c:       b94753e0        ldr     w0, [sp, #1872]
  4018a0:       7100001f        cmp     w0, #0x0
  4018a4:       540005e1        b.ne    401960 <execute_cgi+0x2a8>  // b.any
  4018a8:       b9434fe0        ldr     w0, [sp, #844]
  4018ac:       52800021        mov     w1, #0x1                        // #1
  4018b0:       97fffd80        bl      400eb0 <dup2@plt>
  4018b4:       b94343e0        ldr     w0, [sp, #832]
  4018b8:       52800001        mov     w1, #0x0                        // #0
  4018bc:       97fffd7d        bl      400eb0 <dup2@plt>
  4018c0:       b9434be0        ldr     w0, [sp, #840]
  4018c4:       97fffd4b        bl      400df0 <close@plt>
  4018c8:       b94347e0        ldr     w0, [sp, #836]
  4018cc:       97fffd49        bl      400df0 <close@plt>
  4018d0:       9100e3e3        add     x3, sp, #0x38
  4018d4:       f9400fe2        ldr     x2, [sp, #24]
  4018d8:       b0000000        adrp    x0, 402000 <startup+0x9c>
  4018dc:       91128001        add     x1, x0, #0x4a0
  4018e0:       aa0303e0        mov     x0, x3
  4018e4:       97fffd0f        bl      400d20 <sprintf@plt>
  4018e8:       9100e3e0        add     x0, sp, #0x38
  4018ec:       97fffd3d        bl      400de0 <putenv@plt>
  4018f0:       b0000000        adrp    x0, 402000 <startup+0x9c>
  4018f4:       910d0001        add     x1, x0, #0x340
  4018f8:       f9400fe0        ldr     x0, [sp, #24]
  4018fc:       97fffd31        bl      400dc0 <strcasecmp@plt>
  401900:       7100001f        cmp     w0, #0x0
  401904:       54000141        b.ne    40192c <execute_cgi+0x274>  // b.any
  401908:       9104e3e3        add     x3, sp, #0x138
  40190c:       f9400be2        ldr     x2, [sp, #16]
  401910:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401914:       9112e001        add     x1, x0, #0x4b8
  401918:       aa0303e0        mov     x0, x3
  40191c:       97fffd01        bl      400d20 <sprintf@plt>
  401920:       9104e3e0        add     x0, sp, #0x138
  401924:       97fffd2f        bl      400de0 <putenv@plt>
  401928:       14000009        b       40194c <execute_cgi+0x294>
  40192c:       9108e3e3        add     x3, sp, #0x238
  401930:       b94757e2        ldr     w2, [sp, #1876]
  401934:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401938:       91132001        add     x1, x0, #0x4c8
  40193c:       aa0303e0        mov     x0, x3
  401940:       97fffcf8        bl      400d20 <sprintf@plt>
  401944:       9108e3e0        add     x0, sp, #0x238
  401948:       97fffd26        bl      400de0 <putenv@plt>
  40194c:       d2800001        mov     x1, #0x0                        // #0
  401950:       f94013e0        ldr     x0, [sp, #32]
  401954:       97fffcdf        bl      400cd0 <execl@plt>
  401958:       52800000        mov     w0, #0x0                        // #0
  40195c:       97fffcd5        bl      400cb0 <exit@plt>
  401960:       b9434fe0        ldr     w0, [sp, #844]
  401964:       97fffd23        bl      400df0 <close@plt>
  401968:       b94343e0        ldr     w0, [sp, #832]
  40196c:       97fffd21        bl      400df0 <close@plt>
  401970:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401974:       910d2001        add     x1, x0, #0x348
  401978:       f9400fe0        ldr     x0, [sp, #24]
  40197c:       97fffd11        bl      400dc0 <strcasecmp@plt>
  401980:       7100001f        cmp     w0, #0x0
  401984:       54000361        b.ne    4019f0 <execute_cgi+0x338>  // b.any
  401988:       b9075fff        str     wzr, [sp, #1884]
  40198c:       1400000e        b       4019c4 <execute_cgi+0x30c>
  401990:       910cefe0        add     x0, sp, #0x33b
  401994:       52800003        mov     w3, #0x0                        // #0
  401998:       d2800022        mov     x2, #0x1                        // #1
  40199c:       aa0003e1        mov     x1, x0
  4019a0:       b9402fe0        ldr     w0, [sp, #44]
  4019a4:       97fffd17        bl      400e00 <recv@plt>
  4019a8:       b94347e0        ldr     w0, [sp, #836]
  4019ac:       910cefe1        add     x1, sp, #0x33b
  4019b0:       d2800022        mov     x2, #0x1                        // #1
  4019b4:       97fffd1f        bl      400e30 <write@plt>
  4019b8:       b9475fe0        ldr     w0, [sp, #1884]
  4019bc:       11000400        add     w0, w0, #0x1
  4019c0:       b9075fe0        str     w0, [sp, #1884]
  4019c4:       b9475fe1        ldr     w1, [sp, #1884]
  4019c8:       b94757e0        ldr     w0, [sp, #1876]
  4019cc:       6b00003f        cmp     w1, w0
  4019d0:       54fffe0b        b.lt    401990 <execute_cgi+0x2d8>  // b.tstop
  4019d4:       14000007        b       4019f0 <execute_cgi+0x338>
  4019d8:       910cefe0        add     x0, sp, #0x33b
  4019dc:       52800003        mov     w3, #0x0                        // #0
  4019e0:       d2800022        mov     x2, #0x1                        // #1
  4019e4:       aa0003e1        mov     x1, x0
  4019e8:       b9402fe0        ldr     w0, [sp, #44]
  4019ec:       97fffd25        bl      400e80 <send@plt>
  4019f0:       b9434be0        ldr     w0, [sp, #840]
  4019f4:       910cefe1        add     x1, sp, #0x33b
  4019f8:       d2800022        mov     x2, #0x1                        // #1
  4019fc:       97fffd29        bl      400ea0 <read@plt>
  401a00:       f100001f        cmp     x0, #0x0
  401a04:       54fffeac        b.gt    4019d8 <execute_cgi+0x320>
  401a08:       b9434be0        ldr     w0, [sp, #840]
  401a0c:       97fffcf9        bl      400df0 <close@plt>
  401a10:       b94347e0        ldr     w0, [sp, #836]
  401a14:       97fffcf7        bl      400df0 <close@plt>
  401a18:       910cf3e0        add     x0, sp, #0x33c
  401a1c:       52800002        mov     w2, #0x0                        // #0
  401a20:       aa0003e1        mov     x1, x0
  401a24:       b94753e0        ldr     w0, [sp, #1872]
  401a28:       97fffd2e        bl      400ee0 <waitpid@plt>
  401a2c:       a9407bfd        ldp     x29, x30, [sp]
  401a30:       911d83ff        add     sp, sp, #0x760
  401a34:       d65f03c0        ret

0000000000401a38 <get_line>:
  401a38:       a9bd7bfd        stp     x29, x30, [sp, #-48]!
  401a3c:       910003fd        mov     x29, sp
  401a40:       b9001fe0        str     w0, [sp, #28]
  401a44:       f9000be1        str     x1, [sp, #16]
  401a48:       b9001be2        str     w2, [sp, #24]
  401a4c:       b9002fff        str     wzr, [sp, #44]
  401a50:       39009fff        strb    wzr, [sp, #39]
  401a54:       1400002f        b       401b10 <get_line+0xd8>
  401a58:       91009fe0        add     x0, sp, #0x27
  401a5c:       52800003        mov     w3, #0x0                        // #0
  401a60:       d2800022        mov     x2, #0x1                        // #1
  401a64:       aa0003e1        mov     x1, x0
  401a68:       b9401fe0        ldr     w0, [sp, #28]
  401a6c:       97fffce5        bl      400e00 <recv@plt>
  401a70:       b9002be0        str     w0, [sp, #40]
  401a74:       b9402be0        ldr     w0, [sp, #40]
  401a78:       7100001f        cmp     w0, #0x0
  401a7c:       5400046d        b.le    401b08 <get_line+0xd0>
  401a80:       39409fe0        ldrb    w0, [sp, #39]
  401a84:       7100341f        cmp     w0, #0xd
  401a88:       540002e1        b.ne    401ae4 <get_line+0xac>  // b.any
  401a8c:       91009fe0        add     x0, sp, #0x27
  401a90:       52800043        mov     w3, #0x2                        // #2
  401a94:       d2800022        mov     x2, #0x1                        // #1
  401a98:       aa0003e1        mov     x1, x0
  401a9c:       b9401fe0        ldr     w0, [sp, #28]
  401aa0:       97fffcd8        bl      400e00 <recv@plt>
  401aa4:       b9002be0        str     w0, [sp, #40]
  401aa8:       b9402be0        ldr     w0, [sp, #40]
  401aac:       7100001f        cmp     w0, #0x0
  401ab0:       5400016d        b.le    401adc <get_line+0xa4>
  401ab4:       39409fe0        ldrb    w0, [sp, #39]
  401ab8:       7100281f        cmp     w0, #0xa
  401abc:       54000101        b.ne    401adc <get_line+0xa4>  // b.any
  401ac0:       91009fe0        add     x0, sp, #0x27
  401ac4:       52800003        mov     w3, #0x0                        // #0
  401ac8:       d2800022        mov     x2, #0x1                        // #1
  401acc:       aa0003e1        mov     x1, x0
  401ad0:       b9401fe0        ldr     w0, [sp, #28]
  401ad4:       97fffccb        bl      400e00 <recv@plt>
  401ad8:       14000003        b       401ae4 <get_line+0xac>
  401adc:       52800140        mov     w0, #0xa                        // #10
  401ae0:       39009fe0        strb    w0, [sp, #39]
  401ae4:       b9802fe0        ldrsw   x0, [sp, #44]
  401ae8:       f9400be1        ldr     x1, [sp, #16]
  401aec:       8b000020        add     x0, x1, x0
  401af0:       39409fe1        ldrb    w1, [sp, #39]
  401af4:       39000001        strb    w1, [x0]
  401af8:       b9402fe0        ldr     w0, [sp, #44]
  401afc:       11000400        add     w0, w0, #0x1
  401b00:       b9002fe0        str     w0, [sp, #44]
  401b04:       14000003        b       401b10 <get_line+0xd8>
  401b08:       52800140        mov     w0, #0xa                        // #10
  401b0c:       39009fe0        strb    w0, [sp, #39]
  401b10:       b9401be0        ldr     w0, [sp, #24]
  401b14:       51000400        sub     w0, w0, #0x1
  401b18:       b9402fe1        ldr     w1, [sp, #44]
  401b1c:       6b00003f        cmp     w1, w0
  401b20:       5400008a        b.ge    401b30 <get_line+0xf8>  // b.tcont
  401b24:       39409fe0        ldrb    w0, [sp, #39]
  401b28:       7100281f        cmp     w0, #0xa
  401b2c:       54fff961        b.ne    401a58 <get_line+0x20>  // b.any
  401b30:       b9802fe0        ldrsw   x0, [sp, #44]
  401b34:       f9400be1        ldr     x1, [sp, #16]
  401b38:       8b000020        add     x0, x1, x0
  401b3c:       3900001f        strb    wzr, [x0]
  401b40:       b9402fe0        ldr     w0, [sp, #44]
  401b44:       a8c37bfd        ldp     x29, x30, [sp], #48
  401b48:       d65f03c0        ret

0000000000401b4c <headers>:
  401b4c:       d11083ff        sub     sp, sp, #0x420
  401b50:       a9007bfd        stp     x29, x30, [sp]
  401b54:       910003fd        mov     x29, sp
  401b58:       b9001fe0        str     w0, [sp, #28]
  401b5c:       f9000be1        str     x1, [sp, #16]
  401b60:       910083e1        add     x1, sp, #0x20
  401b64:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401b68:       91122000        add     x0, x0, #0x488
  401b6c:       aa0103e2        mov     x2, x1
  401b70:       aa0003e3        mov     x3, x0
  401b74:       a9400460        ldp     x0, x1, [x3]
  401b78:       a9000440        stp     x0, x1, [x2]
  401b7c:       79402060        ldrh    w0, [x3, #16]
  401b80:       79002040        strh    w0, [x2, #16]
  401b84:       910083e0        add     x0, sp, #0x20
  401b88:       97fffc46        bl      400ca0 <strlen@plt>
  401b8c:       aa0003e1        mov     x1, x0
  401b90:       910083e0        add     x0, sp, #0x20
  401b94:       52800003        mov     w3, #0x0                        // #0
  401b98:       aa0103e2        mov     x2, x1
  401b9c:       aa0003e1        mov     x1, x0
  401ba0:       b9401fe0        ldr     w0, [sp, #28]
  401ba4:       97fffcb7        bl      400e80 <send@plt>
  401ba8:       910083e2        add     x2, sp, #0x20
  401bac:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401bb0:       91138001        add     x1, x0, #0x4e0
  401bb4:       aa0203e0        mov     x0, x2
  401bb8:       a9400c22        ldp     x2, x3, [x1]
  401bbc:       a9000c02        stp     x2, x3, [x0]
  401bc0:       f9400822        ldr     x2, [x1, #16]
  401bc4:       f9000802        str     x2, [x0, #16]
  401bc8:       39406021        ldrb    w1, [x1, #24]
  401bcc:       39006001        strb    w1, [x0, #24]
  401bd0:       910083e0        add     x0, sp, #0x20
  401bd4:       97fffc33        bl      400ca0 <strlen@plt>
  401bd8:       aa0003e1        mov     x1, x0
  401bdc:       910083e0        add     x0, sp, #0x20
  401be0:       52800003        mov     w3, #0x0                        // #0
  401be4:       aa0103e2        mov     x2, x1
  401be8:       aa0003e1        mov     x1, x0
  401bec:       b9401fe0        ldr     w0, [sp, #28]
  401bf0:       97fffca4        bl      400e80 <send@plt>
  401bf4:       910083e2        add     x2, sp, #0x20
  401bf8:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401bfc:       91140001        add     x1, x0, #0x500
  401c00:       aa0203e0        mov     x0, x2
  401c04:       97fffc47        bl      400d20 <sprintf@plt>
  401c08:       910083e0        add     x0, sp, #0x20
  401c0c:       97fffc25        bl      400ca0 <strlen@plt>
  401c10:       aa0003e1        mov     x1, x0
  401c14:       910083e0        add     x0, sp, #0x20
  401c18:       52800003        mov     w3, #0x0                        // #0
  401c1c:       aa0103e2        mov     x2, x1
  401c20:       aa0003e1        mov     x1, x0
  401c24:       b9401fe0        ldr     w0, [sp, #28]
  401c28:       97fffc96        bl      400e80 <send@plt>
  401c2c:       910083e2        add     x2, sp, #0x20
  401c30:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401c34:       910f2001        add     x1, x0, #0x3c8
  401c38:       aa0203e0        mov     x0, x2
  401c3c:       79400022        ldrh    w2, [x1]
  401c40:       79000002        strh    w2, [x0]
  401c44:       39400821        ldrb    w1, [x1, #2]
  401c48:       39000801        strb    w1, [x0, #2]
  401c4c:       910083e0        add     x0, sp, #0x20
  401c50:       97fffc14        bl      400ca0 <strlen@plt>
  401c54:       aa0003e1        mov     x1, x0
  401c58:       910083e0        add     x0, sp, #0x20
  401c5c:       52800003        mov     w3, #0x0                        // #0
  401c60:       aa0103e2        mov     x2, x1
  401c64:       aa0003e1        mov     x1, x0
  401c68:       b9401fe0        ldr     w0, [sp, #28]
  401c6c:       97fffc85        bl      400e80 <send@plt>
  401c70:       d503201f        nop
  401c74:       a9407bfd        ldp     x29, x30, [sp]
  401c78:       911083ff        add     sp, sp, #0x420
  401c7c:       d65f03c0        ret

0000000000401c80 <not_found>:
  401c80:       d11083ff        sub     sp, sp, #0x420
  401c84:       a9007bfd        stp     x29, x30, [sp]
  401c88:       910003fd        mov     x29, sp
  401c8c:       b9001fe0        str     w0, [sp, #28]
  401c90:       910083e2        add     x2, sp, #0x20
  401c94:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401c98:       91148001        add     x1, x0, #0x520
  401c9c:       aa0203e0        mov     x0, x2
  401ca0:       97fffc20        bl      400d20 <sprintf@plt>
  401ca4:       910083e0        add     x0, sp, #0x20
  401ca8:       97fffbfe        bl      400ca0 <strlen@plt>
  401cac:       aa0003e1        mov     x1, x0
  401cb0:       910083e0        add     x0, sp, #0x20
  401cb4:       52800003        mov     w3, #0x0                        // #0
  401cb8:       aa0103e2        mov     x2, x1
  401cbc:       aa0003e1        mov     x1, x0
  401cc0:       b9401fe0        ldr     w0, [sp, #28]
  401cc4:       97fffc6f        bl      400e80 <send@plt>
  401cc8:       910083e2        add     x2, sp, #0x20
  401ccc:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401cd0:       91138001        add     x1, x0, #0x4e0
  401cd4:       aa0203e0        mov     x0, x2
  401cd8:       97fffc12        bl      400d20 <sprintf@plt>
  401cdc:       910083e0        add     x0, sp, #0x20
  401ce0:       97fffbf0        bl      400ca0 <strlen@plt>
  401ce4:       aa0003e1        mov     x1, x0
  401ce8:       910083e0        add     x0, sp, #0x20
  401cec:       52800003        mov     w3, #0x0                        // #0
  401cf0:       aa0103e2        mov     x2, x1
  401cf4:       aa0003e1        mov     x1, x0
  401cf8:       b9401fe0        ldr     w0, [sp, #28]
  401cfc:       97fffc61        bl      400e80 <send@plt>
  401d00:       910083e2        add     x2, sp, #0x20
  401d04:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401d08:       91140001        add     x1, x0, #0x500
  401d0c:       aa0203e0        mov     x0, x2
  401d10:       97fffc04        bl      400d20 <sprintf@plt>
  401d14:       910083e0        add     x0, sp, #0x20
  401d18:       97fffbe2        bl      400ca0 <strlen@plt>
  401d1c:       aa0003e1        mov     x1, x0
  401d20:       910083e0        add     x0, sp, #0x20
  401d24:       52800003        mov     w3, #0x0                        // #0
  401d28:       aa0103e2        mov     x2, x1
  401d2c:       aa0003e1        mov     x1, x0
  401d30:       b9401fe0        ldr     w0, [sp, #28]
  401d34:       97fffc53        bl      400e80 <send@plt>
  401d38:       910083e2        add     x2, sp, #0x20
  401d3c:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401d40:       910f2001        add     x1, x0, #0x3c8
  401d44:       aa0203e0        mov     x0, x2
  401d48:       97fffbf6        bl      400d20 <sprintf@plt>
  401d4c:       910083e0        add     x0, sp, #0x20
  401d50:       97fffbd4        bl      400ca0 <strlen@plt>
  401d54:       aa0003e1        mov     x1, x0
  401d58:       910083e0        add     x0, sp, #0x20
  401d5c:       52800003        mov     w3, #0x0                        // #0
  401d60:       aa0103e2        mov     x2, x1
  401d64:       aa0003e1        mov     x1, x0
  401d68:       b9401fe0        ldr     w0, [sp, #28]
  401d6c:       97fffc45        bl      400e80 <send@plt>
  401d70:       910083e2        add     x2, sp, #0x20
  401d74:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401d78:       91150001        add     x1, x0, #0x540
  401d7c:       aa0203e0        mov     x0, x2
  401d80:       97fffbe8        bl      400d20 <sprintf@plt>
  401d84:       910083e0        add     x0, sp, #0x20
  401d88:       97fffbc6        bl      400ca0 <strlen@plt>
  401d8c:       aa0003e1        mov     x1, x0
  401d90:       910083e0        add     x0, sp, #0x20
  401d94:       52800003        mov     w3, #0x0                        // #0
  401d98:       aa0103e2        mov     x2, x1
  401d9c:       aa0003e1        mov     x1, x0
  401da0:       b9401fe0        ldr     w0, [sp, #28]
  401da4:       97fffc37        bl      400e80 <send@plt>
  401da8:       910083e2        add     x2, sp, #0x20
  401dac:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401db0:       9115a001        add     x1, x0, #0x568
  401db4:       aa0203e0        mov     x0, x2
  401db8:       97fffbda        bl      400d20 <sprintf@plt>
  401dbc:       910083e0        add     x0, sp, #0x20
  401dc0:       97fffbb8        bl      400ca0 <strlen@plt>
  401dc4:       aa0003e1        mov     x1, x0
  401dc8:       910083e0        add     x0, sp, #0x20
  401dcc:       52800003        mov     w3, #0x0                        // #0
  401dd0:       aa0103e2        mov     x2, x1
  401dd4:       aa0003e1        mov     x1, x0
  401dd8:       b9401fe0        ldr     w0, [sp, #28]
  401ddc:       97fffc29        bl      400e80 <send@plt>
  401de0:       910083e2        add     x2, sp, #0x20
  401de4:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401de8:       91164001        add     x1, x0, #0x590
  401dec:       aa0203e0        mov     x0, x2
  401df0:       97fffbcc        bl      400d20 <sprintf@plt>
  401df4:       910083e0        add     x0, sp, #0x20
  401df8:       97fffbaa        bl      400ca0 <strlen@plt>
  401dfc:       aa0003e1        mov     x1, x0
  401e00:       910083e0        add     x0, sp, #0x20
  401e04:       52800003        mov     w3, #0x0                        // #0
  401e08:       aa0103e2        mov     x2, x1
  401e0c:       aa0003e1        mov     x1, x0
  401e10:       b9401fe0        ldr     w0, [sp, #28]
  401e14:       97fffc1b        bl      400e80 <send@plt>
  401e18:       910083e2        add     x2, sp, #0x20
  401e1c:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401e20:       91170001        add     x1, x0, #0x5c0
  401e24:       aa0203e0        mov     x0, x2
  401e28:       97fffbbe        bl      400d20 <sprintf@plt>
  401e2c:       910083e0        add     x0, sp, #0x20
  401e30:       97fffb9c        bl      400ca0 <strlen@plt>
  401e34:       aa0003e1        mov     x1, x0
  401e38:       910083e0        add     x0, sp, #0x20
  401e3c:       52800003        mov     w3, #0x0                        // #0
  401e40:       aa0103e2        mov     x2, x1
  401e44:       aa0003e1        mov     x1, x0
  401e48:       b9401fe0        ldr     w0, [sp, #28]
  401e4c:       97fffc0d        bl      400e80 <send@plt>
  401e50:       910083e2        add     x2, sp, #0x20
  401e54:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401e58:       9117a001        add     x1, x0, #0x5e8
  401e5c:       aa0203e0        mov     x0, x2
  401e60:       97fffbb0        bl      400d20 <sprintf@plt>
  401e64:       910083e0        add     x0, sp, #0x20
  401e68:       97fffb8e        bl      400ca0 <strlen@plt>
  401e6c:       aa0003e1        mov     x1, x0
  401e70:       910083e0        add     x0, sp, #0x20
  401e74:       52800003        mov     w3, #0x0                        // #0
  401e78:       aa0103e2        mov     x2, x1
  401e7c:       aa0003e1        mov     x1, x0
  401e80:       b9401fe0        ldr     w0, [sp, #28]
  401e84:       97fffbff        bl      400e80 <send@plt>
  401e88:       d503201f        nop
  401e8c:       a9407bfd        ldp     x29, x30, [sp]
  401e90:       911083ff        add     sp, sp, #0x420
  401e94:       d65f03c0        ret

0000000000401e98 <serve_file>:
  401e98:       d110c3ff        sub     sp, sp, #0x430
  401e9c:       a9007bfd        stp     x29, x30, [sp]
  401ea0:       910003fd        mov     x29, sp
  401ea4:       b9001fe0        str     w0, [sp, #28]
  401ea8:       f9000be1        str     x1, [sp, #16]
  401eac:       f90213ff        str     xzr, [sp, #1056]
  401eb0:       52800020        mov     w0, #0x1                        // #1
  401eb4:       b9042fe0        str     w0, [sp, #1068]
  401eb8:       52800820        mov     w0, #0x41                       // #65
  401ebc:       390083e0        strb    w0, [sp, #32]
  401ec0:       390087ff        strb    wzr, [sp, #33]
  401ec4:       14000007        b       401ee0 <serve_file+0x48>
  401ec8:       910083e0        add     x0, sp, #0x20
  401ecc:       52808002        mov     w2, #0x400                      // #1024
  401ed0:       aa0003e1        mov     x1, x0
  401ed4:       b9401fe0        ldr     w0, [sp, #28]
  401ed8:       97fffed8        bl      401a38 <get_line>
  401edc:       b9042fe0        str     w0, [sp, #1068]
  401ee0:       b9442fe0        ldr     w0, [sp, #1068]
  401ee4:       7100001f        cmp     w0, #0x0
  401ee8:       5400010d        b.le    401f08 <serve_file+0x70>
  401eec:       910083e0        add     x0, sp, #0x20
  401ef0:       aa0003e1        mov     x1, x0
  401ef4:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401ef8:       910dc000        add     x0, x0, #0x370
  401efc:       97fffbd9        bl      400e60 <strcmp@plt>
  401f00:       7100001f        cmp     w0, #0x0
  401f04:       54fffe21        b.ne    401ec8 <serve_file+0x30>  // b.any
  401f08:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401f0c:       91180001        add     x1, x0, #0x600
  401f10:       f9400be0        ldr     x0, [sp, #16]
  401f14:       97fffb97        bl      400d70 <fopen@plt>
  401f18:       f90213e0        str     x0, [sp, #1056]
  401f1c:       f94213e0        ldr     x0, [sp, #1056]
  401f20:       f100001f        cmp     x0, #0x0
  401f24:       54000081        b.ne    401f34 <serve_file+0x9c>  // b.any
  401f28:       b9401fe0        ldr     w0, [sp, #28]
  401f2c:       97ffff55        bl      401c80 <not_found>
  401f30:       14000007        b       401f4c <serve_file+0xb4>
  401f34:       f9400be1        ldr     x1, [sp, #16]
  401f38:       b9401fe0        ldr     w0, [sp, #28]
  401f3c:       97ffff04        bl      401b4c <headers>
  401f40:       f94213e1        ldr     x1, [sp, #1056]
  401f44:       b9401fe0        ldr     w0, [sp, #28]
  401f48:       97fffd75        bl      40151c <cat>
  401f4c:       f94213e0        ldr     x0, [sp, #1056]
  401f50:       97fffb80        bl      400d50 <fclose@plt>
  401f54:       d503201f        nop
  401f58:       a9407bfd        ldp     x29, x30, [sp]
  401f5c:       9110c3ff        add     sp, sp, #0x430
  401f60:       d65f03c0        ret

0000000000401f64 <startup>:
  401f64:       a9bc7bfd        stp     x29, x30, [sp, #-64]!
  401f68:       910003fd        mov     x29, sp
  401f6c:       f9000fe0        str     x0, [sp, #24]
  401f70:       b9003fff        str     wzr, [sp, #60]
  401f74:       52800020        mov     w0, #0x1                        // #1
  401f78:       b9003be0        str     w0, [sp, #56]
  401f7c:       52800002        mov     w2, #0x0                        // #0
  401f80:       52800021        mov     w1, #0x1                        // #1
  401f84:       52800040        mov     w0, #0x2                        // #2
  401f88:       97fffbc2        bl      400e90 <socket@plt>
  401f8c:       b9003fe0        str     w0, [sp, #60]
  401f90:       b9403fe0        ldr     w0, [sp, #60]
  401f94:       3100041f        cmn     w0, #0x1
  401f98:       54000081        b.ne    401fa8 <startup+0x44>  // b.any
  401f9c:       b0000000        adrp    x0, 402000 <startup+0x9c>
  401fa0:       91182000        add     x0, x0, #0x608
  401fa4:       97fffdbe        bl      40169c <error_die>
  401fa8:       9100a3e0        add     x0, sp, #0x28
  401fac:       d2800202        mov     x2, #0x10                       // #16
  401fb0:       52800001        mov     w1, #0x0                        // #0
  401fb4:       97fffb7b        bl      400da0 <memset@plt>
  401fb8:       52800040        mov     w0, #0x2                        // #2
  401fbc:       790053e0        strh    w0, [sp, #40]
  401fc0:       f9400fe0        ldr     x0, [sp, #24]
  401fc4:       79400000        ldrh    w0, [x0]
  401fc8:       97fffb82        bl      400dd0 <htons@plt>
  401fcc:       12003c00        and     w0, w0, #0xffff
  401fd0:       790057e0        strh    w0, [sp, #42]
  401fd4:       52800000        mov     w0, #0x0                        // #0
  401fd8:       97fffb4a        bl      400d00 <htonl@plt>
  401fdc:       b9002fe0        str     w0, [sp, #44]
  401fe0:       9100e3e0        add     x0, sp, #0x38
  401fe4:       52800084        mov     w4, #0x4                        // #4
  401fe8:       aa0003e3        mov     x3, x0
  401fec:       52800042        mov     w2, #0x2                        // #2
  401ff0:       52800021        mov     w1, #0x1                        // #1
  401ff4:       b9403fe0        ldr     w0, [sp, #60]
  401ff8:       97fffb66        bl      400d90 <setsockopt@plt>
  401ffc:       7100001f        cmp     w0, #0x0
  402000:       5400008a        b.ge    402010 <startup+0xac>  // b.tcont
  402004:       90000000        adrp    x0, 402000 <startup+0x9c>
  402008:       91184000        add     x0, x0, #0x610
  40200c:       97fffda4        bl      40169c <error_die>
  402010:       9100a3e0        add     x0, sp, #0x28
  402014:       52800202        mov     w2, #0x10                       // #16
  402018:       aa0003e1        mov     x1, x0
  40201c:       b9403fe0        ldr     w0, [sp, #60]
  402020:       97fffb3c        bl      400d10 <bind@plt>
  402024:       7100001f        cmp     w0, #0x0
  402028:       5400008a        b.ge    402038 <startup+0xd4>  // b.tcont
  40202c:       90000000        adrp    x0, 402000 <startup+0x9c>
  402030:       9118a000        add     x0, x0, #0x628
  402034:       97fffd9a        bl      40169c <error_die>
  402038:       f9400fe0        ldr     x0, [sp, #24]
  40203c:       79400000        ldrh    w0, [x0]
  402040:       7100001f        cmp     w0, #0x0
  402044:       54000261        b.ne    402090 <startup+0x12c>  // b.any
  402048:       52800200        mov     w0, #0x10                       // #16
  40204c:       b90027e0        str     w0, [sp, #36]
  402050:       910093e1        add     x1, sp, #0x24
  402054:       9100a3e0        add     x0, sp, #0x28
  402058:       aa0103e2        mov     x2, x1
  40205c:       aa0003e1        mov     x1, x0
  402060:       b9403fe0        ldr     w0, [sp, #60]
  402064:       97fffb9b        bl      400ed0 <getsockname@plt>
  402068:       3100041f        cmn     w0, #0x1
  40206c:       54000081        b.ne    40207c <startup+0x118>  // b.any
  402070:       90000000        adrp    x0, 402000 <startup+0x9c>
  402074:       9118c000        add     x0, x0, #0x630
  402078:       97fffd89        bl      40169c <error_die>
  40207c:       794057e0        ldrh    w0, [sp, #42]
  402080:       97fffb40        bl      400d80 <ntohs@plt>
  402084:       12003c01        and     w1, w0, #0xffff
  402088:       f9400fe0        ldr     x0, [sp, #24]
  40208c:       79000001        strh    w1, [x0]
  402090:       528000a1        mov     w1, #0x5                        // #5
  402094:       b9403fe0        ldr     w0, [sp, #60]
  402098:       97fffb16        bl      400cf0 <listen@plt>
  40209c:       7100001f        cmp     w0, #0x0
  4020a0:       5400008a        b.ge    4020b0 <startup+0x14c>  // b.tcont
  4020a4:       90000000        adrp    x0, 402000 <startup+0x9c>
  4020a8:       91190000        add     x0, x0, #0x640
  4020ac:       97fffd7c        bl      40169c <error_die>
  4020b0:       b9403fe0        ldr     w0, [sp, #60]
  4020b4:       a8c47bfd        ldp     x29, x30, [sp], #64
  4020b8:       d65f03c0        ret

00000000004020bc <unimplemented>:
  4020bc:       d11083ff        sub     sp, sp, #0x420
  4020c0:       a9007bfd        stp     x29, x30, [sp]
  4020c4:       910003fd        mov     x29, sp
  4020c8:       b9001fe0        str     w0, [sp, #28]
  4020cc:       910083e2        add     x2, sp, #0x20
  4020d0:       90000000        adrp    x0, 402000 <startup+0x9c>
  4020d4:       91192001        add     x1, x0, #0x648
  4020d8:       aa0203e0        mov     x0, x2
  4020dc:       97fffb11        bl      400d20 <sprintf@plt>
  4020e0:       910083e0        add     x0, sp, #0x20
  4020e4:       97fffaef        bl      400ca0 <strlen@plt>
  4020e8:       aa0003e1        mov     x1, x0
  4020ec:       910083e0        add     x0, sp, #0x20
  4020f0:       52800003        mov     w3, #0x0                        // #0
  4020f4:       aa0103e2        mov     x2, x1
  4020f8:       aa0003e1        mov     x1, x0
  4020fc:       b9401fe0        ldr     w0, [sp, #28]
  402100:       97fffb60        bl      400e80 <send@plt>
  402104:       910083e2        add     x2, sp, #0x20
  402108:       90000000        adrp    x0, 402000 <startup+0x9c>
  40210c:       91138001        add     x1, x0, #0x4e0
  402110:       aa0203e0        mov     x0, x2
  402114:       97fffb03        bl      400d20 <sprintf@plt>
  402118:       910083e0        add     x0, sp, #0x20
  40211c:       97fffae1        bl      400ca0 <strlen@plt>
  402120:       aa0003e1        mov     x1, x0
  402124:       910083e0        add     x0, sp, #0x20
  402128:       52800003        mov     w3, #0x0                        // #0
  40212c:       aa0103e2        mov     x2, x1
  402130:       aa0003e1        mov     x1, x0
  402134:       b9401fe0        ldr     w0, [sp, #28]
  402138:       97fffb52        bl      400e80 <send@plt>
  40213c:       910083e2        add     x2, sp, #0x20
  402140:       90000000        adrp    x0, 402000 <startup+0x9c>
  402144:       91140001        add     x1, x0, #0x500
  402148:       aa0203e0        mov     x0, x2
  40214c:       97fffaf5        bl      400d20 <sprintf@plt>
  402150:       910083e0        add     x0, sp, #0x20
  402154:       97fffad3        bl      400ca0 <strlen@plt>
  402158:       aa0003e1        mov     x1, x0
  40215c:       910083e0        add     x0, sp, #0x20
  402160:       52800003        mov     w3, #0x0                        // #0
  402164:       aa0103e2        mov     x2, x1
  402168:       aa0003e1        mov     x1, x0
  40216c:       b9401fe0        ldr     w0, [sp, #28]
  402170:       97fffb44        bl      400e80 <send@plt>
  402174:       910083e2        add     x2, sp, #0x20
  402178:       90000000        adrp    x0, 402000 <startup+0x9c>
  40217c:       910f2001        add     x1, x0, #0x3c8
  402180:       aa0203e0        mov     x0, x2
  402184:       97fffae7        bl      400d20 <sprintf@plt>
  402188:       910083e0        add     x0, sp, #0x20
  40218c:       97fffac5        bl      400ca0 <strlen@plt>
  402190:       aa0003e1        mov     x1, x0
  402194:       910083e0        add     x0, sp, #0x20
  402198:       52800003        mov     w3, #0x0                        // #0
  40219c:       aa0103e2        mov     x2, x1
  4021a0:       aa0003e1        mov     x1, x0
  4021a4:       b9401fe0        ldr     w0, [sp, #28]
  4021a8:       97fffb36        bl      400e80 <send@plt>
  4021ac:       910083e2        add     x2, sp, #0x20
  4021b0:       90000000        adrp    x0, 402000 <startup+0x9c>
  4021b4:       9119c001        add     x1, x0, #0x670
  4021b8:       aa0203e0        mov     x0, x2
  4021bc:       97fffad9        bl      400d20 <sprintf@plt>
  4021c0:       910083e0        add     x0, sp, #0x20
  4021c4:       97fffab7        bl      400ca0 <strlen@plt>
  4021c8:       aa0003e1        mov     x1, x0
  4021cc:       910083e0        add     x0, sp, #0x20
  4021d0:       52800003        mov     w3, #0x0                        // #0
  4021d4:       aa0103e2        mov     x2, x1
  4021d8:       aa0003e1        mov     x1, x0
  4021dc:       b9401fe0        ldr     w0, [sp, #28]
  4021e0:       97fffb28        bl      400e80 <send@plt>
  4021e4:       910083e2        add     x2, sp, #0x20
  4021e8:       90000000        adrp    x0, 402000 <startup+0x9c>
  4021ec:       911a8001        add     x1, x0, #0x6a0
  4021f0:       aa0203e0        mov     x0, x2
  4021f4:       97fffacb        bl      400d20 <sprintf@plt>
  4021f8:       910083e0        add     x0, sp, #0x20
  4021fc:       97fffaa9        bl      400ca0 <strlen@plt>
  402200:       aa0003e1        mov     x1, x0
  402204:       910083e0        add     x0, sp, #0x20
  402208:       52800003        mov     w3, #0x0                        // #0
  40220c:       aa0103e2        mov     x2, x1
  402210:       aa0003e1        mov     x1, x0
  402214:       b9401fe0        ldr     w0, [sp, #28]
  402218:       97fffb1a        bl      400e80 <send@plt>
  40221c:       910083e2        add     x2, sp, #0x20
  402220:       90000000        adrp    x0, 402000 <startup+0x9c>
  402224:       911ae001        add     x1, x0, #0x6b8
  402228:       aa0203e0        mov     x0, x2
  40222c:       97fffabd        bl      400d20 <sprintf@plt>
  402230:       910083e0        add     x0, sp, #0x20
  402234:       97fffa9b        bl      400ca0 <strlen@plt>
  402238:       aa0003e1        mov     x1, x0
  40223c:       910083e0        add     x0, sp, #0x20
  402240:       52800003        mov     w3, #0x0                        // #0
  402244:       aa0103e2        mov     x2, x1
  402248:       aa0003e1        mov     x1, x0
  40224c:       b9401fe0        ldr     w0, [sp, #28]
  402250:       97fffb0c        bl      400e80 <send@plt>
  402254:       910083e2        add     x2, sp, #0x20
  402258:       90000000        adrp    x0, 402000 <startup+0x9c>
  40225c:       9117a001        add     x1, x0, #0x5e8
  402260:       aa0203e0        mov     x0, x2
  402264:       97fffaaf        bl      400d20 <sprintf@plt>
  402268:       910083e0        add     x0, sp, #0x20
  40226c:       97fffa8d        bl      400ca0 <strlen@plt>
  402270:       aa0003e1        mov     x1, x0
  402274:       910083e0        add     x0, sp, #0x20
  402278:       52800003        mov     w3, #0x0                        // #0
  40227c:       aa0103e2        mov     x2, x1
  402280:       aa0003e1        mov     x1, x0
  402284:       b9401fe0        ldr     w0, [sp, #28]
  402288:       97fffafe        bl      400e80 <send@plt>
  40228c:       d503201f        nop
  402290:       a9407bfd        ldp     x29, x30, [sp]
  402294:       911083ff        add     sp, sp, #0x420
  402298:       d65f03c0        ret

000000000040229c <main>:
  40229c:       a9bc7bfd        stp     x29, x30, [sp, #-64]!
  4022a0:       910003fd        mov     x29, sp
  4022a4:       12800000        mov     w0, #0xffffffff                 // #-1
  4022a8:       b9003fe0        str     w0, [sp, #60]
  4022ac:       5281f400        mov     w0, #0xfa0                      // #4000
  4022b0:       790077e0        strh    w0, [sp, #58]
  4022b4:       12800000        mov     w0, #0xffffffff                 // #-1
  4022b8:       b90037e0        str     w0, [sp, #52]
  4022bc:       52800200        mov     w0, #0x10                       // #16
  4022c0:       b9001fe0        str     w0, [sp, #28]
  4022c4:       9100ebe0        add     x0, sp, #0x3a
  4022c8:       97ffff27        bl      401f64 <startup>
  4022cc:       b9003fe0        str     w0, [sp, #60]
  4022d0:       794077e0        ldrh    w0, [sp, #58]
  4022d4:       2a0003e1        mov     w1, w0
  4022d8:       90000000        adrp    x0, 402000 <startup+0x9c>
  4022dc:       911ba000        add     x0, x0, #0x6e8
  4022e0:       97fffaf8        bl      400ec0 <printf@plt>
  4022e4:       910073e1        add     x1, sp, #0x1c
  4022e8:       910083e0        add     x0, sp, #0x20
  4022ec:       aa0103e2        mov     x2, x1
  4022f0:       aa0003e1        mov     x1, x0
  4022f4:       b9403fe0        ldr     w0, [sp, #60]
  4022f8:       97fffaae        bl      400db0 <accept@plt>
  4022fc:       b90037e0        str     w0, [sp, #52]
  402300:       b94037e0        ldr     w0, [sp, #52]
  402304:       3100041f        cmn     w0, #0x1
  402308:       54000081        b.ne    402318 <main+0x7c>  // b.any
  40230c:       90000000        adrp    x0, 402000 <startup+0x9c>
  402310:       911c2000        add     x0, x0, #0x708
  402314:       97fffce2        bl      40169c <error_die>
  402318:       9100d3e0        add     x0, sp, #0x34
  40231c:       97fffb3a        bl      401004 <accept_request>
  402320:       17fffff1        b       4022e4 <main+0x48>

Disassembly of section .fini:

0000000000402324 <_fini>:
  402324:       d503201f        nop
  402328:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
  40232c:       910003fd        mov     x29, sp
  402330:       a8c17bfd        ldp     x29, x30, [sp], #16
  402334:       d65f03c0        ret
