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
	.file	"ili9341.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ILI9341_Initialize,"ax",%progbits
	.align	2
	.global	ILI9341_Initialize
	.code	16
	.thumb_func
	.type	ILI9341_Initialize, %function
ILI9341_Initialize:
.LFB1:
	.file 1 "Source\\Application\\Drivers\\ili9341.c"
	.loc 1 26 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 27 0
	movs	r0, #192
	bl	LCDIF_WriteCommand
	.loc 1 28 0
	movs	r0, #35
	bl	LCDIF_WriteData
	.loc 1 30 0
	movs	r0, #193
	bl	LCDIF_WriteCommand
	.loc 1 31 0
	movs	r0, #0
	bl	LCDIF_WriteData
	.loc 1 33 0
	movs	r0, #197
	bl	LCDIF_WriteCommand
	.loc 1 34 0
	movs	r0, #62
	bl	LCDIF_WriteData
	.loc 1 35 0
	movs	r0, #40
	bl	LCDIF_WriteData
	.loc 1 37 0
	movs	r0, #54
	bl	LCDIF_WriteCommand
	.loc 1 38 0
	movs	r0, #0
	bl	LCDIF_WriteData
	.loc 1 40 0
	movs	r0, #58
	bl	LCDIF_WriteCommand
	.loc 1 41 0
	movs	r0, #102
	bl	LCDIF_WriteData
	.loc 1 43 0
	movs	r0, #177
	bl	LCDIF_WriteCommand
	.loc 1 44 0
	movs	r0, #0
	bl	LCDIF_WriteData
	.loc 1 45 0
	movs	r0, #24
	bl	LCDIF_WriteData
	.loc 1 47 0
	movs	r0, #182
	bl	LCDIF_WriteCommand
	.loc 1 48 0
	movs	r0, #8
	bl	LCDIF_WriteData
	.loc 1 49 0
	movs	r0, #130
	bl	LCDIF_WriteData
	.loc 1 50 0
	movs	r0, #29
	bl	LCDIF_WriteData
	.loc 1 52 0
	movs	r0, #17
	bl	LCDIF_WriteCommand
	.loc 1 53 0
	movs	r0, #41
	bl	LCDIF_WriteCommand
	.loc 1 55 0
	movs	r3, #1
	.loc 1 56 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	ILI9341_Initialize, .-ILI9341_Initialize
	.section	.text.ILI9341_SleepLCD,"ax",%progbits
	.align	2
	.global	ILI9341_SleepLCD
	.code	16
	.thumb_func
	.type	ILI9341_SleepLCD, %function
ILI9341_SleepLCD:
.LFB2:
	.loc 1 59 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 60 0
	movs	r0, #40
	bl	LCDIF_WriteCommand
	.loc 1 61 0
	movs	r0, #16
	bl	LCDIF_WriteCommand
	.loc 1 62 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	ILI9341_SleepLCD, .-ILI9341_SleepLCD
	.section	.text.ILI9341_ResumeLCD,"ax",%progbits
	.align	2
	.global	ILI9341_ResumeLCD
	.code	16
	.thumb_func
	.type	ILI9341_ResumeLCD, %function
ILI9341_ResumeLCD:
.LFB3:
	.loc 1 65 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 66 0
	movs	r0, #17
	bl	LCDIF_WriteCommand
	.loc 1 67 0
	movs	r0, #41
	bl	LCDIF_WriteCommand
	.loc 1 68 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	ILI9341_ResumeLCD, .-ILI9341_ResumeLCD
	.section	.text.ILI9341_SetOutputWindow,"ax",%progbits
	.align	2
	.global	ILI9341_SetOutputWindow
	.code	16
	.thumb_func
	.type	ILI9341_SetOutputWindow, %function
ILI9341_SetOutputWindow:
.LFB4:
	.loc 1 71 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 72 0
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 74 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.LCB121
	b	.L6	@long jump
.LCB121:
.LBB2:
	.loc 1 76 0
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 1 78 0
	movs	r0, #68
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 79 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.LCB131
	b	.L6	@long jump
