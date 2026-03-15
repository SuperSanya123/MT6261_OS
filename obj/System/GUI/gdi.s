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
	.file	"gdi.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.GDI_FillRectangle,"ax",%progbits
	.align	2
	.global	GDI_FillRectangle
	.code	16
	.thumb_func
	.type	GDI_FillRectangle, %function
GDI_FillRectangle:
.LFB1:
	.file 1 "Source\\GUI\\gdi.c"
	.loc 1 26 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	movs	r4, r0
	adds	r0, r7, #4
	str	r1, [r0]
	str	r2, [r0, #4]
	str	r3, [r7]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r4, #0
	strb	r2, [r3]
	.loc 1 29 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bhi	.L5
	.loc 1 29 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L6
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L5
	.loc 1 31 0 is_stmt 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	movs	r2, r3
	ldr	r3, .L6
	adds	r3, r2, r3
	str	r3, [r7, #20]
	.loc 1 32 0
	ldr	r3, [r7, #20]
	adds	r2, r3, #2
	adds	r3, r7, #4
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L1
	.loc 1 32 0 is_stmt 0 discriminator 1
	ldr	r2, [r7]
	adds	r1, r7, #4
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	GDI_FillRectangleX
	b	.L1
.L5:
	.loc 1 29 0 is_stmt 1
	nop
.L1:
	.loc 1 33 0
	mov	sp, r7
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r7, pc}
.L7:
	.align	2
.L6:
	.word	LCDScreen
	.cfi_endproc
.LFE1:
	.size	GDI_FillRectangle, .-GDI_FillRectangle
	.section	.text.GDI_DrawLine,"ax",%progbits
	.align	2
	.global	GDI_DrawLine
	.code	16
	.thumb_func
	.type	GDI_DrawLine, %function
GDI_DrawLine:
.LFB2:
	.loc 1 36 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	movs	r4, r0
	movs	r0, #8
	adds	r0, r7, r0
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	str	r3, [r7]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r4, #0
	strb	r2, [r3]
	.loc 1 37 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bhi	.L14
	.loc 1 37 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L15
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L14
	.loc 1 39 0 is_stmt 1
	movs	r3, #8
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r3, r7, #4
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	beq	.L12
	.loc 1 39 0 is_stmt 0 discriminator 1
	movs	r3, #8
	adds	r3, r7, r3
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	adds	r3, r7, #4
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	bne	.L8
.L12:
.LBB2:
	.loc 1 44 0 is_stmt 1
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #8
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 1 45 0
	movs	r3, #20
	adds	r3, r7, r3
	adds	r2, r7, #4
	ldr	r2, [r2]
	str	r2, [r3, #4]
	.loc 1 47 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	movs	r2, r3
	ldr	r3, .L15
	adds	r3, r2, r3
	str	r3, [r7, #28]
	.loc 1 48 0
	ldr	r3, [r7, #28]
	adds	r2, r3, #2
	movs	r3, #20
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L8
	.loc 1 48 0 is_stmt 0 discriminator 1
	ldr	r2, [r7]
	movs	r3, #20
	adds	r1, r7, r3
	ldr	r3, [r7, #28]
	movs	r0, r3
	bl	GDI_FillRectangleX
	b	.L8
.L14:
.LBE2:
	.loc 1 37 0 is_stmt 1
	nop
.L8:
	.loc 1 50 0
	mov	sp, r7
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r7, pc}
.L16:
	.align	2
.L15:
	.word	LCDScreen
	.cfi_endproc
.LFE2:
	.size	GDI_DrawLine, .-GDI_DrawLine
	.section	.text.GDI_SetPixel,"ax",%progbits
	.align	2
	.global	GDI_SetPixel
	.code	16
	.thumb_func
	.type	GDI_SetPixel, %function
GDI_SetPixel:
.LFB3:
	.loc 1 53 0
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
	movs	r3, #8
	adds	r3, r7, r3
	str	r1, [r3]
	str	r2, [r7, #4]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 57 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bhi	.L22
	.loc 1 57 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L23
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L22
	.loc 1 59 0 is_stmt 1
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #8
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3, #4]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #20
	adds	r2, r7, r2
	ldr	r2, [r2, #4]
	str	r2, [r3]
	.loc 1 61 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	movs	r2, r3
	ldr	r3, .L23
	adds	r3, r2, r3
	str	r3, [r7, #28]
	.loc 1 62 0
	ldr	r3, [r7, #28]
	adds	r2, r3, #2
	movs	r3, #8
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	IsPointInRect
	subs	r3, r0, #0
	beq	.L17
	.loc 1 62 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #4]
	movs	r3, #20
	adds	r1, r7, r3
	ldr	r3, [r7, #28]
	movs	r0, r3
	bl	GDI_FillRectangleX
	b	.L17
.L22:
	.loc 1 57 0 is_stmt 1
	nop
.L17:
	.loc 1 63 0
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	LCDScreen
	.cfi_endproc
.LFE3:
	.size	GDI_SetPixel, .-GDI_SetPixel
	.section	.text.GDI_DrawFrame,"ax",%progbits
	.align	2
	.global	GDI_DrawFrame
	.code	16
	.thumb_func
	.type	GDI_DrawFrame, %function
GDI_DrawFrame:
.LFB4:
	.loc 1 66 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #48
	.cfi_def_cfa_offset 64
	add	r7, sp, #8
	.cfi_def_cfa 7, 56
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	movs	r3, #23
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 67 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bls	.LCB335
	b	.L34	@long jump
.LCB335:
	.loc 1 67 0 is_stmt 0 discriminator 1
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L35
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.LCB348
	b	.L34	@long jump
.LCB348:
	.loc 1 68 0 is_stmt 1
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.LCB351
	b	.L25	@long jump
.LCB351:
	.loc 1 68 0 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.LCB354
	b	.L25	@long jump
.LCB354:
.LBB3:
	.loc 1 70 0
	movs	r3, #32
	adds	r2, r7, r3
	ldr	r3, [r7, #16]
	movs	r0, r2
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 72 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	movs	r2, r3
	ldr	r3, .L35
	adds	r3, r2, r3
	adds	r2, r3, #2
	movs	r3, #32
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	bne	.LCB383
	b	.L25	@long jump
.LCB383:
	.loc 1 73 0 discriminator 1
	ldr	r2, [r7, #12]
	movs	r3, #32
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	.loc 1 72 0 discriminator 1
	bne	.LCB392
	b	.L25	@long jump
.LCB392:
.LBB4:
	.loc 1 77 0
	ldr	r3, [r7, #16]
	movs	r1, #0
	ldrsh	r1, [r3, r1]
	ldr	r3, [r7, #16]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #16]
	movs	r5, #4
	ldrsh	r5, [r3, r5]
	ldr	r3, [r7, #16]
	movs	r0, #2
	ldrsh	r3, [r3, r0]
	movs	r0, #24
	adds	r4, r7, r0
	movs	r0, r7
	str	r3, [sp]
	movs	r3, r5
	bl	Rect
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 78 0
	movs	r3, #32
	adds	r2, r7, r3
	movs	r3, #24
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L30
	.loc 1 79 0
	ldr	r1, [r7, #8]
	movs	r3, #24
	adds	r2, r7, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	GDI_FillRectangle
.L30:
	.loc 1 80 0
	ldr	r3, [r7, #16]
	movs	r1, #0
	ldrsh	r1, [r3, r1]
	ldr	r3, [r7, #16]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #16]
	movs	r5, #0
	ldrsh	r5, [r3, r5]
	ldr	r3, [r7, #16]
	movs	r0, #6
	ldrsh	r3, [r3, r0]
	movs	r0, #24
	adds	r4, r7, r0
	movs	r0, r7
	str	r3, [sp]
	movs	r3, r5
	bl	Rect
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 81 0
	movs	r3, #32
	adds	r2, r7, r3
	movs	r3, #24
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L31
	.loc 1 82 0
	ldr	r1, [r7, #8]
	movs	r3, #24
	adds	r2, r7, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	GDI_FillRectangle
.L31:
	.loc 1 83 0
	ldr	r3, [r7, #16]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r1, r3, #16
	asrs	r1, r1, #16
	ldr	r3, [r7, #16]
	movs	r2, #6
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #16]
	movs	r5, #4
	ldrsh	r5, [r3, r5]
	ldr	r3, [r7, #16]
	movs	r0, #6
	ldrsh	r3, [r3, r0]
	movs	r0, #24
	adds	r4, r7, r0
	movs	r0, r7
	str	r3, [sp]
	movs	r3, r5
	bl	Rect
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 84 0
	movs	r3, #32
	adds	r2, r7, r3
	movs	r3, #24
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L32
	.loc 1 85 0
	ldr	r1, [r7, #8]
	movs	r3, #24
	adds	r2, r7, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	GDI_FillRectangle
.L32:
	.loc 1 86 0
	ldr	r3, [r7, #16]
	movs	r1, #4
	ldrsh	r1, [r3, r1]
	ldr	r3, [r7, #16]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	ldr	r3, [r7, #16]
	movs	r5, #4
	ldrsh	r5, [r3, r5]
	ldr	r3, [r7, #16]
	movs	r0, #6
	ldrsh	r3, [r3, r0]
	movs	r0, #24
	adds	r4, r7, r0
	movs	r0, r7
	str	r3, [sp]
	movs	r3, r5
	bl	Rect
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 87 0
	movs	r3, #32
	adds	r2, r7, r3
	movs	r3, #24
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L25
	.loc 1 88 0
	ldr	r1, [r7, #8]
	movs	r3, #24
	adds	r2, r7, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	GDI_FillRectangle
	b	.L25
.L34:
.LBE4:
.LBE3:
	.loc 1 67 0
	nop
.L25:
	.loc 1 91 0
	mov	sp, r7
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r7, pc}
.L36:
	.align	2
.L35:
	.word	LCDScreen
	.cfi_endproc
.LFE4:
	.size	GDI_DrawFrame, .-GDI_DrawFrame
	.section	.text.GDI_Draw3DFrame,"ax",%progbits
	.align	2
	.global	GDI_Draw3DFrame
	.code	16
	.thumb_func
	.type	GDI_Draw3DFrame, %function
GDI_Draw3DFrame:
.LFB5:
	.loc 1 95 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #56
	.cfi_def_cfa_offset 72
	add	r7, sp, #8
	.cfi_def_cfa 7, 64
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	movs	r3, #23
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 96 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bls	.LCB625
	b	.L50	@long jump
.LCB625:
	.loc 1 96 0 is_stmt 0 discriminator 1
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L51
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.LCB638
	b	.L50	@long jump
.LCB638:
	.loc 1 97 0 is_stmt 1
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.LCB641
	b	.L37	@long jump
.LCB641:
	.loc 1 97 0 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.LCB644
	b	.L37	@long jump
.LCB644:
.LBB5:
	.loc 1 99 0
	movs	r3, #32
	adds	r2, r7, r3
	ldr	r3, [r7, #16]
	movs	r0, r2
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 101 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	movs	r2, r3
	ldr	r3, .L51
	adds	r3, r2, r3
	adds	r2, r3, #2
	movs	r3, #32
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	bne	.LCB673
	b	.L37	@long jump
.LCB673:
	.loc 1 102 0 discriminator 1
	ldr	r2, [r7, #12]
	movs	r3, #32
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	.loc 1 101 0 discriminator 1
	bne	.LCB682
	b	.L37	@long jump
.LCB682:
.LBB6:
	.loc 1 105 0
	movs	r3, #68
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L42
	.loc 1 105 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #64]
	b	.L43
.L42:
	.loc 1 105 0 discriminator 2
	ldr	r3, [r7, #8]
.L43:
	.loc 1 105 0 discriminator 4
	str	r3, [r7, #44]
	.loc 1 106 0 is_stmt 1 discriminator 4
	movs	r3, #68
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L44
	.loc 1 106 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	b	.L45
.L44:
	.loc 1 106 0 discriminator 2
	ldr	r3, [r7, #64]
.L45:
	.loc 1 106 0 discriminator 4
	str	r3, [r7, #40]
	.loc 1 108 0 is_stmt 1 discriminator 4
	ldr	r3, [r7, #16]
	movs	r1, #0
	ldrsh	r1, [r3, r1]
	ldr	r3, [r7, #16]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #16]
	movs	r5, #4
	ldrsh	r5, [r3, r5]
	ldr	r3, [r7, #16]
	movs	r0, #2
	ldrsh	r3, [r3, r0]
	movs	r0, #24
	adds	r4, r7, r0
	movs	r0, r7
	str	r3, [sp]
	movs	r3, r5
	bl	Rect
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 109 0 discriminator 4
	movs	r3, #32
	adds	r2, r7, r3
	movs	r3, #24
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L46
	.loc 1 110 0
	ldr	r1, [r7, #44]
	movs	r3, #24
	adds	r2, r7, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	GDI_FillRectangle
.L46:
	.loc 1 111 0
	ldr	r3, [r7, #16]
	movs	r1, #0
	ldrsh	r1, [r3, r1]
	ldr	r3, [r7, #16]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #16]
	movs	r5, #0
	ldrsh	r5, [r3, r5]
	ldr	r3, [r7, #16]
	movs	r0, #6
	ldrsh	r3, [r3, r0]
	movs	r0, #24
	adds	r4, r7, r0
	movs	r0, r7
	str	r3, [sp]
	movs	r3, r5
	bl	Rect
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 112 0
	movs	r3, #32
	adds	r2, r7, r3
	movs	r3, #24
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L47
	.loc 1 113 0
	ldr	r1, [r7, #44]
	movs	r3, #24
	adds	r2, r7, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	GDI_FillRectangle
.L47:
	.loc 1 114 0
	ldr	r3, [r7, #16]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r1, r3, #16
	asrs	r1, r1, #16
	ldr	r3, [r7, #16]
	movs	r2, #6
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #16]
	movs	r5, #4
	ldrsh	r5, [r3, r5]
	ldr	r3, [r7, #16]
	movs	r0, #6
	ldrsh	r3, [r3, r0]
	movs	r0, #24
	adds	r4, r7, r0
	movs	r0, r7
	str	r3, [sp]
	movs	r3, r5
	bl	Rect
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 115 0
	movs	r3, #32
	adds	r2, r7, r3
	movs	r3, #24
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L48
	.loc 1 116 0
	ldr	r1, [r7, #40]
	movs	r3, #24
	adds	r2, r7, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	GDI_FillRectangle
.L48:
	.loc 1 117 0
	ldr	r3, [r7, #16]
	movs	r1, #4
	ldrsh	r1, [r3, r1]
	ldr	r3, [r7, #16]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	ldr	r3, [r7, #16]
	movs	r5, #4
	ldrsh	r5, [r3, r5]
	ldr	r3, [r7, #16]
	movs	r0, #6
	ldrsh	r3, [r3, r0]
	movs	r0, #24
	adds	r4, r7, r0
	movs	r0, r7
	str	r3, [sp]
	movs	r3, r5
	bl	Rect
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 118 0
	movs	r3, #32
	adds	r2, r7, r3
	movs	r3, #24
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L37
	.loc 1 119 0
	ldr	r1, [r7, #40]
	movs	r3, #24
	adds	r2, r7, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	GDI_FillRectangle
	b	.L37
.L50:
.LBE6:
.LBE5:
	.loc 1 96 0
	nop
.L37:
	.loc 1 122 0
	mov	sp, r7
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r7, pc}
.L52:
	.align	2
.L51:
	.word	LCDScreen
	.cfi_endproc
.LFE5:
	.size	GDI_Draw3DFrame, .-GDI_Draw3DFrame
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\GUI/gditypes.h"
	.file 6 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x67a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xc
	.4byte	.LASF103
	.4byte	.LASF104
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x20
	.4byte	0x3e
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
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0xdd
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1d
	.4byte	0xc4
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x4
	.4byte	0x85
	.byte	0x5
	.byte	0x16
	.4byte	0x1da
	.uleb128 0x9
	.4byte	.LASF21
	.4byte	0xff000000
	.uleb128 0x9
	.4byte	.LASF22
	.4byte	0xff003366
	.uleb128 0x9
	.4byte	.LASF23
	.4byte	0xff000080
	.uleb128 0x9
	.4byte	.LASF24
	.4byte	0xff008000
	.uleb128 0x9
	.4byte	.LASF25
	.4byte	0xff008080
	.uleb128 0x9
	.4byte	.LASF26
	.4byte	0xff400000
	.uleb128 0x9
	.4byte	.LASF27
	.4byte	0xff404040
	.uleb128 0x9
	.4byte	.LASF28
	.4byte	0xff800000
	.uleb128 0x9
	.4byte	.LASF29
	.4byte	0xff800080
	.uleb128 0x9
	.4byte	.LASF30
	.4byte	0xff808000
	.uleb128 0x9
	.4byte	.LASF31
	.4byte	0xff808080
	.uleb128 0x9
	.4byte	.LASF32
	.4byte	0xffc0c0c0
	.uleb128 0x9
	.4byte	.LASF33
	.4byte	0xff0000ff
	.uleb128 0x9
	.4byte	.LASF34
	.4byte	0xff00c000
	.uleb128 0x9
	.4byte	.LASF35
	.4byte	0xff00ff00
	.uleb128 0x9
	.4byte	.LASF36
	.4byte	0xff00ffff
	.uleb128 0x9
	.4byte	.LASF37
	.4byte	0xffff0000
	.uleb128 0x9
	.4byte	.LASF38
	.4byte	0xffff00ff
	.uleb128 0x9
	.4byte	.LASF39
	.4byte	0xffffff00
	.uleb128 0x9
	.4byte	.LASF40
	.4byte	0xffffffff
	.uleb128 0x9
	.4byte	.LASF41
	.4byte	0xffc0dcc0
	.uleb128 0x9
	.4byte	.LASF42
	.4byte	0xfff0c8a4
	.uleb128 0x9
	.4byte	.LASF43
	.4byte	0xfff0f8fc
	.uleb128 0x9
	.4byte	.LASF44
	.4byte	0xffa4a0a0
	.uleb128 0x9
	.4byte	.LASF45
	.4byte	0xffc8d0d4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x5
	.byte	0x31
	.4byte	0xe8
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x33
	.4byte	0x226
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x5
	.byte	0x3d
	.4byte	0x1e5
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x4
	.byte	0x5
	.byte	0x41
	.4byte	0x252
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x5
	.byte	0x43
	.4byte	0x97
	.byte	0
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0x5
	.byte	0x44
	.4byte	0x97
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x5
	.byte	0x45
	.4byte	0x231
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.byte	0x49
	.4byte	0x27c
	.uleb128 0xb
	.ascii	"lt\000"
	.byte	0x5
	.byte	0x4b
	.4byte	0x252
	.byte	0
	.uleb128 0xb
	.ascii	"rb\000"
	.byte	0x5
	.byte	0x4c
	.4byte	0x252
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.byte	0x4e
	.4byte	0x2ad
	.uleb128 0xb
	.ascii	"l\000"
	.byte	0x5
	.byte	0x50
	.4byte	0x97
	.byte	0
	.uleb128 0xb
	.ascii	"t\000"
	.byte	0x5
	.byte	0x51
	.4byte	0x97
	.byte	0x2
	.uleb128 0xb
	.ascii	"r\000"
	.byte	0x5
	.byte	0x52
	.4byte	0x97
	.byte	0x4
	.uleb128 0xb
	.ascii	"b\000"
	.byte	0x5
	.byte	0x53
	.4byte	0x97
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF105
	.byte	0x8
	.byte	0x5
	.byte	0x47
	.4byte	0x2c4
	.uleb128 0xe
	.4byte	0x25d
	.uleb128 0xe
	.4byte	0x27c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x5
	.byte	0x55
	.4byte	0x2ad
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x5
	.byte	0x55
	.4byte	0x2da
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2ad
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0xf1
	.4byte	0x30f
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x6
	.byte	0xf8
	.4byte	0x2e0
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x1c
	.byte	0x6
	.2byte	0x119
	.4byte	0x390
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x11b
	.4byte	0xdd
	.byte	0
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x11c
	.4byte	0xdd
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x11d
	.4byte	0x2c4
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x11e
	.4byte	0x252
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x11f
	.4byte	0xa2
	.byte	0x10
	.uleb128 0x12
	.ascii	"BPP\000"
	.byte	0x6
	.2byte	0x120
	.4byte	0x8c
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x121
	.4byte	0x226
	.byte	0x15
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x122
	.4byte	0xbb
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x123
	.4byte	0x31a
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x123
	.4byte	0x3a8
	.uleb128 0xf
	.byte	0x4
	.4byte	0x31a
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x88
	.byte	0x6
	.2byte	0x125
	.4byte	0x40a
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x127
	.4byte	0x2c4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x128
	.4byte	0x252
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x129
	.4byte	0xa2
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x12a
	.4byte	0xa2
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x12b
	.4byte	0xdd
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x12c
	.4byte	0x40a
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.4byte	0x390
	.4byte	0x41a
	.uleb128 0x15
	.4byte	0xb4
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x12d
	.4byte	0x3ae
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x1
	.byte	0x19
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x473
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x19
	.4byte	0x30f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x18
	.ascii	"Rct\000"
	.byte	0x1
	.byte	0x19
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x1
	.byte	0x19
	.4byte	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.ascii	"lc\000"
	.byte	0x1
	.byte	0x1b
	.4byte	0x39c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0x23
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e4
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x23
	.4byte	0x30f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x18
	.ascii	"P0\000"
	.byte	0x1
	.byte	0x23
	.4byte	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.ascii	"P1\000"
	.byte	0x1
	.byte	0x23
	.4byte	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x1
	.byte	0x23
	.4byte	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x19
	.ascii	"Rct\000"
	.byte	0x1
	.byte	0x29
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"lc\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0x39c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.byte	0x34
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53d
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x34
	.4byte	0x30f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x18
	.ascii	"P\000"
	.byte	0x1
	.byte	0x34
	.4byte	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x1
	.byte	0x34
	.4byte	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.ascii	"Rct\000"
	.byte	0x1
	.byte	0x36
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"lc\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x39c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x1
	.byte	0x41
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5bb
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x41
	.4byte	0x30f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x1
	.byte	0x41
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x1
	.byte	0x41
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x1
	.byte	0x41
	.4byte	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1b
	.4byte	.LASF94
	.byte	0x1
	.byte	0x46
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1b
	.4byte	.LASF95
	.byte	0x1
	.byte	0x4b
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x1
	.byte	0x5d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x671
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x5d
	.4byte	0x30f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x1
	.byte	0x5d
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x1
	.byte	0x5d
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x1
	.byte	0x5d
	.4byte	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x1
	.byte	0x5e
	.4byte	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x1
	.byte	0x5e
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1b
	.4byte	.LASF94
	.byte	0x1
	.byte	0x63
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1b
	.4byte	.LASF95
	.byte	0x1
	.byte	0x68
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0x1
	.byte	0x69
	.4byte	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF101
	.byte	0x1
	.byte	0x6a
	.4byte	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x137
	.4byte	0x41a
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
.LASF98:
	.ascii	"ShadowColor\000"
.LASF93:
	.ascii	"Clip\000"
.LASF69:
	.ascii	"tag_TLCONTEXT\000"
.LASF100:
	.ascii	"LTColor\000"
.LASF22:
	.ascii	"clBrown\000"
.LASF51:
	.ascii	"CF_YUYV422\000"
.LASF71:
	.ascii	"Initialized\000"
.LASF54:
	.ascii	"CF_PARGB8888\000"
.LASF50:
	.ascii	"CF_RGB565\000"
.LASF35:
	.ascii	"clLime\000"
.LASF41:
	.ascii	"clMoneyGreen\000"
.LASF29:
	.ascii	"clPurple\000"
.LASF4:
	.ascii	"short int\000"
.LASF61:
	.ascii	"tag_VLINDEX\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF74:
	.ascii	"LayerEnMask\000"
.LASF45:
	.ascii	"clBtnFace\000"
.LASF24:
	.ascii	"clGreen\000"
.LASF57:
	.ascii	"TCFORMAT\000"
.LASF81:
	.ascii	"ScreenOffset\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF106:
	.ascii	"LCDScreen\000"
.LASF20:
	.ascii	"boolean\000"
.LASF90:
	.ascii	"GDI_SetPixel\000"
.LASF36:
	.ascii	"clYellow\000"
.LASF34:
	.ascii	"clMidGreen\000"
.LASF38:
	.ascii	"clFuchsia\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF67:
	.ascii	"TVLINDEX\000"
.LASF79:
	.ascii	"tag_TSCREEN\000"
.LASF52:
	.ascii	"CF_RGB888\000"
.LASF37:
	.ascii	"clBlue\000"
.LASF94:
	.ascii	"tmpClient\000"
.LASF42:
	.ascii	"clSkyBlue\000"
.LASF43:
	.ascii	"clCream\000"
.LASF82:
	.ascii	"ScreenCount\000"
.LASF55:
	.ascii	"CF_xRGB8888\000"
.LASF15:
	.ascii	"long double\000"
.LASF66:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF9:
	.ascii	"long long int\000"
.LASF47:
	.ascii	"tag_COLOR\000"
.LASF58:
	.ascii	"TPOINT\000"
.LASF48:
	.ascii	"tag_CFORMAT\000"
.LASF26:
	.ascii	"clDarkBlue\000"
.LASF6:
	.ascii	"long int\000"
.LASF95:
	.ascii	"DrwRect\000"
.LASF96:
	.ascii	"GDI_Draw3DFrame\000"
.LASF53:
	.ascii	"CF_ARGB8888\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF39:
	.ascii	"clAqua\000"
.LASF99:
	.ascii	"Pressed\000"
.LASF25:
	.ascii	"clOlive\000"
.LASF73:
	.ascii	"LayerOffset\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF70:
	.ascii	"Enabled\000"
.LASF97:
	.ascii	"LightColor\000"
.LASF89:
	.ascii	"GDI_DrawLine\000"
.LASF56:
	.ascii	"CF_NUM\000"
.LASF44:
	.ascii	"clMedGray\000"
.LASF85:
	.ascii	"TSCREEN\000"
.LASF0:
	.ascii	"signed char\000"
.LASF78:
	.ascii	"pLCONTEXT\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF76:
	.ascii	"FrameBuffer\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF18:
	.ascii	"false\000"
.LASF92:
	.ascii	"Client\000"
.LASF68:
	.ascii	"tag_POINT\000"
.LASF31:
	.ascii	"clGray\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF33:
	.ascii	"clRed\000"
.LASF23:
	.ascii	"clMaroon\000"
.LASF17:
	.ascii	"char\000"
.LASF80:
	.ascii	"ScreenRgn\000"
.LASF40:
	.ascii	"clWhite\000"
.LASF13:
	.ascii	"int16_t\000"
.LASF19:
	.ascii	"true\000"
.LASF27:
	.ascii	"clDarkGray\000"
.LASF83:
	.ascii	"ScreenIndex\000"
.LASF104:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF21:
	.ascii	"clBlack\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF105:
	.ascii	"tag_RECT\000"
.LASF49:
	.ascii	"CF_8IDX\000"
.LASF88:
	.ascii	"GDI_FillRectangle\000"
.LASF32:
	.ascii	"clSilver\000"
.LASF60:
	.ascii	"pRECT\000"
.LASF77:
	.ascii	"TLCONTEXT\000"
.LASF46:
	.ascii	"TCOLOR\000"
.LASF103:
	.ascii	"Source\\GUI\\gdi.c\000"
.LASF91:
	.ascii	"GDI_DrawFrame\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF30:
	.ascii	"clTeal\000"
.LASF75:
	.ascii	"ColorFormat\000"
.LASF87:
	.ascii	"Color\000"
.LASF63:
	.ascii	"LCDIF_LAYER1\000"
.LASF64:
	.ascii	"LCDIF_LAYER2\000"
.LASF101:
	.ascii	"RBColor\000"
.LASF86:
	.ascii	"Layer\000"
.LASF84:
	.ascii	"VLayer\000"
.LASF65:
	.ascii	"LCDIF_LAYER3\000"
.LASF102:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF62:
	.ascii	"LCDIF_LAYER0\000"
.LASF59:
	.ascii	"TRECT\000"
.LASF28:
	.ascii	"clNavy\000"
.LASF72:
	.ascii	"LayerRgn\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
