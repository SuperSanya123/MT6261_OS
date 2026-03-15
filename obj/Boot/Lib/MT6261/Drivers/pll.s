	.syntax unified
	.cpu arm9e
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.thumb
	.syntax unified
	.file	"pll.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.PLL_Initialize,"ax",%progbits
	.align	1
	.global	PLL_Initialize
	.code	16
	.thumb_func
	.type	PLL_Initialize, %function
PLL_Initialize:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\pll.c"
	.loc 1 25 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 29 0
	movs	r4, #0
	ldr	r3, .L2
	.loc 1 37 0
	movs	r0, #1
	.loc 1 29 0
	strh	r4, [r3]
	.loc 1 31 0
	ldr	r3, .L2+4
	.loc 1 81 0
	@ sp needed
	.loc 1 31 0
	strh	r4, [r3]
	.loc 1 34 0
	ldr	r3, .L2+8
	strh	r4, [r3]
	.loc 1 37 0
	bl	USC_Pause_us
.LVL0:
	.loc 1 41 0
	movs	r1, #1
	.loc 1 40 0
	ldr	r2, .L2+12
	.loc 1 58 0
	movs	r0, #50
	.loc 1 40 0
	ldrh	r3, [r2]
	str	r3, [sp, #4]
	.loc 1 41 0
	ldr	r3, [sp, #4]
	orrs	r3, r1
	str	r3, [sp, #4]
	.loc 1 42 0
	ldr	r3, [sp, #4]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 45 0
	movs	r3, #160
	ldr	r2, .L2+16
	lsls	r3, r3, #5
	strh	r3, [r2]
	.loc 1 47 0
	ldr	r3, .L2+20
	strh	r4, [r3]
	.loc 1 50 0
	ldr	r3, .L2+24
	.loc 1 68 0
	ldr	r4, .L2+28
	.loc 1 50 0
	strh	r1, [r3]
	.loc 1 53 0
	ldrh	r3, [r2]
	str	r3, [sp, #4]
	.loc 1 54 0
	ldr	r3, [sp, #4]
	orrs	r3, r1
	str	r3, [sp, #4]
	.loc 1 55 0
	ldr	r3, [sp, #4]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 58 0
	bl	USC_Pause_us
.LVL1:
	.loc 1 61 0
	ldr	r2, .L2+32
	.loc 1 70 0
	movs	r0, #2
	.loc 1 61 0
	ldrh	r3, [r2]
	str	r3, [sp, #4]
	.loc 1 62 0
	ldr	r1, [sp, #4]
	ldr	r3, .L2+36
	ands	r3, r1
	str	r3, [sp, #4]
	.loc 1 63 0
	ldr	r3, [sp, #4]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 66 0
	movs	r2, #208
	ldr	r3, .L2+40
	lsls	r2, r2, #8
	str	r2, [r3]
	.loc 1 68 0
	ldr	r3, .L2+44
	str	r3, [r4]
	.loc 1 70 0
	bl	USC_Pause_us
.LVL2:
	.loc 1 78 0
	ldr	r3, .L2+48
	.loc 1 80 0
	movs	r0, #50
	.loc 1 78 0
	str	r3, [r4]
	.loc 1 80 0
	bl	USC_Pause_us
.LVL3:
	.loc 1 81 0
	pop	{r0, r1, r4, pc}
.L3:
	.align	2
.L2:
	.word	-1609105336
	.word	-1609105332
	.word	-1609103616
	.word	-1609105088
	.word	-1609105152
	.word	-1609105148
	.word	-1609103808
	.word	-1610546936
	.word	-1609105328
	.word	65531
	.word	-1610546916
	.word	32776
	.word	46624
	.cfi_endproc
.LFE1:
	.size	PLL_Initialize, .-PLL_Initialize
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source\\Lib\\MT6261/drivers\\ustimer.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x127
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0xc
	.4byte	.LASF17
	.4byte	.LASF18
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x41
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x24
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.4byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	0x8c
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x18
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f
	.uleb128 0x7
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LVL0
	.4byte	0x11f
	.4byte	0xe7
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x8
	.4byte	.LVL1
	.4byte	0x11f
	.4byte	0xfb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LVL2
	.4byte	0x11f
	.4byte	0x10e
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LVL3
	.4byte	0x11f
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x4
	.byte	0x25
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF8:
	.ascii	"long long int\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF20:
	.ascii	"USC_Pause_us\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF15:
	.ascii	"char\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF17:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\pll.c\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF13:
	.ascii	"long double\000"
.LASF2:
	.ascii	"short int\000"
.LASF16:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -Os -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF19:
	.ascii	"PLL_Initialize\000"
.LASF14:
	.ascii	"sizetype\000"
.LASF18:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
