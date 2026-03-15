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
	.file	"DZ09_boot.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.BL_CheckFileByDescriptor,"ax",%progbits
	.align	1
	.global	BL_CheckFileByDescriptor
	.code	16
	.thumb_func
	.type	BL_CheckFileByDescriptor, %function
BL_CheckFileByDescriptor:
.LFB1:
	.file 1 "Source\\Bootloader\\DZ09_boot.c"
	.loc 1 30 0
	.cfi_startproc
	@ args = 20, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
	.cfi_offset 1, -44
	.cfi_offset 2, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 14, -20
.LVL0:
	.loc 1 30 0
	movs	r4, r2
	str	r2, [sp, #40]
.LVL1:
	.loc 1 33 0
	ldr	r2, .L11
	.loc 1 30 0
	str	r1, [sp, #36]
	.loc 1 33 0
	adds	r4, r2, r4
.LVL2:
	.loc 1 30 0
	str	r0, [sp, #32]
	str	r3, [sp, #44]
.LVL3:
	.loc 1 34 0
	adds	r1, r2, r3
.LVL4:
	.loc 1 36 0
	cmp	r2, r4
	bcc	.L2
.LVL5:
.L4:
	.loc 1 31 0
	movs	r0, #0
	b	.L3
.LVL6:
.L2:
	.loc 1 37 0 discriminator 1
	ldr	r6, .L11+4
	.loc 1 36 0 discriminator 1
	cmp	r1, r6
	bcs	.L4
.LVL7:
.LBB2:
	.loc 1 42 0
	ldr	r3, [r4]
	ldr	r1, .L11+8
.LVL8:
	lsls	r3, r3, #8
	lsrs	r3, r3, #8
	cmp	r3, r1
	bne	.L4
	.loc 1 43 0
	ldr	r3, [r4, #4]
	cmp	r3, #56
	bne	.L4
	.loc 1 45 0
	ldr	r3, [r4, #24]
	ldr	r1, .L11+12
	lsls	r3, r3, #8
	lsrs	r3, r3, #8
	cmp	r3, r1
	bne	.L4
	.loc 1 47 0
	ldr	r0, [r4, #28]
	.loc 1 46 0
	cmp	r2, r0
	bhi	.L4
	.loc 1 48 0
	ldr	r1, [r4, #32]
	.loc 1 47 0
	adds	r3, r0, r1
	cmp	r6, r3
	bls	.L4
.LVL9:
.LBB3:
	.loc 1 53 0
	ldrb	r3, [r4, #27]
	cmp	r3, #0
	bne	.L5
	.loc 1 54 0
	ldr	r3, [r4, #48]
	b	.L9
.L5:
	.loc 1 55 0
	cmp	r3, #1
	bne	.L4
	.loc 1 55 0 is_stmt 0 discriminator 1
	ldr	r3, [r4, #44]
	cmp	r3, #32
	bne	.L4
	.loc 1 50 0 is_stmt 1
	subs	r1, r1, #32
.LVL10:
	.loc 1 57 0
	adds	r3, r0, r1
	subs	r3, r3, #4
	.loc 1 56 0
	ldr	r2, .L11+16
.LVL11:
	ldr	r3, [r3]
	.loc 1 50 0
	movs	r5, r1
	.loc 1 56 0
	cmp	r3, r2
	bne	.L4
	.loc 1 59 0
	bl	SHA1_ProcessData
.LVL12:
	.loc 1 60 0
	cmp	r0, #0
	beq	.L4
.LBB4:
	.loc 1 62 0
	ldr	r3, [r4, #28]
	adds	r1, r5, r3
.LVL13:
	.loc 1 64 0
	movs	r5, #255
	.loc 1 62 0
	str	r3, [sp, #4]
	.loc 1 64 0
	ldr	r3, [r0]
	lsls	r5, r5, #16
	lsrs	r2, r3, #24
	lsls	r7, r3, #24
	orrs	r7, r2
	lsls	r2, r3, #8
	ands	r2, r5
	orrs	r7, r2
	movs	r2, #255
	lsrs	r3, r3, #8
	lsls	r2, r2, #8
	ldr	r6, [r1]
	ands	r3, r2
	orrs	r3, r7
	cmp	r3, r6
	bne	.L4
	.loc 1 65 0 discriminator 1
	ldr	r3, [r0, #4]
	.loc 1 64 0 discriminator 1
	lsrs	r7, r3, #24
	lsls	r6, r3, #24
	orrs	r6, r7
	lsls	r7, r3, #8
	ands	r7, r5
	orrs	r7, r6
	lsrs	r3, r3, #8
	ldr	r6, [r1, #4]
	ands	r3, r2
	orrs	r3, r7
	cmp	r3, r6
	bne	.L4
	.loc 1 66 0
	ldr	r3, [r0, #8]
	.loc 1 65 0
	lsrs	r7, r3, #24
	lsls	r6, r3, #24
	orrs	r6, r7
	lsls	r7, r3, #8
	ands	r7, r5
	orrs	r7, r6
	lsrs	r3, r3, #8
	ldr	r6, [r1, #8]
	ands	r3, r2
	orrs	r3, r7
	cmp	r3, r6
	bne	.L4
	.loc 1 67 0
	ldr	r3, [r0, #12]
	.loc 1 66 0
	lsrs	r7, r3, #24
	lsls	r6, r3, #24
	orrs	r6, r7
	lsls	r7, r3, #8
	ands	r7, r5
	orrs	r7, r6
	lsrs	r3, r3, #8
	ldr	r6, [r1, #12]
	ands	r3, r2
	orrs	r3, r7
	cmp	r3, r6
	bne	.L4
	.loc 1 68 0
	ldr	r3, [r0, #16]
	.loc 1 67 0
	lsls	r7, r3, #24
	lsrs	r0, r3, #24
.LVL14:
	orrs	r0, r7
	lsls	r7, r3, #8
	lsrs	r3, r3, #8
	ands	r2, r3
	ands	r5, r7
	ldr	r3, [r1, #16]
	orrs	r5, r0
	orrs	r2, r5
	cmp	r2, r3
	bne	.L4
	.loc 1 70 0
	ldr	r0, [r4, #48]
	ldr	r3, [sp, #4]
.LVL15:
.L9:
	adds	r0, r3, r0
.LVL16:
.L3:
.LBE4:
.LBE3:
.LBE2:
	.loc 1 77 0
	@ sp needed
.LVL17:
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r3}
	add	sp, sp, #16
	bx	r3
.L12:
	.align	2
.L11:
	.word	__ROMImageBase
	.word	__ROMImageLimit
	.word	5066061
	.word	458754
	.word	1162757120
	.cfi_endproc
.LFE1:
	.size	BL_CheckFileByDescriptor, .-BL_CheckFileByDescriptor
	.section	.text.startup.main,"ax",%progbits
	.align	1
	.global	main
	.code	16
	.thumb_func
	.type	main, %function
main:
.LFB2:
	.loc 1 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL18:
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	.cfi_offset 1, -28
	.cfi_offset 2, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 84 0
	movs	r1, #1
	movs	r0, #2
	bl	RGU_SetWDTInterval
.LVL19:
	.loc 1 86 0
	bl	DBG_Initialize
.LVL20:
	.loc 1 87 0
	bl	USC_StartCounter
.LVL21:
	.loc 1 88 0
	bl	PLL_Initialize
.LVL22:
	.loc 1 90 0
	movs	r0, #3
	bl	EMI_MemoryRemap
.LVL23:
	.loc 1 94 0
	ldr	r4, .L25
	ldr	r1, .L25+4
	movs	r0, r4
	bl	strcmp
.LVL24:
	cmp	r0, #0
	bne	.L22
	.loc 1 94 0 is_stmt 0 discriminator 1
	ldr	r3, [r4, #12]
	cmp	r3, #1
	bne	.L22
.LBB5:
	.loc 1 100 0 is_stmt 1
	ldr	r3, [r4, #16]
	.loc 1 101 0
	ldr	r1, .L25+8
	.loc 1 100 0
	adds	r4, r3, r4
.LVL25:
	.loc 1 101 0
	movs	r0, r4
	bl	strcmp
.LVL26:
	cmp	r0, #0
	bne	.L22
	.loc 1 101 0 is_stmt 0 discriminator 1
	ldr	r3, [r4, #8]
	cmp	r3, #1
	bne	.L22
	movs	r6, r4
	.loc 1 101 0
	movs	r5, r0
.LBB6:
	.loc 1 117 0 is_stmt 1
	movs	r7, #20
	adds	r6, r6, #20
.L19:
.LVL27:
	.loc 1 112 0
	bl	RGU_RestartWDT
.LVL28:
	.loc 1 114 0
	ldr	r3, .L25+12
	ldr	r2, [r6]
	cmp	r2, r3
	bne	.L17
	.loc 1 114 0 is_stmt 0 discriminator 1
	ldrb	r3, [r6, #4]
	cmp	r3, #7
	bne	.L17
	.loc 1 115 0 is_stmt 1
	ldrh	r3, [r6, #6]
	cmp	r3, #2
	bne	.L17
	.loc 1 117 0
	movs	r3, r7
	muls	r3, r5
	adds	r3, r4, r3
	ldr	r2, [r3, #36]
	adds	r3, r3, #16
	str	r2, [sp]
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r3, #16]
	bl	BL_CheckFileByDescriptor
.LVL29:
	.loc 1 116 0
	cmp	r0, #0
	beq	.L17
	.loc 1 119 0
	blx	r0
.LVL30:
.L17:
	.loc 1 109 0 discriminator 2
	adds	r5, r5, #1
.LVL31:
	adds	r6, r6, #20
	cmp	r5, #8
	bne	.L19
.LVL32:
.L22:
.LBE6:
.LBE5:
	.loc 1 125 0
	movs	r0, #0
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
.L26:
	.align	2
.L25:
	.word	__ROMImageLimit
	.word	.LC6
	.word	.LC9
	.word	1111638594
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC6:
	.ascii	"SF_BOOT\000"
.LC9:
	.ascii	"BRLYT\000"
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\Lib\\MT6261/drivers\\emi.h"
	.file 6 ".\\Source\\Lib/mtktypes.h"
	.file 7 "Source\\Bootloader\\sha-1.h"
	.file 8 ".\\Source\\Lib\\MT6261/drivers\\rgu.h"
	.file 9 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\string.h"
	.file 10 ".\\Source\\System/debug.h"
	.file 11 ".\\Source\\Lib\\MT6261/drivers\\ustimer.h"
	.file 12 ".\\Source\\Lib\\MT6261/drivers\\pll.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x70b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0xc
	.4byte	.LASF123
	.4byte	.LASF124
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
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x41
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x24
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca
	.uleb128 0x7
	.uleb128 0x8
	.4byte	0xbd
	.4byte	0xdb
	.uleb128 0x9
	.4byte	0xb4
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0xf4
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x17
	.4byte	0x113
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x2
	.4byte	0x50
	.byte	0x6
	.byte	0x2e
	.4byte	0x235
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0xd
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF40
	.2byte	0x100
	.uleb128 0xc
	.4byte	.LASF41
	.2byte	0x101
	.uleb128 0xc
	.4byte	.LASF42
	.2byte	0x102
	.uleb128 0xc
	.4byte	.LASF43
	.2byte	0x103
	.uleb128 0xc
	.4byte	.LASF44
	.2byte	0x104
	.uleb128 0xc
	.4byte	.LASF45
	.2byte	0x200
	.uleb128 0xc
	.4byte	.LASF46
	.2byte	0x201
	.uleb128 0xc
	.4byte	.LASF47
	.2byte	0x202
	.uleb128 0xc
	.4byte	.LASF48
	.2byte	0x203
	.uleb128 0xc
	.4byte	.LASF49
	.2byte	0x204
	.uleb128 0xc
	.4byte	.LASF50
	.2byte	0x205
	.uleb128 0xc
	.4byte	.LASF51
	.2byte	0x206
	.uleb128 0xc
	.4byte	.LASF52
	.2byte	0x207
	.uleb128 0xc
	.4byte	.LASF53
	.2byte	0x208
	.uleb128 0xc
	.4byte	.LASF54
	.2byte	0x209
	.uleb128 0xc
	.4byte	.LASF55
	.2byte	0x20a
	.uleb128 0xc
	.4byte	.LASF56
	.2byte	0x20b
	.uleb128 0xc
	.4byte	.LASF57
	.2byte	0x20c
	.uleb128 0xc
	.4byte	.LASF58
	.2byte	0x20d
	.uleb128 0xc
	.4byte	.LASF59
	.2byte	0x20e
	.uleb128 0xc
	.4byte	.LASF60
	.2byte	0x20f
	.uleb128 0xc
	.4byte	.LASF61
	.2byte	0x210
	.uleb128 0xc
	.4byte	.LASF62
	.2byte	0x300
	.uleb128 0xc
	.4byte	.LASF63
	.2byte	0x301
	.uleb128 0xc
	.4byte	.LASF64
	.2byte	0xffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x6
	.byte	0x5f
	.4byte	0x113
	.uleb128 0xd
	.byte	0x20
	.byte	0x6
	.byte	0x61
	.4byte	0x28c
	.uleb128 0xe
	.ascii	"H0\000"
	.byte	0x6
	.byte	0x63
	.4byte	0xa2
	.byte	0
	.uleb128 0xe
	.ascii	"H1\000"
	.byte	0x6
	.byte	0x64
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xe
	.ascii	"H2\000"
	.byte	0x6
	.byte	0x65
	.4byte	0xa2
	.byte	0x8
	.uleb128 0xe
	.ascii	"H3\000"
	.byte	0x6
	.byte	0x66
	.4byte	0xa2
	.byte	0xc
	.uleb128 0xe
	.ascii	"H4\000"
	.byte	0x6
	.byte	0x67
	.4byte	0xa2
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x6
	.byte	0x68
	.4byte	0x28c
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.4byte	0xa2
	.4byte	0x29c
	.uleb128 0x9
	.4byte	0xb4
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x6
	.byte	0x69
	.4byte	0x2a7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x240
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x8
	.byte	0x6
	.byte	0x6b
	.4byte	0x2de
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x6
	.byte	0x6d
	.4byte	0xa2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x6
	.byte	0x6e
	.4byte	0x97
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x6
	.byte	0x6f
	.4byte	0x235
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x6
	.byte	0x70
	.4byte	0x2ad
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x38
	.byte	0x6
	.byte	0x72
	.4byte	0x392
	.uleb128 0xe
	.ascii	"hdr\000"
	.byte	0x6
	.byte	0x74
	.4byte	0x2de
	.byte	0
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x6
	.byte	0x75
	.4byte	0x392
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x6
	.byte	0x76
	.4byte	0xa2
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x6
	.byte	0x78
	.4byte	0x97
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x6
	.byte	0x79
	.4byte	0x8c
	.byte	0x1a
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x6
	.byte	0x7a
	.4byte	0x8c
	.byte	0x1b
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x6
	.byte	0x7c
	.4byte	0xa2
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x6
	.byte	0x7d
	.4byte	0xa2
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x6
	.byte	0x7e
	.4byte	0xa2
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x6
	.byte	0x7f
	.4byte	0xa2
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x6
	.byte	0x80
	.4byte	0xa2
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x6
	.byte	0x81
	.4byte	0xa2
	.byte	0x30
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x6
	.byte	0x82
	.4byte	0xa2
	.byte	0x34
	.byte	0
	.uleb128 0x8
	.4byte	0xbd
	.4byte	0x3a2
	.uleb128 0x9
	.4byte	0xb4
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x6
	.byte	0x83
	.4byte	0x3ad
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e9
	.uleb128 0xd
	.byte	0x14
	.byte	0x6
	.byte	0x9a
	.4byte	0x3e0
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0x6
	.byte	0x9c
	.4byte	0x392
	.byte	0
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0x6
	.byte	0x9d
	.4byte	0xa2
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x6
	.byte	0x9e
	.4byte	0xa2
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x6
	.byte	0xa0
	.4byte	0x3eb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b3
	.uleb128 0xd
	.byte	0x14
	.byte	0x6
	.byte	0xa2
	.4byte	0x442
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0x6
	.byte	0xa4
	.4byte	0xa2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x6
	.byte	0xa6
	.4byte	0x8c
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0x6
	.byte	0xa7
	.4byte	0x97
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0x6
	.byte	0xa9
	.4byte	0xa2
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x6
	.byte	0xb0
	.4byte	0xa2
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF96
	.byte	0x6
	.byte	0xb8
	.4byte	0xa2
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x6
	.byte	0xb9
	.4byte	0x3f1
	.uleb128 0xd
	.byte	0xb4
	.byte	0x6
	.byte	0xbb
	.4byte	0x492
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0x6
	.byte	0xbd
	.4byte	0xcb
	.byte	0
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0x6
	.byte	0xbe
	.4byte	0xa2
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0x6
	.byte	0xbf
	.4byte	0xa2
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF99
	.byte	0x6
	.byte	0xc6
	.4byte	0xa2
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x6
	.byte	0xcb
	.4byte	0x492
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.4byte	0x442
	.4byte	0x4a2
	.uleb128 0x9
	.4byte	0xb4
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x6
	.byte	0xcc
	.4byte	0x4ad
	.uleb128 0x6
	.byte	0x4
	.4byte	0x44d
	.uleb128 0xd
	.byte	0x14
	.byte	0x7
	.byte	0x18
	.4byte	0x4f3
	.uleb128 0xe
	.ascii	"H0\000"
	.byte	0x7
	.byte	0x1a
	.4byte	0xa2
	.byte	0
	.uleb128 0xe
	.ascii	"H1\000"
	.byte	0x7
	.byte	0x1b
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xe
	.ascii	"H2\000"
	.byte	0x7
	.byte	0x1c
	.4byte	0xa2
	.byte	0x8
	.uleb128 0xe
	.ascii	"H3\000"
	.byte	0x7
	.byte	0x1d
	.4byte	0xa2
	.byte	0xc
	.uleb128 0xe
	.ascii	"H4\000"
	.byte	0x7
	.byte	0x1e
	.4byte	0xa2
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x7
	.byte	0x1f
	.4byte	0x4fe
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b3
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x1
	.byte	0x1d
	.4byte	0xbb
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5aa
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0x1
	.byte	0x1d
	.4byte	0x442
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x1
	.byte	0x1f
	.4byte	0xbb
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x1
	.byte	0x27
	.4byte	0x3a2
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.byte	0x32
	.4byte	0xa2
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x1
	.byte	0x33
	.4byte	0x4f3
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x597
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x1
	.byte	0x3e
	.4byte	0x29c
	.4byte	.LLST5
	.byte	0
	.uleb128 0x16
	.4byte	.LVL12
	.4byte	0x6b6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x1
	.byte	0x4f
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a0
	.uleb128 0x19
	.4byte	.LASF126
	.byte	0x1
	.byte	0x51
	.4byte	0x3e0
	.uleb128 0x15
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x640
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x1
	.byte	0x61
	.4byte	0x4a2
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x626
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x68
	.4byte	0xa2
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x1
	.byte	0x69
	.4byte	0xc4
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	.LVL28
	.4byte	0x6c1
	.uleb128 0x1b
	.4byte	.LVL29
	.4byte	0x504
	.byte	0
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0x6cc
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL19
	.4byte	0x6d7
	.4byte	0x658
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x6e2
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0x6ed
	.uleb128 0x1b
	.4byte	.LVL22
	.4byte	0x6f8
	.uleb128 0x1c
	.4byte	.LVL23
	.4byte	0x703
	.4byte	0x686
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0x6cc
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x1
	.byte	0x1b
	.4byte	0xa2
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x1
	.byte	0x1b
	.4byte	0xa2
	.uleb128 0x1e
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x7
	.byte	0x21
	.uleb128 0x1e
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x8
	.byte	0x3d
	.uleb128 0x1e
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x9
	.byte	0x1c
	.uleb128 0x1e
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x8
	.byte	0x39
	.uleb128 0x1e
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xa
	.byte	0x1d
	.uleb128 0x1e
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xb
	.byte	0x22
	.uleb128 0x1e
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xc
	.byte	0x5d
	.uleb128 0x1e
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x5
	.byte	0x20
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0xc
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x8
	.byte	0x93
	.uleb128 0xc
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0xb
	.byte	0x93
	.uleb128 0x8
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x7
	.byte	0x93
	.uleb128 0x8
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x7
	.byte	0x93
	.uleb128 0x8
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x10
	.byte	0x93
	.uleb128 0x8
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x7
	.byte	0x93
	.uleb128 0x8
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x74
	.sleb128 44
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x8
	.byte	0x74
	.sleb128 32
	.byte	0x6
	.byte	0x74
	.sleb128 44
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF65:
	.ascii	"GFH_TYPE\000"
.LASF116:
	.ascii	"strcmp\000"
.LASF51:
	.ascii	"GFH_DL_PACKAGE_INFO\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF29:
	.ascii	"GFH_MTK_RESERVED1\000"
.LASF32:
	.ascii	"GFH_MTK_RESERVED2\000"
.LASF70:
	.ascii	"type\000"
.LASF38:
	.ascii	"GFH_MTK_RESERVED4\000"
.LASF66:
	.ascii	"Reserved\000"
.LASF88:
	.ascii	"m_ver\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF99:
	.ascii	"m_main_region_dev_addr\000"
.LASF94:
	.ascii	"m_bl_begin_dev_addr\000"
.LASF59:
	.ascii	"GFH_CBR_INFO\000"
.LASF89:
	.ascii	"m_dev_rw_unit\000"
.LASF20:
	.ascii	"MR_BOOTCODE\000"
.LASF9:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF49:
	.ascii	"GFH_MAUI_RESOURCE_KEY\000"
.LASF24:
	.ascii	"GFH_BL_INFO\000"
.LASF83:
	.ascii	"sig_len\000"
.LASF125:
	.ascii	"File\000"
.LASF6:
	.ascii	"long int\000"
.LASF110:
	.ascii	"BR_Layout\000"
.LASF90:
	.ascii	"pSF_HEADER_v1\000"
.LASF43:
	.ascii	"GFH_CMEM_NOR_INFO\000"
.LASF74:
	.ascii	"identifier\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF46:
	.ascii	"GFH_MAUI_SEC\000"
.LASF114:
	.ascii	"SHA1_ProcessData\000"
.LASF47:
	.ascii	"GFH_MAUI_CODE_KEY\000"
.LASF117:
	.ascii	"RGU_SetWDTInterval\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF120:
	.ascii	"PLL_Initialize\000"
.LASF25:
	.ascii	"GFH_ANTI_CLONE\000"
.LASF103:
	.ascii	"ExtBLEntryPoint\000"
.LASF79:
	.ascii	"load_addr\000"
.LASF85:
	.ascii	"attr\000"
.LASF108:
	.ascii	"BL_CheckFileByDescriptor\000"
.LASF124:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF102:
	.ascii	"pSHA1\000"
.LASF75:
	.ascii	"file_ver\000"
.LASF86:
	.ascii	"pFILE_INFO_v1\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF61:
	.ascii	"GFH_BINARY_LOCATION\000"
.LASF57:
	.ascii	"GFH_CBR_RECORD_INFO\000"
.LASF64:
	.ascii	"GFH_TYPE_END\000"
.LASF69:
	.ascii	"size\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF96:
	.ascii	"m_bl_attribute\000"
.LASF113:
	.ascii	"__ROMImageLimit\000"
.LASF98:
	.ascii	"m_boot_region_dev_addr\000"
.LASF39:
	.ascii	"GFH_MD_SEC_CFG\000"
.LASF112:
	.ascii	"__ROMImageBase\000"
.LASF26:
	.ascii	"GFH_BL_SEC_KEY\000"
.LASF56:
	.ascii	"GFH_FOTA_INFO\000"
.LASF126:
	.ascii	"sf_header\000"
.LASF52:
	.ascii	"GFH_FLASH_INFO\000"
.LASF101:
	.ascii	"pBR_Layout_v1\000"
.LASF40:
	.ascii	"GFH_EPP_INFO\000"
.LASF45:
	.ascii	"GFH_MAUI_INFO\000"
.LASF87:
	.ascii	"m_identifier\000"
.LASF42:
	.ascii	"GFH_CMEM_ID_INFO\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF15:
	.ascii	"long double\000"
.LASF100:
	.ascii	"m_bl_desc\000"
.LASF30:
	.ascii	"GFH_BROM_CFG\000"
.LASF22:
	.ascii	"MR_FB1RB0\000"
.LASF72:
	.ascii	"tag_GFH_Header\000"
.LASF123:
	.ascii	"Source\\Bootloader\\DZ09_boot.c\000"
.LASF106:
	.ascii	"CheckedHash\000"
.LASF97:
	.ascii	"BL_Descr\000"
.LASF80:
	.ascii	"file_len\000"
.LASF91:
	.ascii	"m_bl_exist_magic\000"
.LASF54:
	.ascii	"GFH_ARM_BL_INFO\000"
.LASF78:
	.ascii	"sig_type\000"
.LASF37:
	.ascii	"GFH_CHIP_VER\000"
.LASF92:
	.ascii	"m_bl_dev\000"
.LASF44:
	.ascii	"GFH_DSP_INFO\000"
.LASF28:
	.ascii	"GFH_TOOL_AUTH\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF21:
	.ascii	"MR_FB0RB1\000"
.LASF36:
	.ascii	"GFH_EPP_PARAM\000"
.LASF34:
	.ascii	"GFH_ROOT_CERT\000"
.LASF2:
	.ascii	"short int\000"
.LASF68:
	.ascii	"magic\000"
.LASF77:
	.ascii	"flash_dev\000"
.LASF76:
	.ascii	"file_type\000"
.LASF18:
	.ascii	"false\000"
.LASF63:
	.ascii	"GFH_TYPE_NUM\000"
.LASF119:
	.ascii	"USC_StartCounter\000"
.LASF71:
	.ascii	"GFH_Header\000"
.LASF55:
	.ascii	"GFH_EMMC_BOOTING_INFO\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF62:
	.ascii	"GFH_BOOT_CERT_CTRL_CONTENT\000"
.LASF93:
	.ascii	"m_bl_type\000"
.LASF17:
	.ascii	"char\000"
.LASF35:
	.ascii	"GFH_EXP_CHK\000"
.LASF33:
	.ascii	"GFH_MTK_RESERVED3\000"
.LASF41:
	.ascii	"GFH_EMI_LIST\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF111:
	.ascii	"Run2ndBoot\000"
.LASF105:
	.ascii	"SizeToCheck\000"
.LASF104:
	.ascii	"FileInfo\000"
.LASF82:
	.ascii	"offset\000"
.LASF60:
	.ascii	"GFH_MBA_INFO\000"
.LASF58:
	.ascii	"GFH_CONFIDENTIAL_BIN_INFO\000"
.LASF118:
	.ascii	"DBG_Initialize\000"
.LASF115:
	.ascii	"RGU_RestartWDT\000"
.LASF95:
	.ascii	"m_bl_boundary_dev_addr\000"
.LASF121:
	.ascii	"EMI_MemoryRemap\000"
.LASF27:
	.ascii	"GFH_SCTRL_CERT\000"
.LASF81:
	.ascii	"max_size\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF23:
	.ascii	"GFH_FILE_INFO\000"
.LASF48:
	.ascii	"GFH_MAUI_SECURE_RO_KEY\000"
.LASF84:
	.ascii	"jump_offset\000"
.LASF31:
	.ascii	"GFH_BROM_SEC_CFG\000"
.LASF73:
	.ascii	"tag_FILE_INFO_v1_\000"
.LASF53:
	.ascii	"GFH_MACR_INFO\000"
.LASF122:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -Os -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF67:
	.ascii	"pMTK_PHASH\000"
.LASF50:
	.ascii	"GFH_SECURE_RO_INFO\000"
.LASF107:
	.ascii	"FileHash\000"
.LASF109:
	.ascii	"main\000"
.LASF19:
	.ascii	"true\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
