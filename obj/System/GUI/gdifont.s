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
	.file	"gdifont.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.GDI_GetFontCharInfo,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GDI_GetFontCharInfo, %function
GDI_GetFontCharInfo:
.LFB1:
	.file 1 "Source\\GUI\\gdifont.c"
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
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 27 0
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 1 29 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L2
	.loc 1 29 0 discriminator 1
	movs	r3, #0
	b	.L3
.L2:
	.loc 1 31 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	.loc 1 32 0
	b	.L4
.L8:
	.loc 1 34 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L9
	.loc 1 35 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L7
	.loc 1 37 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	.loc 1 38 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7]
	subs	r3, r2, r3
	lsls	r3, r3, #3
	ldr	r2, [r7, #8]
	adds	r3, r2, r3
	str	r3, [r7, #8]
	.loc 1 39 0
	b	.L6
.L7:
	.loc 1 41 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
.L4:
	.loc 1 32 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L8
	b	.L6
.L9:
	.loc 1 34 0
	nop
.L6:
	.loc 1 43 0
	ldr	r3, [r7, #8]
.L3:
	.loc 1 44 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	GDI_GetFontCharInfo, .-GDI_GetFontCharInfo
	.section	.text.GDI_DrawText16,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GDI_DrawText16, %function
GDI_DrawText16:
.LFB2:
	.loc 1 48 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #128
	.cfi_def_cfa_offset 144
	add	r7, sp, #8
	.cfi_def_cfa 7, 136
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	.loc 1 52 0
	movs	r3, #0
	str	r3, [r7, #112]
	.loc 1 54 0
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #21]
	cmp	r3, #1
	beq	.L11
	.loc 1 54 0 discriminator 1
	movs	r3, #0
	b	.L40
.L11:
	.loc 1 56 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	str	r3, [r7, #76]
	.loc 1 57 0
	ldr	r3, [r7, #20]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #20]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #74
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 59 0
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsrs	r2, r3, #8
	movs	r3, #248
	lsls	r3, r3, #8
	ands	r2, r3
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsrs	r1, r3, #5
	movs	r3, #252
	lsls	r3, r3, #3
	ands	r3, r1
	orrs	r2, r3
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsrs	r3, r3, #3
	movs	r1, #31
	ands	r3, r1
	orrs	r3, r2
	movs	r2, #136
	adds	r2, r7, r2
	str	r3, [r2]
	.loc 1 60 0
	movs	r3, #140
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsrs	r2, r3, #8
	movs	r3, #248
	lsls	r3, r3, #8
	ands	r2, r3
	movs	r3, #140
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsrs	r1, r3, #5
	movs	r3, #252
	lsls	r3, r3, #3
	ands	r3, r1
	orrs	r2, r3
	movs	r3, #140
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsrs	r3, r3, #3
	movs	r1, #31
	ands	r3, r1
	orrs	r3, r2
	movs	r2, #140
	adds	r2, r7, r2
	str	r3, [r2]
	.loc 1 62 0
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #4]
	movs	r2, r3
	movs	r3, #3
	ands	r3, r2
	cmp	r3, #1
	beq	.L14
	cmp	r3, #2
	beq	.L15
	b	.L41
.L14:
	.loc 1 65 0
	ldr	r3, [r7, #12]
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #118
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 66 0
	b	.L16
.L15:
	.loc 1 68 0
	ldr	r3, [r7, #12]
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	subs	r3, r2, r3
	ldr	r2, [r7, #12]
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	subs	r3, r3, r2
	adds	r3, r3, #2
	cmp	r3, #0
	bge	.L17
	adds	r3, r3, #1
.L17:
	asrs	r3, r3, #1
	movs	r2, r3
	movs	r3, #118
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 69 0
	b	.L16
.L41:
	.loc 1 72 0
	movs	r3, #118
	adds	r3, r7, r3
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 73 0
	nop
.L16:
	.loc 1 76 0
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #4]
	movs	r2, r3
	movs	r3, #12
	ands	r3, r2
	cmp	r3, #4
	beq	.L19
	cmp	r3, #8
	beq	.L20
	b	.L42
.L19:
	.loc 1 79 0
	ldr	r3, [r7, #12]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #2]
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #116
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 80 0
	b	.L21
.L20:
	.loc 1 82 0
	ldr	r3, [r7, #12]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #2]
	subs	r3, r2, r3
	ldr	r2, [r7, #12]
	movs	r1, #2
	ldrsh	r2, [r2, r1]
	subs	r3, r3, r2
	adds	r3, r3, #2
	cmp	r3, #0
	bge	.L22
	adds	r3, r3, #1
.L22:
	asrs	r3, r3, #1
	movs	r2, r3
	movs	r3, #116
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 83 0
	b	.L21
.L42:
	.loc 1 86 0
	movs	r3, #116
	adds	r3, r7, r3
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 87 0
	nop
.L21:
	.loc 1 90 0
	ldr	r3, [r7, #12]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #118
	adds	r3, r7, r3
	ldrh	r3, [r3]
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r1, r3, #16
	asrs	r1, r1, #16
	.loc 1 91 0
	ldr	r3, [r7, #12]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	.loc 1 90 0
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #116
	adds	r3, r7, r3
	ldrh	r3, [r3]
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	.loc 1 92 0
	ldr	r3, [r7, #16]
	ldrh	r0, [r3]
	ldr	r3, [r7, #12]
	movs	r4, #0
	ldrsh	r3, [r3, r4]
	.loc 1 90 0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r0, r3
	lsls	r3, r3, #16
	lsrs	r0, r3, #16
	movs	r3, #118
	adds	r3, r7, r3
	ldrh	r3, [r3]
	adds	r3, r0, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r0, r3, #16
	asrs	r0, r0, #16
	.loc 1 93 0
	ldr	r3, [r7, #16]
	ldrh	r4, [r3, #2]
	ldr	r3, [r7, #12]
	movs	r5, #2
	ldrsh	r3, [r3, r5]
	.loc 1 90 0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r4, r3
	lsls	r3, r3, #16
	lsrs	r4, r3, #16
	movs	r3, #116
	adds	r3, r7, r3
	ldrh	r3, [r3]
	adds	r3, r4, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r4, #36
	adds	r4, r7, r4
	movs	r5, r7
	str	r3, [sp]
	movs	r3, r0
	movs	r0, r5
	bl	Rect
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 95 0
	ldr	r2, [r7, #8]
	movs	r3, #36
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	bne	.LCB410
	b	.L23	@long jump
.LCB410:
.LBB2:
	.loc 1 98 0
	movs	r3, #74
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	movs	r2, #36
	adds	r2, r7, r2
	movs	r1, #2
	ldrsh	r2, [r2, r1]
	muls	r3, r2
	movs	r2, #36
	adds	r2, r7, r2
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	adds	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #76]
	adds	r3, r2, r3
	str	r3, [r7, #104]
	.loc 1 102 0
	movs	r3, #36
	adds	r2, r7, r3
	ldr	r3, [r7, #8]
	movs	r1, r2
	movs	r0, r3
	bl	GDI_SUBRectangles
	movs	r3, r0
	str	r3, [r7, #112]
	.loc 1 104 0
	movs	r3, #36
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	.loc 1 105 0
	movs	r3, #36
	adds	r3, r7, r3
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	.loc 1 106 0
	movs	r3, #36
	adds	r3, r7, r3
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	movs	r3, #36
	adds	r3, r7, r3
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	adds	r3, r3, #1
	str	r3, [r7, #108]
	.loc 1 107 0
	movs	r3, #36
	adds	r3, r7, r3
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	movs	r3, #36
	adds	r3, r7, r3
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	adds	r3, r3, #1
	str	r3, [r7, #60]
	.loc 1 109 0
	movs	r3, #118
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	movs	r2, r3
	movs	r3, #32
	adds	r3, r7, r3
	ldr	r1, [r7, #16]
	movs	r0, #28
	adds	r0, r7, r0
	bl	GDI_GetStringPosByXShift
	movs	r3, r0
	str	r3, [r7, #100]
	.loc 1 110 0
	ldr	r3, [r7, #100]
	cmp	r3, #0
	bne	.LCB487
	b	.L24	@long jump
.LCB487:
	.loc 1 112 0
	b	.L25
.L38:
.LBB3:
	.loc 1 116 0
	ldr	r3, [r7, #104]
	str	r3, [r7, #80]
	.loc 1 118 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	.loc 1 119 0
	movs	r3, #116
	adds	r3, r7, r3
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r1, [r7, #64]
	subs	r3, r1, r3
	ldr	r1, [r7, #28]
	ldrh	r1, [r1]
	muls	r1, r3
	ldr	r3, [r7, #32]
	adds	r3, r1, r3
	.loc 1 118 0
	lsrs	r3, r3, #3
	adds	r3, r2, r3
	str	r3, [r7, #96]
	.loc 1 120 0
	movs	r3, #116
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	ldr	r2, [r7, #28]
	ldrh	r2, [r2]
	muls	r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r2, r3
	movs	r2, #7
	ands	r3, r2
	str	r3, [r7, #92]
.LBB4:
	.loc 1 121 0
	ldr	r3, [r7, #108]
	str	r3, [r7, #56]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #52]
	cmp	r3, r2
	bls	.L26
	movs	r3, r2
.L26:
.LBE4:
	str	r3, [r7, #48]
	.loc 1 122 0
	ldr	r3, [r7, #60]
	str	r3, [r7, #84]
	.loc 1 123 0
	movs	r3, #74
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	.loc 1 125 0
	b	.L27
.L32:
	.loc 1 127 0
	ldr	r3, [r7, #48]
	str	r3, [r7, #88]
	.loc 1 128 0
	b	.L28
.L31:
	.loc 1 130 0
	ldr	r3, [r7, #80]
	adds	r2, r3, #2
	str	r2, [r7, #80]
	ldr	r2, [r7, #96]
	ldrb	r2, [r2]
	movs	r0, r2
	movs	r1, #128
	ldr	r2, [r7, #92]
	asrs	r1, r1, r2
	movs	r2, r1
	ands	r2, r0
	beq	.L29
	.loc 1 130 0 is_stmt 0 discriminator 1
	movs	r2, #136
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	b	.L30
.L29:
	.loc 1 130 0 discriminator 2
	movs	r2, #140
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
.L30:
	.loc 1 130 0 discriminator 4
	strh	r2, [r3]
	.loc 1 131 0 is_stmt 1 discriminator 4
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #7
	bls	.L28
	.loc 1 133 0
	ldr	r3, [r7, #92]
	subs	r3, r3, #8
	str	r3, [r7, #92]
	.loc 1 134 0
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L28:
	.loc 1 128 0
	ldr	r3, [r7, #88]
	subs	r2, r3, #1
	str	r2, [r7, #88]
	cmp	r3, #0
	bne	.L31
	.loc 1 137 0
	ldr	r3, [r7, #44]
	lsls	r3, r3, #1
	ldr	r2, [r7, #80]
	adds	r3, r2, r3
	str	r3, [r7, #80]
	.loc 1 138 0
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	ldr	r2, [r7, #92]
	adds	r3, r2, r3
	str	r3, [r7, #92]
	.loc 1 139 0
	ldr	r3, [r7, #92]
	lsrs	r3, r3, #3
	ldr	r2, [r7, #96]
	adds	r3, r2, r3
	str	r3, [r7, #96]
	.loc 1 140 0
	ldr	r3, [r7, #92]
	movs	r2, #7
	ands	r3, r2
	str	r3, [r7, #92]
.L27:
	.loc 1 125 0
	ldr	r3, [r7, #84]
	subs	r2, r3, #1
	str	r2, [r7, #84]
	cmp	r3, #0
	bne	.L32
	.loc 1 143 0
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	cmp	r3, #0
	beq	.L25
	.loc 1 145 0
	b	.L33
.L35:
	.loc 1 147 0
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #100]
	ldrb	r3, [r3]
	movs	r1, r3
	movs	r0, r2
	bl	GDI_GetFontCharInfo
	movs	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L33
	.loc 1 149 0
	movs	r3, #0
	str	r3, [r7, #32]
	.loc 1 150 0
	b	.L34
.L33:
	.loc 1 145 0
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
	ldr	r3, [r7, #100]
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L35
.L34:
	.loc 1 153 0
	ldr	r3, [r7, #100]
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L43
	.loc 1 154 0
	movs	r3, #36
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #48]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #36
	adds	r2, r7, r2
	strh	r3, [r2]
	.loc 1 155 0
	ldr	r3, [r7, #48]
	lsls	r3, r3, #1
	ldr	r2, [r7, #104]
	adds	r3, r2, r3
	str	r3, [r7, #104]
.L25:
.LBE3:
	.loc 1 112 0
	ldr	r3, [r7, #108]
	cmp	r3, #0
	beq	.LCB704
	b	.L38	@long jump
.LCB704:
	b	.L23
.L24:
	.loc 1 159 0
	ldr	r3, [r7, #112]
	movs	r0, r3
	bl	GDI_DeleteRList
	movs	r3, r0
	str	r3, [r7, #112]
	b	.L23
.L43:
.LBB5:
	.loc 1 153 0
	nop
.L23:
.LBE5:
.LBE2:
	.loc 1 161 0
	ldr	r3, [r7, #112]
.L40:
	.loc 1 162 0 discriminator 3
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #120
	@ sp needed
	pop	{r4, r5, r7, pc}
	.cfi_endproc
.LFE2:
	.size	GDI_DrawText16, .-GDI_DrawText16
	.section	.text.GDI_DrawText32,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GDI_DrawText32, %function
GDI_DrawText32:
.LFB3:
	.loc 1 166 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #128
	.cfi_def_cfa_offset 144
	add	r7, sp, #8
	.cfi_def_cfa 7, 136
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	.loc 1 170 0
	movs	r3, #0
	str	r3, [r7, #112]
	.loc 1 172 0
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #21]
	cmp	r3, #4
	beq	.L45
	.loc 1 173 0 discriminator 1
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #21]
	.loc 1 172 0 discriminator 1
	cmp	r3, #5
	beq	.L45
	.loc 1 174 0
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #21]
	.loc 1 173 0
	cmp	r3, #6
	beq	.L45
	.loc 1 175 0
	movs	r3, #0
	b	.L74
.L45:
	.loc 1 177 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	str	r3, [r7, #76]
	.loc 1 178 0
	ldr	r3, [r7, #20]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #20]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #74
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 180 0
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #4]
	movs	r2, r3
	movs	r3, #3
	ands	r3, r2
	cmp	r3, #1
	beq	.L48
	cmp	r3, #2
	beq	.L49
	b	.L75
.L48:
	.loc 1 183 0
	ldr	r3, [r7, #12]
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #118
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 184 0
	b	.L50
.L49:
	.loc 1 186 0
	ldr	r3, [r7, #12]
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	subs	r3, r2, r3
	ldr	r2, [r7, #12]
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	subs	r3, r3, r2
	adds	r3, r3, #2
	cmp	r3, #0
	bge	.L51
	adds	r3, r3, #1
.L51:
	asrs	r3, r3, #1
	movs	r2, r3
	movs	r3, #118
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 187 0
	b	.L50
.L75:
	.loc 1 190 0
	movs	r3, #118
	adds	r3, r7, r3
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 191 0
	nop
.L50:
	.loc 1 194 0
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #4]
	movs	r2, r3
	movs	r3, #12
	ands	r3, r2
	cmp	r3, #4
	beq	.L53
	cmp	r3, #8
	beq	.L54
	b	.L76
.L53:
	.loc 1 197 0
	ldr	r3, [r7, #12]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #2]
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #116
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 198 0
	b	.L55
.L54:
	.loc 1 200 0
	ldr	r3, [r7, #12]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #2]
	subs	r3, r2, r3
	ldr	r2, [r7, #12]
	movs	r1, #2
	ldrsh	r2, [r2, r1]
	subs	r3, r3, r2
	adds	r3, r3, #2
	cmp	r3, #0
	bge	.L56
	adds	r3, r3, #1
.L56:
	asrs	r3, r3, #1
	movs	r2, r3
	movs	r3, #116
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 201 0
	b	.L55
.L76:
	.loc 1 204 0
	movs	r3, #116
	adds	r3, r7, r3
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 205 0
	nop
.L55:
	.loc 1 208 0
	ldr	r3, [r7, #12]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #118
	adds	r3, r7, r3
	ldrh	r3, [r3]
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r1, r3, #16
	asrs	r1, r1, #16
	.loc 1 209 0
	ldr	r3, [r7, #12]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	.loc 1 208 0
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #116
	adds	r3, r7, r3
	ldrh	r3, [r3]
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	.loc 1 210 0
	ldr	r3, [r7, #16]
	ldrh	r0, [r3]
	ldr	r3, [r7, #12]
	movs	r4, #0
	ldrsh	r3, [r3, r4]
	.loc 1 208 0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r0, r3
	lsls	r3, r3, #16
	lsrs	r0, r3, #16
	movs	r3, #118
	adds	r3, r7, r3
	ldrh	r3, [r3]
	adds	r3, r0, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r0, r3, #16
	asrs	r0, r0, #16
	.loc 1 211 0
	ldr	r3, [r7, #16]
	ldrh	r4, [r3, #2]
	ldr	r3, [r7, #12]
	movs	r5, #2
	ldrsh	r3, [r3, r5]
	.loc 1 208 0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r4, r3
	lsls	r3, r3, #16
	lsrs	r4, r3, #16
	movs	r3, #116
	adds	r3, r7, r3
	ldrh	r3, [r3]
	adds	r3, r4, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r4, #36
	adds	r4, r7, r4
	movs	r5, r7
	str	r3, [sp]
	movs	r3, r0
	movs	r0, r5
	bl	Rect
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 213 0
	ldr	r2, [r7, #8]
	movs	r3, #36
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	bne	.LCB1022
	b	.L57	@long jump
.LCB1022:
.LBB6:
	.loc 1 216 0
	movs	r3, #74
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	movs	r2, #36
	adds	r2, r7, r2
	movs	r1, #2
	ldrsh	r2, [r2, r1]
	muls	r3, r2
	movs	r2, #36
	adds	r2, r7, r2
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	adds	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #76]
	adds	r3, r2, r3
	str	r3, [r7, #104]
	.loc 1 220 0
	movs	r3, #36
	adds	r2, r7, r3
	ldr	r3, [r7, #8]
	movs	r1, r2
	movs	r0, r3
	bl	GDI_SUBRectangles
	movs	r3, r0
	str	r3, [r7, #112]
	.loc 1 222 0
	movs	r3, #36
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	.loc 1 223 0
	movs	r3, #36
	adds	r3, r7, r3
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	.loc 1 224 0
	movs	r3, #36
	adds	r3, r7, r3
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	movs	r3, #36
	adds	r3, r7, r3
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	adds	r3, r3, #1
	str	r3, [r7, #108]
	.loc 1 225 0
	movs	r3, #36
	adds	r3, r7, r3
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	movs	r3, #36
	adds	r3, r7, r3
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	adds	r3, r3, #1
	str	r3, [r7, #60]
	.loc 1 227 0
	movs	r3, #118
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	movs	r2, r3
	movs	r3, #32
	adds	r3, r7, r3
	ldr	r1, [r7, #16]
	movs	r0, #28
	adds	r0, r7, r0
	bl	GDI_GetStringPosByXShift
	movs	r3, r0
	str	r3, [r7, #100]
	.loc 1 228 0
	ldr	r3, [r7, #100]
	cmp	r3, #0
	bne	.LCB1099
	b	.L58	@long jump
.LCB1099:
	.loc 1 230 0
	b	.L59
.L72:
.LBB7:
	.loc 1 234 0
	ldr	r3, [r7, #104]
	str	r3, [r7, #80]
	.loc 1 236 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	.loc 1 237 0
	movs	r3, #116
	adds	r3, r7, r3
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r1, [r7, #64]
	subs	r3, r1, r3
	ldr	r1, [r7, #28]
	ldrh	r1, [r1]
	muls	r1, r3
	ldr	r3, [r7, #32]
	adds	r3, r1, r3
	.loc 1 236 0
	lsrs	r3, r3, #3
	adds	r3, r2, r3
	str	r3, [r7, #96]
	.loc 1 238 0
	movs	r3, #116
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	ldr	r2, [r7, #28]
	ldrh	r2, [r2]
	muls	r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r2, r3
	movs	r2, #7
	ands	r3, r2
	str	r3, [r7, #92]
.LBB8:
	.loc 1 239 0
	ldr	r3, [r7, #108]
	str	r3, [r7, #56]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #52]
	cmp	r3, r2
	bls	.L60
	movs	r3, r2
.L60:
.LBE8:
	str	r3, [r7, #48]
	.loc 1 240 0
	ldr	r3, [r7, #60]
	str	r3, [r7, #84]
	.loc 1 241 0
	movs	r3, #74
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	.loc 1 243 0
	b	.L61
.L66:
	.loc 1 245 0
	ldr	r3, [r7, #48]
	str	r3, [r7, #88]
	.loc 1 246 0
	b	.L62
.L65:
	.loc 1 248 0
	ldr	r3, [r7, #80]
	adds	r2, r3, #4
	str	r2, [r7, #80]
	ldr	r2, [r7, #96]
	ldrb	r2, [r2]
	movs	r0, r2
	movs	r1, #128
	ldr	r2, [r7, #92]
	asrs	r1, r1, r2
	movs	r2, r1
	ands	r2, r0
	beq	.L63
	.loc 1 248 0 is_stmt 0 discriminator 1
	movs	r2, #136
	adds	r2, r7, r2
	ldr	r2, [r2]
	b	.L64
.L63:
	.loc 1 248 0 discriminator 2
	movs	r2, #140
	adds	r2, r7, r2
	ldr	r2, [r2]
.L64:
	.loc 1 248 0 discriminator 4
	str	r2, [r3]
	.loc 1 249 0 is_stmt 1 discriminator 4
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #7
	bls	.L62
	.loc 1 251 0
	ldr	r3, [r7, #92]
	subs	r3, r3, #8
	str	r3, [r7, #92]
	.loc 1 252 0
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L62:
	.loc 1 246 0
	ldr	r3, [r7, #88]
	subs	r2, r3, #1
	str	r2, [r7, #88]
	cmp	r3, #0
	bne	.L65
	.loc 1 255 0
	ldr	r3, [r7, #44]
	lsls	r3, r3, #2
	ldr	r2, [r7, #80]
	adds	r3, r2, r3
	str	r3, [r7, #80]
	.loc 1 256 0
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	ldr	r2, [r7, #92]
	adds	r3, r2, r3
	str	r3, [r7, #92]
	.loc 1 257 0
	ldr	r3, [r7, #92]
	lsrs	r3, r3, #3
	ldr	r2, [r7, #96]
	adds	r3, r2, r3
	str	r3, [r7, #96]
	.loc 1 258 0
	ldr	r3, [r7, #92]
	movs	r2, #7
	ands	r3, r2
	str	r3, [r7, #92]
.L61:
	.loc 1 243 0
	ldr	r3, [r7, #84]
	subs	r2, r3, #1
	str	r2, [r7, #84]
	cmp	r3, #0
	bne	.L66
	.loc 1 261 0
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	cmp	r3, #0
	beq	.L59
	.loc 1 263 0
	b	.L67
.L69:
	.loc 1 265 0
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #100]
	ldrb	r3, [r3]
	movs	r1, r3
	movs	r0, r2
	bl	GDI_GetFontCharInfo
	movs	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L67
	.loc 1 267 0
	movs	r3, #0
	str	r3, [r7, #32]
	.loc 1 268 0
	b	.L68
.L67:
	.loc 1 263 0
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
	ldr	r3, [r7, #100]
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L69
.L68:
	.loc 1 271 0
	ldr	r3, [r7, #100]
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L77
	.loc 1 272 0
	movs	r3, #36
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #48]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #36
	adds	r2, r7, r2
	strh	r3, [r2]
	.loc 1 273 0
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #104]
	adds	r3, r2, r3
	str	r3, [r7, #104]
.L59:
.LBE7:
	.loc 1 230 0
	ldr	r3, [r7, #108]
	cmp	r3, #0
	beq	.LCB1312
	b	.L72	@long jump
.LCB1312:
	b	.L57
.L58:
	.loc 1 277 0
	ldr	r3, [r7, #112]
	movs	r0, r3
	bl	GDI_DeleteRList
	movs	r3, r0
	str	r3, [r7, #112]
	b	.L57
.L77:
.LBB9:
	.loc 1 271 0
	nop
.L57:
.LBE9:
.LBE6:
	.loc 1 279 0
	ldr	r3, [r7, #112]
.L74:
	.loc 1 280 0 discriminator 3
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #120
	@ sp needed
	pop	{r4, r5, r7, pc}
	.cfi_endproc
.LFE3:
	.size	GDI_DrawText32, .-GDI_DrawText32
	.section	.text.TextColor,"ax",%progbits
	.align	2
	.global	TextColor
	.code	16
	.thumb_func
	.type	TextColor, %function
TextColor:
.LFB4:
	.loc 1 283 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 286 0
	movs	r3, #16
	adds	r3, r7, r3
	ldr	r2, [r7, #8]
	str	r2, [r3]
	.loc 1 287 0
	movs	r3, #16
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	.loc 1 289 0
	ldr	r3, [r7, #12]
	movs	r2, #16
	adds	r2, r7, r2
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	.loc 1 290 0
	ldr	r0, [r7, #12]
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	TextColor, .-TextColor
	.section	.text.Text,"ax",%progbits
	.align	2
	.global	Text
	.code	16
	.thumb_func
	.type	Text, %function
Text:
.LFB5:
	.loc 1 293 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #44
	.cfi_def_cfa_offset 56
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r2, r3
	adds	r3, r7, #3
	strb	r2, [r3]
	.loc 1 296 0
	movs	r3, #16
	adds	r3, r7, r3
	adds	r2, r7, #3
	ldrb	r2, [r2]
	strb	r2, [r3, #4]
	.loc 1 297 0
	movs	r3, #16
	adds	r3, r7, r3
	ldr	r2, [r7, #8]
	str	r2, [r3, #16]
	.loc 1 298 0
	movs	r3, #16
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	str	r2, [r3, #20]
	.loc 1 299 0
	movs	r3, #16
	adds	r3, r7, r3
	movs	r2, #48
	movs	r1, #8
	mov	ip, r1
	add	ip, ip, r7
	add	r2, r2, ip
	adds	r3, r3, #8
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	.loc 1 300 0
	movs	r3, #16
	adds	r3, r7, r3
	movs	r0, r3
	bl	GDI_UpdateTextExtent
	.loc 1 302 0
	ldr	r3, [r7, #12]
	movs	r2, #16
	adds	r2, r7, r2
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	.loc 1 303 0
	ldr	r0, [r7, #12]
	mov	sp, r7
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE5:
	.size	Text, .-Text
	.section	.text.GDI_UpdateTextExtent,"ax",%progbits
	.align	2
	.global	GDI_UpdateTextExtent
	.code	16
	.thumb_func
	.type	GDI_UpdateTextExtent, %function
GDI_UpdateTextExtent:
.LFB6:
	.loc 1 306 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 307 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L87
.LBB10:
	.loc 1 309 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	str	r2, [r3]
	.loc 1 311 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L84
	.loc 1 311 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L84
.LBB11:
	.loc 1 313 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	.loc 1 315 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldrh	r2, [r3, #4]
	movs	r3, #12
	adds	r3, r7, r3
	strh	r2, [r3, #2]
	.loc 1 317 0
	b	.L85
.L86:
.LBB12:
	.loc 1 321 0
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #16]
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldrb	r3, [r3]
	movs	r1, r3
	bl	GDI_GetFontCharInfo
	movs	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L85
	.loc 1 322 0
	movs	r3, #12
	adds	r3, r7, r3
	ldrh	r2, [r3]
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #12
	adds	r3, r7, r3
	strh	r2, [r3]
.L85:
.LBE12:
	.loc 1 317 0
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L86
	.loc 1 324 0
	movs	r3, #12
	adds	r3, r7, r3
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L84
	.loc 1 324 0 is_stmt 0 discriminator 1
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	strh	r2, [r3, #2]
.L84:
.LBE11:
	.loc 1 326 0 is_stmt 1
	ldr	r3, [r7, #4]
	movs	r2, #12
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L87:
.LBE10:
	.loc 1 328 0
	nop
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE6:
	.size	GDI_UpdateTextExtent, .-GDI_UpdateTextExtent
	.section	.text.GDI_GetStringPosByXShift,"ax",%progbits
	.align	2
	.global	GDI_GetStringPosByXShift
	.code	16
	.thumb_func
	.type	GDI_GetStringPosByXShift, %function
GDI_GetStringPosByXShift:
.LFB7:
	.loc 1 332 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
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
	.loc 1 334 0
	movs	r3, #0
	str	r3, [r7, #24]
	.loc 1 336 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L89
	.loc 1 336 0 discriminator 2
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L89
	.loc 1 336 0 discriminator 4
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L90
.L89:
	.loc 1 336 0 discriminator 5
	movs	r3, #0
	b	.L91
.L90:
	.loc 1 337 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L92
	.loc 1 337 0 is_stmt 0 discriminator 1
	movs	r3, #0
	str	r3, [r7, #4]
.L92:
	.loc 1 339 0 is_stmt 1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	.loc 1 340 0
	b	.L93
.L98:
.LBB13:
	.loc 1 342 0
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #28]
	ldrb	r3, [r3]
	movs	r1, r3
	movs	r0, r2
	bl	GDI_GetFontCharInfo
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 344 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L94
	.loc 1 346 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L95
	.loc 1 346 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #24]
	adds	r2, r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L95
	.loc 1 348 0 is_stmt 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L96
	.loc 1 348 0 discriminator 1
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #24]
	subs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
.L96:
	.loc 1 349 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L97
	.loc 1 349 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3]
.L97:
	.loc 1 350 0
	ldr	r3, [r7, #28]
	b	.L91
.L95:
	.loc 1 352 0
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #24]
	adds	r3, r3, r2
	str	r3, [r7, #24]
.L94:
	.loc 1 354 0
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L93:
.LBE13:
	.loc 1 340 0
	ldr	r3, [r7, #28]
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L98
	.loc 1 356 0
	movs	r3, #0
.L91:
	.loc 1 357 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	GDI_GetStringPosByXShift, .-GDI_GetStringPosByXShift
	.section	.text.GDI_DrawText,"ax",%progbits
	.align	2
	.global	GDI_DrawText
	.code	16
	.thumb_func
	.type	GDI_DrawText, %function
GDI_DrawText:
.LFB8:
	.loc 1 361 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
	.cfi_def_cfa_offset 56
	add	r7, sp, #8
	.cfi_def_cfa 7, 48
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 373 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bls	.LCB1708
	b	.L100	@long jump
.LCB1708:
	.loc 1 373 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L103
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L100
	.loc 1 373 0 discriminator 2
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L100
	.loc 1 374 0 is_stmt 1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L100
	.loc 1 374 0 discriminator 1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L100
	.loc 1 375 0 discriminator 2
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	.loc 1 374 0 discriminator 2
	cmp	r3, #0
	beq	.L100
	.loc 1 375 0
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	beq	.L100
	.loc 1 375 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L100
	.loc 1 376 0 is_stmt 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L100
.LBB14:
	.loc 1 378 0
	movs	r3, #20
	adds	r2, r7, r3
	ldr	r3, [r7]
	movs	r0, r2
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 379 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	movs	r2, r3
	ldr	r3, .L103
	adds	r3, r2, r3
	str	r3, [r7, #28]
	.loc 1 381 0
	ldr	r3, [r7, #28]
	adds	r2, r3, #2
	movs	r3, #20
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L100
	.loc 1 382 0 discriminator 1
	ldr	r2, [r7, #4]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	.loc 1 381 0 discriminator 1
	beq	.L100
	.loc 1 383 0
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #21]
	movs	r2, r3
	ldr	r3, .L103+4
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	.loc 1 382 0
	cmp	r3, #0
	beq	.L100
	.loc 1 384 0
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #21]
	movs	r2, r3
	ldr	r3, .L103+4
	lsls	r2, r2, #2
	ldr	r4, [r2, r3]
	movs	r3, #20
	adds	r5, r7, r3
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #28]
	ldr	r3, [r7, #52]
	str	r3, [sp, #4]
	ldr	r3, [r7, #48]
	str	r3, [sp]
	movs	r3, r5
	blx	r4
	movs	r3, r0
	b	.L102
.L100:
.LBE14:
	.loc 1 386 0
	movs	r3, #0
.L102:
	.loc 1 387 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r7, pc}
.L104:
	.align	2
.L103:
	.word	LCDScreen
	.word	DrawText.7645
	.cfi_endproc
.LFE8:
	.size	GDI_DrawText, .-GDI_DrawText
	.section	.rodata.DrawText.7645,"a",%progbits
	.align	2
	.type	DrawText.7645, %object
	.size	DrawText.7645, 28
DrawText.7645:
	.word	0
	.word	GDI_DrawText16
	.word	0
	.word	0
	.word	GDI_DrawText32
	.word	GDI_DrawText32
	.word	GDI_DrawText32
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\GUI/gditypes.h"
	.file 6 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 7 ".\\Source\\GUI/bfcfont.h"
	.file 8 ".\\Source\\GUI/gdifont.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xead
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF181
	.byte	0xc
	.4byte	.LASF182
	.4byte	.LASF183
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x1d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x29
	.4byte	0x49
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.4byte	0x5b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x3f
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x41
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x20
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.4byte	0x50
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x30
	.4byte	0x74
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0x116
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1d
	.4byte	0xfd
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x4
	.4byte	0x9b
	.byte	0x5
	.byte	0x16
	.4byte	0x219
	.uleb128 0xb
	.4byte	.LASF25
	.4byte	0xff000000
	.uleb128 0xb
	.4byte	.LASF26
	.4byte	0xff003366
	.uleb128 0xb
	.4byte	.LASF27
	.4byte	0xff000080
	.uleb128 0xb
	.4byte	.LASF28
	.4byte	0xff008000
	.uleb128 0xb
	.4byte	.LASF29
	.4byte	0xff008080
	.uleb128 0xb
	.4byte	.LASF30
	.4byte	0xff400000
	.uleb128 0xb
	.4byte	.LASF31
	.4byte	0xff404040
	.uleb128 0xb
	.4byte	.LASF32
	.4byte	0xff800000
	.uleb128 0xb
	.4byte	.LASF33
	.4byte	0xff800080
	.uleb128 0xb
	.4byte	.LASF34
	.4byte	0xff808000
	.uleb128 0xb
	.4byte	.LASF35
	.4byte	0xff808080
	.uleb128 0xb
	.4byte	.LASF36
	.4byte	0xffc0c0c0
	.uleb128 0xb
	.4byte	.LASF37
	.4byte	0xff0000ff
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0xff00c000
	.uleb128 0xb
	.4byte	.LASF39
	.4byte	0xff00ff00
	.uleb128 0xb
	.4byte	.LASF40
	.4byte	0xff00ffff
	.uleb128 0xb
	.4byte	.LASF41
	.4byte	0xffff0000
	.uleb128 0xb
	.4byte	.LASF42
	.4byte	0xffff00ff
	.uleb128 0xb
	.4byte	.LASF43
	.4byte	0xffffff00
	.uleb128 0xb
	.4byte	.LASF44
	.4byte	0xffffffff
	.uleb128 0xb
	.4byte	.LASF45
	.4byte	0xffc0dcc0
	.uleb128 0xb
	.4byte	.LASF46
	.4byte	0xfff0c8a4
	.uleb128 0xb
	.4byte	.LASF47
	.4byte	0xfff0f8fc
	.uleb128 0xb
	.4byte	.LASF48
	.4byte	0xffa4a0a0
	.uleb128 0xb
	.4byte	.LASF49
	.4byte	0xffc8d0d4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x5
	.byte	0x31
	.4byte	0x127
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x33
	.4byte	0x265
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x5
	.byte	0x3d
	.4byte	0x224
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x4
	.byte	0x5
	.byte	0x41
	.4byte	0x291
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x5
	.byte	0x43
	.4byte	0xad
	.byte	0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x5
	.byte	0x44
	.4byte	0xad
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x5
	.byte	0x45
	.4byte	0x270
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.byte	0x49
	.4byte	0x2bb
	.uleb128 0xd
	.ascii	"lt\000"
	.byte	0x5
	.byte	0x4b
	.4byte	0x291
	.byte	0
	.uleb128 0xd
	.ascii	"rb\000"
	.byte	0x5
	.byte	0x4c
	.4byte	0x291
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.byte	0x4e
	.4byte	0x2ec
	.uleb128 0xd
	.ascii	"l\000"
	.byte	0x5
	.byte	0x50
	.4byte	0xad
	.byte	0
	.uleb128 0xd
	.ascii	"t\000"
	.byte	0x5
	.byte	0x51
	.4byte	0xad
	.byte	0x2
	.uleb128 0xd
	.ascii	"r\000"
	.byte	0x5
	.byte	0x52
	.4byte	0xad
	.byte	0x4
	.uleb128 0xd
	.ascii	"b\000"
	.byte	0x5
	.byte	0x53
	.4byte	0xad
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF184
	.byte	0x8
	.byte	0x5
	.byte	0x47
	.4byte	0x303
	.uleb128 0x10
	.4byte	0x29c
	.uleb128 0x10
	.4byte	0x2bb
	.byte	0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x5
	.byte	0x55
	.4byte	0x2ec
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x5
	.byte	0x55
	.4byte	0x319
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ec
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x4
	.byte	0x5
	.byte	0x5d
	.4byte	0x342
	.uleb128 0xd
	.ascii	"sx\000"
	.byte	0x5
	.byte	0x5f
	.4byte	0xb8
	.byte	0
	.uleb128 0xd
	.ascii	"sy\000"
	.byte	0x5
	.byte	0x60
	.4byte	0xb8
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x5
	.byte	0x61
	.4byte	0x31f
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x24
	.byte	0x5
	.byte	0x63
	.4byte	0x372
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x5
	.byte	0x65
	.4byte	0xce
	.byte	0
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x5
	.byte	0x66
	.4byte	0x372
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	0x303
	.4byte	0x382
	.uleb128 0x13
	.4byte	0xe0
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x5
	.byte	0x67
	.4byte	0x38d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x34d
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0xf1
	.4byte	0x3c2
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x6
	.byte	0xf8
	.4byte	0x393
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1c
	.byte	0x6
	.2byte	0x119
	.4byte	0x443
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x11b
	.4byte	0x116
	.byte	0
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x11c
	.4byte	0x116
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x11d
	.4byte	0x303
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x11e
	.4byte	0x291
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x11f
	.4byte	0xce
	.byte	0x10
	.uleb128 0x16
	.ascii	"BPP\000"
	.byte	0x6
	.2byte	0x120
	.4byte	0xa2
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x121
	.4byte	0x265
	.byte	0x15
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x122
	.4byte	0xe7
	.byte	0x18
	.byte	0
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x123
	.4byte	0x3cd
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x123
	.4byte	0x45b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3cd
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x88
	.byte	0x6
	.2byte	0x125
	.4byte	0x4bd
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x127
	.4byte	0x303
	.byte	0
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x128
	.4byte	0x291
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x129
	.4byte	0xce
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x12a
	.4byte	0xce
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x12b
	.4byte	0x116
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x12c
	.4byte	0x4bd
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.4byte	0x443
	.4byte	0x4cd
	.uleb128 0x13
	.4byte	0xe0
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x12d
	.4byte	0x461
	.uleb128 0x18
	.byte	0x4
	.byte	0x7
	.byte	0x3d
	.4byte	0x50e
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x7
	.byte	0x3f
	.4byte	0xf6
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x7
	.byte	0x40
	.4byte	0x50e
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x7
	.byte	0x41
	.4byte	0x519
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x7
	.byte	0x42
	.4byte	0x524
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x514
	.uleb128 0x1a
	.4byte	0x37
	.uleb128 0x6
	.byte	0x4
	.4byte	0x51f
	.uleb128 0x1a
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x52a
	.uleb128 0x1a
	.4byte	0x7f
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x8
	.byte	0x7
	.byte	0x39
	.4byte	0x55e
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x7
	.byte	0x3b
	.4byte	0x5b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x7
	.byte	0x3c
	.4byte	0x5b
	.byte	0x2
	.uleb128 0xd
	.ascii	"p\000"
	.byte	0x7
	.byte	0x43
	.4byte	0x4d9
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x7
	.byte	0x44
	.4byte	0x52f
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0x7
	.byte	0x44
	.4byte	0x574
	.uleb128 0x6
	.byte	0x4
	.4byte	0x52f
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x10
	.byte	0x7
	.byte	0x46
	.4byte	0x5b7
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x7
	.byte	0x48
	.4byte	0x7f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0x7
	.byte	0x49
	.4byte	0x7f
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x7
	.byte	0x4a
	.4byte	0x5b7
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x7
	.byte	0x4b
	.4byte	0x5c2
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5bd
	.uleb128 0x1a
	.4byte	0x55e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c8
	.uleb128 0x1a
	.4byte	0x57a
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0x7
	.byte	0x4c
	.4byte	0x57a
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x7
	.byte	0x4c
	.4byte	0x5e3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57a
	.uleb128 0x18
	.byte	0x4
	.byte	0x7
	.byte	0x54
	.4byte	0x61e
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x7
	.byte	0x56
	.4byte	0xf6
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x7
	.byte	0x57
	.4byte	0x50e
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x7
	.byte	0x58
	.4byte	0x519
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x7
	.byte	0x59
	.4byte	0x524
	.byte	0
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0x10
	.byte	0x7
	.byte	0x4e
	.4byte	0x665
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x7
	.byte	0x50
	.4byte	0x7f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0x7
	.byte	0x51
	.4byte	0x7f
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x7
	.byte	0x52
	.4byte	0x5b
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x7
	.byte	0x53
	.4byte	0x5b
	.byte	0xa
	.uleb128 0xd
	.ascii	"p\000"
	.byte	0x7
	.byte	0x5a
	.4byte	0x5e9
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x7
	.byte	0x5b
	.4byte	0x61e
	.uleb128 0x18
	.byte	0x4
	.byte	0x7
	.byte	0x63
	.4byte	0x69a
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x7
	.byte	0x65
	.4byte	0xf6
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x7
	.byte	0x66
	.4byte	0x69a
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0x7
	.byte	0x67
	.4byte	0x6a5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a0
	.uleb128 0x1a
	.4byte	0x665
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ab
	.uleb128 0x1a
	.4byte	0x5cd
	.uleb128 0xe
	.byte	0x10
	.byte	0x7
	.byte	0x5d
	.4byte	0x6f3
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0x7
	.byte	0x5f
	.4byte	0x7f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0x7
	.byte	0x60
	.4byte	0x5b
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x7
	.byte	0x61
	.4byte	0x5b
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0x7
	.byte	0x62
	.4byte	0x7f
	.byte	0x8
	.uleb128 0xd
	.ascii	"p\000"
	.byte	0x7
	.byte	0x68
	.4byte	0x670
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x7
	.byte	0x69
	.4byte	0x6b0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x7
	.byte	0x69
	.4byte	0x709
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6b0
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0x1
	.4byte	0x37
	.byte	0x8
	.byte	0x18
	.4byte	0x750
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x8
	.byte	0x22
	.4byte	0x70f
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x8
	.byte	0x8
	.byte	0x24
	.4byte	0x780
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0x8
	.byte	0x26
	.4byte	0x219
	.byte	0
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0x8
	.byte	0x27
	.4byte	0x219
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0x8
	.byte	0x28
	.4byte	0x75b
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0x18
	.byte	0x8
	.byte	0x2a
	.4byte	0x7d4
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0x8
	.byte	0x2c
	.4byte	0x342
	.byte	0
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0x8
	.byte	0x2d
	.4byte	0x750
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x8
	.byte	0x2e
	.4byte	0x780
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0x8
	.byte	0x2f
	.4byte	0x6fe
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0x8
	.byte	0x30
	.4byte	0xe9
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0x8
	.byte	0x31
	.4byte	0x78b
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0x8
	.byte	0x31
	.4byte	0x7ea
	.uleb128 0x6
	.byte	0x4
	.4byte	0x78b
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x1
	.byte	0x18
	.4byte	0x569
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x842
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0x1
	.byte	0x18
	.4byte	0x6fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.byte	0x18
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x1
	.byte	0x1a
	.4byte	0x5d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x1
	.byte	0x1b
	.4byte	0x569
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.byte	0x2e
	.4byte	0x382
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa15
	.uleb128 0x1f
	.ascii	"lc\000"
	.byte	0x1
	.byte	0x2e
	.4byte	0x44f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x1
	.byte	0x2e
	.4byte	0x7df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x2e
	.4byte	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x1
	.byte	0x2e
	.4byte	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x1
	.byte	0x2f
	.4byte	0x219
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0x2f
	.4byte	0x219
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.4byte	.LASF86
	.byte	0x1
	.byte	0x31
	.4byte	0xa15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.4byte	.LASF148
	.byte	0x1
	.byte	0x32
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0x1
	.byte	0x32
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1d
	.4byte	.LASF150
	.byte	0x1
	.byte	0x32
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x1
	.byte	0x33
	.4byte	0x303
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1d
	.4byte	.LASF152
	.byte	0x1
	.byte	0x34
	.4byte	0x382
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1d
	.4byte	.LASF153
	.byte	0x1
	.byte	0x61
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1d
	.4byte	.LASF154
	.byte	0x1
	.byte	0x61
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.ascii	"dx\000"
	.byte	0x1
	.byte	0x61
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.ascii	"dy\000"
	.byte	0x1
	.byte	0x61
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.4byte	.LASF155
	.byte	0x1
	.byte	0x61
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.4byte	.LASF156
	.byte	0x1
	.byte	0x62
	.4byte	0xa15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LASF157
	.byte	0x1
	.byte	0x63
	.4byte	0x569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1d
	.4byte	.LASF158
	.byte	0x1
	.byte	0x64
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1d
	.4byte	.LASF159
	.byte	0x1
	.byte	0x72
	.4byte	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.4byte	.LASF160
	.byte	0x1
	.byte	0x73
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.4byte	.LASF161
	.byte	0x1
	.byte	0x73
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	.LASF162
	.byte	0x1
	.byte	0x73
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.byte	0x73
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.byte	0x73
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1d
	.4byte	.LASF165
	.byte	0x1
	.byte	0x74
	.4byte	0xa15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x21
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x79
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x79
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x1e
	.4byte	.LASF166
	.byte	0x1
	.byte	0xa4
	.4byte	0x382
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbee
	.uleb128 0x1f
	.ascii	"lc\000"
	.byte	0x1
	.byte	0xa4
	.4byte	0x44f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x1
	.byte	0xa4
	.4byte	0x7df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0xa4
	.4byte	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x1
	.byte	0xa4
	.4byte	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x1
	.byte	0xa5
	.4byte	0x219
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0xa5
	.4byte	0x219
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.4byte	.LASF86
	.byte	0x1
	.byte	0xa7
	.4byte	0xbee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.4byte	.LASF148
	.byte	0x1
	.byte	0xa8
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0x1
	.byte	0xa8
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1d
	.4byte	.LASF150
	.byte	0x1
	.byte	0xa8
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x1
	.byte	0xa9
	.4byte	0x303
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1d
	.4byte	.LASF152
	.byte	0x1
	.byte	0xaa
	.4byte	0x382
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1d
	.4byte	.LASF153
	.byte	0x1
	.byte	0xd7
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1d
	.4byte	.LASF154
	.byte	0x1
	.byte	0xd7
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.ascii	"dx\000"
	.byte	0x1
	.byte	0xd7
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.ascii	"dy\000"
	.byte	0x1
	.byte	0xd7
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.4byte	.LASF155
	.byte	0x1
	.byte	0xd7
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.4byte	.LASF156
	.byte	0x1
	.byte	0xd8
	.4byte	0xbee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LASF157
	.byte	0x1
	.byte	0xd9
	.4byte	0x569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1d
	.4byte	.LASF158
	.byte	0x1
	.byte	0xda
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1d
	.4byte	.LASF159
	.byte	0x1
	.byte	0xe8
	.4byte	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.4byte	.LASF160
	.byte	0x1
	.byte	0xe9
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.4byte	.LASF161
	.byte	0x1
	.byte	0xe9
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	.LASF162
	.byte	0x1
	.byte	0xe9
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.byte	0xe9
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.byte	0xe9
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1d
	.4byte	.LASF165
	.byte	0x1
	.byte	0xea
	.4byte	0xbee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x21
	.ascii	"_a\000"
	.byte	0x1
	.byte	0xef
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.ascii	"_b\000"
	.byte	0x1
	.byte	0xef
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x23
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x11a
	.4byte	0x780
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3c
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x11a
	.4byte	0x219
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x11a
	.4byte	0x219
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x11c
	.4byte	0x780
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x26
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x124
	.4byte	0x7d4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca2
	.uleb128 0x24
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x124
	.4byte	0xca2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x124
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x124
	.4byte	0x750
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x24
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x124
	.4byte	0x780
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x126
	.4byte	0x7d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca8
	.uleb128 0x1a
	.4byte	0x6f3
	.uleb128 0x27
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x131
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1c
	.uleb128 0x24
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x131
	.4byte	0x7df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x25
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x135
	.4byte	0x342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x28
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x139
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x25
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x13f
	.4byte	0x569
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x14a
	.4byte	0xe9
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda8
	.uleb128 0x24
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x14a
	.4byte	0xda8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x14a
	.4byte	0x7df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x14a
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x14b
	.4byte	0xbee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x14d
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x14e
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x25
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x156
	.4byte	0x569
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x569
	.uleb128 0x26
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x167
	.4byte	0x382
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe5c
	.uleb128 0x24
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x167
	.4byte	0x3c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x24
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x167
	.4byte	0x7df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x167
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x167
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x168
	.4byte	0x219
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x168
	.4byte	0x219
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x16a
	.4byte	0xe9f
	.uleb128 0x5
	.byte	0x3
	.4byte	DrawText.7645
	.uleb128 0x20
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x25
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x17a
	.4byte	0x303
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.ascii	"lc\000"
	.byte	0x1
	.2byte	0x17b
	.4byte	0x44f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xe9a
	.4byte	0xe6c
	.uleb128 0x13
	.4byte	0xe0
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe72
	.uleb128 0x29
	.4byte	0x382
	.4byte	0xe9a
	.uleb128 0x2a
	.4byte	0x44f
	.uleb128 0x2a
	.4byte	0x7df
	.uleb128 0x2a
	.4byte	0x30e
	.uleb128 0x2a
	.4byte	0x30e
	.uleb128 0x2a
	.4byte	0x219
	.uleb128 0x2a
	.4byte	0x219
	.byte	0
	.uleb128 0x1a
	.4byte	0xe6c
	.uleb128 0x1a
	.4byte	0xe5c
	.uleb128 0x2b
	.4byte	.LASF186
	.byte	0x6
	.2byte	0x137
	.4byte	0x4cd
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x17
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
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x54
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB9
	.4byte	.LBE9
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
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF125:
	.ascii	"AV_TOP\000"
.LASF68:
	.ascii	"tag_RLIST\000"
.LASF182:
	.ascii	"Source\\GUI\\gdifont.c\000"
.LASF38:
	.ascii	"clMidGreen\000"
.LASF23:
	.ascii	"true\000"
.LASF129:
	.ascii	"TTXTALIGN\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF32:
	.ascii	"clNavy\000"
.LASF143:
	.ascii	"Result\000"
.LASF90:
	.ascii	"ScreenRgn\000"
.LASF173:
	.ascii	"ReqXShift\000"
.LASF93:
	.ascii	"ScreenIndex\000"
.LASF87:
	.ascii	"TLCONTEXT\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF170:
	.ascii	"tmpText\000"
.LASF185:
	.ascii	"GDI_UpdateTextExtent\000"
.LASF52:
	.ascii	"tag_CFORMAT\000"
.LASF96:
	.ascii	"pData\000"
.LASF30:
	.ascii	"clDarkBlue\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF11:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF53:
	.ascii	"CF_8IDX\000"
.LASF100:
	.ascii	"BFC_CHARINFO\000"
.LASF106:
	.ascii	"LastChar\000"
.LASF165:
	.ascii	"tmpdstImagePtr\000"
.LASF152:
	.ascii	"SubRects\000"
.LASF169:
	.ascii	"Caption\000"
.LASF178:
	.ascii	"Layer\000"
.LASF62:
	.ascii	"TPOINT\000"
.LASF8:
	.ascii	"long int\000"
.LASF51:
	.ascii	"tag_COLOR\000"
.LASF133:
	.ascii	"TTEXTCOLOR\000"
.LASF162:
	.ascii	"tmpX\000"
.LASF166:
	.ascii	"GDI_DrawText32\000"
.LASF110:
	.ascii	"BFC_FONT_MONO\000"
.LASF78:
	.ascii	"TVLINDEX\000"
.LASF159:
	.ascii	"SymData\000"
.LASF54:
	.ascii	"CF_RGB565\000"
.LASF142:
	.ascii	"Symbol\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF113:
	.ascii	"pProp\000"
.LASF135:
	.ascii	"Extent\000"
.LASF140:
	.ascii	"TTEXT\000"
.LASF111:
	.ascii	"FontWidth\000"
.LASF88:
	.ascii	"pLCONTEXT\000"
.LASF119:
	.ascii	"pBFC_FONT\000"
.LASF146:
	.ascii	"Client\000"
.LASF117:
	.ascii	"Reversed\000"
.LASF97:
	.ascii	"pData8\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF92:
	.ascii	"ScreenCount\000"
.LASF85:
	.ascii	"ColorFormat\000"
.LASF25:
	.ascii	"clBlack\000"
.LASF183:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF181:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF79:
	.ascii	"tag_TLCONTEXT\000"
.LASF46:
	.ascii	"clSkyBlue\000"
.LASF28:
	.ascii	"clGreen\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF184:
	.ascii	"tag_RECT\000"
.LASF149:
	.ascii	"XShift\000"
.LASF40:
	.ascii	"clYellow\000"
.LASF107:
	.ascii	"pFirstCharInfo\000"
.LASF60:
	.ascii	"CF_NUM\000"
.LASF71:
	.ascii	"pRLIST\000"
.LASF136:
	.ascii	"Align\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF138:
	.ascii	"Font\000"
.LASF56:
	.ascii	"CF_RGB888\000"
.LASF50:
	.ascii	"TCOLOR\000"
.LASF36:
	.ascii	"clSilver\000"
.LASF118:
	.ascii	"BFC_FONT\000"
.LASF116:
	.ascii	"Baseline\000"
.LASF47:
	.ascii	"clCream\000"
.LASF98:
	.ascii	"pData16\000"
.LASF145:
	.ascii	"GDI_DrawText16\000"
.LASF175:
	.ascii	"CurrentShift\000"
.LASF4:
	.ascii	"short int\000"
.LASF121:
	.ascii	"AH_LEFT\000"
.LASF172:
	.ascii	"GDI_GetStringPosByXShift\000"
.LASF94:
	.ascii	"VLayer\000"
.LASF126:
	.ascii	"AV_BOTTOM\000"
.LASF151:
	.ascii	"TextRect\000"
.LASF127:
	.ascii	"AV_CENTER\000"
.LASF163:
	.ascii	"tmpY\000"
.LASF45:
	.ascii	"clMoneyGreen\000"
.LASF20:
	.ascii	"sizetype\000"
.LASF19:
	.ascii	"long double\000"
.LASF132:
	.ascii	"BackColor\000"
.LASF31:
	.ascii	"clDarkGray\000"
.LASF58:
	.ascii	"CF_PARGB8888\000"
.LASF89:
	.ascii	"tag_TSCREEN\000"
.LASF95:
	.ascii	"TSCREEN\000"
.LASF29:
	.ascii	"clOlive\000"
.LASF49:
	.ascii	"clBtnFace\000"
.LASF104:
	.ascii	"BFC_FONT_PROP\000"
.LASF156:
	.ascii	"dstImagePtr\000"
.LASF160:
	.ascii	"BitsDraw\000"
.LASF72:
	.ascii	"tag_VLINDEX\000"
.LASF123:
	.ascii	"AH_CENTER\000"
.LASF39:
	.ascii	"clLime\000"
.LASF147:
	.ascii	"Clip\000"
.LASF176:
	.ascii	"tmpCharInfo\000"
.LASF42:
	.ascii	"clFuchsia\000"
.LASF43:
	.ascii	"clAqua\000"
.LASF161:
	.ascii	"BitIndex\000"
.LASF171:
	.ascii	"SzXY\000"
.LASF137:
	.ascii	"Color\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF153:
	.ascii	"PixX\000"
.LASF154:
	.ascii	"PixY\000"
.LASF82:
	.ascii	"LayerRgn\000"
.LASF148:
	.ascii	"FrameWidth\000"
.LASF57:
	.ascii	"CF_ARGB8888\000"
.LASF130:
	.ascii	"tag_TEXTCOLOR\000"
.LASF80:
	.ascii	"Enabled\000"
.LASF131:
	.ascii	"ForeColor\000"
.LASF128:
	.ascii	"AV_MASK\000"
.LASF33:
	.ascii	"clPurple\000"
.LASF108:
	.ascii	"pNextProp\000"
.LASF99:
	.ascii	"pData32\000"
.LASF22:
	.ascii	"false\000"
.LASF167:
	.ascii	"tmpTextColor\000"
.LASF84:
	.ascii	"LayerEnMask\000"
.LASF63:
	.ascii	"TRECT\000"
.LASF86:
	.ascii	"FrameBuffer\000"
.LASF48:
	.ascii	"clMedGray\000"
.LASF103:
	.ascii	"pBFC_CHARINFO\000"
.LASF180:
	.ascii	"tmpClip\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF122:
	.ascii	"AH_RIGHT\000"
.LASF44:
	.ascii	"clWhite\000"
.LASF124:
	.ascii	"AH_MASK\000"
.LASF21:
	.ascii	"char\000"
.LASF158:
	.ascii	"CapPtr\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF102:
	.ascii	"DataSize\000"
.LASF24:
	.ascii	"boolean\000"
.LASF67:
	.ascii	"TSIZEXY\000"
.LASF150:
	.ascii	"YShift\000"
.LASF66:
	.ascii	"tag_SIZEXY\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF186:
	.ascii	"LCDScreen\000"
.LASF77:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF73:
	.ascii	"LCDIF_LAYER0\000"
.LASF74:
	.ascii	"LCDIF_LAYER1\000"
.LASF75:
	.ascii	"LCDIF_LAYER2\000"
.LASF76:
	.ascii	"LCDIF_LAYER3\000"
.LASF157:
	.ascii	"CharInfo\000"
.LASF174:
	.ascii	"DataBitIndex\000"
.LASF41:
	.ascii	"clBlue\000"
.LASF64:
	.ascii	"pRECT\000"
.LASF55:
	.ascii	"CF_YUYV422\000"
.LASF141:
	.ascii	"pTEXT\000"
.LASF155:
	.ascii	"BitStartIndex\000"
.LASF144:
	.ascii	"GDI_GetFontCharInfo\000"
.LASF34:
	.ascii	"clTeal\000"
.LASF69:
	.ascii	"Count\000"
.LASF59:
	.ascii	"CF_xRGB8888\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF120:
	.ascii	"tag_TXTALIGN\000"
.LASF134:
	.ascii	"tag_TEXT\000"
.LASF168:
	.ascii	"TextColor\000"
.LASF179:
	.ascii	"DrawText\000"
.LASF65:
	.ascii	"tag_POINT\000"
.LASF105:
	.ascii	"FirstChar\000"
.LASF115:
	.ascii	"FontHeight\000"
.LASF37:
	.ascii	"clRed\000"
.LASF109:
	.ascii	"pBFC_FONT_PROP\000"
.LASF91:
	.ascii	"ScreenOffset\000"
.LASF177:
	.ascii	"GDI_DrawText\000"
.LASF101:
	.ascii	"Width\000"
.LASF81:
	.ascii	"Initialized\000"
.LASF83:
	.ascii	"LayerOffset\000"
.LASF27:
	.ascii	"clMaroon\000"
.LASF70:
	.ascii	"Item\000"
.LASF114:
	.ascii	"FontType\000"
.LASF61:
	.ascii	"TCFORMAT\000"
.LASF26:
	.ascii	"clBrown\000"
.LASF139:
	.ascii	"Text\000"
.LASF35:
	.ascii	"clGray\000"
.LASF112:
	.ascii	"pMono\000"
.LASF164:
	.ascii	"ImagePitch\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
