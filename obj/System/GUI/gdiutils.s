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
	.file	"gdiutils.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.GDI_MergeRectsInRegion,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GDI_MergeRectsInRegion, %function
GDI_MergeRectsInRegion:
.LFB1:
	.file 1 "Source\\GUI\\gdiutils.c"
	.loc 1 25 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 29 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.LCB15
	b	.L13	@long jump
.LCB15:
	.loc 1 29 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	DL_GetItemsCount
	movs	r3, r0
	cmp	r3, #1
	bhi	.LCB21
	b	.L13	@long jump
.LCB21:
	.loc 1 31 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	DL_GetFirstItem
	movs	r3, r0
	str	r3, [r7, #36]
	.loc 1 32 0
	ldr	r3, [r7, #36]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #32]
	.loc 1 34 0
	b	.L5
.L12:
	.loc 1 36 0
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	adds	r3, r3, #12
	str	r3, [r7, #28]
	.loc 1 37 0
	b	.L6
.L11:
	.loc 1 39 0
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #8]
	adds	r3, r3, #12
	str	r3, [r7, #24]
	.loc 1 41 0
	ldr	r3, [r7, #28]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #24]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	bne	.L7
	.loc 1 41 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #28]
	movs	r2, #6
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #24]
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	bne	.L7
	.loc 1 42 0 is_stmt 1 discriminator 2
	ldr	r3, [r7, #28]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #24]
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	.loc 1 41 0 discriminator 2
	cmp	r3, #1
	beq	.L8
	.loc 1 42 0
	ldr	r3, [r7, #24]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #28]
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	cmp	r3, #1
	bne	.L7
.L8:
.LBB2:
	.loc 1 44 0
	ldr	r3, [r7, #32]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #20]
.LBB3:
	.loc 1 46 0
	movs	r3, #18
	adds	r3, r7, r3
	ldr	r2, [r7, #28]
	ldrh	r2, [r2]
	strh	r2, [r3]
	movs	r3, #16
	adds	r3, r7, r3
	ldr	r2, [r7, #24]
	ldrh	r2, [r2]
	strh	r2, [r3]
	movs	r3, #16
	adds	r3, r7, r3
	movs	r2, #18
	adds	r2, r7, r2
	ldrh	r0, [r2]
	ldrh	r1, [r3]
	lsls	r2, r1, #16
	asrs	r2, r2, #16
	lsls	r3, r0, #16
	asrs	r3, r3, #16
	cmp	r2, r3
	ble	.L9
	adds	r1, r0, #0
.L9:
	lsls	r3, r1, #16
	asrs	r3, r3, #16
.LBE3:
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7, #28]
	strh	r3, [r2]
.LBB4:
	.loc 1 47 0
	movs	r3, #14
	adds	r3, r7, r3
	ldr	r2, [r7, #28]
	ldrh	r2, [r2, #4]
	strh	r2, [r3]
	movs	r3, #12
	adds	r3, r7, r3
	ldr	r2, [r7, #24]
	ldrh	r2, [r2, #4]
	strh	r2, [r3]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #14
	adds	r2, r7, r2
	ldrh	r0, [r2]
	ldrh	r1, [r3]
	lsls	r2, r1, #16
	asrs	r2, r2, #16
	lsls	r3, r0, #16
	asrs	r3, r3, #16
	cmp	r2, r3
	bge	.L10
	adds	r1, r0, #0
.L10:
	lsls	r3, r1, #16
	asrs	r3, r3, #16
.LBE4:
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7, #28]
	strh	r3, [r2, #4]
	.loc 1 49 0
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_DeleteItem
	.loc 1 50 0
	ldr	r3, [r7, #20]
	str	r3, [r7, #32]
	.loc 1 51 0
	b	.L6
.L7:
.LBE2:
	.loc 1 53 0
	ldr	r3, [r7, #32]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #32]
.L6:
	.loc 1 37 0
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.LCB170
	b	.L11	@long jump
.LCB170:
	.loc 1 55 0
	ldr	r3, [r7, #36]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #36]
	.loc 1 56 0
	ldr	r3, [r7, #36]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #32]
.L5:
	.loc 1 34 0
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L1
	.loc 1 34 0 discriminator 1
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.LCB188
	b	.L12	@long jump
.LCB188:
	b	.L1
.L13:
	.loc 1 29 0
	nop
.L1:
	.loc 1 58 0
	mov	sp, r7
	add	sp, sp, #40
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	GDI_MergeRectsInRegion, .-GDI_MergeRectsInRegion
	.section	.text.Point,"ax",%progbits
	.align	2
	.global	Point
	.code	16
	.thumb_func
	.type	Point, %function
Point:
.LFB2:
	.loc 1 61 0
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
	adds	r3, r7, #4
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 62 0
	movs	r3, #8
	adds	r3, r7, r3
	adds	r2, r7, #6
	ldrh	r2, [r2]
	strh	r2, [r3]
	movs	r3, #8
	adds	r3, r7, r3
	adds	r2, r7, #4
	ldrh	r2, [r2]
	strh	r2, [r3, #2]
	.loc 1 64 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #8
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	movs	r3, #12
	adds	r2, r7, r3
	movs	r3, #0
	ldrh	r1, [r2]
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	orrs	r3, r1
	ldrh	r2, [r2, #2]
	lsls	r2, r2, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	orrs	r3, r2
	.loc 1 65 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	Point, .-Point
	.section	.text.Rect,"ax",%progbits
	.align	2
	.global	Rect
	.code	16
	.thumb_func
	.type	Rect, %function
Rect:
.LFB3:
	.loc 1 68 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
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
	str	r0, [r7, #12]
	movs	r4, r1
	movs	r0, r2
	movs	r1, r3
	movs	r3, #10
	adds	r3, r7, r3
	adds	r2, r4, #0
	strh	r2, [r3]
	movs	r3, #8
	adds	r3, r7, r3
	adds	r2, r0, #0
	strh	r2, [r3]
	adds	r3, r7, #6
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 69 0
	movs	r3, #16
	adds	r3, r7, r3
	movs	r2, #10
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3]
	movs	r3, #16
	adds	r3, r7, r3
	movs	r2, #8
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #2]
	movs	r3, #16
	adds	r3, r7, r3
	adds	r2, r7, #6
	ldrh	r2, [r2]
	strh	r2, [r3, #4]
	movs	r3, #16
	adds	r3, r7, r3
	movs	r2, #40
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #6]
	.loc 1 71 0
	ldr	r2, [r7, #12]
	movs	r3, #16
	adds	r3, r7, r3
	movs	r0, r2
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 72 0
	ldr	r0, [r7, #12]
	mov	sp, r7
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE3:
	.size	Rect, .-Rect
	.section	.text.SizeXY,"ax",%progbits
	.align	2
	.global	SizeXY
	.code	16
	.thumb_func
	.type	SizeXY, %function
SizeXY:
.LFB4:
	.loc 1 75 0
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
	adds	r3, r7, #4
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 78 0
	movs	r3, #8
	adds	r3, r7, r3
	adds	r2, r7, #6
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 79 0
	movs	r3, #8
	adds	r3, r7, r3
	adds	r2, r7, #4
	ldrh	r2, [r2]
	strh	r2, [r3, #2]
	.loc 1 81 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #8
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	movs	r3, #12
	adds	r2, r7, r3
	movs	r3, #0
	ldrh	r1, [r2]
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	orrs	r3, r1
	ldrh	r2, [r2, #2]
	lsls	r2, r2, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	orrs	r3, r2
	.loc 1 82 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	SizeXY, .-SizeXY
	.section	.text.IsRectsOverlaps,"ax",%progbits
	.align	2
	.global	IsRectsOverlaps
	.code	16
	.thumb_func
	.type	IsRectsOverlaps, %function
IsRectsOverlaps:
.LFB5:
	.loc 1 85 0
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
	str	r1, [r7]
	.loc 1 86 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L21
	.loc 1 86 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L21
	.loc 1 88 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #4]
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	bgt	.L22
	.loc 1 88 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #4]
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L23
.L22:
	.loc 1 88 0 discriminator 3
	movs	r3, #0
	b	.L24
.L23:
	.loc 1 89 0 is_stmt 1
	ldr	r3, [r7]
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7]
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	bgt	.L25
	.loc 1 89 0 is_stmt 0 discriminator 2
	ldr	r3, [r7]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7]
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L26
.L25:
	.loc 1 89 0 discriminator 3
	movs	r3, #0
	b	.L24
.L26:
	.loc 1 90 0 is_stmt 1
	ldr	r3, [r7, #4]
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7]
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	bgt	.L27
	.loc 1 90 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #4]
	movs	r2, #4
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	bge	.L28
.L27:
	.loc 1 90 0 discriminator 3
	movs	r3, #0
	b	.L24
.L28:
	.loc 1 91 0 is_stmt 1
	ldr	r3, [r7, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7]
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	bgt	.L29
	.loc 1 91 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #4]
	movs	r2, #6
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	bge	.L30
.L29:
	.loc 1 91 0 discriminator 3
	movs	r3, #0
	b	.L24
.L30:
	.loc 1 92 0 is_stmt 1
	movs	r3, #1
	b	.L24
.L21:
	.loc 1 94 0
	movs	r3, #0
.L24:
	.loc 1 95 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE5:
	.size	IsRectsOverlaps, .-IsRectsOverlaps
	.section	.text.IsPointInRect,"ax",%progbits
	.align	2
	.global	IsPointInRect
	.code	16
	.thumb_func
	.type	IsPointInRect, %function
IsPointInRect:
.LFB6:
	.loc 1 98 0
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
	str	r1, [r7]
	.loc 1 101 0
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L32
	.loc 1 99 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L32
	.loc 1 100 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	.loc 1 99 0 discriminator 1
	cmp	r2, r3
	blt	.L32
	.loc 1 100 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7]
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	bgt	.L32
	.loc 1 101 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	.loc 1 100 0 discriminator 1
	cmp	r2, r3
	blt	.L32
	.loc 1 101 0 discriminator 3
	ldr	r3, [r7, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7]
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	bgt	.L32
	.loc 1 101 0 is_stmt 0 discriminator 2
	movs	r3, #1
	b	.L33
.L32:
	.loc 1 101 0 discriminator 1
	movs	r3, #0
.L33:
	.loc 1 99 0 is_stmt 1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 102 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE6:
	.size	IsPointInRect, .-IsPointInRect
	.section	.text.IsRectInRect,"ax",%progbits
	.align	2
	.global	IsRectInRect
	.code	16
	.thumb_func
	.type	IsRectInRect, %function
IsRectInRect:
.LFB7:
	.loc 1 106 0
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
	str	r1, [r7]
	.loc 1 107 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L36
	.loc 1 107 0 discriminator 2
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L37
.L36:
	.loc 1 107 0 discriminator 3
	movs	r3, #0
	b	.L38
.L37:
	.loc 1 108 0
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	IsRectsOverlaps
	subs	r3, r0, #0
	bne	.L39
	.loc 1 108 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L38
.L39:
	.loc 1 110 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	movs	r1, r2
	movs	r0, r3
	bl	IsPointInRect
	subs	r3, r0, #0
	beq	.L40
	.loc 1 110 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r2, [r7]
	movs	r1, r2
	movs	r0, r3
	bl	IsPointInRect
	subs	r3, r0, #0
	beq	.L40
	.loc 1 112 0 is_stmt 1
	ldr	r1, [r7]
	ldr	r3, [r7, #4]
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
	.loc 1 113 0
	movs	r3, #1
	b	.L38
.L40:
	.loc 1 115 0
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	IsPointInRect
	subs	r3, r0, #0
	beq	.L41
	.loc 1 115 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r2, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	IsPointInRect
	subs	r3, r0, #0
	beq	.L41
	.loc 1 117 0 is_stmt 1
	movs	r3, #1
	b	.L38
.L41:
	.loc 1 119 0
	movs	r3, #0
.L38:
	.loc 1 120 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	IsRectInRect, .-IsRectInRect
	.section	.text.IsRectCollapsed,"ax",%progbits
	.align	2
	.global	IsRectCollapsed
	.code	16
	.thumb_func
	.type	IsRectCollapsed, %function
IsRectCollapsed:
.LFB8:
	.loc 1 123 0
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
	.loc 1 125 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L43
	.loc 1 125 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #4]
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #4]
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	.loc 1 124 0 is_stmt 1 discriminator 2
	cmp	r2, r3
	bgt	.L43
	.loc 1 125 0 discriminator 3
	ldr	r3, [r7, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	ldr	r3, [r7, #4]
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L44
.L43:
	.loc 1 125 0 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L45
.L44:
	.loc 1 125 0 discriminator 4
	movs	r3, #0
.L45:
	.loc 1 124 0 is_stmt 1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 126 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE8:
	.size	IsRectCollapsed, .-IsRectCollapsed
	.section	.text.GDI_CreateRList,"ax",%progbits
	.align	2
	.global	GDI_CreateRList
	.code	16
	.thumb_func
	.type	GDI_CreateRList, %function
GDI_CreateRList:
.LFB9:
	.loc 1 129 0
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
	.loc 1 130 0
	movs	r0, #36
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #4]
	.loc 1 132 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L48
	.loc 1 133 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
.L48:
	.loc 1 135 0
	ldr	r3, [r7, #4]
	.loc 1 136 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE9:
	.size	GDI_CreateRList, .-GDI_CreateRList
	.section	.text.GDI_DeleteRList,"ax",%progbits
	.align	2
	.global	GDI_DeleteRList
	.code	16
	.thumb_func
	.type	GDI_DeleteRList, %function
GDI_DeleteRList:
.LFB10:
	.loc 1 139 0
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
	.loc 1 140 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	free
	.loc 1 142 0
	movs	r3, #0
	.loc 1 143 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE10:
	.size	GDI_DeleteRList, .-GDI_DeleteRList
	.section	.text.GDI_LocalToGlobalPt,"ax",%progbits
	.align	2
	.global	GDI_LocalToGlobalPt
	.code	16
	.thumb_func
	.type	GDI_LocalToGlobalPt, %function
GDI_LocalToGlobalPt:
.LFB11:
	.loc 1 146 0
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
	.loc 1 147 0
	movs	r3, #8
	adds	r3, r7, r3
	movs	r2, #0
	str	r2, [r3]
	.loc 1 149 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L53
	.loc 1 151 0
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L54
	.loc 1 153 0
	ldr	r3, [r7]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #4]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #8
	adds	r2, r7, r2
	strh	r3, [r2]
	.loc 1 154 0
	ldr	r3, [r7]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #4]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #8
	adds	r2, r7, r2
	strh	r3, [r2, #2]
	b	.L53
.L54:
	.loc 1 158 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #8
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 159 0
	ldr	r3, [r7, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #8
	adds	r3, r7, r3
	strh	r2, [r3, #2]
.L53:
	.loc 1 162 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #8
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	movs	r3, #12
	adds	r2, r7, r3
	movs	r3, #0
	ldrh	r1, [r2]
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	orrs	r3, r1
	ldrh	r2, [r2, #2]
	lsls	r2, r2, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	orrs	r3, r2
	.loc 1 163 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE11:
	.size	GDI_LocalToGlobalPt, .-GDI_LocalToGlobalPt
	.section	.text.GDI_GlobalToLocalPt,"ax",%progbits
	.align	2
	.global	GDI_GlobalToLocalPt
	.code	16
	.thumb_func
	.type	GDI_GlobalToLocalPt, %function
GDI_GlobalToLocalPt:
.LFB12:
	.loc 1 166 0
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
	.loc 1 167 0
	movs	r3, #8
	adds	r3, r7, r3
	movs	r2, #0
	str	r2, [r3]
	.loc 1 169 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L57
	.loc 1 171 0
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L58
	.loc 1 173 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #8
	adds	r2, r7, r2
	strh	r3, [r2]
	.loc 1 174 0
	ldr	r3, [r7, #4]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #8
	adds	r2, r7, r2
	strh	r3, [r2, #2]
	b	.L57
.L58:
	.loc 1 178 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #8
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 179 0
	ldr	r3, [r7, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #8
	adds	r3, r7, r3
	strh	r2, [r3, #2]
.L57:
	.loc 1 182 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #8
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	movs	r3, #12
	adds	r2, r7, r3
	movs	r3, #0
	ldrh	r1, [r2]
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	orrs	r3, r1
	ldrh	r2, [r2, #2]
	lsls	r2, r2, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	orrs	r3, r2
	.loc 1 183 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE12:
	.size	GDI_GlobalToLocalPt, .-GDI_GlobalToLocalPt
	.section	.text.GDI_LocalToGlobalRct,"ax",%progbits
	.align	2
	.global	GDI_LocalToGlobalRct
	.code	16
	.thumb_func
	.type	GDI_LocalToGlobalRct, %function
GDI_LocalToGlobalRct:
.LFB13:
	.loc 1 186 0
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
	.loc 1 187 0
	movs	r3, #16
	adds	r3, r7, r3
	movs	r0, r3
	movs	r3, #8
	movs	r2, r3
	movs	r1, #0
	bl	memset
	.loc 1 189 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L61
	.loc 1 191 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L62
	.loc 1 193 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #8]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #16
	adds	r2, r7, r2
	strh	r3, [r2]
	.loc 1 194 0
	ldr	r3, [r7, #4]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #8]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #16
	adds	r2, r7, r2
	strh	r3, [r2, #2]
	.loc 1 195 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #8]
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #16
	adds	r2, r7, r2
	strh	r3, [r2, #4]
	.loc 1 196 0
	ldr	r3, [r7, #4]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #8]
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #16
	adds	r2, r7, r2
	strh	r3, [r2, #6]
	b	.L61
.L62:
	.loc 1 200 0
	ldr	r3, [r7, #8]
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #16
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 201 0
	ldr	r3, [r7, #8]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #16
	adds	r3, r7, r3
	strh	r2, [r3, #2]
	.loc 1 202 0
	ldr	r3, [r7, #8]
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #16
	adds	r3, r7, r3
	strh	r2, [r3, #4]
	.loc 1 203 0
	ldr	r3, [r7, #8]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #16
	adds	r3, r7, r3
	strh	r2, [r3, #6]
.L61:
	.loc 1 206 0
	ldr	r2, [r7, #12]
	movs	r3, #16
	adds	r3, r7, r3
	movs	r0, r2
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 207 0
	ldr	r0, [r7, #12]
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE13:
	.size	GDI_LocalToGlobalRct, .-GDI_LocalToGlobalRct
	.section	.text.GDI_GlobalToLocalRct,"ax",%progbits
	.align	2
	.global	GDI_GlobalToLocalRct
	.code	16
	.thumb_func
	.type	GDI_GlobalToLocalRct, %function
GDI_GlobalToLocalRct:
.LFB14:
	.loc 1 210 0
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
	.loc 1 211 0
	movs	r3, #16
	adds	r3, r7, r3
	movs	r0, r3
	movs	r3, #8
	movs	r2, r3
	movs	r1, #0
	bl	memset
	.loc 1 213 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L65
	.loc 1 215 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L66
	.loc 1 217 0
	ldr	r3, [r7, #8]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #4]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #16
	adds	r2, r7, r2
	strh	r3, [r2]
	.loc 1 218 0
	ldr	r3, [r7, #8]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #4]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #16
	adds	r2, r7, r2
	strh	r3, [r2, #2]
	.loc 1 219 0
	ldr	r3, [r7, #8]
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #4]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #16
	adds	r2, r7, r2
	strh	r3, [r2, #4]
	.loc 1 220 0
	ldr	r3, [r7, #8]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #4]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #16
	adds	r2, r7, r2
	strh	r3, [r2, #6]
	b	.L65
.L66:
	.loc 1 224 0
	ldr	r3, [r7, #8]
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #16
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 225 0
	ldr	r3, [r7, #8]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #16
	adds	r3, r7, r3
	strh	r2, [r3, #2]
	.loc 1 226 0
	ldr	r3, [r7, #8]
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #16
	adds	r3, r7, r3
	strh	r2, [r3, #4]
	.loc 1 227 0
	ldr	r3, [r7, #8]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #16
	adds	r3, r7, r3
	strh	r2, [r3, #6]
.L65:
	.loc 1 230 0
	ldr	r2, [r7, #12]
	movs	r3, #16
	adds	r3, r7, r3
	movs	r0, r2
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 231 0
	ldr	r0, [r7, #12]
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE14:
	.size	GDI_GlobalToLocalRct, .-GDI_GlobalToLocalRct
	.section	.text.GDI_ScreenToLayerPt,"ax",%progbits
	.align	2
	.global	GDI_ScreenToLayerPt
	.code	16
	.thumb_func
	.type	GDI_ScreenToLayerPt, %function
GDI_ScreenToLayerPt:
.LFB15:
	.loc 1 234 0
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
	str	r1, [r7]
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 237 0
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L69
	.loc 1 237 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #3
	bhi	.L69
	.loc 1 237 0 is_stmt 0 discriminator 2
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r3, .L73
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	bne	.L70
.L69:
	.loc 1 238 0 is_stmt 1
	movs	r3, #8
	adds	r3, r7, r3
	movs	r2, #0
	strh	r2, [r3, #2]
	movs	r3, #8
	adds	r3, r7, r3
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #8
	adds	r3, r7, r3
	strh	r2, [r3]
	b	.L71
.L70:
	.loc 1 241 0
	ldr	r3, [r7]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, .L73+4
	movs	r1, #8
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r1, r3, #16
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L73+4
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r0, r3
	adds	r3, r3, #34
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r1, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #8
	adds	r2, r7, r2
	strh	r3, [r2]
	.loc 1 242 0
	ldr	r3, [r7]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, .L73+4
	movs	r1, #10
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r1, r3, #16
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L73+4
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r0, r3
	adds	r3, r3, #36
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r1, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #8
	adds	r2, r7, r2
	strh	r3, [r2, #2]
.L71:
	.loc 1 244 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #8
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	movs	r3, #12
	adds	r2, r7, r3
	movs	r3, #0
	ldrh	r1, [r2]
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	orrs	r3, r1
	ldrh	r2, [r2, #2]
	lsls	r2, r2, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	orrs	r3, r2
	.loc 1 245 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L74:
	.align	2
.L73:
	.word	GUILayer
	.word	LCDScreen
	.cfi_endproc
.LFE15:
	.size	GDI_ScreenToLayerPt, .-GDI_ScreenToLayerPt
	.section	.text.GDI_ANDRectangles,"ax",%progbits
	.align	2
	.global	GDI_ANDRectangles
	.code	16
	.thumb_func
	.type	GDI_ANDRectangles, %function
GDI_ANDRectangles:
.LFB16:
	.loc 1 249 0
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
	str	r1, [r7]
	.loc 1 250 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.LCB1437
	b	.L76	@long jump
.LCB1437:
	.loc 1 250 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.LCB1440
	b	.L76	@long jump
.LCB1440:
	.loc 1 252 0
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	IsRectsOverlaps
	subs	r3, r0, #0
	bne	.LCB1448
	b	.L76	@long jump
.LCB1448:
.LBB5:
	.loc 1 254 0
	movs	r3, #22
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	ldrh	r2, [r2]
	strh	r2, [r3]
	movs	r3, #20
	adds	r3, r7, r3
	ldr	r2, [r7]
	ldrh	r2, [r2]
	strh	r2, [r3]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #22
	adds	r2, r7, r2
	ldrh	r0, [r2]
	ldrh	r1, [r3]
	lsls	r2, r1, #16
	asrs	r2, r2, #16
	lsls	r3, r0, #16
	asrs	r3, r3, #16
	cmp	r2, r3
	bge	.L77
	adds	r1, r0, #0
.L77:
	lsls	r3, r1, #16
	asrs	r3, r3, #16
.LBE5:
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7, #4]
	strh	r3, [r2]
.LBB6:
	.loc 1 255 0
	movs	r3, #18
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #4]
	strh	r2, [r3]
	movs	r3, #16
	adds	r3, r7, r3
	ldr	r2, [r7]
	ldrh	r2, [r2, #4]
	strh	r2, [r3]
	movs	r3, #16
	adds	r3, r7, r3
	movs	r2, #18
	adds	r2, r7, r2
	ldrh	r0, [r2]
	ldrh	r1, [r3]
	lsls	r2, r1, #16
	asrs	r2, r2, #16
	lsls	r3, r0, #16
	asrs	r3, r3, #16
	cmp	r2, r3
	ble	.L78
	adds	r1, r0, #0
.L78:
	lsls	r3, r1, #16
	asrs	r3, r3, #16
.LBE6:
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7, #4]
	strh	r3, [r2, #4]
.LBB7:
	.loc 1 256 0
	movs	r3, #14
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #2]
	strh	r2, [r3]
	movs	r3, #12
	adds	r3, r7, r3
	ldr	r2, [r7]
	ldrh	r2, [r2, #2]
	strh	r2, [r3]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #14
	adds	r2, r7, r2
	ldrh	r0, [r2]
	ldrh	r1, [r3]
	lsls	r2, r1, #16
	asrs	r2, r2, #16
	lsls	r3, r0, #16
	asrs	r3, r3, #16
	cmp	r2, r3
	bge	.L79
	adds	r1, r0, #0
.L79:
	lsls	r3, r1, #16
	asrs	r3, r3, #16
.LBE7:
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7, #4]
	strh	r3, [r2, #2]
.LBB8:
	.loc 1 257 0
	movs	r3, #10
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #6]
	strh	r2, [r3]
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r2, [r7]
	ldrh	r2, [r2, #6]
	strh	r2, [r3]
	movs	r3, #8
	adds	r3, r7, r3
	movs	r2, #10
	adds	r2, r7, r2
	ldrh	r0, [r2]
	ldrh	r1, [r3]
	lsls	r2, r1, #16
	asrs	r2, r2, #16
	lsls	r3, r0, #16
	asrs	r3, r3, #16
	cmp	r2, r3
	ble	.L80
	adds	r1, r0, #0
.L80:
	lsls	r3, r1, #16
	asrs	r3, r3, #16
.LBE8:
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7, #4]
	strh	r3, [r2, #6]
	.loc 1 258 0
	movs	r3, #1
	b	.L81
.L76:
	.loc 1 261 0
	movs	r3, #0
.L81:
	.loc 1 262 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE16:
	.size	GDI_ANDRectangles, .-GDI_ANDRectangles
	.section	.text.GDI_ADDRectangles,"ax",%progbits
	.align	2
	.global	GDI_ADDRectangles
	.code	16
	.thumb_func
	.type	GDI_ADDRectangles, %function
GDI_ADDRectangles:
.LFB17:
	.loc 1 266 0
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
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 267 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 270 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L83
	.loc 1 270 0 discriminator 2
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L84
.L83:
	.loc 1 270 0 discriminator 3
	movs	r3, #0
	b	.L85
.L84:
	.loc 1 271 0
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	IsRectsOverlaps
	subs	r3, r0, #0
	bne	.L86
	.loc 1 273 0
	bl	DL_Create
	movs	r3, r0
	str	r3, [r7, #28]
	.loc 1 274 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.LCB1641
	b	.L90	@long jump
.LCB1641:
	.loc 1 276 0
	movs	r0, #20
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 277 0
	movs	r0, #20
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 278 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L88
	.loc 1 278 0 discriminator 1
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L89
.L88:
	.loc 1 280 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	free
	.loc 1 281 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	free
	.loc 1 282 0
	ldr	r3, [r7, #28]
	movs	r0, r3
	bl	free
	.loc 1 283 0
	movs	r3, #0
	b	.L85
.L89:
	.loc 1 285 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	adds	r3, r3, #12
	movs	r1, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
	.loc 1 286 0
	ldr	r3, [r7, #16]
	ldr	r2, [r7]
	adds	r3, r3, #12
	movs	r1, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
	.loc 1 287 0
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	.loc 1 288 0
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #28]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	b	.L90
.L86:
	.loc 1 293 0
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	IsRectInRect
	subs	r3, r0, #0
	beq	.L91
	.loc 1 295 0
	movs	r0, #20
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 296 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L90
	.loc 1 298 0
	bl	DL_Create
	movs	r3, r0
	str	r3, [r7, #28]
	.loc 1 299 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	adds	r3, r3, #12
	movs	r1, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
	.loc 1 300 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L92
	.loc 1 300 0 discriminator 1
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	b	.L90
.L92:
	.loc 1 303 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	free
	.loc 1 304 0
	movs	r3, #0
	b	.L85
.L91:
.LBB9:
	.loc 1 310 0
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	GDI_SUBRectangles
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 312 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L90
	.loc 1 314 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L93
	.loc 1 314 0 is_stmt 0 discriminator 1
	bl	DL_Create
	movs	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L93
.LBB10:
	.loc 1 319 0 is_stmt 1
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L94
.L96:
	.loc 1 321 0
	movs	r0, #20
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 322 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L95
	.loc 1 324 0
	ldr	r3, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #24]
	lsls	r2, r2, #3
	movs	r0, #4
	adds	r2, r1, r2
	adds	r2, r2, r0
	adds	r3, r3, #12
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	.loc 1 325 0
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #28]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
.L95:
	.loc 1 319 0 discriminator 2
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L94:
	.loc 1 319 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L96
	.loc 1 328 0 is_stmt 1
	movs	r0, #20
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 329 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L93
	.loc 1 331 0
	ldr	r3, [r7, #16]
	ldr	r2, [r7]
	adds	r3, r3, #12
	movs	r1, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
	.loc 1 332 0
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #28]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
.L93:
.LBE10:
	.loc 1 335 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	free
.L90:
.LBE9:
	.loc 1 339 0
	ldr	r3, [r7, #28]
.L85:
	.loc 1 340 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE17:
	.size	GDI_ADDRectangles, .-GDI_ADDRectangles
	.section	.text.GDI_SUBRectangles,"ax",%progbits
	.align	2
	.global	GDI_SUBRectangles
	.code	16
	.thumb_func
	.type	GDI_SUBRectangles, %function
GDI_SUBRectangles:
.LFB18:
	.loc 1 344 0
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
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 345 0
	bl	GDI_CreateRList
	movs	r3, r0
	str	r3, [r7, #28]
	.loc 1 347 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L98
	.loc 1 347 0 discriminator 1
	movs	r3, #0
	b	.L99
.L98:
	.loc 1 348 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L100
	.loc 1 348 0 discriminator 2
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L101
.L100:
	.loc 1 348 0 discriminator 3
	ldr	r3, [r7, #28]
	b	.L99
.L101:
	.loc 1 350 0
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	IsRectsOverlaps
	subs	r3, r0, #0
	bne	.L102
	.loc 1 352 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #28]
	str	r1, [r2]
	ldr	r2, [r7, #28]
	lsls	r3, r3, #3
	movs	r1, #4
	adds	r3, r2, r3
	adds	r2, r3, r1
	ldr	r3, [r7, #4]
	movs	r0, r2
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 354 0
	ldr	r3, [r7, #28]
	b	.L99
.L102:
	.loc 1 357 0
	ldr	r3, [r7]
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	bpl	.LCB1921
	b	.L103	@long jump
.LCB1921:
	.loc 1 359 0
	ldr	r3, [r7]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #4]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	cmp	r3, #0
	ble	.L104
	.loc 1 362 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, #0
	ldrsh	r1, [r2, r1]
	ldr	r2, [r7, #28]
	lsls	r3, r3, #3
	adds	r3, r2, r3
	adds	r3, r3, #4
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 363 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, #2
	ldrsh	r1, [r2, r1]
	ldr	r2, [r7, #28]
	lsls	r3, r3, #3
	adds	r3, r2, r3
	adds	r3, r3, #6
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 364 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, #4
	ldrsh	r1, [r2, r1]
	ldr	r2, [r7, #28]
	lsls	r3, r3, #3
	adds	r3, r2, r3
	adds	r3, r3, #8
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 365 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r1, [r7, #28]
	lsls	r2, r2, #3
	adds	r2, r1, r2
	adds	r2, r2, #10
	strh	r3, [r2]
	.loc 1 366 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #28]
	str	r2, [r3]
.L104:
	.loc 1 368 0
	ldr	r3, [r7, #4]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7]
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	cmp	r3, #0
	ble	.L103
	.loc 1 371 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, #0
	ldrsh	r1, [r2, r1]
	ldr	r2, [r7, #28]
	lsls	r3, r3, #3
	adds	r3, r2, r3
	adds	r3, r3, #4
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 372 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7]
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r1, [r7, #28]
	lsls	r2, r2, #3
	adds	r2, r1, r2
	adds	r2, r2, #6
	strh	r3, [r2]
	.loc 1 373 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, #4
	ldrsh	r1, [r2, r1]
	ldr	r2, [r7, #28]
	lsls	r3, r3, #3
	adds	r3, r2, r3
	adds	r3, r3, #8
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 374 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, #6
	ldrsh	r1, [r2, r1]
	ldr	r2, [r7, #28]
	lsls	r3, r3, #3
	adds	r3, r2, r3
	adds	r3, r3, #10
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 375 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #28]
	str	r2, [r3]
.L103:
	.loc 1 378 0
	ldr	r3, [r7, #4]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #4]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	bpl	.LCB2051
	b	.L105	@long jump
.LCB2051:
	.loc 1 380 0
	ldr	r3, [r7, #4]
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7]
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	cmp	r3, #0
	ble	.L106
	.loc 1 383 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7]
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r1, [r7, #28]
	lsls	r2, r2, #3
	adds	r2, r1, r2
	adds	r2, r2, #4
	strh	r3, [r2]
	.loc 1 384 0
	ldr	r3, [r7, #28]
	ldr	r4, [r3]
.LBB11:
	movs	r3, #26
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #2]
	strh	r2, [r3]
	movs	r3, #24
	adds	r3, r7, r3
	ldr	r2, [r7]
	ldrh	r2, [r2, #2]
	strh	r2, [r3]
	movs	r3, #24
	adds	r3, r7, r3
	movs	r2, #26
	adds	r2, r7, r2
	ldrh	r0, [r2]
	ldrh	r1, [r3]
	lsls	r2, r1, #16
	asrs	r2, r2, #16
	lsls	r3, r0, #16
	asrs	r3, r3, #16
	cmp	r2, r3
	bge	.L107
	adds	r1, r0, #0
.L107:
	lsls	r3, r1, #16
	asrs	r3, r3, #16
.LBE11:
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r1, [r7, #28]
	lsls	r2, r4, #3
	adds	r2, r1, r2
	adds	r2, r2, #6
	strh	r3, [r2]
	.loc 1 385 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, #4
	ldrsh	r1, [r2, r1]
	ldr	r2, [r7, #28]
	lsls	r3, r3, #3
	adds	r3, r2, r3
	adds	r3, r3, #8
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 386 0
	ldr	r3, [r7, #28]
	ldr	r4, [r3]
.LBB12:
	movs	r3, #22
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #6]
	strh	r2, [r3]
	movs	r3, #20
	adds	r3, r7, r3
	ldr	r2, [r7]
	ldrh	r2, [r2, #6]
	strh	r2, [r3]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #22
	adds	r2, r7, r2
	ldrh	r0, [r2]
	ldrh	r1, [r3]
	lsls	r2, r1, #16
	asrs	r2, r2, #16
	lsls	r3, r0, #16
	asrs	r3, r3, #16
	cmp	r2, r3
	ble	.L108
	adds	r1, r0, #0
.L108:
	lsls	r3, r1, #16
	asrs	r3, r3, #16
.LBE12:
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r1, [r7, #28]
	lsls	r2, r4, #3
	adds	r2, r1, r2
	adds	r2, r2, #10
	strh	r3, [r2]
	.loc 1 387 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #28]
	str	r2, [r3]
.L106:
	.loc 1 389 0
	ldr	r3, [r7]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #4]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	cmp	r3, #0
	ble	.L105
	.loc 1 392 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, #0
	ldrsh	r1, [r2, r1]
	ldr	r2, [r7, #28]
	lsls	r3, r3, #3
	adds	r3, r2, r3
	adds	r3, r3, #4
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 393 0
	ldr	r3, [r7, #28]
	ldr	r4, [r3]
.LBB13:
	movs	r3, #18
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #2]
	strh	r2, [r3]
	movs	r3, #16
	adds	r3, r7, r3
	ldr	r2, [r7]
	ldrh	r2, [r2, #2]
	strh	r2, [r3]
	movs	r3, #16
	adds	r3, r7, r3
	movs	r2, #18
	adds	r2, r7, r2
	ldrh	r0, [r2]
	ldrh	r1, [r3]
	lsls	r2, r1, #16
	asrs	r2, r2, #16
	lsls	r3, r0, #16
	asrs	r3, r3, #16
	cmp	r2, r3
	bge	.L109
	adds	r1, r0, #0
.L109:
	lsls	r3, r1, #16
	asrs	r3, r3, #16
.LBE13:
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r1, [r7, #28]
	lsls	r2, r4, #3
	adds	r2, r1, r2
	adds	r2, r2, #6
	strh	r3, [r2]
	.loc 1 394 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r1, [r7, #28]
	lsls	r2, r2, #3
	adds	r2, r1, r2
	adds	r2, r2, #8
	strh	r3, [r2]
	.loc 1 395 0
	ldr	r3, [r7, #28]
	ldr	r4, [r3]
.LBB14:
	movs	r3, #14
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #6]
	strh	r2, [r3]
	movs	r3, #12
	adds	r3, r7, r3
	ldr	r2, [r7]
	ldrh	r2, [r2, #6]
	strh	r2, [r3]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #14
	adds	r2, r7, r2
	ldrh	r0, [r2]
	ldrh	r1, [r3]
	lsls	r2, r1, #16
	asrs	r2, r2, #16
	lsls	r3, r0, #16
	asrs	r3, r3, #16
	cmp	r2, r3
	ble	.L110
	adds	r1, r0, #0
.L110:
	lsls	r3, r1, #16
	asrs	r3, r3, #16
.LBE14:
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r1, [r7, #28]
	lsls	r2, r4, #3
	adds	r2, r1, r2
	adds	r2, r2, #10
	strh	r3, [r2]
	.loc 1 396 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #28]
	str	r2, [r3]
.L105:
	.loc 1 399 0
	ldr	r3, [r7, #28]
.L99:
	.loc 1 400 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE18:
	.size	GDI_SUBRectangles, .-GDI_SUBRectangles
	.section	.text.GDI_ADDRectToRegion,"ax",%progbits
	.align	2
	.global	GDI_ADDRectToRegion
	.code	16
	.thumb_func
	.type	GDI_ADDRectToRegion, %function
GDI_ADDRectToRegion:
.LFB19:
	.loc 1 403 0
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
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 407 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L112
	.loc 1 407 0 discriminator 2
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L113
.L112:
	.loc 1 407 0 discriminator 3
	movs	r3, #0
	b	.L114
.L113:
	.loc 1 409 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	DL_GetItemsCount
	subs	r3, r0, #0
	beq	.L115
.LBB15:
	.loc 1 411 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	DL_GetFirstItem
	movs	r3, r0
	str	r3, [r7, #28]
	.loc 1 413 0
	b	.L116
.L123:
	.loc 1 415 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	adds	r3, r3, #12
	str	r3, [r7, #20]
	.loc 1 417 0
	ldr	r2, [r7]
	ldr	r3, [r7, #20]
	movs	r1, r2
	movs	r0, r3
	bl	IsRectsOverlaps
	subs	r3, r0, #0
	beq	.L117
.LBB16:
	.loc 1 419 0
	ldr	r2, [r7]
	ldr	r3, [r7, #20]
	movs	r1, r2
	movs	r0, r3
	bl	GDI_SUBRectangles
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 421 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L117
	.loc 1 423 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L118
.LBB17:
	.loc 1 427 0
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	movs	r0, r2
	adds	r3, r3, #4
	movs	r2, #8
	movs	r1, r3
	bl	memcpy
	.loc 1 429 0
	movs	r3, #1
	str	r3, [r7, #24]
	b	.L119
.L121:
	.loc 1 431 0
	movs	r0, #20
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L120
	.loc 1 433 0
	ldr	r3, [r7, #8]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #24]
	lsls	r2, r2, #3
	movs	r0, #4
	adds	r2, r1, r2
	adds	r2, r2, r0
	adds	r3, r3, #12
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	.loc 1 434 0
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #28]
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	DL_InsertItemBeforePtr
.L120:
	.loc 1 429 0 discriminator 2
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L119:
	.loc 1 429 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L121
	b	.L126
.L118:
.LBE17:
.LBB18:
	.loc 1 440 0 is_stmt 1
	ldr	r3, [r7, #28]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 442 0
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_DeleteItem
	.loc 1 444 0
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	.loc 1 445 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	free
	.loc 1 446 0
	b	.L116
.L126:
.LBE18:
	.loc 1 448 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	free
.L117:
.LBE16:
	.loc 1 451 0
	ldr	r3, [r7, #28]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #28]
.L116:
	.loc 1 413 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L123
.L115:
.LBE15:
	.loc 1 454 0
	movs	r0, #20
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 455 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L124
	.loc 1 457 0
	ldr	r3, [r7, #8]
	ldr	r2, [r7]
	adds	r3, r3, #12
	movs	r1, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
	.loc 1 458 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	subs	r3, r0, #0
	bne	.L125
	.loc 1 458 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	free
	b	.L124
.L125:
	.loc 1 459 0 is_stmt 1
	movs	r3, #1
	b	.L114
.L124:
	.loc 1 461 0
	movs	r3, #0
.L114:
	.loc 1 462 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE19:
	.size	GDI_ADDRectToRegion, .-GDI_ADDRectToRegion
	.section	.text.GDI_SUBRectFromRegion,"ax",%progbits
	.align	2
	.global	GDI_SUBRectFromRegion
	.code	16
	.thumb_func
	.type	GDI_SUBRectFromRegion, %function
GDI_SUBRectFromRegion:
.LFB20:
	.loc 1 465 0
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
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 466 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L128
	.loc 1 466 0 discriminator 1
	movs	r3, #0
	b	.L129
.L128:
	.loc 1 468 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	DL_GetItemsCount
	subs	r3, r0, #0
	bne	.LCB2536
	b	.L130	@long jump
.LCB2536:
	.loc 1 468 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.LCB2539
	b	.L130	@long jump
.LCB2539:
.LBB19:
	.loc 1 470 0 is_stmt 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	DL_GetFirstItem
	movs	r3, r0
	str	r3, [r7, #28]
	.loc 1 472 0
	b	.L131
.L138:
.LBB20:
	.loc 1 474 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	adds	r3, r3, #12
	str	r3, [r7, #20]
	.loc 1 476 0
	ldr	r2, [r7]
	ldr	r3, [r7, #20]
	movs	r1, r2
	movs	r0, r3
	bl	IsRectsOverlaps
	subs	r3, r0, #0
	beq	.L132
.LBB21:
	.loc 1 478 0
	ldr	r2, [r7]
	ldr	r3, [r7, #20]
	movs	r1, r2
	movs	r0, r3
	bl	GDI_SUBRectangles
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 480 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L132
	.loc 1 482 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L133
.LBB22:
	.loc 1 486 0
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	movs	r0, r2
	adds	r3, r3, #4
	movs	r2, #8
	movs	r1, r3
	bl	memcpy
	.loc 1 488 0
	movs	r3, #1
	str	r3, [r7, #24]
	b	.L134
.L136:
.LBB23:
	.loc 1 492 0
	movs	r0, #20
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L135
	.loc 1 494 0
	ldr	r3, [r7, #8]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #24]
	lsls	r2, r2, #3
	movs	r0, #4
	adds	r2, r1, r2
	adds	r2, r2, r0
	adds	r3, r3, #12
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	.loc 1 495 0
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #28]
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	DL_InsertItemBeforePtr
.L135:
.LBE23:
	.loc 1 488 0 discriminator 2
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L134:
	.loc 1 488 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L136
	b	.L139
.L133:
.LBE22:
.LBB24:
	.loc 1 501 0 is_stmt 1
	ldr	r3, [r7, #28]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 503 0
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_DeleteItem
	.loc 1 505 0
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	.loc 1 506 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	free
	.loc 1 507 0
	b	.L131
.L139:
.LBE24:
	.loc 1 509 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	free
.L132:
.LBE21:
	.loc 1 512 0
	ldr	r3, [r7, #28]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #28]
.L131:
.LBE20:
	.loc 1 472 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L138
	.loc 1 514 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GDI_MergeRectsInRegion
.L130:
.LBE19:
	.loc 1 516 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	DL_GetItemsCount
	movs	r3, r0
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
.L129:
	.loc 1 517 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE20:
	.size	GDI_SUBRectFromRegion, .-GDI_SUBRectFromRegion
	.section	.text.GDI_GetPixelPtr,"ax",%progbits
	.align	2
	.global	GDI_GetPixelPtr
	.code	16
	.thumb_func
	.type	GDI_GetPixelPtr, %function
GDI_GetPixelPtr:
.LFB21:
	.loc 1 520 0
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
	movs	r3, r7
	str	r1, [r3]
	.loc 1 521 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	.loc 1 523 0
	movs	r3, r7
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #4]
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	movs	r1, r3
	ldr	r3, [r7, #4]
	movs	r0, #2
	ldrsh	r3, [r3, r0]
	subs	r3, r1, r3
	adds	r3, r3, #1
	muls	r3, r2
	movs	r2, r7
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	adds	r3, r3, r2
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #20]
	muls	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, r2
	.loc 1 524 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE21:
	.size	GDI_GetPixelPtr, .-GDI_GetPixelPtr
	.section	.text.GDI_FillRectangleX,"ax",%progbits
	.align	2
	.global	GDI_FillRectangleX
	.code	16
	.thumb_func
	.type	GDI_FillRectangleX, %function
GDI_FillRectangleX:
.LFB22:
	.loc 1 527 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 530 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.LCB2763
	b	.L159	@long jump
.LCB2763:
	.loc 1 530 0 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.LCB2766
	b	.L159	@long jump
.LCB2766:
	.loc 1 530 0 discriminator 2
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.LCB2770
	b	.L159	@long jump
.LCB2770:
	.loc 1 532 0
	ldr	r3, [r7, #12]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	movs	r1, r3
	ldr	r3, [r7, #8]
	movs	r0, #0
	ldrsh	r3, [r3, r0]
	subs	r3, r1, r3
	subs	r3, r2, r3
	str	r3, [r7, #20]
	.loc 1 534 0
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #21]
	cmp	r3, #1
	beq	.L147
	bge	.LCB2787
	b	.L160	@long jump
.LCB2787:
	subs	r3, r3, #4
	cmp	r3, #2
	bls	.LCB2790
	b	.L160	@long jump
.LCB2790:
	b	.L158
.L147:
.LBB25:
	.loc 1 538 0
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #12]
	ldrh	r2, [r3]
	ldrh	r3, [r3, #2]
	lsls	r3, r3, #16
	orrs	r3, r2
	movs	r2, #0
	movs	r2, r3
	movs	r1, r2
	bl	GDI_GetPixelPtr
	movs	r3, r0
	str	r3, [r7, #28]
	.loc 1 540 0
	ldr	r3, [r7, #4]
	lsrs	r2, r3, #8
	movs	r3, #248
	lsls	r3, r3, #8
	ands	r2, r3
	ldr	r3, [r7, #4]
	lsrs	r1, r3, #5
	movs	r3, #252
	lsls	r3, r3, #3
	ands	r3, r1
	orrs	r2, r3
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #3
	movs	r1, #31
	ands	r3, r1
	orrs	r3, r2
	str	r3, [r7, #4]
	.loc 1 541 0
	ldr	r3, [r7, #8]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	str	r3, [r7, #32]
	b	.L149
.L152:
	.loc 1 543 0
	ldr	r3, [r7, #8]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [r7, #36]
	b	.L150
.L151:
	.loc 1 543 0 is_stmt 0 discriminator 3
	ldr	r3, [r7, #28]
	adds	r2, r3, #2
	str	r2, [r7, #28]
	ldr	r2, [r7, #4]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L150:
	.loc 1 543 0 discriminator 1
	ldr	r3, [r7, #8]
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bge	.L151
	.loc 1 544 0 is_stmt 1 discriminator 2
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r2, [r7, #28]
	adds	r3, r2, r3
	str	r3, [r7, #28]
	.loc 1 541 0 discriminator 2
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L149:
	.loc 1 541 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bge	.L152
.LBE25:
	.loc 1 547 0 is_stmt 1
	b	.L153
.L158:
.LBB26:
	.loc 1 552 0
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #12]
	ldrh	r2, [r3]
	ldrh	r3, [r3, #2]
	lsls	r3, r3, #16
	orrs	r3, r2
	movs	r2, #0
	movs	r2, r3
	movs	r1, r2
	bl	GDI_GetPixelPtr
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 554 0
	ldr	r3, [r7, #8]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	str	r3, [r7, #32]
	b	.L154
.L157:
	.loc 1 556 0
	ldr	r3, [r7, #8]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [r7, #36]
	b	.L155
.L156:
	.loc 1 556 0 is_stmt 0 discriminator 3
	ldr	r3, [r7, #24]
	adds	r2, r3, #4
	str	r2, [r7, #24]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L155:
	.loc 1 556 0 discriminator 1
	ldr	r3, [r7, #8]
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bge	.L156
	.loc 1 557 0 is_stmt 1 discriminator 2
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	adds	r3, r2, r3
	str	r3, [r7, #24]
	.loc 1 554 0 discriminator 2
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L154:
	.loc 1 554 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bge	.L157
.LBE26:
	.loc 1 560 0 is_stmt 1
	b	.L153
.L160:
	.loc 1 562 0
	nop
.L153:
	.loc 1 564 0 discriminator 2
	nop
	b	.L142
.L159:
	.loc 1 530 0
	nop
.L142:
	.loc 1 565 0
	mov	sp, r7
	add	sp, sp, #40
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE22:
	.size	GDI_FillRectangleX, .-GDI_FillRectangleX
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\System/dlist.h"
	.file 6 ".\\Source\\GUI/gditypes.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 8 ".\\Source\\GUI/guiobject.h"
	.file 9 ".\\Source\\GUI/guiwin.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xfd3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0xc
	.4byte	.LASF174
	.4byte	.LASF175
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x6
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0x109
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1d
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x17
	.4byte	0x11f
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0xc
	.byte	0x5
	.byte	0x18
	.4byte	0x150
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1a
	.4byte	0x150
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x1b
	.4byte	0x150
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1c
	.4byte	0xe7
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x17
	.4byte	0x15b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x11f
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0xc
	.byte	0x5
	.byte	0x1f
	.4byte	0x192
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x5
	.byte	0x21
	.4byte	0x150
	.byte	0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x5
	.byte	0x22
	.4byte	0x150
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x5
	.byte	0x23
	.4byte	0xce
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x5
	.byte	0x24
	.4byte	0x19d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x161
	.uleb128 0xa
	.byte	0x4
	.4byte	0xa2
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x4
	.4byte	0x9b
	.byte	0x6
	.byte	0x16
	.4byte	0x29b
	.uleb128 0xc
	.4byte	.LASF36
	.4byte	0xff000000
	.uleb128 0xc
	.4byte	.LASF37
	.4byte	0xff003366
	.uleb128 0xc
	.4byte	.LASF38
	.4byte	0xff000080
	.uleb128 0xc
	.4byte	.LASF39
	.4byte	0xff008000
	.uleb128 0xc
	.4byte	.LASF40
	.4byte	0xff008080
	.uleb128 0xc
	.4byte	.LASF41
	.4byte	0xff400000
	.uleb128 0xc
	.4byte	.LASF42
	.4byte	0xff404040
	.uleb128 0xc
	.4byte	.LASF43
	.4byte	0xff800000
	.uleb128 0xc
	.4byte	.LASF44
	.4byte	0xff800080
	.uleb128 0xc
	.4byte	.LASF45
	.4byte	0xff808000
	.uleb128 0xc
	.4byte	.LASF46
	.4byte	0xff808080
	.uleb128 0xc
	.4byte	.LASF47
	.4byte	0xffc0c0c0
	.uleb128 0xc
	.4byte	.LASF48
	.4byte	0xff0000ff
	.uleb128 0xc
	.4byte	.LASF49
	.4byte	0xff00c000
	.uleb128 0xc
	.4byte	.LASF50
	.4byte	0xff00ff00
	.uleb128 0xc
	.4byte	.LASF51
	.4byte	0xff00ffff
	.uleb128 0xc
	.4byte	.LASF52
	.4byte	0xffff0000
	.uleb128 0xc
	.4byte	.LASF53
	.4byte	0xffff00ff
	.uleb128 0xc
	.4byte	.LASF54
	.4byte	0xffffff00
	.uleb128 0xc
	.4byte	.LASF55
	.4byte	0xffffffff
	.uleb128 0xc
	.4byte	.LASF56
	.4byte	0xffc0dcc0
	.uleb128 0xc
	.4byte	.LASF57
	.4byte	0xfff0c8a4
	.uleb128 0xc
	.4byte	.LASF58
	.4byte	0xfff0f8fc
	.uleb128 0xc
	.4byte	.LASF59
	.4byte	0xffa4a0a0
	.uleb128 0xc
	.4byte	.LASF60
	.4byte	0xffc8d0d4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x6
	.byte	0x31
	.4byte	0x1a9
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x33
	.4byte	0x2e7
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x6
	.byte	0x3d
	.4byte	0x2a6
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x4
	.byte	0x6
	.byte	0x41
	.4byte	0x313
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x6
	.byte	0x43
	.4byte	0xad
	.byte	0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x6
	.byte	0x44
	.4byte	0xad
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x6
	.byte	0x45
	.4byte	0x2f2
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x6
	.byte	0x45
	.4byte	0x329
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2f2
	.uleb128 0xe
	.byte	0x8
	.byte	0x6
	.byte	0x49
	.4byte	0x34e
	.uleb128 0xd
	.ascii	"lt\000"
	.byte	0x6
	.byte	0x4b
	.4byte	0x313
	.byte	0
	.uleb128 0xd
	.ascii	"rb\000"
	.byte	0x6
	.byte	0x4c
	.4byte	0x313
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x6
	.byte	0x4e
	.4byte	0x37f
	.uleb128 0xd
	.ascii	"l\000"
	.byte	0x6
	.byte	0x50
	.4byte	0xad
	.byte	0
	.uleb128 0xd
	.ascii	"t\000"
	.byte	0x6
	.byte	0x51
	.4byte	0xad
	.byte	0x2
	.uleb128 0xd
	.ascii	"r\000"
	.byte	0x6
	.byte	0x52
	.4byte	0xad
	.byte	0x4
	.uleb128 0xd
	.ascii	"b\000"
	.byte	0x6
	.byte	0x53
	.4byte	0xad
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF176
	.byte	0x8
	.byte	0x6
	.byte	0x47
	.4byte	0x396
	.uleb128 0x10
	.4byte	0x32f
	.uleb128 0x10
	.4byte	0x34e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x6
	.byte	0x55
	.4byte	0x37f
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x6
	.byte	0x55
	.4byte	0x3ac
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37f
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x14
	.byte	0x6
	.byte	0x57
	.4byte	0x3d7
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x6
	.byte	0x59
	.4byte	0x114
	.byte	0
	.uleb128 0xd
	.ascii	"Rct\000"
	.byte	0x6
	.byte	0x5a
	.4byte	0x396
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x6
	.byte	0x5b
	.4byte	0x3e2
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3b2
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x4
	.byte	0x6
	.byte	0x5d
	.4byte	0x40b
	.uleb128 0xd
	.ascii	"sx\000"
	.byte	0x6
	.byte	0x5f
	.4byte	0xb8
	.byte	0
	.uleb128 0xd
	.ascii	"sy\000"
	.byte	0x6
	.byte	0x60
	.4byte	0xb8
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x6
	.byte	0x61
	.4byte	0x3e8
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x24
	.byte	0x6
	.byte	0x63
	.4byte	0x43b
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0x65
	.4byte	0xce
	.byte	0
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x6
	.byte	0x66
	.4byte	0x43b
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	0x396
	.4byte	0x44b
	.uleb128 0x12
	.4byte	0xe0
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x6
	.byte	0x67
	.4byte	0x456
	.uleb128 0xa
	.byte	0x4
	.4byte	0x416
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0xf1
	.4byte	0x48b
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x7
	.byte	0xf8
	.4byte	0x45c
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x1c
	.byte	0x7
	.2byte	0x119
	.4byte	0x50c
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x11b
	.4byte	0x109
	.byte	0
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x11c
	.4byte	0x109
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x11d
	.4byte	0x396
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x11e
	.4byte	0x313
	.byte	0xa
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x11f
	.4byte	0xce
	.byte	0x10
	.uleb128 0x15
	.ascii	"BPP\000"
	.byte	0x7
	.2byte	0x120
	.4byte	0xa2
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x121
	.4byte	0x2e7
	.byte	0x15
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x122
	.4byte	0xe7
	.byte	0x18
	.byte	0
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x123
	.4byte	0x496
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x123
	.4byte	0x524
	.uleb128 0xa
	.byte	0x4
	.4byte	0x496
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x88
	.byte	0x7
	.2byte	0x125
	.4byte	0x586
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x127
	.4byte	0x396
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x128
	.4byte	0x313
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x129
	.4byte	0xce
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x12a
	.4byte	0xce
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x12b
	.4byte	0x109
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x12c
	.4byte	0x586
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	0x50c
	.4byte	0x596
	.uleb128 0x12
	.4byte	0xe0
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x12d
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0x1
	.4byte	0x37
	.byte	0x8
	.byte	0x16
	.4byte	0x5d1
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF113
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF115
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x8
	.byte	0x1e
	.4byte	0x5a2
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0x8
	.byte	0x29
	.4byte	0x5e7
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5ed
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x3c
	.byte	0x8
	.byte	0x2a
	.4byte	0x6ae
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x8
	.byte	0x2c
	.4byte	0x114
	.byte	0
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x8
	.byte	0x2d
	.4byte	0x396
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x8
	.byte	0x2e
	.4byte	0x5dc
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x8
	.byte	0x2f
	.4byte	0x5d1
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x8
	.byte	0x30
	.4byte	0x109
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x8
	.byte	0x31
	.4byte	0x109
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x8
	.byte	0x32
	.4byte	0x109
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x8
	.byte	0x33
	.4byte	0x109
	.byte	0x1c
	.uleb128 0xd
	.ascii	"Tag\000"
	.byte	0x8
	.byte	0x34
	.4byte	0xc3
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x8
	.byte	0x35
	.4byte	0x6be
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x8
	.byte	0x36
	.4byte	0x6be
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x8
	.byte	0x37
	.4byte	0x6be
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x8
	.byte	0x38
	.4byte	0x6be
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x8
	.byte	0x39
	.4byte	0x6d4
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x8
	.byte	0x3a
	.4byte	0x6e5
	.byte	0x38
	.byte	0
	.uleb128 0x17
	.4byte	0x6be
	.uleb128 0x18
	.4byte	0x5dc
	.uleb128 0x18
	.4byte	0x31e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x6ae
	.uleb128 0x17
	.4byte	0x6d4
	.uleb128 0x18
	.4byte	0x5dc
	.uleb128 0x18
	.4byte	0x3a1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x6c4
	.uleb128 0x17
	.4byte	0x6e5
	.uleb128 0x18
	.4byte	0x5dc
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x6da
	.uleb128 0x19
	.4byte	.LASF177
	.byte	0x1
	.byte	0x18
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ab
	.uleb128 0x1a
	.4byte	.LASF136
	.byte	0x1
	.byte	0x18
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LASF131
	.byte	0x1
	.byte	0x1a
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF132
	.byte	0x1
	.byte	0x1a
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0x1
	.byte	0x1b
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF134
	.byte	0x1
	.byte	0x1b
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1b
	.4byte	.LASF135
	.byte	0x1
	.byte	0x2c
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x785
	.uleb128 0x1e
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x2e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x1e
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x2e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1e
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x2f
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1e
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x2f
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x1
	.byte	0x3c
	.4byte	0x313
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7eb
	.uleb128 0x20
	.ascii	"x\000"
	.byte	0x1
	.byte	0x3c
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x20
	.ascii	"y\000"
	.byte	0x1
	.byte	0x3c
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0x1
	.byte	0x3e
	.4byte	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x1
	.byte	0x43
	.4byte	0x396
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x843
	.uleb128 0x20
	.ascii	"l\000"
	.byte	0x1
	.byte	0x43
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x20
	.ascii	"t\000"
	.byte	0x1
	.byte	0x43
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.ascii	"r\000"
	.byte	0x1
	.byte	0x43
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x20
	.ascii	"b\000"
	.byte	0x1
	.byte	0x43
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0x1
	.byte	0x45
	.4byte	0x396
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x1
	.byte	0x4a
	.4byte	0x40b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x885
	.uleb128 0x20
	.ascii	"sx\000"
	.byte	0x1
	.byte	0x4a
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x20
	.ascii	"sy\000"
	.byte	0x1
	.byte	0x4a
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0x1
	.byte	0x4c
	.4byte	0x40b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x1
	.byte	0x54
	.4byte	0x109
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b7
	.uleb128 0x20
	.ascii	"a\000"
	.byte	0x1
	.byte	0x54
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.ascii	"b\000"
	.byte	0x1
	.byte	0x54
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x1
	.byte	0x61
	.4byte	0x109
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ec
	.uleb128 0x20
	.ascii	"Pt\000"
	.byte	0x1
	.byte	0x61
	.4byte	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.ascii	"Rct\000"
	.byte	0x1
	.byte	0x61
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x21
	.4byte	.LASF143
	.byte	0x1
	.byte	0x69
	.4byte	0x109
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x91e
	.uleb128 0x20
	.ascii	"a\000"
	.byte	0x1
	.byte	0x69
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.ascii	"b\000"
	.byte	0x1
	.byte	0x69
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF144
	.byte	0x1
	.byte	0x7a
	.4byte	0x109
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x946
	.uleb128 0x20
	.ascii	"rct\000"
	.byte	0x1
	.byte	0x7a
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0x1
	.byte	0x80
	.4byte	0x44b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96e
	.uleb128 0x1b
	.4byte	.LASF146
	.byte	0x1
	.byte	0x82
	.4byte	0x44b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x21
	.4byte	.LASF147
	.byte	0x1
	.byte	0x8a
	.4byte	0x44b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x996
	.uleb128 0x1a
	.4byte	.LASF148
	.byte	0x1
	.byte	0x8a
	.4byte	0x44b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF149
	.byte	0x1
	.byte	0x91
	.4byte	0x313
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d9
	.uleb128 0x20
	.ascii	"pt\000"
	.byte	0x1
	.byte	0x91
	.4byte	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LASF150
	.byte	0x1
	.byte	0x91
	.4byte	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.ascii	"Res\000"
	.byte	0x1
	.byte	0x93
	.4byte	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF151
	.byte	0x1
	.byte	0xa5
	.4byte	0x313
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1c
	.uleb128 0x20
	.ascii	"pt\000"
	.byte	0x1
	.byte	0xa5
	.4byte	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LASF150
	.byte	0x1
	.byte	0xa5
	.4byte	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.ascii	"Res\000"
	.byte	0x1
	.byte	0xa7
	.4byte	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x21
	.4byte	.LASF152
	.byte	0x1
	.byte	0xb9
	.4byte	0x396
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa60
	.uleb128 0x20
	.ascii	"rct\000"
	.byte	0x1
	.byte	0xb9
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LASF150
	.byte	0x1
	.byte	0xb9
	.4byte	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.ascii	"Res\000"
	.byte	0x1
	.byte	0xbb
	.4byte	0x396
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x21
	.4byte	.LASF153
	.byte	0x1
	.byte	0xd1
	.4byte	0x396
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa4
	.uleb128 0x20
	.ascii	"rct\000"
	.byte	0x1
	.byte	0xd1
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LASF150
	.byte	0x1
	.byte	0xd1
	.4byte	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.ascii	"Res\000"
	.byte	0x1
	.byte	0xd3
	.4byte	0x396
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0x1
	.byte	0xe9
	.4byte	0x313
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae7
	.uleb128 0x1a
	.4byte	.LASF155
	.byte	0x1
	.byte	0xe9
	.4byte	0x48b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x20
	.ascii	"pt\000"
	.byte	0x1
	.byte	0xe9
	.4byte	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.ascii	"Res\000"
	.byte	0x1
	.byte	0xeb
	.4byte	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x21
	.4byte	.LASF156
	.byte	0x1
	.byte	0xf8
	.4byte	0x109
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb9
	.uleb128 0x20
	.ascii	"a\000"
	.byte	0x1
	.byte	0xf8
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.ascii	"b\000"
	.byte	0x1
	.byte	0xf8
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xb40
	.uleb128 0x1e
	.ascii	"_a\000"
	.byte	0x1
	.byte	0xfe
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1e
	.ascii	"_b\000"
	.byte	0x1
	.byte	0xfe
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xb68
	.uleb128 0x1e
	.ascii	"_a\000"
	.byte	0x1
	.byte	0xff
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x1e
	.ascii	"_b\000"
	.byte	0x1
	.byte	0xff
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xb92
	.uleb128 0x22
	.ascii	"_a\000"
	.byte	0x1
	.2byte	0x100
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x22
	.ascii	"_b\000"
	.byte	0x1
	.2byte	0x100
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x22
	.ascii	"_a\000"
	.byte	0x1
	.2byte	0x101
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x22
	.ascii	"_b\000"
	.byte	0x1
	.2byte	0x101
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x109
	.4byte	0x192
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc4b
	.uleb128 0x24
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x109
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x109
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x10b
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x10c
	.4byte	0x3d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x10c
	.4byte	0x3d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x25
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x136
	.4byte	0x44b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x22
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x13d
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x157
	.4byte	0x44b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd33
	.uleb128 0x24
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x157
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x157
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x159
	.4byte	0x44b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0xcb8
	.uleb128 0x22
	.ascii	"_a\000"
	.byte	0x1
	.2byte	0x180
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x22
	.ascii	"_b\000"
	.byte	0x1
	.2byte	0x180
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xce2
	.uleb128 0x22
	.ascii	"_a\000"
	.byte	0x1
	.2byte	0x182
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x22
	.ascii	"_b\000"
	.byte	0x1
	.2byte	0x182
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0xd0c
	.uleb128 0x22
	.ascii	"_a\000"
	.byte	0x1
	.2byte	0x189
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x22
	.ascii	"_b\000"
	.byte	0x1
	.2byte	0x189
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x22
	.ascii	"_a\000"
	.byte	0x1
	.2byte	0x18b
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x22
	.ascii	"_b\000"
	.byte	0x1
	.2byte	0x18b
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x192
	.4byte	0x109
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf0
	.uleb128 0x26
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x192
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.ascii	"Rct\000"
	.byte	0x1
	.2byte	0x192
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x194
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x195
	.4byte	0x3d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x25
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x19b
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x25
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x44b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0xdd4
	.uleb128 0x22
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x25
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x109
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec1
	.uleb128 0x26
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.ascii	"Rct\000"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x25
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x25
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1da
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x25
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1de
	.4byte	0x44b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0xea4
	.uleb128 0x22
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x25
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x3d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x25
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x207
	.4byte	0x1a3
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf05
	.uleb128 0x24
	.ascii	"lc\000"
	.byte	0x1
	.2byte	0x207
	.4byte	0x518
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x207
	.4byte	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x209
	.4byte	0x1a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x28
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x20e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa3
	.uleb128 0x24
	.ascii	"lc\000"
	.byte	0x1
	.2byte	0x20e
	.4byte	0x518
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.ascii	"Rct\000"
	.byte	0x1
	.2byte	0x20e
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x20e
	.4byte	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x210
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x210
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.ascii	"dpx\000"
	.byte	0x1
	.2byte	0x210
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0xf8b
	.uleb128 0x22
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x21a
	.4byte	0xfa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x22
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x228
	.4byte	0xfa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb8
	.uleb128 0xa
	.byte	0x4
	.4byte	0xce
	.uleb128 0x29
	.4byte	.LASF171
	.byte	0x7
	.2byte	0x137
	.4byte	0x596
	.uleb128 0x11
	.4byte	0x5dc
	.4byte	0xfcb
	.uleb128 0x12
	.4byte	0xe0
	.byte	0x3
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF172
	.byte	0x9
	.byte	0x23
	.4byte	0xfbb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0xc4
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
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
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF178:
	.ascii	"GDI_FillRectangleX\000"
.LASF128:
	.ascii	"OnClick\000"
.LASF83:
	.ascii	"tag_RLIST\000"
.LASF49:
	.ascii	"clMidGreen\000"
.LASF23:
	.ascii	"true\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF43:
	.ascii	"clNavy\000"
.LASF137:
	.ascii	"Result\000"
.LASF104:
	.ascii	"ScreenRgn\000"
.LASF107:
	.ascii	"ScreenIndex\000"
.LASF101:
	.ascii	"TLCONTEXT\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF135:
	.ascii	"tmpItem\000"
.LASF117:
	.ascii	"pGUIOBJECT\000"
.LASF63:
	.ascii	"tag_CFORMAT\000"
.LASF163:
	.ascii	"GDI_ADDRectToRegion\000"
.LASF140:
	.ascii	"SizeXY\000"
.LASF75:
	.ascii	"pPOINT\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF11:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF144:
	.ascii	"IsRectCollapsed\000"
.LASF110:
	.ascii	"tag_GOTYPE\000"
.LASF64:
	.ascii	"CF_8IDX\000"
.LASF118:
	.ascii	"tag_GUIOBJECT\000"
.LASF155:
	.ascii	"Layer\000"
.LASF125:
	.ascii	"OnPress\000"
.LASF74:
	.ascii	"TPOINT\000"
.LASF149:
	.ascii	"GDI_LocalToGlobalPt\000"
.LASF8:
	.ascii	"long int\000"
.LASF62:
	.ascii	"tag_COLOR\000"
.LASF115:
	.ascii	"GO_NUMTYPES\000"
.LASF52:
	.ascii	"clBlue\000"
.LASF143:
	.ascii	"IsRectInRect\000"
.LASF138:
	.ascii	"Point\000"
.LASF169:
	.ascii	"GDI_GetPixelPtr\000"
.LASF79:
	.ascii	"ListHeader\000"
.LASF161:
	.ascii	"GDI_SUBRectangles\000"
.LASF33:
	.ascii	"Last\000"
.LASF152:
	.ascii	"GDI_LocalToGlobalRct\000"
.LASF120:
	.ascii	"Parent\000"
.LASF102:
	.ascii	"pLCONTEXT\000"
.LASF159:
	.ascii	"tmpRectA\000"
.LASF160:
	.ascii	"tmpRectB\000"
.LASF121:
	.ascii	"Type\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF106:
	.ascii	"ScreenCount\000"
.LASF99:
	.ascii	"ColorFormat\000"
.LASF36:
	.ascii	"clBlack\000"
.LASF175:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF129:
	.ascii	"OnPaint\000"
.LASF171:
	.ascii	"LCDScreen\000"
.LASF173:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF93:
	.ascii	"tag_TLCONTEXT\000"
.LASF57:
	.ascii	"clSkyBlue\000"
.LASF39:
	.ascii	"clGreen\000"
.LASF91:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF176:
	.ascii	"tag_RECT\000"
.LASF51:
	.ascii	"clYellow\000"
.LASF77:
	.ascii	"pRECT\000"
.LASF71:
	.ascii	"CF_NUM\000"
.LASF85:
	.ascii	"pRLIST\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF177:
	.ascii	"GDI_MergeRectsInRegion\000"
.LASF147:
	.ascii	"GDI_DeleteRList\000"
.LASF67:
	.ascii	"CF_RGB888\000"
.LASF165:
	.ascii	"tmpRectItem\000"
.LASF61:
	.ascii	"TCOLOR\000"
.LASF131:
	.ascii	"ModItem\000"
.LASF166:
	.ascii	"tmpList\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF134:
	.ascii	"CmpRect\000"
.LASF139:
	.ascii	"Rect\000"
.LASF48:
	.ascii	"clRed\000"
.LASF4:
	.ascii	"short int\000"
.LASF108:
	.ascii	"VLayer\000"
.LASF162:
	.ascii	"Rlist\000"
.LASF27:
	.ascii	"Next\000"
.LASF123:
	.ascii	"InheritedEnabled\000"
.LASF56:
	.ascii	"clMoneyGreen\000"
.LASF20:
	.ascii	"sizetype\000"
.LASF111:
	.ascii	"GO_UNKNOWN\000"
.LASF69:
	.ascii	"CF_PARGB8888\000"
.LASF103:
	.ascii	"tag_TSCREEN\000"
.LASF109:
	.ascii	"TSCREEN\000"
.LASF78:
	.ascii	"tag_RECTITEM\000"
.LASF40:
	.ascii	"clOlive\000"
.LASF60:
	.ascii	"clBtnFace\000"
.LASF157:
	.ascii	"GDI_ADDRectangles\000"
.LASF164:
	.ascii	"tmpRect\000"
.LASF145:
	.ascii	"GDI_CreateRList\000"
.LASF26:
	.ascii	"Prev\000"
.LASF35:
	.ascii	"pDLIST\000"
.LASF130:
	.ascii	"OnDestroy\000"
.LASF86:
	.ascii	"tag_VLINDEX\000"
.LASF127:
	.ascii	"OnMove\000"
.LASF126:
	.ascii	"OnRelease\000"
.LASF50:
	.ascii	"clLime\000"
.LASF156:
	.ascii	"GDI_ANDRectangles\000"
.LASF53:
	.ascii	"clFuchsia\000"
.LASF54:
	.ascii	"clAqua\000"
.LASF151:
	.ascii	"GDI_GlobalToLocalPt\000"
.LASF32:
	.ascii	"First\000"
.LASF141:
	.ascii	"IsRectsOverlaps\000"
.LASF170:
	.ascii	"Color\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF96:
	.ascii	"LayerRgn\000"
.LASF112:
	.ascii	"GO_WINDOW\000"
.LASF68:
	.ascii	"CF_ARGB8888\000"
.LASF94:
	.ascii	"Enabled\000"
.LASF132:
	.ascii	"CmpItem\000"
.LASF65:
	.ascii	"CF_RGB565\000"
.LASF22:
	.ascii	"false\000"
.LASF98:
	.ascii	"LayerEnMask\000"
.LASF167:
	.ascii	"tmpSUBItem\000"
.LASF168:
	.ascii	"GDI_SUBRectFromRegion\000"
.LASF76:
	.ascii	"TRECT\000"
.LASF100:
	.ascii	"FrameBuffer\000"
.LASF59:
	.ascii	"clMedGray\000"
.LASF114:
	.ascii	"GO_LABEL\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF55:
	.ascii	"clWhite\000"
.LASF19:
	.ascii	"long double\000"
.LASF21:
	.ascii	"char\000"
.LASF174:
	.ascii	"Source\\GUI\\gdiutils.c\000"
.LASF42:
	.ascii	"clDarkGray\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF24:
	.ascii	"boolean\000"
.LASF122:
	.ascii	"Visible\000"
.LASF82:
	.ascii	"TSIZEXY\000"
.LASF81:
	.ascii	"tag_SIZEXY\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF44:
	.ascii	"clPurple\000"
.LASF119:
	.ascii	"Position\000"
.LASF87:
	.ascii	"LCDIF_LAYER0\000"
.LASF88:
	.ascii	"LCDIF_LAYER1\000"
.LASF89:
	.ascii	"LCDIF_LAYER2\000"
.LASF90:
	.ascii	"LCDIF_LAYER3\000"
.LASF47:
	.ascii	"clSilver\000"
.LASF116:
	.ascii	"TGOTYPE\000"
.LASF172:
	.ascii	"GUILayer\000"
.LASF66:
	.ascii	"CF_YUYV422\000"
.LASF31:
	.ascii	"tag_DList\000"
.LASF92:
	.ascii	"TVLINDEX\000"
.LASF58:
	.ascii	"clCream\000"
.LASF80:
	.ascii	"pRECTITEM\000"
.LASF154:
	.ascii	"GDI_ScreenToLayerPt\000"
.LASF142:
	.ascii	"IsPointInRect\000"
.LASF45:
	.ascii	"clTeal\000"
.LASF34:
	.ascii	"Count\000"
.LASF133:
	.ascii	"ModRect\000"
.LASF150:
	.ascii	"Offset\000"
.LASF70:
	.ascii	"CF_xRGB8888\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF28:
	.ascii	"Data\000"
.LASF146:
	.ascii	"tmpRList\000"
.LASF124:
	.ascii	"InheritedVisible\000"
.LASF73:
	.ascii	"tag_POINT\000"
.LASF30:
	.ascii	"tag_ListItem\000"
.LASF136:
	.ascii	"Region\000"
.LASF153:
	.ascii	"GDI_GlobalToLocalRct\000"
.LASF105:
	.ascii	"ScreenOffset\000"
.LASF113:
	.ascii	"GO_BUTTON\000"
.LASF95:
	.ascii	"Initialized\000"
.LASF97:
	.ascii	"LayerOffset\000"
.LASF38:
	.ascii	"clMaroon\000"
.LASF25:
	.ascii	"TDLITEM\000"
.LASF84:
	.ascii	"Item\000"
.LASF72:
	.ascii	"TCFORMAT\000"
.LASF37:
	.ascii	"clBrown\000"
.LASF29:
	.ascii	"pDLITEM\000"
.LASF46:
	.ascii	"clGray\000"
.LASF41:
	.ascii	"clDarkBlue\000"
.LASF148:
	.ascii	"RList\000"
.LASF158:
	.ascii	"ResRects\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
