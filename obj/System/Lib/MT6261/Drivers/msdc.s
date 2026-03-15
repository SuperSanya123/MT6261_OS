	.syntax unified
	.cpu arm9e
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.thumb
	.syntax unified
	.file	"msdc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.data.MSDCCONTEXT,"aw",%progbits
	.align	2
	.type	MSDCCONTEXT, %object
	.size	MSDCCONTEXT, 16
MSDCCONTEXT:
	.word	-1609367552
	.byte	19
	.space	3
	.word	-1608056832
	.byte	42
	.space	3
	.section	.text.MSDC_GetModuleContext,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	MSDC_GetModuleContext, %function
MSDC_GetModuleContext:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\msdc.c"
	.loc 1 31 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	movs	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 32 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #1
	bls	.L2
	.loc 1 32 0 discriminator 1
	movs	r3, #0
	b	.L3
.L2:
	.loc 1 33 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	lsls	r2, r3, #3
	ldr	r3, .L4
	adds	r3, r2, r3
.L3:
	.loc 1 34 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	MSDCCONTEXT
	.cfi_endproc
.LFE1:
	.size	MSDC_GetModuleContext, .-MSDC_GetModuleContext
	.section	.text.MSDC_Reset,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	MSDC_Reset, %function
MSDC_Reset:
.LFB2:
	.loc 1 37 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 38 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2]
	movs	r1, #2
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 39 0
	movs	r3, #250
	lsls	r3, r3, #3
	movs	r0, r3
	bl	USC_Pause_us
	.loc 1 40 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2]
	movs	r1, #3
	bics	r2, r1
	str	r2, [r3]
	.loc 1 41 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	MSDC_Reset, .-MSDC_Reset
	.section	.text.MSDC_ClockInit,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	MSDC_ClockInit, %function
