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
	.file	"rgu.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.RGU_SetWDTInterval,"ax",%progbits
	.align	1
	.global	RGU_SetWDTInterval
	.code	16
	.thumb_func
	.type	RGU_SetWDTInterval, %function
RGU_SetWDTInterval:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\rgu.c"
	.loc 1 25 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 28 0
	movs	r2, #136
	ldr	r3, .L8
	lsls	r2, r2, #6
	strh	r2, [r3]
	.loc 1 29 0
	cmp	r0, #31
	ble	.L2
	movs	r0, #31
.LVL1:
.L2:
	movs	r2, #8
	lsls	r0, r0, #11
	orrs	r0, r2
	lsls	r0, r0, #16
	ldr	r2, .L8+4
	lsrs	r0, r0, #16
	strh	r0, [r2]
.LBB7:
.LBB8:
	.loc 1 57 0
	ldr	r0, .L8+8
	ldr	r2, .L8+12
	strh	r0, [r2]
.LBE8:
.LBE7:
	.loc 1 31 0
	cmp	r1, #0
	beq	.L1
	.loc 1 31 0 is_stmt 0 discriminator 1
	ldr	r2, .L8+16
	strh	r2, [r3]
.L1:
	.loc 1 32 0 is_stmt 1
	@ sp needed
	bx	lr
.L9:
	.align	2
.L8:
	.word	-1610416128
	.word	-1610416124
	.word	6513
	.word	-1610416120
	.word	8705
	.cfi_endproc
.LFE1:
	.size	RGU_SetWDTInterval, .-RGU_SetWDTInterval
	.section	.text.RGU_EnableWDT,"ax",%progbits
	.align	1
	.global	RGU_EnableWDT
	.code	16
	.thumb_func
	.type	RGU_EnableWDT, %function
RGU_EnableWDT:
.LFB2:
	.loc 1 35 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 36 0
	ldr	r3, .L12
	ldrh	r2, [r3]
	lsls	r2, r2, #31
	bmi	.L10
	.loc 1 37 0
	movs	r2, #136
	lsls	r2, r2, #6
	strh	r2, [r3]
.LBB9:
.LBB10:
	.loc 1 57 0
	ldr	r1, .L12+4
	ldr	r2, .L12+8
	strh	r1, [r2]
.LBE10:
.LBE9:
	.loc 1 39 0
	ldr	r2, .L12+12
	strh	r2, [r3]
.L10:
	.loc 1 40 0
	@ sp needed
	bx	lr
.L13:
	.align	2
.L12:
	.word	-1610416128
	.word	6513
	.word	-1610416120
	.word	8705
	.cfi_endproc
.LFE2:
	.size	RGU_EnableWDT, .-RGU_EnableWDT
	.section	.text.RGU_DisableWDT,"ax",%progbits
	.align	1
	.global	RGU_DisableWDT
	.code	16
	.thumb_func
	.type	RGU_DisableWDT, %function
RGU_DisableWDT:
.LFB3:
	.loc 1 43 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 44 0
	movs	r2, #136
	ldr	r3, .L15
	lsls	r2, r2, #6
	strh	r2, [r3]
	.loc 1 45 0
	@ sp needed
	bx	lr
.L16:
	.align	2
.L15:
	.word	-1610416128
	.cfi_endproc
.LFE3:
	.size	RGU_DisableWDT, .-RGU_DisableWDT
	.section	.text.RGU_ReadWDTStatus,"ax",%progbits
	.align	1
	.global	RGU_ReadWDTStatus
	.code	16
	.thumb_func
	.type	RGU_ReadWDTStatus, %function
RGU_ReadWDTStatus:
.LFB4:
	.loc 1 48 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 49 0
	ldr	r2, .L21
	movs	r0, #1
	ldrh	r3, [r2]
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L18
	.loc 1 50 0
	ldrh	r0, [r2]
	lsls	r0, r0, #17
	.loc 1 52 0
	lsrs	r0, r0, #31
	lsls	r0, r0, #1
