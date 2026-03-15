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
	.file	"auxadc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.AUXADC_WaitBusy,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	AUXADC_WaitBusy, %function
AUXADC_WaitBusy:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\auxadc.c"
	.loc 1 27 0
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
	.loc 1 30 0
	bl	USC_GetCurrentTicks
	movs	r3, r0
	str	r3, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #4]
	.loc 1 31 0
	nop
.L3:
	.loc 1 31 0 is_stmt 0 discriminator 2
	ldr	r3, .L5
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L2
	.loc 1 31 0 discriminator 1
	bl	USC_GetCurrentTicks
	movs	r3, r0
	str	r3, [r7, #4]
	.loc 1 32 0 is_stmt 1 discriminator 1
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	subs	r3, r2, r3
	.loc 1 31 0 discriminator 1
	ldr	r2, .L5+4
	cmp	r3, r2
	bls	.L3
.L2:
	.loc 1 34 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	subs	r2, r2, r3
	ldr	r1, .L5+4
	movs	r3, #0
	cmp	r1, r2
	adcs	r3, r3, r3
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 35 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	-1602682868
	.word	49999
	.cfi_endproc
.LFE1:
	.size	AUXADC_WaitBusy, .-AUXADC_WaitBusy
	.section	.text.AUXADC_Enable,"ax",%progbits
	.align	2
	.global	AUXADC_Enable
	.code	16
	.thumb_func
	.type	AUXADC_Enable, %function
AUXADC_Enable:
.LFB2:
	.loc 1 38 0
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
.LBB2:
	.loc 1 39 0
	movs	r3, #50
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #46
	bgt	.L8
	.loc 1 39 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	asrs	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, .L12
	mov	ip, r2
	add	r3, r3, ip
	movs	r1, r3
	ldr	r3, [r7, #4]
	movs	r2, #15
	ands	r3, r2
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	b	.L9
.L8:
	.loc 1 39 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bgt	.L9
	.loc 1 39 0 discriminator 3
	ldr	r2, .L12+4
	ldr	r3, [r7, #4]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L9:
.LBE2:
	.loc 1 41 0 is_stmt 1
	ldr	r3, .L12+8
	movs	r2, #128
	strh	r2, [r3]
	.loc 1 42 0
	ldr	r2, .L12+8
	ldr	r3, .L12+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #128
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 44 0
	ldr	r3, .L12+12
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 45 0
	ldr	r3, .L12+16
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 46 0
	ldr	r3, .L12+20
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 48 0
	bl	AUXADC_WaitBusy
	subs	r3, r0, #0
	bne	.L10
	.loc 1 50 0
	bl	AUXADC_Disable
	.loc 1 51 0
	movs	r3, #0
	b	.L11
.L10:
	.loc 1 53 0
	movs	r3, #1
.L11:
	.loc 1 54 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	-1610546400
	.word	-1603076080
	.word	-1602682868
	.word	-1602682880
	.word	-1602682876
	.word	-1602682872
	.cfi_endproc
.LFE2:
	.size	AUXADC_Enable, .-AUXADC_Enable
	.section	.text.AUXADC_Disable,"ax",%progbits
	.align	2
	.global	AUXADC_Disable
	.code	16
	.thumb_func
	.type	AUXADC_Disable, %function
AUXADC_Disable:
.LFB3:
	.loc 1 57 0
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
	.loc 1 58 0
	ldr	r3, .L18
	movs	r2, #128
	strh	r2, [r3]
.LBB3:
	.loc 1 60 0
	movs	r3, #50
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #46
	bgt	.L15
	.loc 1 60 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	asrs	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, .L18+4
	mov	ip, r2
	add	r3, r3, ip
	movs	r1, r3
	ldr	r3, [r7, #4]
	movs	r2, #15
	ands	r3, r2
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
.LBE3:
	.loc 1 61 0 is_stmt 1 discriminator 1
	b	.L17
.L15:
.LBB4:
	.loc 1 60 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bgt	.L17
	.loc 1 60 0 is_stmt 0 discriminator 3
	ldr	r2, .L18+8
	ldr	r3, [r7, #4]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L17:
.LBE4:
	.loc 1 61 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L19:
	.align	2
.L18:
	.word	-1602682868
	.word	-1610546416
	.word	-1603076084
	.cfi_endproc
.LFE3:
	.size	AUXADC_Disable, .-AUXADC_Disable
	.section	.text.AUXADC_MeasureChannel,"ax",%progbits
	.align	2
	.global	AUXADC_MeasureChannel
	.code	16
	.thumb_func
	.type	AUXADC_MeasureChannel, %function
AUXADC_MeasureChannel:
.LFB4:
	.loc 1 64 0
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
	adds	r3, r7, #6
	strh	r2, [r3]
	.loc 1 65 0
	adds	r3, r7, #6
	ldrh	r3, [r3]
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #12
	adds	r3, r7, r3
	ldr	r1, .L23
	ands	r2, r1
	strh	r2, [r3]
	.loc 1 66 0
	movs	r3, #14
	adds	r3, r7, r3
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 68 0
	movs	r3, #12
	adds	r3, r7, r3
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L21
	.loc 1 70 0
	ldr	r1, .L23+4
	ldr	r3, .L23+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #12
	adds	r2, r7, r2
	movs	r0, #0
	ldrsh	r2, [r2, r0]
	mvns	r2, r2
	lsls	r2, r2, #16
	asrs	r2, r2, #16
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 71 0
	ldr	r1, .L23+4
	ldr	r3, .L23+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #12
	adds	r3, r7, r3
	ldrh	r3, [r3]
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 72 0
	bl	AUXADC_WaitBusy
	subs	r3, r0, #0
	beq	.L21
	.loc 1 72 0 is_stmt 0 discriminator 1
	adds	r3, r7, #6
	ldrh	r3, [r3]
	lsls	r3, r3, #2
	ldr	r2, .L23+8
	mov	ip, r2
	add	r3, r3, ip
	movs	r2, r3
	movs	r3, #14
	adds	r3, r7, r3
	ldrh	r2, [r2]
	strh	r2, [r3]
.L21:
	.loc 1 74 0 is_stmt 1
	movs	r3, #14
	adds	r3, r7, r3
	ldrh	r3, [r3]
	.loc 1 75 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	-3521
	.word	-1602682876
	.word	-1602682864
	.cfi_endproc
.LFE4:
	.size	AUXADC_MeasureChannel, .-AUXADC_MeasureChannel
	.section	.text.AUXADC_MeasureMultiple,"ax",%progbits
	.align	2
	.global	AUXADC_MeasureMultiple
	.code	16
	.thumb_func
	.type	AUXADC_MeasureMultiple, %function
AUXADC_MeasureMultiple:
.LFB5:
	.loc 1 78 0
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
	movs	r2, r1
	adds	r3, r7, #2
	strh	r2, [r3]
	.loc 1 79 0
	movs	r3, #14
	adds	r3, r7, r3
	adds	r2, r7, #2
	ldrh	r2, [r2]
	ldr	r1, .L31
	ands	r2, r1
	strh	r2, [r3]
	.loc 1 81 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L26
	.loc 1 83 0
	ldr	r1, .L31+4
	ldr	r3, .L31+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #14
	adds	r2, r7, r2
	movs	r0, #0
	ldrsh	r2, [r2, r0]
	mvns	r2, r2
	lsls	r2, r2, #16
	asrs	r2, r2, #16
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 84 0
	ldr	r1, .L31+4
	ldr	r3, .L31+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #14
	adds	r3, r7, r3
	ldrh	r3, [r3]
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 85 0
	bl	AUXADC_WaitBusy
	subs	r3, r0, #0
	beq	.L26
.LBB5:
	.loc 1 89 0
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L27
.L29:
	.loc 1 91 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	beq	.L28
	.loc 1 92 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #2
	str	r2, [r7, #4]
	ldr	r2, [r7, #8]
	ldr	r1, .L31+8
	mov	ip, r1
	add	r2, r2, ip
	lsls	r2, r2, #2
	ldrh	r2, [r2]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3]
.L28:
	.loc 1 89 0 discriminator 2
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	movs	r3, #14
	adds	r3, r7, r3
	movs	r2, #14
	adds	r2, r7, r2
	ldrh	r2, [r2]
	lsrs	r2, r2, #1
	strh	r2, [r3]
.L27:
	.loc 1 89 0 is_stmt 0 discriminator 1
	movs	r3, #14
	adds	r3, r7, r3
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L29
	.loc 1 94 0 is_stmt 1
	movs	r3, #1
	b	.L30
.L26:
.LBE5:
	.loc 1 97 0
	movs	r3, #0
.L30:
	.loc 1 98 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L32:
	.align	2
.L31:
	.word	-3521
	.word	-1602682876
	.word	673071108
	.cfi_endproc
.LFE5:
	.size	AUXADC_MeasureMultiple, .-AUXADC_MeasureMultiple
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x201
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x1
	.4byte	0x2c
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
	.byte	0x1a
	.4byte	0xc5
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x106
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1c
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1c
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x25
	.4byte	0xc5
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x137
	.uleb128 0xa
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xb
	.ascii	"_x\000"
	.byte	0x1
	.byte	0x27
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x38
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x160
	.uleb128 0xd
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xb
	.ascii	"_x\000"
	.byte	0x1
	.byte	0x3c
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3f
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a4
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3f
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x41
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0x42
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x4d
	.4byte	0xc5
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fe
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4d
	.4byte	0x1fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4d
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4f
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0xa
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0xb
	.ascii	"i\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x81
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF17:
	.ascii	"true\000"
.LASF32:
	.ascii	"AUXADC_WaitBusy\000"
.LASF22:
	.ascii	"AUXADC_MeasureChannel\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF21:
	.ascii	"AUXADC_Enable\000"
.LASF29:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF31:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF26:
	.ascii	"Channel\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF27:
	.ascii	"DataArray\000"
.LASF30:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\auxadc.c\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF33:
	.ascii	"AUXADC_Disable\000"
.LASF25:
	.ascii	"AUXADC_MeasureMultiple\000"
.LASF24:
	.ascii	"Result\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF15:
	.ascii	"char\000"
.LASF20:
	.ascii	"CurrentTicks\000"
.LASF19:
	.ascii	"tmpUSTicks\000"
.LASF14:
	.ascii	"sizetype\000"
.LASF8:
	.ascii	"long long int\000"
.LASF28:
	.ascii	"ChannelsMask\000"
.LASF16:
	.ascii	"false\000"
.LASF2:
	.ascii	"short int\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF13:
	.ascii	"long double\000"
.LASF0:
	.ascii	"signed char\000"
.LASF23:
	.ascii	"Mask\000"
.LASF18:
	.ascii	"boolean\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
