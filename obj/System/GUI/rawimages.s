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
	.file	"rawimages.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Draw_raw,"ax",%progbits
	.align	2
	.global	Draw_raw
	.code	16
	.thumb_func
	.type	Draw_raw, %function
Draw_raw:
.LFB0:
	.file 1 "Source\\GUI\\rawimages.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
.LBB2:
	.loc 1 5 0
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L2
.L5:
.LBB3:
	.loc 1 6 0
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L3
.L4:
.LBB4:
	.loc 1 7 0 discriminator 3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #28]
	adds	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #4
	subs	r3, r3, r2
	lsls	r3, r3, #4
	movs	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #24]
	adds	r3, r2, r3
	adds	r3, r1, r3
	str	r3, [r7, #20]
	.loc 1 8 0 discriminator 3
	ldr	r3, [r7, #28]
	ldr	r2, [r7]
	muls	r2, r3
	ldr	r3, [r7, #24]
	adds	r3, r2, r3
	str	r3, [r7, #16]
	.loc 1 9 0 discriminator 3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	adds	r3, r2, r3
	ldr	r2, [r7, #16]
	lsls	r2, r2, #1
	ldr	r1, [r7, #44]
	adds	r2, r1, r2
	ldrh	r2, [r2]
	strh	r2, [r3]
.LBE4:
	.loc 1 6 0 discriminator 3
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L3:
	.loc 1 6 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #24]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L4
.LBE3:
	.loc 1 5 0 is_stmt 1 discriminator 2
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L2:
	.loc 1 5 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	blt	.L5
.LBE2:
	.loc 1 12 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE0:
	.size	Draw_raw, .-Draw_raw
	.section	.text.Draw_raw_ex,"ax",%progbits
	.align	2
	.global	Draw_raw_ex
	.code	16
	.thumb_func
	.type	Draw_raw_ex, %function
Draw_raw_ex:
.LFB1:
	.loc 1 14 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #56
	.cfi_def_cfa_offset 64
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
.LBB5:
	.loc 1 15 0
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L7
.L15:
.LBB6:
	.loc 1 16 0
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L8
.L14:
.LBB7:
	.loc 1 17 0
	ldr	r3, [r7, #52]
	ldr	r2, [r7]
	muls	r2, r3
	ldr	r3, [r7, #48]
	adds	r3, r2, r3
	str	r3, [r7, #32]
	.loc 1 18 0
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	.loc 1 19 0
	ldr	r3, [r7, #52]
	str	r3, [r7, #40]
	.loc 1 22 0
	movs	r3, #72
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.L9
	.loc 1 22 0 is_stmt 0 discriminator 1
	movs	r3, #72
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bne	.L10
.L9:
	.loc 1 23 0 is_stmt 1
	ldr	r3, [r7]
	subs	r2, r3, #1
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #44]
.L10:
	.loc 1 24 0
	movs	r3, #72
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #2
	beq	.L11
	.loc 1 24 0 is_stmt 0 discriminator 1
	movs	r3, #72
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bne	.L12
.L11:
	.loc 1 25 0 is_stmt 1
	ldr	r3, [r7, #64]
	subs	r2, r3, #1
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	str	r3, [r7, #40]
.L12:
	.loc 1 27 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #40]
	adds	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #4
	subs	r3, r3, r2
	lsls	r3, r3, #4
	movs	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #44]
	adds	r3, r2, r3
	adds	r3, r1, r3
	str	r3, [r7, #28]
	.loc 1 28 0
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	ldr	r2, [r7, #68]
	adds	r2, r2, r3
	movs	r3, #38
	adds	r3, r7, r3
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 30 0
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L13
.LBB8:
	.loc 1 31 0
	movs	r3, #26
	adds	r3, r7, r3
	movs	r2, #38
	adds	r2, r7, r2
	ldrh	r2, [r2]
	lsrs	r2, r2, #11
	strh	r2, [r3]
	.loc 1 32 0
	movs	r3, #38
	adds	r3, r7, r3
	ldrh	r3, [r3]
	lsrs	r3, r3, #5
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #24
	adds	r3, r7, r3
	movs	r1, #63
	ands	r2, r1
	strh	r2, [r3]
	.loc 1 33 0
	movs	r3, #22
	adds	r3, r7, r3
	movs	r2, #38
	adds	r2, r7, r2
	ldrh	r2, [r2]
	movs	r1, #31
	ands	r2, r1
	strh	r2, [r3]
	.loc 1 34 0
	movs	r3, #26
	adds	r3, r7, r3
	movs	r2, #26
	adds	r2, r7, r2
	ldrh	r2, [r2]
	movs	r1, #31
	subs	r2, r1, r2
	strh	r2, [r3]
	.loc 1 35 0
	movs	r3, #24
	adds	r3, r7, r3
	movs	r2, #24
	adds	r2, r7, r2
	ldrh	r2, [r2]
	movs	r1, #63
	subs	r2, r1, r2
	strh	r2, [r3]
	.loc 1 36 0
	movs	r3, #22
	adds	r3, r7, r3
	movs	r2, #22
	adds	r2, r7, r2
	ldrh	r2, [r2]
	movs	r1, #31
	subs	r2, r1, r2
	strh	r2, [r3]
	.loc 1 37 0
	movs	r3, #26
	adds	r3, r7, r3
	ldrh	r3, [r3]
	lsls	r3, r3, #11
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	movs	r3, #24
	adds	r3, r7, r3
	ldrh	r3, [r3]
	lsls	r3, r3, #5
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #22
	adds	r2, r7, r2
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #38
	adds	r2, r7, r2
	strh	r3, [r2]
.L13:
.LBE8:
	.loc 1 40 0 discriminator 2
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	adds	r3, r2, r3
	movs	r2, #38
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3]
.LBE7:
	.loc 1 16 0 discriminator 2
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L8:
	.loc 1 16 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #48]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.LCB288
	b	.L14	@long jump
.LCB288:
.LBE6:
	.loc 1 15 0 is_stmt 1 discriminator 2
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L7:
	.loc 1 15 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bge	.LCB298
	b	.L15	@long jump
.LCB298:
.LBE5:
	.loc 1 43 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #56
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	Draw_raw_ex, .-Draw_raw_ex
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "Source\\GUI\\rawimages.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2a2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
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
	.4byte	.LASF9
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x24
	.4byte	0x3a
	.uleb128 0x5
	.byte	0x1
	.4byte	0x2c
	.byte	0x4
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x9
	.4byte	0x81
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4
	.4byte	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.ascii	"x\000"
	.byte	0x1
	.byte	0x4
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.ascii	"y\000"
	.byte	0x1
	.byte	0x4
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4
	.4byte	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xa
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x5
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xc
	.ascii	"p\000"
	.byte	0x1
	.byte	0x6
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x76
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0xd
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29a
	.uleb128 0x9
	.ascii	"fb\000"
	.byte	0x1
	.byte	0xd
	.4byte	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.ascii	"x\000"
	.byte	0x1
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.ascii	"y\000"
	.byte	0x1
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.ascii	"w\000"
	.byte	0x1
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.ascii	"h\000"
	.byte	0x1
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii	"img\000"
	.byte	0x1
	.byte	0xd
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xa
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0xc
	.ascii	"row\000"
	.byte	0x1
	.byte	0xf
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0xc
	.ascii	"col\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x12
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x13
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.ascii	"p\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xa
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0xc
	.ascii	"r\000"
	.byte	0x1
	.byte	0x1f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xc
	.ascii	"g\000"
	.byte	0x1
	.byte	0x20
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.ascii	"b\000"
	.byte	0x1
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2a0
	.uleb128 0xe
	.4byte	0x76
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF14:
	.ascii	"MIRROR_BOTH\000"
.LASF24:
	.ascii	"Draw_raw_ex\000"
.LASF15:
	.ascii	"mirror_t\000"
.LASF12:
	.ascii	"MIRROR_HORIZONTAL\000"
.LASF23:
	.ascii	"Draw_raw\000"
.LASF31:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF33:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF26:
	.ascii	"invert\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF25:
	.ascii	"mirror\000"
.LASF18:
	.ascii	"height\000"
.LASF28:
	.ascii	"img_x\000"
.LASF29:
	.ascii	"img_y\000"
.LASF11:
	.ascii	"MIRROR_NONE\000"
.LASF20:
	.ascii	"pixelh\000"
.LASF9:
	.ascii	"__uint16_t\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"framebuffer\000"
.LASF21:
	.ascii	"fb_ind\000"
.LASF6:
	.ascii	"long long int\000"
.LASF27:
	.ascii	"src_idx\000"
.LASF17:
	.ascii	"width\000"
.LASF2:
	.ascii	"short int\000"
.LASF10:
	.ascii	"uint16_t\000"
.LASF19:
	.ascii	"image_lol\000"
.LASF22:
	.ascii	"img_ind\000"
.LASF4:
	.ascii	"long int\000"
.LASF13:
	.ascii	"MIRROR_VERTICAL\000"
.LASF0:
	.ascii	"signed char\000"
.LASF30:
	.ascii	"dst_idx\000"
.LASF32:
	.ascii	"Source\\GUI\\rawimages.c\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