.LCB131:
	.loc 1 81 0
	ldr	r3, [r7, #12]
	movs	r2, #11
	str	r2, [r3, #20]
	.loc 1 82 0
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	adds	r3, r3, #12
	movs	r1, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
	.loc 1 84 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	ldr	r1, .L8
	str	r1, [r3, r2]
	.loc 1 85 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	asrs	r2, r2, #8
	movs	r1, r2
	movs	r2, #255
	ands	r1, r2
	ldr	r2, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	.loc 1 86 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	movs	r1, r2
	movs	r2, #255
	ands	r1, r2
	ldr	r2, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	.loc 1 87 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r1, #4
	ldrsh	r2, [r2, r1]
	asrs	r2, r2, #8
	movs	r1, r2
	movs	r2, #255
	ands	r1, r2
	ldr	r2, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	.loc 1 88 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r1, #4
	ldrsh	r2, [r2, r1]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	movs	r1, r2
	movs	r2, #255
	ands	r1, r2
	ldr	r2, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	.loc 1 90 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	ldr	r1, .L8+4
	str	r1, [r3, r2]
	.loc 1 91 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r1, #2
	ldrsh	r2, [r2, r1]
	asrs	r2, r2, #8
	movs	r1, r2
	movs	r2, #255
	ands	r1, r2
	ldr	r2, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	.loc 1 92 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r1, #2
	ldrsh	r2, [r2, r1]
	movs	r1, r2
	movs	r2, #255
	ands	r1, r2
	ldr	r2, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	.loc 1 93 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r1, #6
	ldrsh	r2, [r2, r1]
	asrs	r2, r2, #8
	movs	r1, r2
	movs	r2, #255
	ands	r1, r2
	ldr	r2, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	.loc 1 94 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r1, #6
	ldrsh	r2, [r2, r1]
	movs	r1, r2
	movs	r2, #255
	ands	r1, r2
	ldr	r2, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	.loc 1 96 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	ldr	r1, .L8+8
	str	r1, [r3, r2]
.L6:
.LBE2:
	.loc 1 99 0
	ldr	r3, [r7, #12]
	.loc 1 100 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L9:
	.align	2
.L8:
	.word	8388650
	.word	8388651
	.word	8388652
	.cfi_endproc
.LFE4:
	.size	ILI9341_SetOutputWindow, .-ILI9341_SetOutputWindow
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\System/dlist.h"
	.file 6 ".\\Source\\GUI/gditypes.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2ad
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x29
	.4byte	0x3e
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
	.byte	0x20
	.4byte	0x33
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x1
	.4byte	0x2c
	.byte	0x4
	.byte	0x1d
	.4byte	0xc7
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1d
	.4byte	0xae
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x17
	.4byte	0xdd
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0xc
	.byte	0x5
	.byte	0x18
	.4byte	0x10e
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x1a
	.4byte	0x10e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x1b
	.4byte	0x10e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x1c
	.4byte	0xa5
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x17
	.4byte	0x119
	.uleb128 0xa
	.byte	0x4
	.4byte	0xdd
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.byte	0x6
	.byte	0x41
	.4byte	0x140
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x6
	.byte	0x43
	.4byte	0x81
	.byte	0
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0x6
	.byte	0x44
	.4byte	0x81
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x45
	.4byte	0x11f
	.uleb128 0xc
	.byte	0x8
	.byte	0x6
	.byte	0x49
	.4byte	0x16a
	.uleb128 0xb
	.ascii	"lt\000"
	.byte	0x6
	.byte	0x4b
	.4byte	0x140
	.byte	0
	.uleb128 0xb
	.ascii	"rb\000"
	.byte	0x6
	.byte	0x4c
	.4byte	0x140
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x6
	.byte	0x4e
	.4byte	0x19b
	.uleb128 0xb
	.ascii	"l\000"
	.byte	0x6
	.byte	0x50
	.4byte	0x81
	.byte	0
	.uleb128 0xb
	.ascii	"t\000"
	.byte	0x6
	.byte	0x51
	.4byte	0x81
	.byte	0x2
	.uleb128 0xb
	.ascii	"r\000"
	.byte	0x6
	.byte	0x52
	.4byte	0x81
	.byte	0x4
	.uleb128 0xb
	.ascii	"b\000"
	.byte	0x6
	.byte	0x53
	.4byte	0x81
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8
	.byte	0x6
	.byte	0x47
	.4byte	0x1b2
	.uleb128 0xe
	.4byte	0x14b
	.uleb128 0xe
	.4byte	0x16a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x55
	.4byte	0x19b
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x55
	.4byte	0x1c8
	.uleb128 0xa
	.byte	0x4
	.4byte	0x19b
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x18
	.byte	0x7
	.2byte	0x12f
	.4byte	0x210
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x7
	.2byte	0x131
	.4byte	0xd2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x132
	.4byte	0x1b2
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x133
	.4byte	0x8c
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x7
	.2byte	0x134
	.4byte	0x210
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	0x8c
	.4byte	0x21f
	.uleb128 0x12
	.4byte	0x9e
	.byte	0
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x7
	.2byte	0x135
	.4byte	0x22b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1ce
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x1
	.byte	0x19
	.4byte	0xc7
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0x40
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x1
	.byte	0x46
	.4byte	0x21f
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.ascii	"Rct\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x1bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0x48
	.4byte	0x21f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xd
	.uleb128 0x17
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
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
.LASF8:
	.ascii	"long long int\000"
.LASF43:
	.ascii	"ILI9341_SetOutputWindow\000"
.LASF35:
	.ascii	"ILI9341_SleepLCD\000"
.LASF5:
	.ascii	"__int16_t\000"
.LASF26:
	.ascii	"TPOINT\000"
.LASF20:
	.ascii	"Prev\000"
.LASF31:
	.ascii	"UpdateRect\000"
.LASF41:
	.ascii	"tag_RECT\000"
.LASF38:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF34:
	.ascii	"pLCDCMD\000"
.LASF40:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF21:
	.ascii	"Next\000"
.LASF16:
	.ascii	"false\000"
.LASF17:
	.ascii	"true\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF39:
	.ascii	"Source\\Application\\Drivers\\ili9341.c\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF19:
	.ascii	"TDLITEM\000"
.LASF37:
	.ascii	"Command\000"
.LASF32:
	.ascii	"CMDCount\000"
.LASF22:
	.ascii	"Data\000"
.LASF24:
	.ascii	"tag_ListItem\000"
.LASF28:
	.ascii	"pRECT\000"
.LASF36:
	.ascii	"ILI9341_ResumeLCD\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF42:
	.ascii	"ILI9341_Initialize\000"
.LASF15:
	.ascii	"char\000"
.LASF11:
	.ascii	"int16_t\000"
.LASF29:
	.ascii	"tag_TLCDCMD\000"
.LASF14:
	.ascii	"sizetype\000"
.LASF27:
	.ascii	"TRECT\000"
.LASF23:
	.ascii	"pDLITEM\000"
.LASF2:
	.ascii	"short int\000"
.LASF33:
	.ascii	"CmdArray\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF13:
	.ascii	"long double\000"
.LASF25:
	.ascii	"tag_POINT\000"
.LASF0:
	.ascii	"signed char\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"boolean\000"
.LASF30:
	.ascii	"ListHeader\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