MSDC_ClockInit:
.LFB3:
	.loc 1 44 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 45 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #128
	ldr	r3, [r3, r1]
	movs	r1, #128
	bics	r3, r1
	movs	r1, #128
	str	r3, [r2, r1]
	.loc 1 46 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2, #32]
	lsls	r2, r2, #8
	lsrs	r2, r2, #8
	movs	r1, #160
	lsls	r1, r1, #23
	orrs	r2, r1
	str	r2, [r3, #32]
	.loc 1 47 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	MSDC_ClockInit, .-MSDC_ClockInit
	.section	.text.MSDC_IsMultiLineSupported,"ax",%progbits
	.align	2
	.global	MSDC_IsMultiLineSupported
	.code	16
	.thumb_func
	.type	MSDC_IsMultiLineSupported, %function
MSDC_IsMultiLineSupported:
.LFB4:
	.loc 1 50 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	movs	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 51 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 52 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	MSDC_IsMultiLineSupported, .-MSDC_IsMultiLineSupported
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 6 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\msdc.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x40b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.4byte	.LASF81
	.4byte	.LASF82
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
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
	.byte	0x18
	.4byte	0x2c
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
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0xc5
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1d
	.4byte	0xac
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0xf1
	.4byte	0xff
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x24
	.4byte	0x146
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0x16
	.4byte	0x169
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x1b
	.4byte	0x146
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x9c
	.byte	0x7
	.byte	0x1d
	.4byte	0x2e9
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x7
	.byte	0x1f
	.4byte	0x8c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x7
	.byte	0x20
	.4byte	0x8c
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x7
	.byte	0x21
	.4byte	0x8c
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.byte	0x22
	.4byte	0x8c
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x7
	.byte	0x23
	.4byte	0x8c
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x7
	.byte	0x24
	.4byte	0x8c
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x7
	.byte	0x25
	.4byte	0x8c
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x7
	.byte	0x26
	.4byte	0x8c
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x7
	.byte	0x27
	.4byte	0x8c
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x7
	.byte	0x28
	.4byte	0x8c
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x7
	.byte	0x29
	.4byte	0x8c
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x7
	.byte	0x2a
	.4byte	0x8c
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x7
	.byte	0x2b
	.4byte	0x8c
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x7
	.byte	0x2c
	.4byte	0x8c
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x7
	.byte	0x2d
	.4byte	0x8c
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x7
	.byte	0x2e
	.4byte	0x8c
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x7
	.byte	0x2f
	.4byte	0x8c
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x7
	.byte	0x30
	.4byte	0x8c
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x7
	.byte	0x31
	.4byte	0x8c
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x7
	.byte	0x32
	.4byte	0x8c
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x7
	.byte	0x33
	.4byte	0x8c
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x7
	.byte	0x34
	.4byte	0x8c
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x7
	.byte	0x35
	.4byte	0x8c
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x7
	.byte	0x36
	.4byte	0x2e9
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x7
	.byte	0x37
	.4byte	0x8c
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x7
	.byte	0x38
	.4byte	0x8c
	.byte	0x84
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x7
	.byte	0x39
	.4byte	0x8c
	.byte	0x88
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x7
	.byte	0x3a
	.4byte	0x8c
	.byte	0x8c
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x7
	.byte	0x3b
	.4byte	0x2f9
	.byte	0x90
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x7
	.byte	0x3c
	.4byte	0x8c
	.byte	0x98
	.byte	0
	.uleb128 0xa
	.4byte	0x8c
	.4byte	0x2f9
	.uleb128 0xb
	.4byte	0x9e
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0x8c
	.4byte	0x309
	.uleb128 0xb
	.4byte	0x9e
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x7
	.byte	0x3d
	.4byte	0x174
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x8
	.byte	0x7
	.byte	0x3f
	.4byte	0x339
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x7
	.byte	0x41
	.4byte	0x339
	.byte	0
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x7
	.byte	0x42
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x33f
	.uleb128 0xd
	.4byte	0x309
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x7
	.byte	0x43
	.4byte	0x314
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x1
	.byte	0x1e
	.4byte	0x377
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x377
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x1
	.byte	0x1e
	.4byte	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x344
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x1
	.byte	0x24
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a1
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x1
	.byte	0x24
	.4byte	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x1
	.byte	0x2b
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c5
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2b
	.4byte	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x1
	.byte	0x31
	.4byte	0xc5
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ed
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x1
	.byte	0x31
	.4byte	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xa
	.4byte	0x344
	.4byte	0x3fd
	.uleb128 0xb
	.4byte	0x9e
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x1
	.byte	0x18
	.4byte	0x3ed
	.uleb128 0x5
	.byte	0x3
	.4byte	MSDCCONTEXT
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF46:
	.ascii	"MSDC_IOCON1\000"
.LASF76:
	.ascii	"Index\000"
.LASF48:
	.ascii	"SDC_CFG\000"
.LASF42:
	.ascii	"MSDC_INT\000"
.LASF84:
	.ascii	"MSDC_IsMultiLineSupported\000"
.LASF35:
	.ascii	"tag_MSDC\000"
.LASF30:
	.ascii	"USB_EP4IN\000"
.LASF51:
	.ascii	"SDC_STA\000"
.LASF34:
	.ascii	"USB_EPNUM\000"
.LASF2:
	.ascii	"short int\000"
.LASF24:
	.ascii	"tag_VLINDEX\000"
.LASF14:
	.ascii	"sizetype\000"
.LASF44:
	.ascii	"MSDC_DAT\000"
.LASF43:
	.ascii	"MSDC_PS\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF29:
	.ascii	"USB_EP3IN\000"
.LASF70:
	.ascii	"TMSDCREGS\000"
.LASF77:
	.ascii	"Context\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF57:
	.ascii	"SDC_DATSTA\000"
.LASF78:
	.ascii	"MSDC_Reset\000"
.LASF39:
	.ascii	"TMSDC\000"
.LASF28:
	.ascii	"USB_EP2IN\000"
.LASF23:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF8:
	.ascii	"long long int\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF50:
	.ascii	"SDC_ARG\000"
.LASF4:
	.ascii	"long int\000"
.LASF59:
	.ascii	"SDC_IRQMASK0\000"
.LASF60:
	.ascii	"SDC_IRQMASK1\000"
.LASF80:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF31:
	.ascii	"USB_EPMAXINDEX\000"
.LASF41:
	.ascii	"MSDC_STA\000"
.LASF58:
	.ascii	"SDC_CSTA\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF27:
	.ascii	"USB_EP1IN\000"
.LASF37:
	.ascii	"MSDC_ITF1\000"
.LASF73:
	.ascii	"MSDC\000"
.LASF13:
	.ascii	"long double\000"
.LASF25:
	.ascii	"tag_EP\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF62:
	.ascii	"SDIO_STA\000"
.LASF83:
	.ascii	"MSDC_GetModuleContext\000"
.LASF0:
	.ascii	"signed char\000"
.LASF40:
	.ascii	"MSDC_CFG\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF16:
	.ascii	"false\000"
.LASF32:
	.ascii	"USB_EP1OUT\000"
.LASF81:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\msdc.c\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF33:
	.ascii	"USB_EP2OUT\000"
.LASF61:
	.ascii	"SDIO_CFG\000"
.LASF38:
	.ascii	"MSDC_ITFNUM\000"
.LASF15:
	.ascii	"char\000"
.LASF66:
	.ascii	"CLK_CRCSTA1\000"
.LASF67:
	.ascii	"CLK_CRCSTA2\000"
.LASF17:
	.ascii	"true\000"
.LASF47:
	.ascii	"RSVD0\000"
.LASF63:
	.ascii	"RSVD1\000"
.LASF68:
	.ascii	"RSVD2\000"
.LASF49:
	.ascii	"SDC_CMD\000"
.LASF71:
	.ascii	"tag_MSDCREGS\000"
.LASF69:
	.ascii	"DAT_CHECKSUM\000"
.LASF36:
	.ascii	"MSDC_ITF0\000"
.LASF82:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF52:
	.ascii	"SDC_RESP0\000"
.LASF53:
	.ascii	"SDC_RESP1\000"
.LASF54:
	.ascii	"SDC_RESP2\000"
.LASF55:
	.ascii	"SDC_RESP3\000"
.LASF85:
	.ascii	"MSDCCONTEXT\000"
.LASF75:
	.ascii	"TMSDCCONTEXT\000"
.LASF79:
	.ascii	"MSDC_ClockInit\000"
.LASF56:
	.ascii	"SDC_CMDSTA\000"
.LASF65:
	.ascii	"CLK_STA\000"
.LASF26:
	.ascii	"USB_EP0\000"
.LASF74:
	.ascii	"PD_Code\000"
.LASF19:
	.ascii	"LCDIF_LAYER0\000"
.LASF20:
	.ascii	"LCDIF_LAYER1\000"
.LASF21:
	.ascii	"LCDIF_LAYER2\000"
.LASF72:
	.ascii	"tag_MSDC_CONTEXT\000"
.LASF45:
	.ascii	"MSDC_IOCON\000"
.LASF22:
	.ascii	"LCDIF_LAYER3\000"
.LASF64:
	.ascii	"CLK_RED\000"
.LASF18:
	.ascii	"boolean\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