.L18:
	.loc 1 53 0
	@ sp needed
	bx	lr
.L22:
	.align	2
.L21:
	.word	-1610416116
	.cfi_endproc
.LFE4:
	.size	RGU_ReadWDTStatus, .-RGU_ReadWDTStatus
	.section	.text.RGU_RestartWDT,"ax",%progbits
	.align	1
	.global	RGU_RestartWDT
	.code	16
	.thumb_func
	.type	RGU_RestartWDT, %function
RGU_RestartWDT:
.LFB5:
	.loc 1 56 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 57 0
	ldr	r2, .L24
	ldr	r3, .L24+4
	.loc 1 58 0
	@ sp needed
	.loc 1 57 0
	strh	r2, [r3]
	.loc 1 58 0
	bx	lr
.L25:
	.align	2
.L24:
	.word	6513
	.word	-1610416120
	.cfi_endproc
.LFE5:
	.size	RGU_RestartWDT, .-RGU_RestartWDT
	.section	.text.RGU_RaiseWDTSWReset,"ax",%progbits
	.align	1
	.global	RGU_RaiseWDTSWReset
	.code	16
	.thumb_func
	.type	RGU_RaiseWDTSWReset, %function
RGU_RaiseWDTSWReset:
.LFB6:
	.loc 1 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 62 0
	ldr	r2, .L27
	ldr	r3, .L27+4
	.loc 1 63 0
	@ sp needed
	.loc 1 62 0
	strh	r2, [r3]
	.loc 1 63 0
	bx	lr
.L28:
	.align	2
.L27:
	.word	4617
	.word	-1610416100
	.cfi_endproc
.LFE6:
	.size	RGU_RaiseWDTSWReset, .-RGU_RaiseWDTSWReset
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\Lib\\MT6261/drivers\\rgu.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1af
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
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
	.byte	0x24
	.4byte	0x45
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
	.4byte	.LASF32
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x32
	.4byte	0xf3
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x37
	.4byte	0xd0
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x18
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x147
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x18
	.4byte	0x81
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x18
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xc
	.4byte	0xfe
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x22
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16c
	.uleb128 0xc
	.4byte	0xfe
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.byte	0x26
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2f
	.4byte	0xf3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	0xfe
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x10
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x12
	.byte	0x4f
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE1
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x12
	.byte	0x4f
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x44
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF17:
	.ascii	"true\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF28:
	.ascii	"RGU_RaiseWDTSWReset\000"
.LASF24:
	.ascii	"Enable\000"
.LASF6:
	.ascii	"long int\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF26:
	.ascii	"RGU_EnableWDT\000"
.LASF31:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF32:
	.ascii	"tag_WDTREASON\000"
.LASF16:
	.ascii	"false\000"
.LASF34:
	.ascii	"RGU_ReadWDTStatus\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF25:
	.ascii	"RGU_SetWDTInterval\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF33:
	.ascii	"RGU_RestartWDT\000"
.LASF19:
	.ascii	"WDT_REASON_NONE\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF27:
	.ascii	"RGU_DisableWDT\000"
.LASF2:
	.ascii	"short int\000"
.LASF30:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\rgu.c\000"
.LASF29:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -Os -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF21:
	.ascii	"WDT_REASON_SW\000"
.LASF22:
	.ascii	"TWDTREASON\000"
.LASF14:
	.ascii	"sizetype\000"
.LASF8:
	.ascii	"long long int\000"
.LASF15:
	.ascii	"char\000"
.LASF20:
	.ascii	"WDT_REASON_HW\000"
.LASF12:
	.ascii	"uint16_t\000"
.LASF23:
	.ascii	"Interval\000"
.LASF13:
	.ascii	"long double\000"
.LASF0:
	.ascii	"signed char\000"
.LASF18:
	.ascii	"boolean\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
