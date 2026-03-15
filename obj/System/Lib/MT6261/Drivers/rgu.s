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
	.file	"rgu.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.RGU_SetWDTInterval,"ax",%progbits
	.align	2
	.global	RGU_SetWDTInterval
	.code	16
	.thumb_func
	.type	RGU_SetWDTInterval, %function
RGU_SetWDTInterval:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\rgu.c"
	.loc 1 25 0
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
	movs	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	adds	r3, r7, #6
	adds	r2, r1, #0
	strb	r2, [r3]
.LBB2:
	.loc 1 26 0
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r7, #7
	ldrb	r2, [r2]
	strb	r2, [r3]
	movs	r3, #31
	str	r3, [r7, #8]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L2
	movs	r2, r3
.L2:
.LBE2:
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 28 0
	ldr	r3, .L6
	movs	r2, #136
	lsls	r2, r2, #6
	strh	r2, [r3]
	.loc 1 29 0
	ldr	r2, .L6+4
	adds	r3, r7, #7
	ldrb	r3, [r3]
	lsls	r3, r3, #15
	bpl	.L3
	ldr	r1, .L6+8
	mov	ip, r1
	add	r3, r3, ip
.L3:
	asrs	r3, r3, #9
	lsls	r3, r3, #5
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #8
	orrs	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 30 0
	bl	RGU_RestartWDT
	.loc 1 31 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L5
	.loc 1 31 0 is_stmt 0 discriminator 1
	ldr	r3, .L6
	ldr	r2, .L6+12
	strh	r2, [r3]
.L5:
	.loc 1 32 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	-1610416128
	.word	-1610416124
	.word	511
	.word	8705
	.cfi_endproc
.LFE1:
	.size	RGU_SetWDTInterval, .-RGU_SetWDTInterval
	.section	.text.RGU_EnableWDT,"ax",%progbits
	.align	2
	.global	RGU_EnableWDT
	.code	16
	.thumb_func
	.type	RGU_EnableWDT, %function
RGU_EnableWDT:
.LFB2:
	.loc 1 35 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 36 0
	ldr	r3, .L12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	bne	.L11
	.loc 1 37 0
	ldr	r3, .L12
	movs	r2, #136
	lsls	r2, r2, #6
	strh	r2, [r3]
	.loc 1 38 0
	bl	RGU_RestartWDT
	.loc 1 39 0
	ldr	r3, .L12
	ldr	r2, .L12+4
	strh	r2, [r3]
	b	.L8
.L11:
	.loc 1 36 0
	nop
.L8:
	.loc 1 40 0
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	-1610416128
	.word	8705
	.cfi_endproc
.LFE2:
	.size	RGU_EnableWDT, .-RGU_EnableWDT
	.section	.text.RGU_DisableWDT,"ax",%progbits
	.align	2
	.global	RGU_DisableWDT
	.code	16
	.thumb_func
	.type	RGU_DisableWDT, %function
RGU_DisableWDT:
.LFB3:
	.loc 1 43 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 44 0
	ldr	r3, .L15
	movs	r2, #136
	lsls	r2, r2, #6
	strh	r2, [r3]
	.loc 1 45 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	-1610416128
	.cfi_endproc
.LFE3:
	.size	RGU_DisableWDT, .-RGU_DisableWDT
	.section	.text.RGU_ReadWDTStatus,"ax",%progbits
	.align	2
	.global	RGU_ReadWDTStatus
	.code	16
	.thumb_func
	.type	RGU_ReadWDTStatus, %function
RGU_ReadWDTStatus:
.LFB4:
	.loc 1 48 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 49 0
	ldr	r3, .L21
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bpl	.L18
	.loc 1 49 0 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L19
.L18:
	.loc 1 50 0 is_stmt 1
	ldr	r3, .L21
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #128
	lsls	r3, r3, #7
	ands	r3, r2
	beq	.L20
	.loc 1 50 0 is_stmt 0 discriminator 1
	movs	r3, #2
	b	.L19
.L20:
	.loc 1 52 0 is_stmt 1
	movs	r3, #0
.L19:
	.loc 1 53 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L22:
	.align	2
.L21:
	.word	-1610416116
	.cfi_endproc
.LFE4:
	.size	RGU_ReadWDTStatus, .-RGU_ReadWDTStatus
	.section	.text.RGU_RestartWDT,"ax",%progbits
	.align	2
	.global	RGU_RestartWDT
	.code	16
	.thumb_func
	.type	RGU_RestartWDT, %function
RGU_RestartWDT:
.LFB5:
	.loc 1 56 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 57 0
	ldr	r3, .L24
	ldr	r2, .L24+4
	strh	r2, [r3]
	.loc 1 58 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L25:
	.align	2
.L24:
	.word	-1610416120
	.word	6513
	.cfi_endproc
.LFE5:
	.size	RGU_RestartWDT, .-RGU_RestartWDT
	.section	.text.RGU_RaiseWDTSWReset,"ax",%progbits
	.align	2
	.global	RGU_RaiseWDTSWReset
	.code	16
	.thumb_func
	.type	RGU_RaiseWDTSWReset, %function
RGU_RaiseWDTSWReset:
.LFB6:
	.loc 1 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 62 0
	ldr	r3, .L27
	ldr	r2, .L27+4
	strh	r2, [r3]
	.loc 1 63 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L28:
	.align	2
.L27:
	.word	-1610416100
	.word	4617
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
	.4byte	0x1aa
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
	.byte	0x18
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x154
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x18
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x18
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xa
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xb
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xb
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x22
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF26
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
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x37
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0
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
.LASF25:
	.ascii	"RGU_EnableWDT\000"
.LASF28:
	.ascii	"RGU_RaiseWDTSWReset\000"
.LASF24:
	.ascii	"Enable\000"
.LASF21:
	.ascii	"WDT_REASON_SW\000"
.LASF29:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF31:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF32:
	.ascii	"tag_WDTREASON\000"
.LASF16:
	.ascii	"false\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF34:
	.ascii	"RGU_ReadWDTStatus\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF33:
	.ascii	"RGU_SetWDTInterval\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF23:
	.ascii	"Interval\000"
.LASF27:
	.ascii	"RGU_RestartWDT\000"
.LASF30:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\rgu.c\000"
.LASF19:
	.ascii	"WDT_REASON_NONE\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF26:
	.ascii	"RGU_DisableWDT\000"
.LASF20:
	.ascii	"WDT_REASON_HW\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF15:
	.ascii	"char\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF22:
	.ascii	"TWDTREASON\000"
.LASF14:
	.ascii	"sizetype\000"
.LASF8:
	.ascii	"long long int\000"
.LASF2:
	.ascii	"short int\000"
.LASF12:
	.ascii	"uint16_t\000"
.LASF6:
	.ascii	"long int\000"
.LASF13:
	.ascii	"long double\000"
.LASF0:
	.ascii	"signed char\000"
.LASF18:
	.ascii	"boolean\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
