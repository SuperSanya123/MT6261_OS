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
	.file	"guiobject.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.bss.ActiveObject,"aw",%nobits
	.align	2
	.type	ActiveObject, %object
	.size	ActiveObject, 4
ActiveObject:
	.space	4
	.section	.text.GUI_UpdateChildPositions,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GUI_UpdateChildPositions, %function
GUI_UpdateChildPositions:
.LFB1:
	.file 1 "Source\\GUI\\guiobject.c"
	.loc 1 27 0
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
	.loc 1 28 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #68
	str	r3, [r7, #16]
	.loc 1 30 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	DL_GetItemsCount
	subs	r3, r0, #0
	beq	.L6
.LBB2:
	.loc 1 32 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	DL_GetFirstItem
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 34 0
	b	.L3
.L5:
.LBB3:
	.loc 1 36 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	.loc 1 38 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L4
	.loc 1 40 0
	ldr	r3, [r7, #12]
	movs	r2, #12
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7, #12]
	strh	r3, [r2, #12]
	.loc 1 41 0
	ldr	r3, [r7, #12]
	movs	r2, #16
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7, #12]
	strh	r3, [r2, #16]
	.loc 1 42 0
	ldr	r3, [r7, #12]
	movs	r2, #14
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7, #12]
	strh	r3, [r2, #14]
	.loc 1 43 0
	ldr	r3, [r7, #12]
	movs	r2, #18
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7, #12]
	strh	r3, [r2, #18]
	.loc 1 45 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L4
	.loc 1 46 0
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_UpdateChildPositions
.L4:
	.loc 1 48 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #20]
.L3:
.LBE3:
	.loc 1 34 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L5
.L6:
.LBE2:
	.loc 1 51 0
	nop
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	GUI_UpdateChildPositions, .-GUI_UpdateChildPositions
	.section	.text.GUI_GetObjectRecursive,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GUI_GetObjectRecursive, %function
GUI_GetObjectRecursive:
.LFB2:
	.loc 1 54 0
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
	.loc 1 55 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #68
	str	r3, [r7, #12]
	.loc 1 56 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	DL_GetLastItem
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 59 0
	b	.L8
.L12:
.LBB4:
	.loc 1 63 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	.loc 1 64 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L9
	.loc 1 64 0 discriminator 1
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L9
	.loc 1 65 0 discriminator 2
	ldr	r3, [r7, #16]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7]
	movs	r1, r2
	movs	r0, r3
	bl	IsPointInRect
	subs	r3, r0, #0
	.loc 1 64 0 discriminator 2
	beq	.L9
	.loc 1 67 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L10
	.loc 1 69 0
	ldr	r2, [r7]
	ldr	r3, [r7, #16]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_GetObjectRecursive
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 70 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L10
	.loc 1 70 0 discriminator 1
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
.L10:
	.loc 1 72 0
	ldr	r3, [r7, #16]
	b	.L11
.L9:
	.loc 1 74 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	DL_GetPrevItem
	movs	r3, r0
	str	r3, [r7, #20]
.L8:
.LBE4:
	.loc 1 59 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L12
	.loc 1 76 0
	movs	r3, #0
.L11:
	.loc 1 77 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	GUI_GetObjectRecursive, .-GUI_GetObjectRecursive
	.section	.text.GUI_UpdateChildTreeInheritance,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GUI_UpdateChildTreeInheritance, %function
GUI_UpdateChildTreeInheritance:
.LFB3:
	.loc 1 80 0
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
	.loc 1 81 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #68
	str	r3, [r7, #16]
	.loc 1 83 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	DL_GetItemsCount
	subs	r3, r0, #0
	beq	.L24
.LBB5:
	.loc 1 85 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	DL_GetFirstItem
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 87 0
	b	.L15
.L23:
.LBB6:
	.loc 1 89 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	.loc 1 91 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L16
	.loc 1 93 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #25]
	cmp	r3, #0
	beq	.L17
	.loc 1 93 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #27]
	cmp	r3, #0
	beq	.L17
	.loc 1 93 0 discriminator 3
	movs	r3, #1
	b	.L18
.L17:
	.loc 1 93 0 discriminator 4
	movs	r3, #0
.L18:
	.loc 1 93 0 discriminator 6
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #12]
	strb	r2, [r3, #27]
	.loc 1 94 0 is_stmt 1 discriminator 6
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L19
	.loc 1 94 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #28]
	cmp	r3, #0
	beq	.L19
	.loc 1 94 0 discriminator 3
	movs	r3, #1
	b	.L20
.L19:
	.loc 1 94 0 discriminator 4
	movs	r3, #0
.L20:
	.loc 1 94 0 discriminator 6
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #12]
	strb	r2, [r3, #28]
	.loc 1 96 0 is_stmt 1 discriminator 6
	bl	GUI_GetObjectActive
	movs	r3, r0
	movs	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L21
	.loc 1 97 0 discriminator 1
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #27]
	.loc 1 96 0 discriminator 1
	cmp	r3, #0
	beq	.L22
	.loc 1 98 0
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #28]
	.loc 1 97 0
	cmp	r3, #0
	bne	.L21
.L22:
	.loc 1 99 0
	movs	r1, #0
	movs	r0, #0
	bl	GUI_SetObjectActive
.L21:
	.loc 1 101 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L16
	.loc 1 102 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_UpdateChildTreeInheritance
.L16:
	.loc 1 104 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #20]
.L15:
.LBE6:
	.loc 1 87 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L23
.L24:
.LBE5:
	.loc 1 107 0
	nop
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	GUI_UpdateChildTreeInheritance, .-GUI_UpdateChildTreeInheritance
	.section	.text.GUI_CalculateClientArea,"ax",%progbits
	.align	2
	.global	GUI_CalculateClientArea
	.code	16
	.thumb_func
	.type	GUI_CalculateClientArea, %function
GUI_CalculateClientArea:
.LFB4:
	.loc 1 110 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 48
	add	r7, sp, #8
	.cfi_def_cfa 7, 40
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	.loc 1 113 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L26
	.loc 1 114 0 discriminator 1
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #24]
	.loc 1 113 0 discriminator 1
	cmp	r3, #3
	bhi	.L26
	.loc 1 114 0
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #24]
	cmp	r3, #0
	beq	.L26
.LBB7:
	.loc 1 124 0
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L31
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L27
	.loc 1 125 0
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L31
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	movs	r2, #16
	adds	r1, r7, r2
	ldr	r2, [r7, #8]
	movs	r0, r2
	blx	r3
.LBE7:
	.loc 1 115 0
	b	.L29
.L27:
.LBB8:
	.loc 1 126 0
	movs	r3, #16
	adds	r2, r7, r3
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
.LBE8:
	.loc 1 115 0
	b	.L29
.L26:
	.loc 1 128 0
	movs	r3, #16
	adds	r4, r7, r3
	movs	r0, r7
	movs	r3, #1
	rsbs	r5, r3, #0
	movs	r3, #1
	rsbs	r2, r3, #0
	movs	r3, #1
	rsbs	r1, r3, #0
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp]
	movs	r3, r5
	bl	Rect
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
.L29:
	.loc 1 130 0
	ldr	r2, [r7, #12]
	movs	r3, #16
	adds	r3, r7, r3
	movs	r0, r2
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 131 0
	ldr	r0, [r7, #12]
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r7, pc}
.L32:
	.align	2
.L31:
	.word	CalcClientArea.7518
	.cfi_endproc
.LFE4:
	.size	GUI_CalculateClientArea, .-GUI_CalculateClientArea
	.section	.text.GUI_GetObjectFromPoint,"ax",%progbits
	.align	2
	.global	GUI_GetObjectFromPoint
	.code	16
	.thumb_func
	.type	GUI_GetObjectFromPoint, %function
GUI_GetObjectFromPoint:
.LFB5:
	.loc 1 134 0
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
	str	r1, [r7]
	.loc 1 135 0
	movs	r3, #0
	str	r3, [r7, #36]
	.loc 1 135 0
	movs	r3, #0
	str	r3, [r7, #32]
	.loc 1 137 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.LCB498
	b	.L34	@long jump
.LCB498:
.LBB9:
	.loc 1 141 0
	movs	r3, #3
	str	r3, [r7, #28]
	b	.L35
.L46:
.LBB10:
	.loc 1 145 0
	ldr	r3, .L50
	ldr	r2, [r7, #28]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L49
	.loc 1 145 0 discriminator 2
	ldr	r3, .L50
	ldr	r2, [r7, #28]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L49
	.loc 1 147 0
	ldr	r3, [r7, #28]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	ldr	r2, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ScreenToLayerPt
	movs	r3, r0
	movs	r2, r3
	movs	r3, #12
	adds	r3, r7, r3
	str	r2, [r3]
	.loc 1 149 0
	ldr	r3, .L50
	ldr	r2, [r7, #28]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	adds	r3, r3, #12
	movs	r2, r3
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	IsPointInRect
	subs	r3, r0, #0
	beq	.L38
.LBB11:
	.loc 1 154 0
	ldr	r3, .L50
	ldr	r2, [r7, #28]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	.loc 1 156 0
	ldr	r3, .L50
	ldr	r2, [r7, #28]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	adds	r3, r3, #68
	str	r3, [r7, #20]
	.loc 1 157 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	DL_GetLastItem
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 158 0
	b	.L40
.L44:
.LBB12:
	.loc 1 160 0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	.loc 1 162 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L41
	.loc 1 162 0 discriminator 1
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L41
	.loc 1 163 0 discriminator 2
	ldr	r3, [r7, #16]
	adds	r3, r3, #12
	movs	r2, r3
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	IsPointInRect
	subs	r3, r0, #0
	.loc 1 162 0 discriminator 2
	beq	.L41
	.loc 1 165 0
	movs	r3, #12
	adds	r2, r7, r3
	ldr	r3, [r7, #16]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_GetObjectRecursive
	movs	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L42
	.loc 1 166 0
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
.L42:
	.loc 1 167 0
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	.loc 1 168 0
	b	.L43
.L41:
	.loc 1 170 0
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	DL_GetPrevItem
	movs	r3, r0
	str	r3, [r7, #24]
.L40:
.LBE12:
	.loc 1 158 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L44
.L43:
	.loc 1 172 0
	nop
	b	.L34
.L49:
.LBE11:
	.loc 1 145 0
	nop
.L38:
.LBE10:
	.loc 1 141 0 discriminator 2
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L35:
	.loc 1 141 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bge	.L46
.L34:
.LBE9:
	.loc 1 176 0 is_stmt 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L47
	.loc 1 176 0 discriminator 1
	ldr	r3, [r7]
	ldr	r2, [r7, #32]
	str	r2, [r3]
.L47:
	.loc 1 178 0
	ldr	r3, [r7, #36]
	.loc 1 179 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #40
	@ sp needed
	pop	{r7, pc}
.L51:
	.align	2
.L50:
	.word	GUILayer
	.cfi_endproc
.LFE5:
	.size	GUI_GetObjectFromPoint, .-GUI_GetObjectFromPoint
	.section	.text.GUI_GetTopNonWindowObject,"ax",%progbits
	.align	2
	.global	GUI_GetTopNonWindowObject
	.code	16
	.thumb_func
	.type	GUI_GetTopNonWindowObject, %function
GUI_GetTopNonWindowObject:
.LFB6:
	.loc 1 182 0
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
	.loc 1 183 0
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 184 0
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 186 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L53
	.loc 1 186 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L53
.LBB13:
	.loc 1 191 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #68
	movs	r0, r3
	bl	DL_GetLastItem
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 192 0
	b	.L54
.L56:
	.loc 1 194 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	.loc 1 195 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L55
	.loc 1 195 0 discriminator 1
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #24]
	cmp	r3, #0
	beq	.L55
	.loc 1 196 0 discriminator 2
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	.loc 1 195 0 discriminator 2
	bne	.L55
	.loc 1 198 0
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	.loc 1 199 0
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	.loc 1 200 0
	b	.L53
.L55:
	.loc 1 202 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	DL_GetPrevItem
	movs	r3, r0
	str	r3, [r7, #12]
.L54:
	.loc 1 192 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L56
.L53:
.LBE13:
	.loc 1 205 0
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L57
	.loc 1 205 0 discriminator 1
	ldr	r3, [r7]
	ldr	r2, [r7, #16]
	str	r2, [r3]
.L57:
	.loc 1 207 0
	ldr	r3, [r7, #20]
	.loc 1 208 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE6:
	.size	GUI_GetTopNonWindowObject, .-GUI_GetTopNonWindowObject
	.section	.text.GUI_SetObjectHandlerOnPress,"ax",%progbits
	.align	2
	.global	GUI_SetObjectHandlerOnPress
	.code	16
	.thumb_func
	.type	GUI_SetObjectHandlerOnPress, %function
GUI_SetObjectHandlerOnPress:
.LFB7:
	.loc 1 211 0
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
	.loc 1 212 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L60
	.loc 1 214 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #36]
	.loc 1 215 0
	movs	r3, #1
	b	.L61
.L60:
	.loc 1 217 0
	movs	r3, #0
.L61:
	.loc 1 218 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	GUI_SetObjectHandlerOnPress, .-GUI_SetObjectHandlerOnPress
	.section	.text.GUI_SetObjectHandlerOnRelease,"ax",%progbits
	.align	2
	.global	GUI_SetObjectHandlerOnRelease
	.code	16
	.thumb_func
	.type	GUI_SetObjectHandlerOnRelease, %function
GUI_SetObjectHandlerOnRelease:
.LFB8:
	.loc 1 221 0
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
	.loc 1 222 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L63
	.loc 1 224 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #40]
	.loc 1 225 0
	movs	r3, #1
	b	.L64
.L63:
	.loc 1 227 0
	movs	r3, #0
.L64:
	.loc 1 228 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE8:
	.size	GUI_SetObjectHandlerOnRelease, .-GUI_SetObjectHandlerOnRelease
	.section	.text.GUI_SetObjectHandlerOnMove,"ax",%progbits
	.align	2
	.global	GUI_SetObjectHandlerOnMove
	.code	16
	.thumb_func
	.type	GUI_SetObjectHandlerOnMove, %function
GUI_SetObjectHandlerOnMove:
.LFB9:
	.loc 1 231 0
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
	.loc 1 232 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L66
	.loc 1 234 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #44]
	.loc 1 235 0
	movs	r3, #1
	b	.L67
.L66:
	.loc 1 237 0
	movs	r3, #0
.L67:
	.loc 1 238 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE9:
	.size	GUI_SetObjectHandlerOnMove, .-GUI_SetObjectHandlerOnMove
	.section	.text.GUI_SetObjectHandlerOnClick,"ax",%progbits
	.align	2
	.global	GUI_SetObjectHandlerOnClick
	.code	16
	.thumb_func
	.type	GUI_SetObjectHandlerOnClick, %function
GUI_SetObjectHandlerOnClick:
.LFB10:
	.loc 1 241 0
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
	.loc 1 242 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L69
	.loc 1 244 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #48]
	.loc 1 245 0
	movs	r3, #1
	b	.L70
.L69:
	.loc 1 247 0
	movs	r3, #0
.L70:
	.loc 1 248 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE10:
	.size	GUI_SetObjectHandlerOnClick, .-GUI_SetObjectHandlerOnClick
	.section	.text.GUI_SetObjectHandlerOnPaint,"ax",%progbits
	.align	2
	.global	GUI_SetObjectHandlerOnPaint
	.code	16
	.thumb_func
	.type	GUI_SetObjectHandlerOnPaint, %function
GUI_SetObjectHandlerOnPaint:
.LFB11:
	.loc 1 251 0
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
	.loc 1 252 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L72
	.loc 1 254 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #52]
	.loc 1 255 0
	movs	r3, #1
	b	.L73
.L72:
	.loc 1 257 0
	movs	r3, #0
.L73:
	.loc 1 258 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE11:
	.size	GUI_SetObjectHandlerOnPaint, .-GUI_SetObjectHandlerOnPaint
	.section	.text.GUI_SetObjectHandlerOnDestroy,"ax",%progbits
	.align	2
	.global	GUI_SetObjectHandlerOnDestroy
	.code	16
	.thumb_func
	.type	GUI_SetObjectHandlerOnDestroy, %function
GUI_SetObjectHandlerOnDestroy:
.LFB12:
	.loc 1 261 0
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
	.loc 1 262 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L75
	.loc 1 264 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #56]
	.loc 1 265 0
	movs	r3, #1
	b	.L76
.L75:
	.loc 1 267 0
	movs	r3, #0
.L76:
	.loc 1 268 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE12:
	.size	GUI_SetObjectHandlerOnDestroy, .-GUI_SetObjectHandlerOnDestroy
	.section	.text.GUI_GetObjectPosition,"ax",%progbits
	.align	2
	.global	GUI_GetObjectPosition
	.code	16
	.thumb_func
	.type	GUI_GetObjectPosition, %function
GUI_GetObjectPosition:
.LFB13:
	.loc 1 271 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	.loc 1 272 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L78
	.loc 1 272 0 discriminator 1
	movs	r3, #0
	b	.L79
.L78:
	.loc 1 274 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L80
	.loc 1 276 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L81
	.loc 1 277 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	movs	r1, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r4, [r7, #8]
	movs	r3, r7
	movs	r0, r3
	bl	GDI_GlobalToLocalRct
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	b	.L80
.L81:
	.loc 1 278 0
	ldr	r3, [r7, #12]
	movs	r2, #62
	ldrb	r3, [r3, r2]
	ldr	r2, [r7, #8]
	movs	r1, r2
	movs	r0, r3
	bl	LCDIF_GetLayerPosition
	subs	r3, r0, #0
	bne	.L80
	.loc 1 279 0
	movs	r3, #0
	b	.L79
.L80:
	.loc 1 281 0
	movs	r3, #1
.L79:
	.loc 1 282 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE13:
	.size	GUI_GetObjectPosition, .-GUI_GetObjectPosition
	.section	.text.GUI_SetObjectPosition,"ax",%progbits
	.align	2
	.global	GUI_SetObjectPosition
	.code	16
	.thumb_func
	.type	GUI_SetObjectPosition, %function
GUI_SetObjectPosition:
.LFB14:
	.loc 1 285 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #84
	.cfi_def_cfa_offset 96
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	.loc 1 286 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L83
	.loc 1 286 0 discriminator 2
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L84
.L83:
	.loc 1 286 0 discriminator 3
	movs	r3, #0
	b	.L85
.L84:
	.loc 1 288 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.LCB1115
	b	.L86	@long jump
.LCB1115:
.LBB14:
	.loc 1 290 0
	movs	r3, #44
	adds	r2, r7, r3
	ldr	r3, [r7, #8]
	movs	r0, r2
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
.LBB15:
	.loc 1 295 0
	movs	r3, #44
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #44
	adds	r3, r7, r3
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L87
	.loc 1 295 0 is_stmt 0 discriminator 1
	movs	r3, #70
	adds	r3, r7, r3
	movs	r2, #44
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3]
	movs	r3, #44
	adds	r3, r7, r3
	movs	r2, #4
	ldrsh	r2, [r3, r2]
	movs	r3, #44
	adds	r3, r7, r3
	strh	r2, [r3]
	movs	r3, #44
	adds	r3, r7, r3
	movs	r2, #70
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #4]
.L87:
.LBE15:
.LBB16:
	.loc 1 296 0 is_stmt 1
	movs	r3, #44
	adds	r3, r7, r3
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #44
	adds	r3, r7, r3
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L88
	.loc 1 296 0 is_stmt 0 discriminator 1
	movs	r3, #68
	adds	r3, r7, r3
	movs	r2, #44
	adds	r2, r7, r2
	ldrh	r2, [r2, #2]
	strh	r2, [r3]
	movs	r3, #44
	adds	r3, r7, r3
	movs	r2, #6
	ldrsh	r2, [r3, r2]
	movs	r3, #44
	adds	r3, r7, r3
	strh	r2, [r3, #2]
	movs	r3, #44
	adds	r3, r7, r3
	movs	r2, #68
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #6]
.L88:
.LBE16:
	.loc 1 298 0 is_stmt 1
	ldr	r3, [r7, #12]
	movs	r2, #16
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #12
	ldrsh	r3, [r3, r1]
	subs	r2, r2, r3
	movs	r3, #44
	adds	r3, r7, r3
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	movs	r1, r3
	movs	r3, #44
	adds	r3, r7, r3
	movs	r0, #0
	ldrsh	r3, [r3, r0]
	subs	r3, r1, r3
	subs	r3, r2, r3
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #67
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 299 0
	ldr	r3, [r7, #12]
	movs	r2, #18
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #14
	ldrsh	r3, [r3, r1]
	subs	r2, r2, r3
	movs	r3, #44
	adds	r3, r7, r3
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	movs	r1, r3
	movs	r3, #44
	adds	r3, r7, r3
	movs	r0, #2
	ldrsh	r3, [r3, r0]
	subs	r3, r1, r3
	subs	r3, r2, r3
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #66
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 301 0
	movs	r3, #36
	adds	r2, r7, r3
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_GetObjectPosition
	.loc 1 302 0
	movs	r3, #36
	adds	r4, r7, r3
	movs	r3, r7
	movs	r2, #36
	adds	r2, r7, r2
	movs	r1, #36
	adds	r1, r7, r1
	movs	r0, r3
	bl	GDI_GlobalToLocalRct
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 304 0
	ldr	r3, [r7, #12]
	movs	r2, #62
	ldrb	r0, [r3, r2]
	movs	r3, #65
	adds	r4, r7, r3
	movs	r3, #44
	adds	r2, r7, r3
	movs	r3, #1
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	LCDIF_SetLayerPosition
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 305 0
	movs	r3, #65
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L89
	.loc 1 307 0
	ldr	r4, [r7, #12]
	movs	r3, r7
	movs	r2, #44
	adds	r2, r7, r2
	movs	r1, #44
	adds	r1, r7, r1
	movs	r0, r3
	bl	GDI_GlobalToLocalRct
	movs	r2, r7
	movs	r3, r4
	adds	r3, r3, #12
	movs	r1, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
	.loc 1 309 0
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L89
	.loc 1 311 0
	movs	r3, #67
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L90
	.loc 1 311 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_Invalidate
	b	.L89
.L90:
	.loc 1 312 0 is_stmt 1
	movs	r3, #66
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L89
.LBB17:
	.loc 1 314 0
	movs	r3, #28
	adds	r3, r7, r3
	movs	r2, #44
	adds	r2, r7, r2
	movs	r1, #36
	adds	r1, r7, r1
	movs	r0, r3
	bl	GDI_LocalToGlobalRct
	.loc 1 315 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	movs	r2, #36
	adds	r2, r7, r2
	movs	r1, r2
	movs	r0, r3
	bl	GDI_SUBRectangles
	movs	r3, r0
	str	r3, [r7, #60]
	.loc 1 317 0
	movs	r3, #28
	adds	r4, r7, r3
	movs	r3, r7
	ldr	r2, .L101
	movs	r1, #28
	adds	r1, r7, r1
	movs	r0, r3
	bl	GDI_GlobalToLocalRct
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 318 0
	movs	r3, #28
	adds	r3, r7, r3
	ldr	r0, [r3]
	ldr	r1, [r3, #4]
	bl	LCDIF_UpdateRectangle
	.loc 1 320 0
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L89
.LBB18:
	.loc 1 324 0
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L92
.L93:
	.loc 1 325 0 discriminator 3
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	ldr	r2, [r7, #60]
	adds	r3, r2, r3
	adds	r2, r3, #4
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_InvalidateArea
	.loc 1 324 0 discriminator 3
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L92:
	.loc 1 324 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #60]
	ldr	r2, [r3]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bhi	.L93
	.loc 1 327 0 is_stmt 1
	ldr	r3, [r7, #60]
	movs	r0, r3
	bl	GDI_DeleteRList
.L89:
.LBE18:
.LBE17:
	.loc 1 332 0
	movs	r3, #65
	adds	r3, r7, r3
	ldrb	r3, [r3]
	b	.L85
.L86:
.LBE14:
.LBB19:
	.loc 1 336 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	adds	r3, r3, #12
	movs	r2, r3
	movs	r3, #20
	adds	r3, r7, r3
	ldr	r1, [r7, #8]
	movs	r0, r3
	bl	GDI_LocalToGlobalRct
.LBB20:
	.loc 1 338 0
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L94
	.loc 1 338 0 is_stmt 0 discriminator 1
	movs	r3, #58
	adds	r3, r7, r3
	movs	r2, #20
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #4
	ldrsh	r2, [r3, r2]
	movs	r3, #20
	adds	r3, r7, r3
	strh	r2, [r3]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #58
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #4]
.L94:
.LBE20:
.LBB21:
	.loc 1 339 0 is_stmt 1
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L95
	.loc 1 339 0 is_stmt 0 discriminator 1
	movs	r3, #56
	adds	r3, r7, r3
	movs	r2, #20
	adds	r2, r7, r2
	ldrh	r2, [r2, #2]
	strh	r2, [r3]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #6
	ldrsh	r2, [r3, r2]
	movs	r3, #20
	adds	r3, r7, r3
	strh	r2, [r3, #2]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #56
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #6]
.L95:
.LBE21:
	.loc 1 341 0 is_stmt 1
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	movs	r2, #20
	adds	r1, r7, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcmp
	subs	r3, r0, #0
	beq	.L96
.LBB22:
	.loc 1 343 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	movs	r2, r3
	movs	r3, #20
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_GlobalToLocalPt
	movs	r3, r0
	movs	r2, r3
	movs	r3, #16
	adds	r3, r7, r3
	str	r2, [r3]
	.loc 1 344 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	movs	r2, #20
	adds	r2, r7, r2
	movs	r1, r2
	movs	r0, r3
	bl	GDI_SUBRectangles
	movs	r3, r0
	str	r3, [r7, #52]
	.loc 1 346 0
	ldr	r3, [r7, #12]
	movs	r2, #20
	adds	r2, r7, r2
	adds	r3, r3, #12
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	.loc 1 348 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L97
	.loc 1 349 0
	movs	r3, #16
	adds	r2, r7, r3
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_UpdateChildPositions
.L97:
	.loc 1 350 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_Invalidate
	.loc 1 352 0
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L96
.LBB23:
	.loc 1 356 0
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L99
.L100:
	.loc 1 357 0 discriminator 3
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #20]
	ldr	r3, [r7, #72]
	lsls	r3, r3, #3
	ldr	r2, [r7, #52]
	adds	r3, r2, r3
	adds	r3, r3, #4
	movs	r1, r3
	bl	GUI_InvalidateArea
	.loc 1 356 0 discriminator 3
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L99:
	.loc 1 356 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #52]
	ldr	r2, [r3]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bhi	.L100
	.loc 1 359 0 is_stmt 1
	ldr	r3, [r7, #52]
	movs	r0, r3
	bl	GDI_DeleteRList
.L96:
.LBE23:
.LBE22:
.LBE19:
	.loc 1 363 0 discriminator 2
	movs	r3, #1
.L85:
	.loc 1 364 0 discriminator 1
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r7, pc}
.L102:
	.align	2
.L101:
	.word	LCDScreen+8
	.cfi_endproc
.LFE14:
	.size	GUI_SetObjectPosition, .-GUI_SetObjectPosition
	.section	.text.GUI_GetObjectEnabled,"ax",%progbits
	.align	2
	.global	GUI_GetObjectEnabled
	.code	16
	.thumb_func
	.type	GUI_GetObjectEnabled, %function
GUI_GetObjectEnabled:
.LFB15:
	.loc 1 367 0
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
	.loc 1 368 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L104
	.loc 1 368 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #25]
	cmp	r3, #0
	beq	.L104
	.loc 1 368 0 discriminator 3
	movs	r3, #1
	b	.L105
.L104:
	.loc 1 368 0 discriminator 4
	movs	r3, #0
.L105:
	.loc 1 368 0 is_stmt 1 discriminator 6
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 369 0 discriminator 6
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE15:
	.size	GUI_GetObjectEnabled, .-GUI_GetObjectEnabled
	.section	.text.GUI_SetObjectEnabled,"ax",%progbits
	.align	2
	.global	GUI_SetObjectEnabled
	.code	16
	.thumb_func
	.type	GUI_SetObjectEnabled, %function
GUI_SetObjectEnabled:
.LFB16:
	.loc 1 372 0
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
	movs	r2, r1
	adds	r3, r7, #3
	strb	r2, [r3]
	.loc 1 373 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L108
	.loc 1 373 0 discriminator 1
	movs	r3, #0
	b	.L109
.L108:
	.loc 1 374 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #25]
	adds	r2, r7, #3
	ldrb	r2, [r2]
	cmp	r2, r3
	beq	.L110
	.loc 1 376 0
	ldr	r3, [r7, #4]
	adds	r2, r7, #3
	ldrb	r2, [r2]
	strb	r2, [r3, #25]
	.loc 1 377 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L110
	.loc 1 379 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L111
	.loc 1 379 0 is_stmt 0 discriminator 1
	bl	GUI_GetObjectActive
	movs	r3, r0
	movs	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L111
	.loc 1 380 0 is_stmt 1
	movs	r1, #0
	movs	r0, #0
	bl	GUI_SetObjectActive
.L111:
	.loc 1 382 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L112
	.loc 1 383 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_UpdateChildTreeInheritance
.L112:
	.loc 1 385 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_Invalidate
.L110:
	.loc 1 388 0
	movs	r3, #1
.L109:
	.loc 1 389 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE16:
	.size	GUI_SetObjectEnabled, .-GUI_SetObjectEnabled
	.section	.text.GUI_GetObjectVisibility,"ax",%progbits
	.align	2
	.global	GUI_GetObjectVisibility
	.code	16
	.thumb_func
	.type	GUI_GetObjectVisibility, %function
GUI_GetObjectVisibility:
.LFB17:
	.loc 1 392 0
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
	.loc 1 393 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L114
	.loc 1 393 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L114
	.loc 1 393 0 discriminator 3
	movs	r3, #1
	b	.L115
.L114:
	.loc 1 393 0 discriminator 4
	movs	r3, #0
.L115:
	.loc 1 393 0 is_stmt 1 discriminator 6
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 394 0 discriminator 6
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE17:
	.size	GUI_GetObjectVisibility, .-GUI_GetObjectVisibility
	.section	.text.GUI_SetObjectVisibility,"ax",%progbits
	.align	2
	.global	GUI_SetObjectVisibility
	.code	16
	.thumb_func
	.type	GUI_SetObjectVisibility, %function
GUI_SetObjectVisibility:
.LFB18:
	.loc 1 397 0
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
	movs	r2, r1
	adds	r3, r7, #3
	strb	r2, [r3]
	.loc 1 398 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L118
	.loc 1 398 0 discriminator 1
	movs	r3, #0
	b	.L119
.L118:
	.loc 1 399 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #26]
	adds	r2, r7, #3
	ldrb	r2, [r2]
	cmp	r2, r3
	beq	.L120
	.loc 1 401 0
	ldr	r3, [r7, #4]
	adds	r2, r7, #3
	ldrb	r2, [r2]
	strb	r2, [r3, #26]
	.loc 1 403 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L121
	.loc 1 403 0 is_stmt 0 discriminator 1
	bl	GUI_GetObjectActive
	movs	r3, r0
	movs	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L121
	.loc 1 404 0 is_stmt 1
	movs	r1, #0
	movs	r0, #0
	bl	GUI_SetObjectActive
.L121:
	.loc 1 406 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L122
	.loc 1 408 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L120
	.loc 1 410 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_UpdateChildTreeInheritance
	.loc 1 411 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L124
	.loc 1 413 0
	ldr	r3, [r7, #4]
	movs	r2, #62
	ldrb	r0, [r3, r2]
	adds	r3, r7, #3
	ldrb	r3, [r3]
	movs	r2, #0
	movs	r1, r3
	bl	LCDIF_SetLayerEnabled
	.loc 1 414 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_Invalidate
	b	.L120
.L124:
	.loc 1 416 0
	ldr	r3, [r7, #4]
	movs	r2, #62
	ldrb	r0, [r3, r2]
	adds	r3, r7, #3
	ldrb	r3, [r3]
	movs	r2, #1
	movs	r1, r3
	bl	LCDIF_SetLayerEnabled
	b	.L120
.L122:
	.loc 1 421 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L125
	.loc 1 422 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_UpdateChildTreeInheritance
.L125:
	.loc 1 424 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_Invalidate
.L120:
	.loc 1 427 0
	movs	r3, #1
.L119:
	.loc 1 428 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE18:
	.size	GUI_SetObjectVisibility, .-GUI_SetObjectVisibility
	.section	.text.GUI_GetObjectText,"ax",%progbits
	.align	2
	.global	GUI_GetObjectText
	.code	16
	.thumb_func
	.type	GUI_GetObjectText, %function
GUI_GetObjectText:
.LFB19:
	.loc 1 431 0
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
	.loc 1 432 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L127
	.loc 1 432 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bhi	.L127
.LBB24:
	.loc 1 442 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L129
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L127
	.loc 1 443 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L129
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
	movs	r3, r0
	b	.L128
.L127:
.LBE24:
	.loc 1 445 0
	movs	r3, #0
.L128:
	.loc 1 446 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L130:
	.align	2
.L129:
	.word	GetTextObject.7631
	.cfi_endproc
.LFE19:
	.size	GUI_GetObjectText, .-GUI_GetObjectText
	.section	.text.GUI_SetObjectText,"ax",%progbits
	.align	2
	.global	GUI_SetObjectText
	.code	16
	.thumb_func
	.type	GUI_SetObjectText, %function
GUI_SetObjectText:
.LFB20:
	.loc 1 449 0
	.cfi_startproc
	@ args = 28, pretend = 16, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 7, -24
	.cfi_offset 14, -20
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	movs	r0, #4
	movs	r4, #32
	mov	ip, r4
	add	ip, ip, r7
	add	r0, r0, ip
	str	r1, [r0]
	str	r2, [r0, #4]
	str	r3, [r0, #8]
	.loc 1 450 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 452 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L132
	.loc 1 452 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bhi	.L132
.LBB25:
	.loc 1 462 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L134
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L132
	.loc 1 464 0
	movs	r3, #36
	adds	r3, r7, r3
	movs	r0, r3
	bl	GDI_UpdateTextExtent
	.loc 1 466 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L134
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	movs	r2, #15
	adds	r4, r7, r2
	movs	r2, #36
	adds	r1, r7, r2
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
	movs	r3, r0
	strb	r3, [r4]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L132
	.loc 1 467 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_Invalidate
.L132:
.LBE25:
	.loc 1 470 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 471 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7}
	pop	{r3}
	add	sp, sp, #16
	bx	r3
.L135:
	.align	2
.L134:
	.word	SetTextObject.7639
	.cfi_endproc
.LFE20:
	.size	GUI_SetObjectText, .-GUI_SetObjectText
	.section	.text.GUI_GetObjectFont,"ax",%progbits
	.align	2
	.global	GUI_GetObjectFont
	.code	16
	.thumb_func
	.type	GUI_GetObjectFont, %function
GUI_GetObjectFont:
.LFB21:
	.loc 1 474 0
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
	.loc 1 475 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L137
	.loc 1 475 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bhi	.L137
.LBB26:
	.loc 1 485 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L141
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L137
.LBB27:
	.loc 1 487 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L141
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 489 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L138
	.loc 1 489 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	.loc 1 489 0 is_stmt 1 discriminator 1
	b	.L140
.L138:
	.loc 1 489 0 discriminator 2
	movs	r3, #0
	.loc 1 489 0 discriminator 2
	b	.L140
.L137:
.LBE27:
.LBE26:
	.loc 1 492 0
	movs	r3, #0
.L140:
	.loc 1 493 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L142:
	.align	2
.L141:
	.word	GetTextObject.7644
	.cfi_endproc
.LFE21:
	.size	GUI_GetObjectFont, .-GUI_GetObjectFont
	.section	.text.GUI_SetObjectFont,"ax",%progbits
	.align	2
	.global	GUI_SetObjectFont
	.code	16
	.thumb_func
	.type	GUI_SetObjectFont, %function
GUI_SetObjectFont:
.LFB22:
	.loc 1 496 0
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
	.loc 1 497 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 499 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L144
	.loc 1 499 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bhi	.L144
.LBB28:
	.loc 1 510 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L146
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L144
	.loc 1 511 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L146
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	.loc 1 510 0 discriminator 1
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
	movs	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L144
	.loc 1 513 0
	ldr	r3, [r7, #8]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	.loc 1 514 0
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	GDI_UpdateTextExtent
	.loc 1 516 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_Invalidate
	.loc 1 517 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.L144:
.LBE28:
	.loc 1 520 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 521 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L147:
	.align	2
.L146:
	.word	GetTextObject.7653
	.cfi_endproc
.LFE22:
	.size	GUI_SetObjectFont, .-GUI_SetObjectFont
	.section	.text.GUI_GetObjectTextColor,"ax",%progbits
	.align	2
	.global	GUI_GetObjectTextColor
	.code	16
	.thumb_func
	.type	GUI_GetObjectTextColor, %function
GUI_GetObjectTextColor:
.LFB23:
	.loc 1 524 0
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
	.loc 1 525 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L149
	.loc 1 525 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bhi	.L149
.LBB29:
	.loc 1 535 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L153
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L149
.LBB30:
	.loc 1 537 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L153
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 539 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L150
	.loc 1 539 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	.loc 1 539 0 is_stmt 1 discriminator 1
	b	.L152
.L150:
	.loc 1 539 0 discriminator 2
	movs	r3, #0
	.loc 1 539 0 discriminator 2
	b	.L152
.L149:
.LBE30:
.LBE29:
	.loc 1 542 0
	movs	r3, #0
.L152:
	.loc 1 543 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L154:
	.align	2
.L153:
	.word	GetTextObject.7658
	.cfi_endproc
.LFE23:
	.size	GUI_GetObjectTextColor, .-GUI_GetObjectTextColor
	.section	.text.GUI_SetObjecTextColor,"ax",%progbits
	.align	2
	.global	GUI_SetObjecTextColor
	.code	16
	.thumb_func
	.type	GUI_SetObjecTextColor, %function
GUI_SetObjecTextColor:
.LFB24:
	.loc 1 546 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #52
	.cfi_def_cfa_offset 64
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	adds	r3, r7, #4
	str	r1, [r3]
	str	r2, [r3, #4]
	.loc 1 547 0
	movs	r3, #47
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 549 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L156
	.loc 1 549 0 discriminator 1
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bhi	.L156
.LBB31:
	.loc 1 560 0
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L160
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L156
	.loc 1 561 0 discriminator 1
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L160
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	.loc 1 560 0 discriminator 1
	ldr	r2, [r7, #12]
	movs	r0, r2
	blx	r3
	movs	r3, r0
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L156
.LBB32:
	.loc 1 563 0
	movs	r3, #16
	adds	r3, r7, r3
	ldr	r2, [r7, #40]
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	.loc 1 572 0
	movs	r3, #16
	adds	r3, r7, r3
	adds	r2, r7, #4
	adds	r3, r3, #8
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	.loc 1 573 0
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L160+4
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L157
	.loc 1 574 0
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L160+4
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	movs	r2, #47
	adds	r4, r7, r2
	movs	r2, #16
	adds	r1, r7, r2
	ldr	r2, [r7, #12]
	movs	r0, r2
	blx	r3
	movs	r3, r0
	strb	r3, [r4]
.L157:
	.loc 1 576 0
	movs	r3, #47
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L156
	.loc 1 576 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_Invalidate
.L156:
.LBE32:
.LBE31:
	.loc 1 579 0 is_stmt 1
	movs	r3, #47
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 580 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r7, pc}
.L161:
	.align	2
.L160:
	.word	GetTextObject.7667
	.word	SetTextObject.7671
	.cfi_endproc
.LFE24:
	.size	GUI_SetObjecTextColor, .-GUI_SetObjecTextColor
	.section	.text.GUI_GetObjectCaption,"ax",%progbits
	.align	2
	.global	GUI_GetObjectCaption
	.code	16
	.thumb_func
	.type	GUI_GetObjectCaption, %function
GUI_GetObjectCaption:
.LFB25:
	.loc 1 583 0
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
	.loc 1 584 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L163
	.loc 1 584 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bhi	.L163
.LBB33:
	.loc 1 594 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L167
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L163
.LBB34:
	.loc 1 596 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L167
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 598 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L164
	.loc 1 598 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	.loc 1 598 0 is_stmt 1 discriminator 1
	b	.L166
.L164:
	.loc 1 598 0 discriminator 2
	movs	r3, #0
	.loc 1 598 0 discriminator 2
	b	.L166
.L163:
.LBE34:
.LBE33:
	.loc 1 601 0
	movs	r3, #0
.L166:
	.loc 1 602 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L168:
	.align	2
.L167:
	.word	GetTextObject.7676
	.cfi_endproc
.LFE25:
	.size	GUI_GetObjectCaption, .-GUI_GetObjectCaption
	.section	.text.GUI_SetObjectCaption,"ax",%progbits
	.align	2
	.global	GUI_SetObjectCaption
	.code	16
	.thumb_func
	.type	GUI_SetObjectCaption, %function
GUI_SetObjectCaption:
.LFB26:
	.loc 1 605 0
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
	.loc 1 606 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 608 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L170
	.loc 1 608 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bhi	.L170
.LBB35:
	.loc 1 619 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L175
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L170
	.loc 1 620 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L175
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	.loc 1 619 0 discriminator 1
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
	movs	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L170
	.loc 1 622 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L171
	.loc 1 622 0 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	movs	r0, r3
	bl	IsDynamicMemory
	subs	r3, r0, #0
	beq	.L171
	.loc 1 623 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	movs	r0, r3
	bl	free
.L171:
	.loc 1 625 0
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #20]
	.loc 1 627 0
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L172
	.loc 1 627 0 discriminator 1
	ldr	r3, [r7]
	movs	r0, r3
	bl	IsStackMemory
	subs	r3, r0, #0
	beq	.L172
.LBB36:
	.loc 1 629 0
	ldr	r3, [r7]
	movs	r0, r3
	bl	strlen
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 630 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	movs	r0, r3
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 632 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L173
	.loc 1 634 0
	ldr	r2, [r7, #12]
	ldr	r1, [r7]
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	memcpy
	.loc 1 635 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r2, r3
	movs	r2, #0
	strb	r2, [r3]
.L173:
	.loc 1 637 0
	ldr	r3, [r7, #8]
	str	r3, [r7]
.L172:
.LBE36:
	.loc 1 639 0
	ldr	r3, [r7, #16]
	ldr	r2, [r7]
	str	r2, [r3, #20]
	.loc 1 640 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	GDI_UpdateTextExtent
	.loc 1 642 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_Invalidate
	.loc 1 643 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.L170:
.LBE35:
	.loc 1 646 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 647 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L176:
	.align	2
.L175:
	.word	GetTextObject.7685
	.cfi_endproc
.LFE26:
	.size	GUI_SetObjectCaption, .-GUI_SetObjectCaption
	.section	.text.GUI_GetObjectActive,"ax",%progbits
	.align	2
	.global	GUI_GetObjectActive
	.code	16
	.thumb_func
	.type	GUI_GetObjectActive, %function
GUI_GetObjectActive:
.LFB27:
	.loc 1 650 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 651 0
	ldr	r3, .L179
	ldr	r3, [r3]
	.loc 1 652 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L180:
	.align	2
.L179:
	.word	ActiveObject
	.cfi_endproc
.LFE27:
	.size	GUI_GetObjectActive, .-GUI_GetObjectActive
	.section	.text.GUI_SetObjectActive,"ax",%progbits
	.align	2
	.global	GUI_SetObjectActive
	.code	16
	.thumb_func
	.type	GUI_SetObjectActive, %function
GUI_SetObjectActive:
.LFB28:
	.loc 1 655 0
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
	movs	r2, r1
	adds	r3, r7, #3
	strb	r2, [r3]
	.loc 1 656 0
	ldr	r2, [r7, #4]
	ldr	r3, .L188
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L186
.LBB37:
	.loc 1 666 0
	ldr	r3, .L188
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L183
	.loc 1 668 0
	ldr	r3, .L188
	ldr	r3, [r3]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L188+4
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L183
	.loc 1 670 0
	ldr	r3, .L188
	ldr	r3, [r3]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L188+4
	lsls	r2, r2, #2
	ldr	r2, [r2, r3]
	ldr	r3, .L188
	ldr	r3, [r3]
	movs	r1, #0
	movs	r0, r3
	blx	r2
	.loc 1 671 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L183
	.loc 1 671 0 is_stmt 0 discriminator 1
	ldr	r3, .L188
	ldr	r3, [r3]
	movs	r0, r3
	bl	GUI_Invalidate
.L183:
	.loc 1 674 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bhi	.L184
	.loc 1 674 0 is_stmt 0 discriminator 1
	ldr	r3, .L188
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, .L188
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L184
	.loc 1 676 0 is_stmt 1
	ldr	r3, .L188
	ldr	r3, [r3]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L188+4
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L187
	.loc 1 678 0
	ldr	r3, .L188
	ldr	r3, [r3]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L188+4
	lsls	r2, r2, #2
	ldr	r2, [r2, r3]
	ldr	r3, .L188
	ldr	r3, [r3]
	movs	r1, #1
	movs	r0, r3
	blx	r2
	.loc 1 679 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L187
	.loc 1 679 0 is_stmt 0 discriminator 1
	ldr	r3, .L188
	ldr	r3, [r3]
	movs	r0, r3
	bl	GUI_Invalidate
	.loc 1 676 0 is_stmt 1 discriminator 1
	b	.L187
.L184:
	.loc 1 682 0
	ldr	r3, .L188
	movs	r2, #0
	str	r2, [r3]
.LBE37:
	.loc 1 684 0
	b	.L186
.L187:
.LBB38:
	.loc 1 676 0
	nop
.L186:
.LBE38:
	.loc 1 684 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L189:
	.align	2
.L188:
	.word	ActiveObject
	.word	SetActive.7697
	.cfi_endproc
.LFE28:
	.size	GUI_SetObjectActive, .-GUI_SetObjectActive
	.section	.text.GUI_UpdateActiveState,"ax",%progbits
	.align	2
	.global	GUI_UpdateActiveState
	.code	16
	.thumb_func
	.type	GUI_UpdateActiveState, %function
GUI_UpdateActiveState:
.LFB29:
	.loc 1 687 0
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
	movs	r2, r1
	adds	r3, r7, #3
	strb	r2, [r3]
	.loc 1 688 0
	ldr	r3, .L193
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L192
	.loc 1 688 0 discriminator 1
	ldr	r2, [r7, #4]
	ldr	r3, .L193
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L192
.LBB39:
	.loc 1 705 0
	ldr	r3, .L193
	ldr	r3, [r3]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L193+4
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L192
	.loc 1 705 0 discriminator 1
	ldr	r3, .L193
	ldr	r3, [r3]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L193+8
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L192
	.loc 1 706 0 discriminator 2
	ldr	r3, .L193
	ldr	r3, [r3]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L193+8
	lsls	r2, r2, #2
	ldr	r2, [r2, r3]
	ldr	r3, .L193
	ldr	r3, [r3]
	movs	r0, r3
	blx	r2
	movs	r3, r0
	movs	r2, r3
	.loc 1 705 0 discriminator 2
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, r2
	beq	.L192
	.loc 1 708 0
	ldr	r3, .L193
	ldr	r3, [r3]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L193+4
	lsls	r2, r2, #2
	ldr	r2, [r2, r3]
	ldr	r3, .L193
	ldr	r0, [r3]
	adds	r3, r7, #3
	ldrb	r3, [r3]
	movs	r1, r3
	blx	r2
	.loc 1 709 0
	ldr	r3, .L193
	ldr	r3, [r3]
	movs	r0, r3
	bl	GUI_Invalidate
.L192:
.LBE39:
	.loc 1 712 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L194:
	.align	2
.L193:
	.word	ActiveObject
	.word	SetActive.7704
	.word	GetActive.7706
	.cfi_endproc
.LFE29:
	.size	GUI_UpdateActiveState, .-GUI_UpdateActiveState
	.section	.text.GUI_DrawObjectDefault,"ax",%progbits
	.align	2
	.global	GUI_DrawObjectDefault
	.code	16
	.thumb_func
	.type	GUI_DrawObjectDefault, %function
GUI_DrawObjectDefault:
.LFB30:
	.loc 1 715 0
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
	.loc 1 716 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L197
	.loc 1 716 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bhi	.L197
	.loc 1 716 0 is_stmt 0 discriminator 2
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L197
.LBB40:
	.loc 1 726 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L198
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L197
	.loc 1 727 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L198
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
.L197:
.LBE40:
	.loc 1 729 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L199:
	.align	2
.L198:
	.word	DrawDefault.7713
	.cfi_endproc
.LFE30:
	.size	GUI_DrawObjectDefault, .-GUI_DrawObjectDefault
	.section	.text.GUI_DestroyObject,"ax",%progbits
	.align	2
	.global	GUI_DestroyObject
	.code	16
	.thumb_func
	.type	GUI_DestroyObject, %function
GUI_DestroyObject:
.LFB31:
	.loc 1 732 0
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
	.loc 1 733 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L201
	.loc 1 733 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #0
	beq	.L201
	.loc 1 733 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bhi	.L201
.LBB41:
	.loc 1 735 0 is_stmt 1
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 737 0
	ldr	r3, [r7, #4]
	movs	r1, #0
	movs	r0, r3
	bl	GUI_SetObjectVisibility
	.loc 1 739 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	.loc 1 740 0
	movs	r3, #12
	adds	r2, r7, r3
	movs	r3, #4
	movs	r1, #0
	movs	r0, #5
	bl	EM_PostEvent
.L201:
.LBE41:
	.loc 1 742 0
	movs	r3, #0
	.loc 1 743 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE31:
	.size	GUI_DestroyObject, .-GUI_DestroyObject
	.section	.rodata.CalcClientArea.7518,"a",%progbits
	.align	2
	.type	CalcClientArea.7518, %object
	.size	CalcClientArea.7518, 16
CalcClientArea.7518:
	.word	0
	.word	GUI_CalcClientAreaWindow
	.word	GUI_CalcClientAreaButton
	.word	0
	.section	.rodata.GetTextObject.7631,"a",%progbits
	.align	2
	.type	GetTextObject.7631, %object
	.size	GetTextObject.7631, 16
GetTextObject.7631:
	.word	0
	.word	0
	.word	GUI_GetTextButton
	.word	GUI_GetTextLabel
	.section	.rodata.SetTextObject.7639,"a",%progbits
	.align	2
	.type	SetTextObject.7639, %object
	.size	SetTextObject.7639, 16
SetTextObject.7639:
	.word	0
	.word	0
	.word	GUI_SetTextButton
	.word	GUI_SetTextLabel
	.section	.rodata.GetTextObject.7644,"a",%progbits
	.align	2
	.type	GetTextObject.7644, %object
	.size	GetTextObject.7644, 16
GetTextObject.7644:
	.word	0
	.word	0
	.word	GUI_GetTextButton
	.word	GUI_GetTextLabel
	.section	.rodata.GetTextObject.7653,"a",%progbits
	.align	2
	.type	GetTextObject.7653, %object
	.size	GetTextObject.7653, 16
GetTextObject.7653:
	.word	0
	.word	0
	.word	GUI_GetTextButton
	.word	GUI_GetTextLabel
	.section	.rodata.GetTextObject.7658,"a",%progbits
	.align	2
	.type	GetTextObject.7658, %object
	.size	GetTextObject.7658, 16
GetTextObject.7658:
	.word	0
	.word	0
	.word	GUI_GetTextButton
	.word	GUI_GetTextLabel
	.section	.rodata.GetTextObject.7667,"a",%progbits
	.align	2
	.type	GetTextObject.7667, %object
	.size	GetTextObject.7667, 16
GetTextObject.7667:
	.word	0
	.word	0
	.word	GUI_GetTextButton
	.word	GUI_GetTextLabel
	.section	.rodata.SetTextObject.7671,"a",%progbits
	.align	2
	.type	SetTextObject.7671, %object
	.size	SetTextObject.7671, 16
SetTextObject.7671:
	.word	0
	.word	0
	.word	GUI_SetTextButton
	.word	GUI_SetTextLabel
	.section	.rodata.GetTextObject.7676,"a",%progbits
	.align	2
	.type	GetTextObject.7676, %object
	.size	GetTextObject.7676, 16
GetTextObject.7676:
	.word	0
	.word	0
	.word	GUI_GetTextButton
	.word	GUI_GetTextLabel
	.section	.rodata.GetTextObject.7685,"a",%progbits
	.align	2
	.type	GetTextObject.7685, %object
	.size	GetTextObject.7685, 16
GetTextObject.7685:
	.word	0
	.word	0
	.word	GUI_GetTextButton
	.word	GUI_GetTextLabel
	.section	.rodata.SetActive.7697,"a",%progbits
	.align	2
	.type	SetActive.7697, %object
	.size	SetActive.7697, 16
SetActive.7697:
	.word	0
	.word	0
	.word	GUI_SetActiveButton
	.word	0
	.section	.rodata.SetActive.7704,"a",%progbits
	.align	2
	.type	SetActive.7704, %object
	.size	SetActive.7704, 16
SetActive.7704:
	.word	0
	.word	0
	.word	GUI_SetActiveButton
	.word	0
	.section	.rodata.GetActive.7706,"a",%progbits
	.align	2
	.type	GetActive.7706, %object
	.size	GetActive.7706, 16
GetActive.7706:
	.word	0
	.word	0
	.word	GUI_GetActiveButton
	.word	0
	.section	.rodata.DrawDefault.7713,"a",%progbits
	.align	2
	.type	DrawDefault.7713, %object
	.size	DrawDefault.7713, 16
DrawDefault.7713:
	.word	0
	.word	GUI_DrawDefaultWindow
	.word	GUI_DrawDefaultButton
	.word	GUI_DrawDefaultLabel
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\System/dlist.h"
	.file 6 ".\\Source\\GUI/gditypes.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 8 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 9 ".\\Source\\System/evmngr.h"
	.file 10 ".\\Source\\GUI/bfcfont.h"
	.file 11 ".\\Source\\GUI/gdifont.h"
	.file 12 ".\\Source\\GUI/guiobject.h"
	.file 13 ".\\Source\\GUI/guiwin.h"
	.file 14 ".\\Source\\GUI/gui.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1847
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF281
	.byte	0xc
	.4byte	.LASF282
	.4byte	.LASF283
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
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xca
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x20
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x24
	.4byte	0x50
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x30
	.4byte	0x74
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x48
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF21
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x105
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.uleb128 0x6
	.byte	0x4
	.4byte	0x112
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0x12c
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0x1d
	.4byte	0x113
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x17
	.4byte	0x142
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xc
	.byte	0x5
	.byte	0x18
	.4byte	0x173
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1a
	.4byte	0x173
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x1b
	.4byte	0x173
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x1c
	.4byte	0xfd
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x17
	.4byte	0x17e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x142
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xc
	.byte	0x5
	.byte	0x1f
	.4byte	0x1b5
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x21
	.4byte	0x173
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x22
	.4byte	0x173
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x23
	.4byte	0xd9
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x5
	.byte	0x24
	.4byte	0x184
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0x24
	.4byte	0x1cb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x184
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x4
	.4byte	0xa6
	.byte	0x6
	.byte	0x16
	.4byte	0x2c3
	.uleb128 0xd
	.4byte	.LASF39
	.4byte	0xff000000
	.uleb128 0xd
	.4byte	.LASF40
	.4byte	0xff003366
	.uleb128 0xd
	.4byte	.LASF41
	.4byte	0xff000080
	.uleb128 0xd
	.4byte	.LASF42
	.4byte	0xff008000
	.uleb128 0xd
	.4byte	.LASF43
	.4byte	0xff008080
	.uleb128 0xd
	.4byte	.LASF44
	.4byte	0xff400000
	.uleb128 0xd
	.4byte	.LASF45
	.4byte	0xff404040
	.uleb128 0xd
	.4byte	.LASF46
	.4byte	0xff800000
	.uleb128 0xd
	.4byte	.LASF47
	.4byte	0xff800080
	.uleb128 0xd
	.4byte	.LASF48
	.4byte	0xff808000
	.uleb128 0xd
	.4byte	.LASF49
	.4byte	0xff808080
	.uleb128 0xd
	.4byte	.LASF50
	.4byte	0xffc0c0c0
	.uleb128 0xd
	.4byte	.LASF51
	.4byte	0xff0000ff
	.uleb128 0xd
	.4byte	.LASF52
	.4byte	0xff00c000
	.uleb128 0xd
	.4byte	.LASF53
	.4byte	0xff00ff00
	.uleb128 0xd
	.4byte	.LASF54
	.4byte	0xff00ffff
	.uleb128 0xd
	.4byte	.LASF55
	.4byte	0xffff0000
	.uleb128 0xd
	.4byte	.LASF56
	.4byte	0xffff00ff
	.uleb128 0xd
	.4byte	.LASF57
	.4byte	0xffffff00
	.uleb128 0xd
	.4byte	.LASF58
	.4byte	0xffffffff
	.uleb128 0xd
	.4byte	.LASF59
	.4byte	0xffc0dcc0
	.uleb128 0xd
	.4byte	.LASF60
	.4byte	0xfff0c8a4
	.uleb128 0xd
	.4byte	.LASF61
	.4byte	0xfff0f8fc
	.uleb128 0xd
	.4byte	.LASF62
	.4byte	0xffa4a0a0
	.uleb128 0xd
	.4byte	.LASF63
	.4byte	0xffc8d0d4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x6
	.byte	0x31
	.4byte	0x1d1
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x33
	.4byte	0x30f
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x6
	.byte	0x3d
	.4byte	0x2ce
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x4
	.byte	0x6
	.byte	0x41
	.4byte	0x33b
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x6
	.byte	0x43
	.4byte	0xb8
	.byte	0
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x6
	.byte	0x44
	.4byte	0xb8
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x6
	.byte	0x45
	.4byte	0x31a
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x6
	.byte	0x45
	.4byte	0x351
	.uleb128 0x6
	.byte	0x4
	.4byte	0x31a
	.uleb128 0xf
	.byte	0x8
	.byte	0x6
	.byte	0x49
	.4byte	0x376
	.uleb128 0xe
	.ascii	"lt\000"
	.byte	0x6
	.byte	0x4b
	.4byte	0x33b
	.byte	0
	.uleb128 0xe
	.ascii	"rb\000"
	.byte	0x6
	.byte	0x4c
	.4byte	0x33b
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x6
	.byte	0x4e
	.4byte	0x3a7
	.uleb128 0xe
	.ascii	"l\000"
	.byte	0x6
	.byte	0x50
	.4byte	0xb8
	.byte	0
	.uleb128 0xe
	.ascii	"t\000"
	.byte	0x6
	.byte	0x51
	.4byte	0xb8
	.byte	0x2
	.uleb128 0xe
	.ascii	"r\000"
	.byte	0x6
	.byte	0x52
	.4byte	0xb8
	.byte	0x4
	.uleb128 0xe
	.ascii	"b\000"
	.byte	0x6
	.byte	0x53
	.4byte	0xb8
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF284
	.byte	0x8
	.byte	0x6
	.byte	0x47
	.4byte	0x3be
	.uleb128 0x11
	.4byte	0x357
	.uleb128 0x11
	.4byte	0x376
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x6
	.byte	0x55
	.4byte	0x3a7
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x6
	.byte	0x55
	.4byte	0x3d4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a7
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x4
	.byte	0x6
	.byte	0x5d
	.4byte	0x3fd
	.uleb128 0xe
	.ascii	"sx\000"
	.byte	0x6
	.byte	0x5f
	.4byte	0xc3
	.byte	0
	.uleb128 0xe
	.ascii	"sy\000"
	.byte	0x6
	.byte	0x60
	.4byte	0xc3
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x6
	.byte	0x61
	.4byte	0x3da
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x24
	.byte	0x6
	.byte	0x63
	.4byte	0x42d
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x65
	.4byte	0xd9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x6
	.byte	0x66
	.4byte	0x42d
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	0x3be
	.4byte	0x43d
	.uleb128 0x13
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x6
	.byte	0x67
	.4byte	0x448
	.uleb128 0x6
	.byte	0x4
	.4byte	0x408
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0xf1
	.4byte	0x47d
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x7
	.byte	0xf8
	.4byte	0x44e
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1c
	.byte	0x7
	.2byte	0x119
	.4byte	0x4fe
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x11b
	.4byte	0x12c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x11c
	.4byte	0x12c
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x11d
	.4byte	0x3be
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x11e
	.4byte	0x33b
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x11f
	.4byte	0xd9
	.byte	0x10
	.uleb128 0x16
	.ascii	"BPP\000"
	.byte	0x7
	.2byte	0x120
	.4byte	0xad
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x121
	.4byte	0x30f
	.byte	0x15
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x122
	.4byte	0xfd
	.byte	0x18
	.byte	0
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x123
	.4byte	0x488
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x88
	.byte	0x7
	.2byte	0x125
	.4byte	0x566
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x127
	.4byte	0x3be
	.byte	0
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x128
	.4byte	0x33b
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x129
	.4byte	0xd9
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x12a
	.4byte	0xd9
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x12b
	.4byte	0x12c
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x12c
	.4byte	0x566
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.4byte	0x4fe
	.4byte	0x576
	.uleb128 0x13
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x12d
	.4byte	0x50a
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0x1
	.4byte	0x37
	.byte	0x8
	.byte	0x24
	.4byte	0x5c9
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x1
	.4byte	0x37
	.byte	0x9
	.byte	0x16
	.4byte	0x60a
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x9
	.byte	0x23
	.4byte	0x5c9
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0x18
	.byte	0x9
	.byte	0x25
	.4byte	0x65e
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x9
	.byte	0x27
	.4byte	0x137
	.byte	0
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x9
	.byte	0x28
	.4byte	0x60a
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x9
	.byte	0x29
	.4byte	0xfd
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x9
	.byte	0x2a
	.4byte	0xd9
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x9
	.byte	0x2b
	.4byte	0x65e
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.4byte	0xad
	.4byte	0x66d
	.uleb128 0x18
	.4byte	0xf6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0x9
	.byte	0x2c
	.4byte	0x678
	.uleb128 0x6
	.byte	0x4
	.4byte	0x615
	.uleb128 0x19
	.byte	0x4
	.byte	0xa
	.byte	0x3d
	.4byte	0x6b3
	.uleb128 0x1a
	.4byte	.LASF136
	.byte	0xa
	.byte	0x3f
	.4byte	0x10c
	.uleb128 0x1a
	.4byte	.LASF137
	.byte	0xa
	.byte	0x40
	.4byte	0x6b3
	.uleb128 0x1a
	.4byte	.LASF138
	.byte	0xa
	.byte	0x41
	.4byte	0x6be
	.uleb128 0x1a
	.4byte	.LASF139
	.byte	0xa
	.byte	0x42
	.4byte	0x6c9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6b9
	.uleb128 0x1b
	.4byte	0x37
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6c4
	.uleb128 0x1b
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6cf
	.uleb128 0x1b
	.4byte	0x7f
	.uleb128 0xa
	.4byte	.LASF140
	.byte	0x8
	.byte	0xa
	.byte	0x39
	.4byte	0x703
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xa
	.byte	0x3b
	.4byte	0x5b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xa
	.byte	0x3c
	.4byte	0x5b
	.byte	0x2
	.uleb128 0xe
	.ascii	"p\000"
	.byte	0xa
	.byte	0x43
	.4byte	0x67e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0xa
	.byte	0x44
	.4byte	0x6d4
	.uleb128 0xa
	.4byte	.LASF143
	.byte	0x10
	.byte	0xa
	.byte	0x46
	.4byte	0x74b
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xa
	.byte	0x48
	.4byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xa
	.byte	0x49
	.4byte	0x7f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xa
	.byte	0x4a
	.4byte	0x74b
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xa
	.byte	0x4b
	.4byte	0x756
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x751
	.uleb128 0x1b
	.4byte	0x703
	.uleb128 0x6
	.byte	0x4
	.4byte	0x75c
	.uleb128 0x1b
	.4byte	0x70e
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0xa
	.byte	0x4c
	.4byte	0x70e
	.uleb128 0x19
	.byte	0x4
	.byte	0xa
	.byte	0x54
	.4byte	0x7a1
	.uleb128 0x1a
	.4byte	.LASF136
	.byte	0xa
	.byte	0x56
	.4byte	0x10c
	.uleb128 0x1a
	.4byte	.LASF137
	.byte	0xa
	.byte	0x57
	.4byte	0x6b3
	.uleb128 0x1a
	.4byte	.LASF138
	.byte	0xa
	.byte	0x58
	.4byte	0x6be
	.uleb128 0x1a
	.4byte	.LASF139
	.byte	0xa
	.byte	0x59
	.4byte	0x6c9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF148
	.byte	0x10
	.byte	0xa
	.byte	0x4e
	.4byte	0x7e8
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xa
	.byte	0x50
	.4byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xa
	.byte	0x51
	.4byte	0x7f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0xa
	.byte	0x52
	.4byte	0x5b
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xa
	.byte	0x53
	.4byte	0x5b
	.byte	0xa
	.uleb128 0xe
	.ascii	"p\000"
	.byte	0xa
	.byte	0x5a
	.4byte	0x76c
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xa
	.byte	0x5b
	.4byte	0x7a1
	.uleb128 0x19
	.byte	0x4
	.byte	0xa
	.byte	0x63
	.4byte	0x81d
	.uleb128 0x1a
	.4byte	.LASF136
	.byte	0xa
	.byte	0x65
	.4byte	0x10c
	.uleb128 0x1a
	.4byte	.LASF150
	.byte	0xa
	.byte	0x66
	.4byte	0x81d
	.uleb128 0x1a
	.4byte	.LASF151
	.byte	0xa
	.byte	0x67
	.4byte	0x828
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x823
	.uleb128 0x1b
	.4byte	0x7e8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x82e
	.uleb128 0x1b
	.4byte	0x761
	.uleb128 0xf
	.byte	0x10
	.byte	0xa
	.byte	0x5d
	.4byte	0x876
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0xa
	.byte	0x5f
	.4byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0xa
	.byte	0x60
	.4byte	0x5b
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xa
	.byte	0x61
	.4byte	0x5b
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xa
	.byte	0x62
	.4byte	0x7f
	.byte	0x8
	.uleb128 0xe
	.ascii	"p\000"
	.byte	0xa
	.byte	0x68
	.4byte	0x7f3
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xa
	.byte	0x69
	.4byte	0x881
	.uleb128 0x6
	.byte	0x4
	.4byte	0x833
	.uleb128 0xc
	.4byte	.LASF157
	.byte	0x1
	.4byte	0x37
	.byte	0xb
	.byte	0x18
	.4byte	0x8c8
	.uleb128 0x9
	.4byte	.LASF158
	.byte	0
	.uleb128 0x9
	.4byte	.LASF159
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0
	.uleb128 0x9
	.4byte	.LASF163
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF164
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF165
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0xb
	.byte	0x22
	.4byte	0x887
	.uleb128 0xa
	.4byte	.LASF167
	.byte	0x8
	.byte	0xb
	.byte	0x24
	.4byte	0x8f8
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0xb
	.byte	0x26
	.4byte	0x2c3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0xb
	.byte	0x27
	.4byte	0x2c3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0xb
	.byte	0x28
	.4byte	0x8d3
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0xb
	.byte	0x28
	.4byte	0x90e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8d3
	.uleb128 0xa
	.4byte	.LASF172
	.byte	0x18
	.byte	0xb
	.byte	0x2a
	.4byte	0x95d
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xb
	.byte	0x2c
	.4byte	0x3fd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0xb
	.byte	0x2d
	.4byte	0x8c8
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0xb
	.byte	0x2e
	.4byte	0x8f8
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0xb
	.byte	0x2f
	.4byte	0x876
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0xb
	.byte	0x30
	.4byte	0xff
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0xb
	.byte	0x31
	.4byte	0x914
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0xb
	.byte	0x31
	.4byte	0x973
	.uleb128 0x6
	.byte	0x4
	.4byte	0x914
	.uleb128 0xc
	.4byte	.LASF180
	.byte	0x1
	.4byte	0x37
	.byte	0xc
	.byte	0x16
	.4byte	0x9a8
	.uleb128 0x9
	.4byte	.LASF181
	.byte	0
	.uleb128 0x9
	.4byte	.LASF182
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF183
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF185
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0xc
	.byte	0x1e
	.4byte	0x979
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0xc
	.byte	0x29
	.4byte	0x9be
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9c4
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0x3c
	.byte	0xc
	.byte	0x2a
	.4byte	0xa85
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xc
	.byte	0x2c
	.4byte	0x137
	.byte	0
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0xc
	.byte	0x2d
	.4byte	0x3be
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0xc
	.byte	0x2e
	.4byte	0x9b3
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0xc
	.byte	0x2f
	.4byte	0x9a8
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0xc
	.byte	0x30
	.4byte	0x12c
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0xc
	.byte	0x31
	.4byte	0x12c
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0xc
	.byte	0x32
	.4byte	0x12c
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF194
	.byte	0xc
	.byte	0x33
	.4byte	0x12c
	.byte	0x1c
	.uleb128 0xe
	.ascii	"Tag\000"
	.byte	0xc
	.byte	0x34
	.4byte	0xce
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0xc
	.byte	0x35
	.4byte	0xa95
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0xc
	.byte	0x36
	.4byte	0xa95
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0xc
	.byte	0x37
	.4byte	0xa95
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0xc
	.byte	0x38
	.4byte	0xa95
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF199
	.byte	0xc
	.byte	0x39
	.4byte	0xaab
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0xc
	.byte	0x3a
	.4byte	0xabc
	.byte	0x38
	.byte	0
	.uleb128 0x1c
	.4byte	0xa95
	.uleb128 0x1d
	.4byte	0x9b3
	.uleb128 0x1d
	.4byte	0x346
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa85
	.uleb128 0x1c
	.4byte	0xaab
	.uleb128 0x1d
	.4byte	0x9b3
	.uleb128 0x1d
	.4byte	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa9b
	.uleb128 0x1c
	.4byte	0xabc
	.uleb128 0x1d
	.4byte	0x9b3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xab1
	.uleb128 0x3
	.4byte	.LASF201
	.byte	0xc
	.byte	0x3b
	.4byte	0x9c4
	.uleb128 0x3
	.4byte	.LASF202
	.byte	0xd
	.byte	0x17
	.4byte	0xad8
	.uleb128 0x6
	.byte	0x4
	.4byte	0xade
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0x54
	.byte	0xd
	.byte	0x18
	.4byte	0xb3f
	.uleb128 0xb
	.4byte	.LASF204
	.byte	0xd
	.byte	0x1a
	.4byte	0xac2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF205
	.byte	0xd
	.byte	0x1b
	.4byte	0x12c
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF206
	.byte	0xd
	.byte	0x1c
	.4byte	0x12c
	.byte	0x3d
	.uleb128 0xb
	.4byte	.LASF207
	.byte	0xd
	.byte	0x1d
	.4byte	0x47d
	.byte	0x3e
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0xd
	.byte	0x1e
	.4byte	0x2c3
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF208
	.byte	0xd
	.byte	0x1f
	.4byte	0x1b5
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF209
	.byte	0xd
	.byte	0x20
	.4byte	0xb53
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.4byte	0x12c
	.4byte	0xb53
	.uleb128 0x1d
	.4byte	0x66d
	.uleb128 0x1d
	.4byte	0x9b3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb3f
	.uleb128 0xa
	.4byte	.LASF210
	.byte	0x4
	.byte	0xe
	.byte	0x23
	.4byte	0xb72
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xe
	.byte	0x25
	.4byte	0x9b3
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF211
	.byte	0xe
	.byte	0x26
	.4byte	0xb59
	.uleb128 0x1f
	.4byte	.LASF217
	.byte	0x1
	.byte	0x1a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbed
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x1
	.byte	0x1a
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.ascii	"dXY\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.4byte	.LASF212
	.byte	0x1
	.byte	0x1c
	.4byte	0x1c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x22
	.4byte	.LASF213
	.byte	0x1
	.byte	0x20
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x22
	.4byte	.LASF214
	.byte	0x1
	.byte	0x24
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF285
	.byte	0x1
	.byte	0x35
	.4byte	0x9b3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc64
	.uleb128 0x20
	.4byte	.LASF190
	.byte	0x1
	.byte	0x35
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.ascii	"pt\000"
	.byte	0x1
	.byte	0x35
	.4byte	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.4byte	.LASF212
	.byte	0x1
	.byte	0x37
	.4byte	0x1c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LASF215
	.byte	0x1
	.byte	0x38
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF216
	.byte	0x1
	.byte	0x39
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x22
	.4byte	.LASF214
	.byte	0x1
	.byte	0x3d
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF218
	.byte	0x1
	.byte	0x4f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc6
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x1
	.byte	0x4f
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.4byte	.LASF212
	.byte	0x1
	.byte	0x51
	.4byte	0x1c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x22
	.4byte	.LASF213
	.byte	0x1
	.byte	0x55
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x22
	.4byte	.LASF214
	.byte	0x1
	.byte	0x59
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF221
	.byte	0x1
	.byte	0x6d
	.4byte	0x3be
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd13
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x1
	.byte	0x6d
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.4byte	.LASF219
	.byte	0x1
	.byte	0x6f
	.4byte	0x3be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x22
	.4byte	.LASF220
	.byte	0x1
	.byte	0x74
	.4byte	0xd28
	.uleb128 0x5
	.byte	0x3
	.4byte	CalcClientArea.7518
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xd23
	.4byte	0xd23
	.uleb128 0x13
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.4byte	0xaab
	.uleb128 0x1b
	.4byte	0xd13
	.uleb128 0x25
	.4byte	.LASF222
	.byte	0x1
	.byte	0x85
	.4byte	0x9b3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdea
	.uleb128 0x21
	.ascii	"pt\000"
	.byte	0x1
	.byte	0x85
	.4byte	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.4byte	.LASF223
	.byte	0x1
	.byte	0x85
	.4byte	0xdea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x87
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF224
	.byte	0x1
	.byte	0x87
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x1
	.byte	0x8b
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x22
	.4byte	.LASF225
	.byte	0x1
	.byte	0x8f
	.4byte	0x33b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x22
	.4byte	.LASF212
	.byte	0x1
	.byte	0x97
	.4byte	0x1c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.4byte	.LASF215
	.byte	0x1
	.byte	0x98
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x22
	.4byte	.LASF226
	.byte	0x1
	.byte	0xa0
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b3
	.uleb128 0x25
	.4byte	.LASF227
	.byte	0x1
	.byte	0xb5
	.4byte	0x9b3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe68
	.uleb128 0x20
	.4byte	.LASF190
	.byte	0x1
	.byte	0xb5
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF228
	.byte	0x1
	.byte	0xb5
	.4byte	0xe68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.4byte	.LASF229
	.byte	0x1
	.byte	0xb7
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF230
	.byte	0x1
	.byte	0xb8
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0xbc
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LASF215
	.byte	0x1
	.byte	0xbd
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x173
	.uleb128 0x28
	.4byte	.LASF231
	.byte	0x1
	.byte	0xd2
	.4byte	0x12c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea4
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x1
	.byte	0xd2
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.4byte	.LASF232
	.byte	0x1
	.byte	0xd2
	.4byte	0xa95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x28
	.4byte	.LASF233
	.byte	0x1
	.byte	0xdc
	.4byte	0x12c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeda
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x1
	.byte	0xdc
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.4byte	.LASF232
	.byte	0x1
	.byte	0xdc
	.4byte	0xa95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x28
	.4byte	.LASF234
	.byte	0x1
	.byte	0xe6
	.4byte	0x12c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf10
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x1
	.byte	0xe6
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.4byte	.LASF232
	.byte	0x1
	.byte	0xe6
	.4byte	0xa95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x28
	.4byte	.LASF235
	.byte	0x1
	.byte	0xf0
	.4byte	0x12c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf46
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x1
	.byte	0xf0
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.4byte	.LASF232
	.byte	0x1
	.byte	0xf0
	.4byte	0xa95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x28
	.4byte	.LASF236
	.byte	0x1
	.byte	0xfa
	.4byte	0x12c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7c
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x1
	.byte	0xfa
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.4byte	.LASF232
	.byte	0x1
	.byte	0xfa
	.4byte	0xaab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x29
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x104
	.4byte	0x12c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb5
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x104
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2a
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x104
	.4byte	0xabc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x10e
	.4byte	0x12c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfee
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x10e
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x10e
	.4byte	0x3c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x11c
	.4byte	0x12c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1190
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x11c
	.4byte	0x9b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x11c
	.4byte	0x3c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x10fb
	.uleb128 0x2d
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x122
	.4byte	0x3be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x123
	.4byte	0x3be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x124
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2d
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x124
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x2d
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x125
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -31
	.uleb128 0x2c
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x109d
	.uleb128 0x2d
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x127
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x10ba
	.uleb128 0x2d
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x128
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x2d
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x13a
	.4byte	0x3be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x13b
	.4byte	0x43d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x2e
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x142
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x2d
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x150
	.4byte	0x3be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x1131
	.uleb128 0x2d
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x152
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x114e
	.uleb128 0x2d
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x153
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x23
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x2e
	.ascii	"dXY\000"
	.byte	0x1
	.2byte	0x157
	.4byte	0x33b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x158
	.4byte	0x43d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x2e
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x162
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x16e
	.4byte	0x12c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ba
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x16e
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x173
	.4byte	0x12c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f3
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x173
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2a
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x173
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x29
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x187
	.4byte	0x12c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x121d
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x187
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x18c
	.4byte	0x12c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1256
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x18c
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2a
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x18c
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x968
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x129c
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x2d
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x12c6
	.uleb128 0x5
	.byte	0x3
	.4byte	GetTextObject.7631
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x12c1
	.4byte	0x12ac
	.uleb128 0x13
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12b2
	.uleb128 0x1e
	.4byte	0x968
	.4byte	0x12c1
	.uleb128 0x1d
	.4byte	0x9b3
	.byte	0
	.uleb128 0x1b
	.4byte	0x12ac
	.uleb128 0x1b
	.4byte	0x129c
	.uleb128 0x2b
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x12c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x132f
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x95d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2d
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x23
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x2d
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x135e
	.uleb128 0x5
	.byte	0x3
	.4byte	SetTextObject.7639
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x1359
	.4byte	0x133f
	.uleb128 0x13
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1345
	.uleb128 0x1e
	.4byte	0x12c
	.4byte	0x1359
	.uleb128 0x1d
	.4byte	0x9b3
	.uleb128 0x1d
	.4byte	0x968
	.byte	0
	.uleb128 0x1b
	.4byte	0x133f
	.uleb128 0x1b
	.4byte	0x132f
	.uleb128 0x2b
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x876
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13c2
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x2d
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x13c2
	.uleb128 0x5
	.byte	0x3
	.4byte	GetTextObject.7644
	.uleb128 0x23
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x2d
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x968
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x129c
	.uleb128 0x2b
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x12c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x143a
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x2d
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x968
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x143a
	.uleb128 0x5
	.byte	0x3
	.4byte	GetTextObject.7653
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x129c
	.uleb128 0x2b
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x20b
	.4byte	0x903
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x149e
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x20b
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x2d
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x20f
	.4byte	0x149e
	.uleb128 0x5
	.byte	0x3
	.4byte	GetTextObject.7658
	.uleb128 0x23
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x2d
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x219
	.4byte	0x968
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x129c
	.uleb128 0x2b
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x221
	.4byte	0x12c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1541
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x221
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x221
	.4byte	0x8f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x223
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x23
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x2d
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x227
	.4byte	0x968
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x228
	.4byte	0x1541
	.uleb128 0x5
	.byte	0x3
	.4byte	GetTextObject.7667
	.uleb128 0x23
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x2d
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x233
	.4byte	0x95d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x234
	.4byte	0x1546
	.uleb128 0x5
	.byte	0x3
	.4byte	SetTextObject.7671
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x129c
	.uleb128 0x1b
	.4byte	0x132f
	.uleb128 0x2b
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x246
	.4byte	0xff
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15aa
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x246
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x2d
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x24a
	.4byte	0x15aa
	.uleb128 0x5
	.byte	0x3
	.4byte	GetTextObject.7676
	.uleb128 0x23
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x2d
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x254
	.4byte	0x968
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x129c
	.uleb128 0x2b
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x25c
	.4byte	0x12c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x164a
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x25c
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x25c
	.4byte	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x25e
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x2d
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x262
	.4byte	0x968
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x263
	.4byte	0x164a
	.uleb128 0x5
	.byte	0x3
	.4byte	GetTextObject.7685
	.uleb128 0x23
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x2d
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x275
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x276
	.4byte	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x129c
	.uleb128 0x2f
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x289
	.4byte	0x9b3
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x28e
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b2
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x28e
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x28e
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2d
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x292
	.4byte	0x16dd
	.uleb128 0x5
	.byte	0x3
	.4byte	SetActive.7697
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x16d8
	.4byte	0x16c2
	.uleb128 0x13
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16c8
	.uleb128 0x1c
	.4byte	0x16d8
	.uleb128 0x1d
	.4byte	0x9b3
	.uleb128 0x1d
	.4byte	0x12c
	.byte	0
	.uleb128 0x1b
	.4byte	0x16c2
	.uleb128 0x1b
	.4byte	0x16b2
	.uleb128 0x30
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x2ae
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1745
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x2ae
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2a
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x2ae
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x23
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x2d
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x1745
	.uleb128 0x5
	.byte	0x3
	.4byte	SetActive.7704
	.uleb128 0x2d
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x2b9
	.4byte	0x1774
	.uleb128 0x5
	.byte	0x3
	.4byte	GetActive.7706
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x16b2
	.uleb128 0x12
	.4byte	0x176f
	.4byte	0x175a
	.uleb128 0x13
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1760
	.uleb128 0x1e
	.4byte	0x12c
	.4byte	0x176f
	.uleb128 0x1d
	.4byte	0x9b3
	.byte	0
	.uleb128 0x1b
	.4byte	0x175a
	.uleb128 0x1b
	.4byte	0x174a
	.uleb128 0x30
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x2ca
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17ca
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2a
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x3c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.uleb128 0x2d
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x17ca
	.uleb128 0x5
	.byte	0x3
	.4byte	DrawDefault.7713
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0xd13
	.uleb128 0x2b
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x2db
	.4byte	0xfd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1812
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x2db
	.4byte	0x9b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x2d
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x2df
	.4byte	0xb72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF278
	.byte	0x1
	.byte	0x18
	.4byte	0x9b3
	.uleb128 0x5
	.byte	0x3
	.4byte	ActiveObject
	.uleb128 0x31
	.4byte	.LASF279
	.byte	0x7
	.2byte	0x137
	.4byte	0x576
	.uleb128 0x12
	.4byte	0x9b3
	.4byte	0x183f
	.uleb128 0x13
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x32
	.4byte	.LASF280
	.byte	0xd
	.byte	0x23
	.4byte	0x182f
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.4byte	0x10c
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB38
	.4byte	.LBE38
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
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF49:
	.ascii	"clGray\000"
.LASF111:
	.ascii	"USB_EP1IN\000"
.LASF137:
	.ascii	"pData8\000"
.LASF232:
	.ascii	"Handler\000"
.LASF156:
	.ascii	"pBFC_FONT\000"
.LASF22:
	.ascii	"sizetype\000"
.LASF283:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF204:
	.ascii	"Head\000"
.LASF200:
	.ascii	"OnDestroy\000"
.LASF165:
	.ascii	"AV_MASK\000"
.LASF138:
	.ascii	"pData16\000"
.LASF18:
	.ascii	"int32_t\000"
.LASF83:
	.ascii	"tag_RLIST\000"
.LASF50:
	.ascii	"clSilver\000"
.LASF60:
	.ascii	"clSkyBlue\000"
.LASF268:
	.ascii	"SetActive\000"
.LASF249:
	.ascii	"GUI_GetObjectVisibility\000"
.LASF106:
	.ascii	"ScreenIndex\000"
.LASF75:
	.ascii	"TCFORMAT\000"
.LASF82:
	.ascii	"TSIZEXY\000"
.LASF224:
	.ascii	"RootObject\000"
.LASF139:
	.ascii	"pData32\000"
.LASF54:
	.ascii	"clYellow\000"
.LASF172:
	.ascii	"tag_TEXT\000"
.LASF208:
	.ascii	"ChildObjects\000"
.LASF53:
	.ascii	"clLime\000"
.LASF242:
	.ascii	"ChangedPitch\000"
.LASF212:
	.ascii	"ChildList\000"
.LASF161:
	.ascii	"AH_MASK\000"
.LASF167:
	.ascii	"tag_TEXTCOLOR\000"
.LASF160:
	.ascii	"AH_CENTER\000"
.LASF85:
	.ascii	"pRLIST\000"
.LASF79:
	.ascii	"TRECT\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF37:
	.ascii	"TDLIST\000"
.LASF129:
	.ascii	"tag_EVENT\000"
.LASF141:
	.ascii	"Width\000"
.LASF150:
	.ascii	"pMono\000"
.LASF8:
	.ascii	"long int\000"
.LASF205:
	.ascii	"Topmost\000"
.LASF155:
	.ascii	"Reversed\000"
.LASF193:
	.ascii	"InheritedEnabled\000"
.LASF210:
	.ascii	"tag_GODESTROYEV\000"
.LASF183:
	.ascii	"GO_BUTTON\000"
.LASF94:
	.ascii	"Enabled\000"
.LASF259:
	.ascii	"ObjectFont\000"
.LASF112:
	.ascii	"USB_EP2IN\000"
.LASF225:
	.ascii	"tmpPoint\000"
.LASF281:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF274:
	.ascii	"Clip\000"
.LASF67:
	.ascii	"CF_8IDX\000"
.LASF275:
	.ascii	"DrawDefault\000"
.LASF245:
	.ascii	"ScreenRect\000"
.LASF109:
	.ascii	"tag_EP\000"
.LASF229:
	.ascii	"Result\000"
.LASF209:
	.ascii	"EventHandler\000"
.LASF243:
	.ascii	"ChangedHeight\000"
.LASF186:
	.ascii	"TGOTYPE\000"
.LASF213:
	.ascii	"tmpItem\000"
.LASF0:
	.ascii	"signed char\000"
.LASF252:
	.ascii	"GetTextObject\000"
.LASF15:
	.ascii	"uint8_t\000"
.LASF135:
	.ascii	"pEVENT\000"
.LASF26:
	.ascii	"boolean\000"
.LASF250:
	.ascii	"GUI_SetObjectVisibility\000"
.LASF226:
	.ascii	"tmpRoot\000"
.LASF58:
	.ascii	"clWhite\000"
.LASF105:
	.ascii	"ScreenCount\000"
.LASF146:
	.ascii	"pFirstCharInfo\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF145:
	.ascii	"LastChar\000"
.LASF118:
	.ascii	"USB_EPNUM\000"
.LASF215:
	.ascii	"tmpDLItem\000"
.LASF159:
	.ascii	"AH_RIGHT\000"
.LASF147:
	.ascii	"pNextProp\000"
.LASF273:
	.ascii	"GUI_DrawObjectDefault\000"
.LASF181:
	.ascii	"GO_UNKNOWN\000"
.LASF264:
	.ascii	"Caption\000"
.LASF23:
	.ascii	"char\000"
.LASF64:
	.ascii	"TCOLOR\000"
.LASF38:
	.ascii	"pDLIST\000"
.LASF168:
	.ascii	"ForeColor\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF44:
	.ascii	"clDarkBlue\000"
.LASF173:
	.ascii	"Extent\000"
.LASF180:
	.ascii	"tag_GOTYPE\000"
.LASF151:
	.ascii	"pProp\000"
.LASF63:
	.ascii	"clBtnFace\000"
.LASF269:
	.ascii	"GUI_SetObjectActive\000"
.LASF231:
	.ascii	"GUI_SetObjectHandlerOnPress\000"
.LASF144:
	.ascii	"FirstChar\000"
.LASF39:
	.ascii	"clBlack\000"
.LASF72:
	.ascii	"CF_PARGB8888\000"
.LASF107:
	.ascii	"VLayer\000"
.LASF108:
	.ascii	"TSCREEN\000"
.LASF59:
	.ascii	"clMoneyGreen\000"
.LASF24:
	.ascii	"false\000"
.LASF65:
	.ascii	"tag_COLOR\000"
.LASF70:
	.ascii	"CF_RGB888\000"
.LASF32:
	.ascii	"tag_ListItem\000"
.LASF140:
	.ascii	"BFC_CHARINFO\000"
.LASF257:
	.ascii	"tmpText\000"
.LASF102:
	.ascii	"tag_TSCREEN\000"
.LASF256:
	.ascii	"GUI_GetObjectFont\000"
.LASF116:
	.ascii	"USB_EP1OUT\000"
.LASF104:
	.ascii	"ScreenOffset\000"
.LASF185:
	.ascii	"GO_NUMTYPES\000"
.LASF236:
	.ascii	"GUI_SetObjectHandlerOnPaint\000"
.LASF57:
	.ascii	"clAqua\000"
.LASF265:
	.ascii	"CaptionLength\000"
.LASF149:
	.ascii	"FontWidth\000"
.LASF45:
	.ascii	"clDarkGray\000"
.LASF216:
	.ascii	"ResObject\000"
.LASF162:
	.ascii	"AV_TOP\000"
.LASF228:
	.ascii	"ObjectItem\000"
.LASF134:
	.ascii	"Param\000"
.LASF284:
	.ascii	"tag_RECT\000"
.LASF241:
	.ascii	"OldPosition\000"
.LASF96:
	.ascii	"LayerRgn\000"
.LASF74:
	.ascii	"CF_NUM\000"
.LASF113:
	.ascii	"USB_EP3IN\000"
.LASF188:
	.ascii	"tag_GUIOBJECT\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF132:
	.ascii	"Object\000"
.LASF195:
	.ascii	"OnPress\000"
.LASF98:
	.ascii	"LayerEnMask\000"
.LASF73:
	.ascii	"CF_xRGB8888\000"
.LASF260:
	.ascii	"GUI_GetObjectTextColor\000"
.LASF20:
	.ascii	"uintptr_t\000"
.LASF42:
	.ascii	"clGreen\000"
.LASF110:
	.ascii	"USB_EP0\000"
.LASF176:
	.ascii	"Font\000"
.LASF169:
	.ascii	"BackColor\000"
.LASF166:
	.ascii	"TTXTALIGN\000"
.LASF234:
	.ascii	"GUI_SetObjectHandlerOnMove\000"
.LASF142:
	.ascii	"DataSize\000"
.LASF179:
	.ascii	"pTEXT\000"
.LASF238:
	.ascii	"GUI_GetObjectPosition\000"
.LASF199:
	.ascii	"OnPaint\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF11:
	.ascii	"long long int\000"
.LASF93:
	.ascii	"tag_TLCONTEXT\000"
.LASF271:
	.ascii	"Active\000"
.LASF71:
	.ascii	"CF_ARGB8888\000"
.LASF36:
	.ascii	"Count\000"
.LASF131:
	.ascii	"Event\000"
.LASF255:
	.ascii	"SetTextObject\000"
.LASF276:
	.ascii	"GUI_DestroyObject\000"
.LASF201:
	.ascii	"TGUIOBJECT\000"
.LASF171:
	.ascii	"pTEXTCOLOR\000"
.LASF163:
	.ascii	"AV_BOTTOM\000"
.LASF197:
	.ascii	"OnMove\000"
.LASF43:
	.ascii	"clOlive\000"
.LASF254:
	.ascii	"ObjectText\000"
.LASF170:
	.ascii	"TTEXTCOLOR\000"
.LASF207:
	.ascii	"Layer\000"
.LASF206:
	.ascii	"Framed\000"
.LASF218:
	.ascii	"GUI_UpdateChildTreeInheritance\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF222:
	.ascii	"GUI_GetObjectFromPoint\000"
.LASF203:
	.ascii	"tag_WIN\000"
.LASF27:
	.ascii	"TDLITEM\000"
.LASF192:
	.ascii	"Visible\000"
.LASF95:
	.ascii	"Initialized\000"
.LASF34:
	.ascii	"First\000"
.LASF124:
	.ascii	"ET_ONPAINT\000"
.LASF235:
	.ascii	"GUI_SetObjectHandlerOnClick\000"
.LASF100:
	.ascii	"FrameBuffer\000"
.LASF153:
	.ascii	"FontHeight\000"
.LASF223:
	.ascii	"RootParent\000"
.LASF190:
	.ascii	"Parent\000"
.LASF239:
	.ascii	"GUI_SetObjectPosition\000"
.LASF248:
	.ascii	"GUI_SetObjectEnabled\000"
.LASF121:
	.ascii	"ET_PENPRESS\000"
.LASF202:
	.ascii	"pWIN\000"
.LASF285:
	.ascii	"GUI_GetObjectRecursive\000"
.LASF191:
	.ascii	"Type\000"
.LASF97:
	.ascii	"LayerOffset\000"
.LASF130:
	.ascii	"ListHeader\000"
.LASF114:
	.ascii	"USB_EP4IN\000"
.LASF31:
	.ascii	"pDLITEM\000"
.LASF230:
	.ascii	"ResObjectItem\000"
.LASF77:
	.ascii	"TPOINT\000"
.LASF246:
	.ascii	"UpdateRects\000"
.LASF115:
	.ascii	"USB_EPMAXINDEX\000"
.LASF21:
	.ascii	"long double\000"
.LASF66:
	.ascii	"tag_CFORMAT\000"
.LASF280:
	.ascii	"GUILayer\000"
.LASF119:
	.ascii	"tag_EVTYPE\000"
.LASF41:
	.ascii	"clMaroon\000"
.LASF277:
	.ascii	"DestroyEvent\000"
.LASF69:
	.ascii	"CF_YUYV422\000"
.LASF164:
	.ascii	"AV_CENTER\000"
.LASF51:
	.ascii	"clRed\000"
.LASF126:
	.ascii	"ET_PWRKEY\000"
.LASF84:
	.ascii	"Item\000"
.LASF214:
	.ascii	"tmpObject\000"
.LASF272:
	.ascii	"GetActive\000"
.LASF68:
	.ascii	"CF_RGB565\000"
.LASF211:
	.ascii	"TGODESTROYEV\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF198:
	.ascii	"OnClick\000"
.LASF262:
	.ascii	"GUI_GetObjectCaption\000"
.LASF263:
	.ascii	"GUI_SetObjectCaption\000"
.LASF17:
	.ascii	"uint16_t\000"
.LASF266:
	.ascii	"NewCaption\000"
.LASF76:
	.ascii	"tag_POINT\000"
.LASF157:
	.ascii	"tag_TXTALIGN\000"
.LASF125:
	.ascii	"ET_GODESTROY\000"
.LASF267:
	.ascii	"Invalidate\000"
.LASF52:
	.ascii	"clMidGreen\000"
.LASF120:
	.ascii	"ET_UNKNOWN\000"
.LASF175:
	.ascii	"Color\000"
.LASF33:
	.ascii	"tag_DList\000"
.LASF237:
	.ascii	"GUI_SetObjectHandlerOnDestroy\000"
.LASF233:
	.ascii	"GUI_SetObjectHandlerOnRelease\000"
.LASF86:
	.ascii	"tag_VLINDEX\000"
.LASF101:
	.ascii	"TLCONTEXT\000"
.LASF286:
	.ascii	"GUI_GetObjectActive\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF251:
	.ascii	"GUI_GetObjectText\000"
.LASF62:
	.ascii	"clMedGray\000"
.LASF13:
	.ascii	"__uintptr_t\000"
.LASF78:
	.ascii	"pPOINT\000"
.LASF88:
	.ascii	"LCDIF_LAYER1\000"
.LASF89:
	.ascii	"LCDIF_LAYER2\000"
.LASF90:
	.ascii	"LCDIF_LAYER3\000"
.LASF221:
	.ascii	"GUI_CalculateClientArea\000"
.LASF80:
	.ascii	"pRECT\000"
.LASF270:
	.ascii	"GUI_UpdateActiveState\000"
.LASF46:
	.ascii	"clNavy\000"
.LASF87:
	.ascii	"LCDIF_LAYER0\000"
.LASF29:
	.ascii	"Next\000"
.LASF30:
	.ascii	"Data\000"
.LASF4:
	.ascii	"short int\000"
.LASF28:
	.ascii	"Prev\000"
.LASF178:
	.ascii	"TTEXT\000"
.LASF148:
	.ascii	"BFC_FONT_MONO\000"
.LASF56:
	.ascii	"clFuchsia\000"
.LASF35:
	.ascii	"Last\000"
.LASF16:
	.ascii	"int16_t\000"
.LASF47:
	.ascii	"clPurple\000"
.LASF187:
	.ascii	"pGUIOBJECT\000"
.LASF40:
	.ascii	"clBrown\000"
.LASF127:
	.ascii	"ET_ONTIMER\000"
.LASF184:
	.ascii	"GO_LABEL\000"
.LASF177:
	.ascii	"Text\000"
.LASF25:
	.ascii	"true\000"
.LASF219:
	.ascii	"ObjectRect\000"
.LASF278:
	.ascii	"ActiveObject\000"
.LASF282:
	.ascii	"Source\\GUI\\guiobject.c\000"
.LASF217:
	.ascii	"GUI_UpdateChildPositions\000"
.LASF81:
	.ascii	"tag_SIZEXY\000"
.LASF279:
	.ascii	"LCDScreen\000"
.LASF227:
	.ascii	"GUI_GetTopNonWindowObject\000"
.LASF117:
	.ascii	"USB_EP2OUT\000"
.LASF128:
	.ascii	"TEVTYPE\000"
.LASF91:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF154:
	.ascii	"Baseline\000"
.LASF240:
	.ascii	"NewPosition\000"
.LASF261:
	.ascii	"GUI_SetObjecTextColor\000"
.LASF152:
	.ascii	"FontType\000"
.LASF133:
	.ascii	"ParamSz\000"
.LASF122:
	.ascii	"ET_PENRELEASE\000"
.LASF19:
	.ascii	"uint32_t\000"
.LASF92:
	.ascii	"TVLINDEX\000"
.LASF194:
	.ascii	"InheritedVisible\000"
.LASF55:
	.ascii	"clBlue\000"
.LASF99:
	.ascii	"ColorFormat\000"
.LASF189:
	.ascii	"Position\000"
.LASF247:
	.ascii	"GUI_GetObjectEnabled\000"
.LASF196:
	.ascii	"OnRelease\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF61:
	.ascii	"clCream\000"
.LASF48:
	.ascii	"clTeal\000"
.LASF103:
	.ascii	"ScreenRgn\000"
.LASF174:
	.ascii	"Align\000"
.LASF123:
	.ascii	"ET_PENMOVE\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF182:
	.ascii	"GO_WINDOW\000"
.LASF136:
	.ascii	"pData\000"
.LASF143:
	.ascii	"BFC_FONT_PROP\000"
.LASF253:
	.ascii	"GUI_SetObjectText\000"
.LASF158:
	.ascii	"AH_LEFT\000"
.LASF220:
	.ascii	"CalcClientArea\000"
.LASF244:
	.ascii	"tval\000"
.LASF258:
	.ascii	"GUI_SetObjectFont\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
