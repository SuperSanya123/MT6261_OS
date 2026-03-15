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
	.file	"guiwin.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	GUILayer,16,4
	.section	.text.GUI_MoveWindowToTop,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GUI_MoveWindowToTop, %function
GUI_MoveWindowToTop:
.LFB1:
	.file 1 "Source\\GUI\\guiwin.c"
	.loc 1 28 0
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
	.loc 1 29 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	adds	r3, r3, #68
	str	r3, [r7, #20]
	.loc 1 30 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	subs	r3, r3, #1
	str	r3, [r7, #28]
	.loc 1 31 0
	movs	r3, #8
	adds	r2, r7, r3
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	DL_FindItemByDataReverse
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 33 0
	ldr	r3, [r7, #4]
	movs	r2, #60
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	bne	.L2
.LBB2:
	.loc 1 35 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	DL_GetLastItem
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 37 0
	b	.L3
.L4:
.LBB3:
	.loc 1 39 0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	.loc 1 41 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L2
	.loc 1 42 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	.loc 1 41 0 discriminator 1
	beq	.L2
	.loc 1 42 0
	ldr	r3, [r7, #12]
	movs	r2, #60
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	beq	.L2
	.loc 1 44 0
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	DL_GetPrevItem
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 45 0
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L3:
.LBE3:
	.loc 1 37 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L4
.L2:
.LBE2:
	.loc 1 48 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	beq	.L5
	.loc 1 49 0
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	DL_MoveItemToIndex
.L5:
	.loc 1 51 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 52 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	GUI_MoveWindowToTop, .-GUI_MoveWindowToTop
	.section	.text.GUI_DrawDefaultWindow,"ax",%progbits
	.align	2
	.global	GUI_DrawDefaultWindow
	.code	16
	.thumb_func
	.type	GUI_DrawDefaultWindow, %function
GUI_DrawDefaultWindow:
.LFB2:
	.loc 1 55 0
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
	.loc 1 56 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	.loc 1 59 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L13
	.loc 1 59 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L13
	.loc 1 60 0 discriminator 2
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	.loc 1 59 0 discriminator 2
	beq	.L13
	.loc 1 60 0
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L13
	.loc 1 62 0
	movs	r3, #12
	adds	r2, r7, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	.loc 1 63 0
	ldr	r3, [r7, #20]
	movs	r2, #61
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	beq	.L11
	.loc 1 64 0
	ldr	r3, [r7, #20]
	movs	r2, #62
	ldrb	r0, [r3, r2]
	movs	r3, #1
	rsbs	r3, r3, #0
	ldr	r2, [r7]
	movs	r1, #12
	adds	r1, r7, r1
	bl	GDI_DrawFrame
.L11:
	.loc 1 66 0
	movs	r3, #12
	adds	r2, r7, r3
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_CalcClientAreaWindow
	.loc 1 68 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r0, r3
	bl	IsRectCollapsed
	subs	r3, r0, #0
	bne	.L7
	.loc 1 68 0 is_stmt 0 discriminator 1
	ldr	r2, [r7]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L7
	.loc 1 70 0 is_stmt 1
	ldr	r3, [r7, #20]
	movs	r2, #62
	ldrb	r0, [r3, r2]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #64]
	movs	r2, #12
	adds	r2, r7, r2
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	GDI_FillRectangle
	b	.L7
.L13:
	.loc 1 60 0
	nop
.L7:
	.loc 1 72 0
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	GUI_DrawDefaultWindow, .-GUI_DrawDefaultWindow
	.section	.text.GUI_CreateLayer,"ax",%progbits
	.align	2
	.global	GUI_CreateLayer
	.code	16
	.thumb_func
	.type	GUI_CreateLayer, %function
GUI_CreateLayer:
.LFB3:
	.loc 1 76 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #56
	.cfi_def_cfa_offset 72
	add	r7, sp, #16
	.cfi_def_cfa 7, 56
	movs	r4, r0
	movs	r0, #12
	adds	r0, r7, r0
	str	r1, [r0]
	str	r2, [r0, #4]
	movs	r1, r3
	movs	r3, #23
	adds	r3, r7, r3
	adds	r2, r4, #0
	strb	r2, [r3]
	movs	r3, #22
	adds	r3, r7, r3
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 77 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bls	.L15
	.loc 1 77 0 discriminator 1
	movs	r3, #0
	b	.L16
.L15:
	.loc 1 79 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L21
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.LCB252
	b	.L17	@long jump
.LCB252:
.LBB4:
	.loc 1 81 0
	movs	r3, #39
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 82 0
	movs	r0, #84
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #32]
	.loc 1 84 0
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.LCB264
	b	.L17	@long jump
.LCB264:
	.loc 1 86 0
	ldr	r3, [r7, #32]
	movs	r2, #84
	movs	r1, #0
	movs	r0, r3
	bl	memset
.LBB5:
	.loc 1 88 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L18
	.loc 1 88 0 is_stmt 0 discriminator 1
	movs	r3, #30
	adds	r3, r7, r3
	movs	r2, #12
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #4
	ldrsh	r2, [r3, r2]
	movs	r3, #12
	adds	r3, r7, r3
	strh	r2, [r3]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #30
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #4]
.L18:
.LBE5:
.LBB6:
	.loc 1 89 0 is_stmt 1
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L19
	.loc 1 89 0 is_stmt 0 discriminator 1
	movs	r3, #28
	adds	r3, r7, r3
	movs	r2, #12
	adds	r2, r7, r2
	ldrh	r2, [r2, #2]
	strh	r2, [r3]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #6
	ldrsh	r2, [r3, r2]
	movs	r3, #12
	adds	r3, r7, r3
	strh	r2, [r3, #2]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #28
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #6]
.L19:
.LBE6:
	.loc 1 91 0 is_stmt 1
	ldr	r4, [r7, #32]
	movs	r3, r7
	movs	r2, #12
	adds	r2, r7, r2
	movs	r1, #12
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
	.loc 1 92 0
	ldr	r3, [r7, #32]
	movs	r2, #1
	strb	r2, [r3, #25]
	.loc 1 93 0
	ldr	r3, [r7, #32]
	movs	r2, #0
	strb	r2, [r3, #26]
	.loc 1 94 0
	ldr	r3, [r7, #32]
	movs	r2, #1
	strb	r2, [r3, #27]
	.loc 1 95 0
	ldr	r3, [r7, #32]
	movs	r2, #1
	strb	r2, [r3, #28]
	.loc 1 96 0
	ldr	r3, [r7, #32]
	movs	r2, #23
	adds	r2, r7, r2
	movs	r1, #62
	ldrb	r2, [r2]
	strb	r2, [r3, r1]
	.loc 1 97 0
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #60]
	str	r2, [r3, #64]
	.loc 1 99 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	adds	r3, r3, #1
	movs	r5, r3
	.loc 1 100 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	subs	r3, r2, r3
	adds	r3, r3, #1
	.loc 1 99 0
	movs	r2, r3
	movs	r3, #39
	adds	r4, r7, r3
	movs	r3, #12
	adds	r1, r7, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	ldr	r3, [r7, #60]
	str	r3, [sp, #8]
	movs	r3, #56
	adds	r3, r7, r3
	ldrb	r3, [r3]
	str	r3, [sp, #4]
	movs	r3, #22
	adds	r3, r7, r3
	ldrb	r3, [r3]
	str	r3, [sp]
	movs	r3, r2
	movs	r2, r5
	ldr	r1, [r1]
	bl	LCDIF_SetupLayer
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 102 0
	movs	r3, #39
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L20
	.loc 1 102 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #32]
	movs	r0, r3
	bl	free
	b	.L17
.L20:
.LBB7:
	.loc 1 105 0 is_stmt 1
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 107 0
	ldr	r3, [r7, #32]
	movs	r2, #1
	strb	r2, [r3, #24]
	.loc 1 108 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L21
	lsls	r2, r2, #2
	ldr	r1, [r7, #32]
	str	r1, [r2, r3]
	.loc 1 109 0
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	__restore_interrupts
.L17:
.LBE7:
.LBE4:
	.loc 1 113 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L21
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
.L16:
	.loc 1 114 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r7, pc}
.L22:
	.align	2
.L21:
	.word	GUILayer
	.cfi_endproc
.LFE3:
	.size	GUI_CreateLayer, .-GUI_CreateLayer
	.section	.text.GUI_CreateWindow,"ax",%progbits
	.align	2
	.global	GUI_CreateWindow
	.code	16
	.thumb_func
	.type	GUI_CreateWindow, %function
GUI_CreateWindow:
.LFB4:
	.loc 1 119 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 48
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
	str	r0, [r7, #20]
	movs	r0, #12
	adds	r0, r7, r0
	str	r1, [r0]
	str	r2, [r0, #4]
	str	r3, [r7, #8]
	.loc 1 123 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L24
	.loc 1 123 0 discriminator 2
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	bne	.L25
.L24:
	.loc 1 123 0 discriminator 3
	movs	r3, #0
	b	.L26
.L25:
	.loc 1 125 0
	movs	r0, #84
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #44]
	.loc 1 126 0
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.LCB509
	b	.L27	@long jump
.LCB509:
.LBB8:
	.loc 1 128 0
	ldr	r3, [r7, #20]
	adds	r3, r3, #68
	str	r3, [r7, #32]
	.loc 1 130 0
	ldr	r3, [r7, #44]
	movs	r2, #84
	movs	r1, #0
	movs	r0, r3
	bl	memset
.LBB9:
	.loc 1 132 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L28
	.loc 1 132 0 is_stmt 0 discriminator 1
	movs	r3, #30
	adds	r3, r7, r3
	movs	r2, #12
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #4
	ldrsh	r2, [r3, r2]
	movs	r3, #12
	adds	r3, r7, r3
	strh	r2, [r3]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #30
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #4]
.L28:
.LBE9:
.LBB10:
	.loc 1 133 0 is_stmt 1
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L29
	.loc 1 133 0 is_stmt 0 discriminator 1
	movs	r3, #28
	adds	r3, r7, r3
	movs	r2, #12
	adds	r2, r7, r2
	ldrh	r2, [r2, #2]
	strh	r2, [r3]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #6
	ldrsh	r2, [r3, r2]
	movs	r3, #12
	adds	r3, r7, r3
	strh	r2, [r3, #2]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #28
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #6]
.L29:
.LBE10:
	.loc 1 135 0 is_stmt 1
	ldr	r3, [r7, #20]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r4, [r7, #44]
	movs	r3, r7
	movs	r1, #12
	adds	r1, r7, r1
	movs	r0, r3
	bl	GDI_LocalToGlobalRct
	movs	r2, r7
	movs	r3, r4
	adds	r3, r3, #12
	movs	r1, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
	.loc 1 136 0
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #20]
	str	r2, [r3, #20]
	.loc 1 137 0
	movs	r3, #68
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	ldr	r3, [r7, #44]
	strb	r2, [r3, #25]
	.loc 1 138 0
	movs	r3, #68
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	ldr	r3, [r7, #44]
	strb	r2, [r3, #26]
	.loc 1 139 0
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #25]
	cmp	r3, #0
	beq	.L30
	.loc 1 139 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #27]
	cmp	r3, #0
	beq	.L30
	.loc 1 139 0 discriminator 3
	movs	r3, #1
	b	.L31
.L30:
	.loc 1 139 0 discriminator 4
	movs	r3, #0
.L31:
	.loc 1 139 0 discriminator 6
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #44]
	strb	r2, [r3, #27]
	.loc 1 140 0 is_stmt 1 discriminator 6
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L32
	.loc 1 140 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #28]
	cmp	r3, #0
	beq	.L32
	.loc 1 140 0 discriminator 3
	movs	r3, #1
	b	.L33
.L32:
	.loc 1 140 0 discriminator 4
	movs	r3, #0
.L33:
	.loc 1 140 0 discriminator 6
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #44]
	strb	r2, [r3, #28]
	.loc 1 142 0 is_stmt 1 discriminator 6
	movs	r3, #68
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #4
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r1, r3
	ldr	r3, [r7, #44]
	movs	r2, #60
	strb	r1, [r3, r2]
	.loc 1 143 0 discriminator 6
	movs	r3, #68
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #8
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r1, r3
	ldr	r3, [r7, #44]
	movs	r2, #61
	strb	r1, [r3, r2]
	.loc 1 144 0 discriminator 6
	ldr	r3, [r7, #20]
	movs	r2, #62
	ldrb	r1, [r3, r2]
	ldr	r3, [r7, #44]
	movs	r2, #62
	strb	r1, [r3, r2]
	.loc 1 145 0 discriminator 6
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #64]
	str	r2, [r3, #64]
	.loc 1 146 0 discriminator 6
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #8]
	str	r2, [r3, #80]
	.loc 1 148 0 discriminator 6
	ldr	r3, [r7, #44]
	movs	r2, #60
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	beq	.L34
	.loc 1 148 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #44]
	movs	r3, #43
	adds	r4, r7, r3
	ldr	r3, [r7, #32]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	movs	r3, r0
	strb	r3, [r4]
	b	.L35
.L34:
.LBB11:
	.loc 1 151 0 is_stmt 1
	ldr	r3, [r7, #32]
	movs	r0, r3
	bl	DL_GetLastItem
	movs	r3, r0
	str	r3, [r7, #36]
	.loc 1 153 0
	b	.L36
.L40:
.LBB12:
	.loc 1 155 0
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	.loc 1 157 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L37
	.loc 1 158 0 discriminator 1
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	.loc 1 157 0 discriminator 1
	beq	.L38
	.loc 1 158 0
	ldr	r3, [r7, #24]
	movs	r2, #60
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	bne	.L37
.L38:
	.loc 1 160 0
	ldr	r2, [r7, #44]
	movs	r3, #43
	adds	r4, r7, r3
	ldr	r1, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r0, r3
	bl	DL_InsertItemAfterPtr
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 161 0
	b	.L39
.L37:
	.loc 1 163 0
	ldr	r3, [r7, #36]
	movs	r0, r3
	bl	DL_GetPrevItem
	movs	r3, r0
	str	r3, [r7, #36]
.L36:
.LBE12:
	.loc 1 153 0
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L40
.L39:
	.loc 1 165 0
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L35
	.loc 1 165 0 discriminator 1
	ldr	r2, [r7, #44]
	movs	r3, #43
	adds	r4, r7, r3
	ldr	r3, [r7, #32]
	movs	r1, #0
	movs	r0, r3
	bl	DL_AddItemAtIndexPtr
	movs	r3, r0
	strb	r3, [r4]
.L35:
.LBE11:
	.loc 1 168 0
	movs	r3, #43
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L41
	.loc 1 170 0
	ldr	r3, [r7, #44]
	movs	r2, #1
	strb	r2, [r3, #24]
	.loc 1 171 0
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L27
	.loc 1 171 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #28]
	cmp	r3, #0
	beq	.L27
	.loc 1 172 0 is_stmt 1
	ldr	r3, [r7, #44]
	movs	r0, r3
	bl	GUI_Invalidate
	b	.L27
.L41:
	.loc 1 176 0
	ldr	r3, [r7, #44]
	movs	r0, r3
	bl	free
	.loc 1 177 0
	movs	r3, #0
	str	r3, [r7, #44]
.L27:
.LBE8:
	.loc 1 180 0
	ldr	r3, [r7, #44]
.L26:
	.loc 1 181 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE4:
	.size	GUI_CreateWindow, .-GUI_CreateWindow
	.section	.text.GUI_DestroyWindow,"ax",%progbits
	.align	2
	.global	GUI_DestroyWindow
	.code	16
	.thumb_func
	.type	GUI_DestroyWindow, %function
GUI_DestroyWindow:
.LFB5:
	.loc 1 184 0
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
	.loc 1 185 0
	nop
	.loc 1 186 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE5:
	.size	GUI_DestroyWindow, .-GUI_DestroyWindow
	.section	.text.GUI_IsLayerObject,"ax",%progbits
	.align	2
	.global	GUI_IsLayerObject
	.code	16
	.thumb_func
	.type	GUI_IsLayerObject, %function
GUI_IsLayerObject:
.LFB6:
	.loc 1 189 0
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
	.loc 1 192 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L46
	.loc 1 192 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L46
	.loc 1 193 0
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L47
.L50:
	.loc 1 194 0
	ldr	r3, .L51
	ldr	r2, [r7, #12]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	movs	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L48
	.loc 1 195 0
	movs	r3, #1
	b	.L49
.L48:
	.loc 1 193 0 discriminator 2
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L47:
	.loc 1 193 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #3
	bls	.L50
.L46:
	.loc 1 197 0 is_stmt 1
	movs	r3, #0
.L49:
	.loc 1 198 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L52:
	.align	2
.L51:
	.word	GUILayer
	.cfi_endproc
.LFE6:
	.size	GUI_IsLayerObject, .-GUI_IsLayerObject
	.section	.text.GUI_IsWindowObject,"ax",%progbits
	.align	2
	.global	GUI_IsWindowObject
	.code	16
	.thumb_func
	.type	GUI_IsWindowObject, %function
GUI_IsWindowObject:
.LFB7:
	.loc 1 201 0
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
	.loc 1 202 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L54
	.loc 1 202 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #1
	bne	.L54
	.loc 1 202 0 discriminator 3
	movs	r3, #1
	b	.L55
.L54:
	.loc 1 202 0 discriminator 4
	movs	r3, #0
.L55:
	.loc 1 202 0 is_stmt 1 discriminator 6
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 203 0 discriminator 6
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	GUI_IsWindowObject, .-GUI_IsWindowObject
	.section	.text.GUI_GetWindowZIndex,"ax",%progbits
	.align	2
	.global	GUI_GetWindowZIndex
	.code	16
	.thumb_func
	.type	GUI_GetWindowZIndex, %function
GUI_GetWindowZIndex:
.LFB8:
	.loc 1 206 0
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
	.loc 1 207 0
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [r7, #12]
	.loc 1 209 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L58
	.loc 1 209 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L58
	.loc 1 210 0 discriminator 2
	ldr	r3, [r7, #4]
	movs	r2, #62
	ldrb	r3, [r3, r2]
	.loc 1 209 0 discriminator 2
	cmp	r3, #3
	bhi	.L58
	.loc 1 210 0
	ldr	r3, [r7, #4]
	movs	r2, #62
	ldrb	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, .L60
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L58
	.loc 1 212 0
	ldr	r3, [r7, #4]
	movs	r2, #62
	ldrb	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, .L60
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	adds	r3, r3, #68
	movs	r2, #12
	adds	r2, r7, r2
	ldr	r1, [r7, #4]
	movs	r0, r3
	bl	DL_FindItemByData
.L58:
	.loc 1 214 0
	ldr	r3, [r7, #12]
	.loc 1 215 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L61:
	.align	2
.L60:
	.word	GUILayer
	.cfi_endproc
.LFE8:
	.size	GUI_GetWindowZIndex, .-GUI_GetWindowZIndex
	.section	.text.GUI_GetTopWindow,"ax",%progbits
	.align	2
	.global	GUI_GetTopWindow
	.code	16
	.thumb_func
	.type	GUI_GetTopWindow, %function
GUI_GetTopWindow:
.LFB9:
	.loc 1 218 0
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
	str	r2, [r7, #4]
	movs	r3, #11
	adds	r3, r7, r3
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 219 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 221 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.LCB1059
	b	.L63	@long jump
.LCB1059:
	.loc 1 221 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L63
.LBB13:
	.loc 1 226 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #68
	movs	r0, r3
	bl	DL_GetLastItem
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 227 0
	movs	r3, #11
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L71
	.loc 1 229 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L65
	.loc 1 229 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	b	.L66
.L65:
	.loc 1 229 0 discriminator 2
	movs	r3, #0
.L66:
	.loc 1 229 0 is_stmt 1 discriminator 4
	str	r3, [r7, #20]
	.loc 1 232 0 discriminator 4
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L67
	.loc 1 231 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	.loc 1 230 0
	beq	.L67
	.loc 1 232 0
	ldr	r3, [r7, #20]
	movs	r2, #60
	ldrb	r3, [r3, r2]
	.loc 1 231 0
	cmp	r3, #0
	beq	.L67
	.loc 1 232 0
	ldr	r3, [r7, #20]
	b	.L68
.L67:
	.loc 1 232 0 is_stmt 0 discriminator 1
	movs	r3, #0
.L68:
	.loc 1 230 0 is_stmt 1
	str	r3, [r7, #28]
	.loc 1 233 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L69
	.loc 1 233 0 discriminator 1
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L69
	.loc 1 233 0 discriminator 3
	ldr	r2, [r7, #24]
	b	.L70
.L69:
	.loc 1 233 0 is_stmt 0 discriminator 4
	movs	r2, #0
.L70:
	.loc 1 233 0 is_stmt 1 discriminator 6
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L63
.L75:
	.loc 1 239 0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	.loc 1 240 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L72
	.loc 1 242 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L77
	.loc 1 243 0
	ldr	r3, [r7, #20]
	movs	r2, #60
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	bne	.L72
	.loc 1 245 0
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
	.loc 1 246 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L78
	.loc 1 246 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	.loc 1 247 0 discriminator 1
	b	.L78
.L72:
	.loc 1 250 0
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	DL_GetPrevItem
	movs	r3, r0
	str	r3, [r7, #24]
.L71:
	.loc 1 237 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L75
	b	.L63
.L77:
	.loc 1 242 0
	nop
	b	.L63
.L78:
	.loc 1 247 0
	nop
.L63:
.LBE13:
	.loc 1 254 0
	ldr	r3, [r7, #28]
	.loc 1 255 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE9:
	.size	GUI_GetTopWindow, .-GUI_GetTopWindow
	.section	.text.GUI_MoveWindowTreeToTop,"ax",%progbits
	.align	2
	.global	GUI_MoveWindowTreeToTop
	.code	16
	.thumb_func
	.type	GUI_MoveWindowTreeToTop, %function
GUI_MoveWindowTreeToTop:
.LFB10:
	.loc 1 258 0
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
	.loc 1 259 0
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 261 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L80
	.loc 1 262 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	.loc 1 261 0 discriminator 1
	beq	.L80
	.loc 1 262 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_IsLayerObject
	subs	r3, r0, #0
	bne	.L80
	.loc 1 264 0
	b	.L81
.L83:
	.loc 1 266 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_MoveWindowToTop
	subs	r3, r0, #0
	beq	.L82
	.loc 1 267 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #26]
	.loc 1 266 0 discriminator 1
	cmp	r3, #0
	beq	.L82
	.loc 1 267 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #28]
	cmp	r3, #0
	beq	.L82
	.loc 1 268 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
.L82:
	.loc 1 270 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #4]
.L81:
	.loc 1 264 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L83
.L80:
	.loc 1 273 0
	ldr	r3, [r7, #12]
	.loc 1 274 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE10:
	.size	GUI_MoveWindowTreeToTop, .-GUI_MoveWindowTreeToTop
	.section	.text.GUI_CalcClientAreaWindow,"ax",%progbits
	.align	2
	.global	GUI_CalcClientAreaWindow
	.code	16
	.thumb_func
	.type	GUI_CalcClientAreaWindow, %function
GUI_CalcClientAreaWindow:
.LFB11:
	.loc 1 277 0
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
	.loc 1 278 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L88
	.loc 1 278 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L88
	.loc 1 280 0
	ldr	r3, [r7, #4]
	movs	r2, #61
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	beq	.L87
	.loc 1 282 0
	ldr	r3, [r7, #4]
	movs	r2, #12
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7]
	strh	r3, [r2]
	.loc 1 283 0
	ldr	r3, [r7, #4]
	movs	r2, #14
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7]
	strh	r3, [r2, #2]
	.loc 1 284 0
	ldr	r3, [r7, #4]
	movs	r2, #16
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7]
	strh	r3, [r2, #4]
	.loc 1 285 0
	ldr	r3, [r7, #4]
	movs	r2, #18
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7]
	strh	r3, [r2, #6]
	.loc 1 289 0
	b	.L88
.L87:
	.loc 1 287 0
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r0, r2
	adds	r3, r3, #12
	movs	r2, #8
	movs	r1, r3
	bl	memcpy
.L88:
	.loc 1 289 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE11:
	.size	GUI_CalcClientAreaWindow, .-GUI_CalcClientAreaWindow
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
	.file 10 ".\\Source\\GUI/guiobject.h"
	.file 11 ".\\Source\\GUI/guiwin.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb76
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0xc
	.4byte	.LASF183
	.4byte	.LASF184
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
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x3f
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x41
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0xca
	.4byte	0x9b
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
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x30
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x48
	.4byte	0x90
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
	.4byte	0xc3
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x5
	.byte	0x24
	.4byte	0x161
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x5
	.byte	0x24
	.4byte	0x1a8
	.uleb128 0xa
	.byte	0x4
	.4byte	0x161
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x4
	.4byte	0x9b
	.byte	0x6
	.byte	0x16
	.4byte	0x2a0
	.uleb128 0xc
	.4byte	.LASF37
	.4byte	0xff000000
	.uleb128 0xc
	.4byte	.LASF38
	.4byte	0xff003366
	.uleb128 0xc
	.4byte	.LASF39
	.4byte	0xff000080
	.uleb128 0xc
	.4byte	.LASF40
	.4byte	0xff008000
	.uleb128 0xc
	.4byte	.LASF41
	.4byte	0xff008080
	.uleb128 0xc
	.4byte	.LASF42
	.4byte	0xff400000
	.uleb128 0xc
	.4byte	.LASF43
	.4byte	0xff404040
	.uleb128 0xc
	.4byte	.LASF44
	.4byte	0xff800000
	.uleb128 0xc
	.4byte	.LASF45
	.4byte	0xff800080
	.uleb128 0xc
	.4byte	.LASF46
	.4byte	0xff808000
	.uleb128 0xc
	.4byte	.LASF47
	.4byte	0xff808080
	.uleb128 0xc
	.4byte	.LASF48
	.4byte	0xffc0c0c0
	.uleb128 0xc
	.4byte	.LASF49
	.4byte	0xff0000ff
	.uleb128 0xc
	.4byte	.LASF50
	.4byte	0xff00c000
	.uleb128 0xc
	.4byte	.LASF51
	.4byte	0xff00ff00
	.uleb128 0xc
	.4byte	.LASF52
	.4byte	0xff00ffff
	.uleb128 0xc
	.4byte	.LASF53
	.4byte	0xffff0000
	.uleb128 0xc
	.4byte	.LASF54
	.4byte	0xffff00ff
	.uleb128 0xc
	.4byte	.LASF55
	.4byte	0xffffff00
	.uleb128 0xc
	.4byte	.LASF56
	.4byte	0xffffffff
	.uleb128 0xc
	.4byte	.LASF57
	.4byte	0xffc0dcc0
	.uleb128 0xc
	.4byte	.LASF58
	.4byte	0xfff0c8a4
	.uleb128 0xc
	.4byte	.LASF59
	.4byte	0xfff0f8fc
	.uleb128 0xc
	.4byte	.LASF60
	.4byte	0xffa4a0a0
	.uleb128 0xc
	.4byte	.LASF61
	.4byte	0xffc8d0d4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x6
	.byte	0x31
	.4byte	0x1ae
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x33
	.4byte	0x2ec
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x6
	.byte	0x3d
	.4byte	0x2ab
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x4
	.byte	0x6
	.byte	0x41
	.4byte	0x318
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
	.4byte	.LASF75
	.byte	0x6
	.byte	0x45
	.4byte	0x2f7
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x6
	.byte	0x45
	.4byte	0x32e
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2f7
	.uleb128 0xe
	.byte	0x8
	.byte	0x6
	.byte	0x49
	.4byte	0x353
	.uleb128 0xd
	.ascii	"lt\000"
	.byte	0x6
	.byte	0x4b
	.4byte	0x318
	.byte	0
	.uleb128 0xd
	.ascii	"rb\000"
	.byte	0x6
	.byte	0x4c
	.4byte	0x318
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x6
	.byte	0x4e
	.4byte	0x384
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
	.4byte	.LASF185
	.byte	0x8
	.byte	0x6
	.byte	0x47
	.4byte	0x39b
	.uleb128 0x10
	.4byte	0x334
	.uleb128 0x10
	.4byte	0x353
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x6
	.byte	0x55
	.4byte	0x384
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x6
	.byte	0x55
	.4byte	0x3b1
	.uleb128 0xa
	.byte	0x4
	.4byte	0x384
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0xf1
	.4byte	0x3e6
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x7
	.byte	0xf8
	.4byte	0x3b7
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x1
	.4byte	0x37
	.byte	0x8
	.byte	0x24
	.4byte	0x438
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
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x1
	.4byte	0x37
	.byte	0x9
	.byte	0x16
	.4byte	0x479
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF104
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x9
	.byte	0x23
	.4byte	0x438
	.uleb128 0x8
	.4byte	.LASF106
	.byte	0x18
	.byte	0x9
	.byte	0x25
	.4byte	0x4cd
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x9
	.byte	0x27
	.4byte	0x114
	.byte	0
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x9
	.byte	0x28
	.4byte	0x479
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x9
	.byte	0x29
	.4byte	0xe7
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x9
	.byte	0x2a
	.4byte	0xc3
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x9
	.byte	0x2b
	.4byte	0x4cd
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	0xa2
	.4byte	0x4dc
	.uleb128 0x12
	.4byte	0xe0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x9
	.byte	0x2c
	.4byte	0x4e7
	.uleb128 0xa
	.byte	0x4
	.4byte	0x484
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0x16
	.4byte	0x51c
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0
	.uleb128 0x7
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF117
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xa
	.byte	0x1e
	.4byte	0x4ed
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0x20
	.4byte	0x556
	.uleb128 0x7
	.4byte	.LASF121
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF122
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF123
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xa
	.byte	0x27
	.4byte	0x527
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0xa
	.byte	0x29
	.4byte	0x56c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x572
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x3c
	.byte	0xa
	.byte	0x2a
	.4byte	0x633
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0xa
	.byte	0x2c
	.4byte	0x114
	.byte	0
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0xa
	.byte	0x2d
	.4byte	0x39b
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0xa
	.byte	0x2e
	.4byte	0x561
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0xa
	.byte	0x2f
	.4byte	0x51c
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0xa
	.byte	0x30
	.4byte	0x109
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0xa
	.byte	0x31
	.4byte	0x109
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0xa
	.byte	0x32
	.4byte	0x109
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0xa
	.byte	0x33
	.4byte	0x109
	.byte	0x1c
	.uleb128 0xd
	.ascii	"Tag\000"
	.byte	0xa
	.byte	0x34
	.4byte	0xb8
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0xa
	.byte	0x35
	.4byte	0x643
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0xa
	.byte	0x36
	.4byte	0x643
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0xa
	.byte	0x37
	.4byte	0x643
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0xa
	.byte	0x38
	.4byte	0x643
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0xa
	.byte	0x39
	.4byte	0x659
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0xa
	.byte	0x3a
	.4byte	0x66a
	.byte	0x38
	.byte	0
	.uleb128 0x13
	.4byte	0x643
	.uleb128 0x14
	.4byte	0x561
	.uleb128 0x14
	.4byte	0x323
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x633
	.uleb128 0x13
	.4byte	0x659
	.uleb128 0x14
	.4byte	0x561
	.uleb128 0x14
	.4byte	0x3a6
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x649
	.uleb128 0x13
	.4byte	0x66a
	.uleb128 0x14
	.4byte	0x561
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x65f
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0xa
	.byte	0x3b
	.4byte	0x572
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0xb
	.byte	0x17
	.4byte	0x686
	.uleb128 0xa
	.byte	0x4
	.4byte	0x68c
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x54
	.byte	0xb
	.byte	0x18
	.4byte	0x6ed
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0xb
	.byte	0x1a
	.4byte	0x670
	.byte	0
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0xb
	.byte	0x1b
	.4byte	0x109
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0xb
	.byte	0x1c
	.4byte	0x109
	.byte	0x3d
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0xb
	.byte	0x1d
	.4byte	0x3e6
	.byte	0x3e
	.uleb128 0x9
	.4byte	.LASF149
	.byte	0xb
	.byte	0x1e
	.4byte	0x2a0
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0xb
	.byte	0x1f
	.4byte	0x192
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0xb
	.byte	0x20
	.4byte	0x701
	.byte	0x50
	.byte	0
	.uleb128 0x15
	.4byte	0x109
	.4byte	0x701
	.uleb128 0x14
	.4byte	0x4dc
	.uleb128 0x14
	.4byte	0x561
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x6ed
	.uleb128 0x16
	.4byte	.LASF186
	.byte	0x1
	.byte	0x1b
	.4byte	0x109
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x797
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x1
	.byte	0x1b
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF152
	.byte	0x1
	.byte	0x1d
	.4byte	0x19d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF153
	.byte	0x1
	.byte	0x1e
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.4byte	.LASF154
	.byte	0x1
	.byte	0x1e
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF155
	.byte	0x1
	.byte	0x1f
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x18
	.4byte	.LASF156
	.byte	0x1
	.byte	0x23
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x18
	.4byte	.LASF157
	.byte	0x1
	.byte	0x27
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF172
	.byte	0x1
	.byte	0x36
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e5
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x1
	.byte	0x36
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.4byte	.LASF158
	.byte	0x1
	.byte	0x36
	.4byte	0x3a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.ascii	"Win\000"
	.byte	0x1
	.byte	0x38
	.4byte	0x67b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF159
	.byte	0x1
	.byte	0x39
	.4byte	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF166
	.byte	0x1
	.byte	0x4a
	.4byte	0x561
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8bb
	.uleb128 0x17
	.4byte	.LASF148
	.byte	0x1
	.byte	0x4a
	.4byte	0x3e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x17
	.4byte	.LASF129
	.byte	0x1
	.byte	0x4a
	.4byte	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.4byte	.LASF160
	.byte	0x1
	.byte	0x4a
	.4byte	0x2ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x17
	.4byte	.LASF161
	.byte	0x1
	.byte	0x4b
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF149
	.byte	0x1
	.byte	0x4b
	.4byte	0x2a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x18
	.4byte	.LASF162
	.byte	0x1
	.byte	0x51
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x18
	.4byte	.LASF163
	.byte	0x1
	.byte	0x52
	.4byte	0x67b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x885
	.uleb128 0x18
	.4byte	.LASF164
	.byte	0x1
	.byte	0x58
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x8a1
	.uleb128 0x18
	.4byte	.LASF164
	.byte	0x1
	.byte	0x59
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x19
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x18
	.4byte	.LASF165
	.byte	0x1
	.byte	0x69
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF167
	.byte	0x1
	.byte	0x74
	.4byte	0x561
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b7
	.uleb128 0x17
	.4byte	.LASF130
	.byte	0x1
	.byte	0x74
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.4byte	.LASF129
	.byte	0x1
	.byte	0x74
	.4byte	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.4byte	.LASF168
	.byte	0x1
	.byte	0x75
	.4byte	0x701
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.4byte	.LASF149
	.byte	0x1
	.byte	0x76
	.4byte	0x2a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF169
	.byte	0x1
	.byte	0x76
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii	"Win\000"
	.byte	0x1
	.byte	0x78
	.4byte	0x67b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF162
	.byte	0x1
	.byte	0x79
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x19
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x18
	.4byte	.LASF170
	.byte	0x1
	.byte	0x80
	.4byte	0x19d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x969
	.uleb128 0x18
	.4byte	.LASF164
	.byte	0x1
	.byte	0x84
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x985
	.uleb128 0x18
	.4byte	.LASF164
	.byte	0x1
	.byte	0x85
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x19
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x18
	.4byte	.LASF171
	.byte	0x1
	.byte	0x97
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x18
	.4byte	.LASF157
	.byte	0x1
	.byte	0x9b
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF173
	.byte	0x1
	.byte	0xb7
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9db
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x1
	.byte	0xb7
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF174
	.byte	0x1
	.byte	0xbc
	.4byte	0x109
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0f
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x1
	.byte	0xbc
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.byte	0xbe
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF175
	.byte	0x1
	.byte	0xc8
	.4byte	0x109
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa37
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x1
	.byte	0xc8
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF176
	.byte	0x1
	.byte	0xcd
	.4byte	0xb8
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6c
	.uleb128 0x20
	.ascii	"Win\000"
	.byte	0x1
	.byte	0xcd
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.ascii	"ZL\000"
	.byte	0x1
	.byte	0xcf
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF177
	.byte	0x1
	.byte	0xd9
	.4byte	0x561
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae4
	.uleb128 0x17
	.4byte	.LASF130
	.byte	0x1
	.byte	0xd9
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.4byte	.LASF146
	.byte	0x1
	.byte	0xd9
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x17
	.4byte	.LASF155
	.byte	0x1
	.byte	0xd9
	.4byte	0xae4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF162
	.byte	0x1
	.byte	0xdb
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x1
	.byte	0xdf
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF156
	.byte	0x1
	.byte	0xe0
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x150
	.uleb128 0x21
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x101
	.4byte	0x561
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb23
	.uleb128 0x22
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x101
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x103
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x24
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x114
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb58
	.uleb128 0x22
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x114
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x114
	.4byte	0x3a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.4byte	0x561
	.4byte	0xb68
	.uleb128 0x25
	.4byte	0xe0
	.byte	0x3
	.byte	0
	.uleb128 0x26
	.4byte	.LASF187
	.byte	0x1
	.byte	0x19
	.4byte	0xb58
	.uleb128 0x5
	.byte	0x3
	.4byte	GUILayer
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x6c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF96:
	.ascii	"tag_EVTYPE\000"
.LASF173:
	.ascii	"GUI_DestroyWindow\000"
.LASF139:
	.ascii	"OnClick\000"
.LASF69:
	.ascii	"CF_ARGB8888\000"
.LASF18:
	.ascii	"uintptr_t\000"
.LASF50:
	.ascii	"clMidGreen\000"
.LASF23:
	.ascii	"true\000"
.LASF157:
	.ascii	"tmpObject\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF44:
	.ascii	"clNavy\000"
.LASF126:
	.ascii	"TGOFLAGS\000"
.LASF162:
	.ascii	"Result\000"
.LASF111:
	.ascii	"Param\000"
.LASF98:
	.ascii	"ET_PENPRESS\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF171:
	.ascii	"tmpItem\000"
.LASF95:
	.ascii	"USB_EPNUM\000"
.LASF148:
	.ascii	"Layer\000"
.LASF183:
	.ascii	"Source\\GUI\\guiwin.c\000"
.LASF156:
	.ascii	"tmpDLItem\000"
.LASF76:
	.ascii	"pPOINT\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF144:
	.ascii	"tag_WIN\000"
.LASF10:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF113:
	.ascii	"tag_GOTYPE\000"
.LASF65:
	.ascii	"CF_8IDX\000"
.LASF53:
	.ascii	"clBlue\000"
.LASF128:
	.ascii	"tag_GUIOBJECT\000"
.LASF170:
	.ascii	"ObjectsList\000"
.LASF112:
	.ascii	"pEVENT\000"
.LASF136:
	.ascii	"OnPress\000"
.LASF104:
	.ascii	"ET_ONTIMER\000"
.LASF75:
	.ascii	"TPOINT\000"
.LASF7:
	.ascii	"long int\000"
.LASF160:
	.ascii	"CFormat\000"
.LASF63:
	.ascii	"tag_COLOR\000"
.LASF109:
	.ascii	"Object\000"
.LASF118:
	.ascii	"GO_NUMTYPES\000"
.LASF87:
	.ascii	"USB_EP0\000"
.LASF85:
	.ascii	"TVLINDEX\000"
.LASF4:
	.ascii	"short int\000"
.LASF150:
	.ascii	"ChildObjects\000"
.LASF122:
	.ascii	"GF_VISIBLE\000"
.LASF91:
	.ascii	"USB_EP4IN\000"
.LASF125:
	.ascii	"GF_AUTOREPEAT\000"
.LASF176:
	.ascii	"GUI_GetWindowZIndex\000"
.LASF145:
	.ascii	"Head\000"
.LASF163:
	.ascii	"LObject\000"
.LASF97:
	.ascii	"ET_UNKNOWN\000"
.LASF175:
	.ascii	"GUI_IsWindowObject\000"
.LASF99:
	.ascii	"ET_PENRELEASE\000"
.LASF24:
	.ascii	"boolean\000"
.LASF130:
	.ascii	"Parent\000"
.LASF108:
	.ascii	"Event\000"
.LASF19:
	.ascii	"long double\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF143:
	.ascii	"pWIN\000"
.LASF131:
	.ascii	"Type\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF59:
	.ascii	"clCream\000"
.LASF37:
	.ascii	"clBlack\000"
.LASF184:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF172:
	.ascii	"GUI_DrawDefaultWindow\000"
.LASF182:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF64:
	.ascii	"tag_CFORMAT\000"
.LASF58:
	.ascii	"clSkyBlue\000"
.LASF40:
	.ascii	"clGreen\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF146:
	.ascii	"Topmost\000"
.LASF52:
	.ascii	"clYellow\000"
.LASF177:
	.ascii	"GUI_GetTopWindow\000"
.LASF72:
	.ascii	"CF_NUM\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF168:
	.ascii	"Handler\000"
.LASF142:
	.ascii	"TGUIOBJECT\000"
.LASF68:
	.ascii	"CF_RGB888\000"
.LASF62:
	.ascii	"TCOLOR\000"
.LASF48:
	.ascii	"clSilver\000"
.LASF90:
	.ascii	"USB_EP3IN\000"
.LASF78:
	.ascii	"pRECT\000"
.LASF49:
	.ascii	"clRed\000"
.LASF35:
	.ascii	"TDLIST\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF161:
	.ascii	"GlobalAlpha\000"
.LASF27:
	.ascii	"Next\000"
.LASF134:
	.ascii	"InheritedEnabled\000"
.LASF57:
	.ascii	"clMoneyGreen\000"
.LASF20:
	.ascii	"sizetype\000"
.LASF114:
	.ascii	"GO_UNKNOWN\000"
.LASF123:
	.ascii	"GF_TOPMOST\000"
.LASF100:
	.ascii	"ET_PENMOVE\000"
.LASF152:
	.ascii	"ChildList\000"
.LASF41:
	.ascii	"clOlive\000"
.LASF61:
	.ascii	"clBtnFace\000"
.LASF167:
	.ascii	"GUI_CreateWindow\000"
.LASF107:
	.ascii	"ListHeader\000"
.LASF26:
	.ascii	"Prev\000"
.LASF36:
	.ascii	"pDLIST\000"
.LASF84:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF141:
	.ascii	"OnDestroy\000"
.LASF79:
	.ascii	"tag_VLINDEX\000"
.LASF89:
	.ascii	"USB_EP2IN\000"
.LASF120:
	.ascii	"tag_GOFLAGS\000"
.LASF124:
	.ascii	"GF_FRAMED\000"
.LASF51:
	.ascii	"clLime\000"
.LASF158:
	.ascii	"Clip\000"
.LASF60:
	.ascii	"clMedGray\000"
.LASF54:
	.ascii	"clFuchsia\000"
.LASF180:
	.ascii	"GUI_CalcClientAreaWindow\000"
.LASF165:
	.ascii	"intflags\000"
.LASF181:
	.ascii	"ClientArea\000"
.LASF32:
	.ascii	"First\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF101:
	.ascii	"ET_ONPAINT\000"
.LASF164:
	.ascii	"tval\000"
.LASF147:
	.ascii	"Framed\000"
.LASF115:
	.ascii	"GO_WINDOW\000"
.LASF132:
	.ascii	"Enabled\000"
.LASF149:
	.ascii	"ForeColor\000"
.LASF45:
	.ascii	"clPurple\000"
.LASF66:
	.ascii	"CF_RGB565\000"
.LASF22:
	.ascii	"false\000"
.LASF12:
	.ascii	"__uintptr_t\000"
.LASF70:
	.ascii	"CF_PARGB8888\000"
.LASF102:
	.ascii	"ET_GODESTROY\000"
.LASF77:
	.ascii	"TRECT\000"
.LASF31:
	.ascii	"tag_DList\000"
.LASF92:
	.ascii	"USB_EPMAXINDEX\000"
.LASF117:
	.ascii	"GO_LABEL\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF56:
	.ascii	"clWhite\000"
.LASF185:
	.ascii	"tag_RECT\000"
.LASF137:
	.ascii	"OnRelease\000"
.LASF174:
	.ascii	"GUI_IsLayerObject\000"
.LASF186:
	.ascii	"GUI_MoveWindowToTop\000"
.LASF21:
	.ascii	"char\000"
.LASF43:
	.ascii	"clDarkGray\000"
.LASF88:
	.ascii	"USB_EP1IN\000"
.LASF133:
	.ascii	"Visible\000"
.LASF151:
	.ascii	"EventHandler\000"
.LASF153:
	.ascii	"CurrentZIndex\000"
.LASF169:
	.ascii	"Flags\000"
.LASF83:
	.ascii	"LCDIF_LAYER3\000"
.LASF80:
	.ascii	"LCDIF_LAYER0\000"
.LASF86:
	.ascii	"tag_EP\000"
.LASF129:
	.ascii	"Position\000"
.LASF155:
	.ascii	"ObjectItem\000"
.LASF55:
	.ascii	"clAqua\000"
.LASF121:
	.ascii	"GF_ENABLED\000"
.LASF81:
	.ascii	"LCDIF_LAYER1\000"
.LASF82:
	.ascii	"LCDIF_LAYER2\000"
.LASF106:
	.ascii	"tag_EVENT\000"
.LASF110:
	.ascii	"ParamSz\000"
.LASF178:
	.ascii	"GUI_MoveWindowTreeToTop\000"
.LASF179:
	.ascii	"ObjectToInvalidate\000"
.LASF119:
	.ascii	"TGOTYPE\000"
.LASF94:
	.ascii	"USB_EP2OUT\000"
.LASF187:
	.ascii	"GUILayer\000"
.LASF67:
	.ascii	"CF_YUYV422\000"
.LASF46:
	.ascii	"clTeal\000"
.LASF34:
	.ascii	"Count\000"
.LASF71:
	.ascii	"CF_xRGB8888\000"
.LASF103:
	.ascii	"ET_PWRKEY\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF28:
	.ascii	"Data\000"
.LASF127:
	.ascii	"pGUIOBJECT\000"
.LASF135:
	.ascii	"InheritedVisible\000"
.LASF74:
	.ascii	"tag_POINT\000"
.LASF30:
	.ascii	"tag_ListItem\000"
.LASF138:
	.ascii	"OnMove\000"
.LASF33:
	.ascii	"Last\000"
.LASF166:
	.ascii	"GUI_CreateLayer\000"
.LASF154:
	.ascii	"NewZIndex\000"
.LASF93:
	.ascii	"USB_EP1OUT\000"
.LASF116:
	.ascii	"GO_BUTTON\000"
.LASF39:
	.ascii	"clMaroon\000"
.LASF25:
	.ascii	"TDLITEM\000"
.LASF73:
	.ascii	"TCFORMAT\000"
.LASF38:
	.ascii	"clBrown\000"
.LASF29:
	.ascii	"pDLITEM\000"
.LASF159:
	.ascii	"WinRect\000"
.LASF47:
	.ascii	"clGray\000"
.LASF42:
	.ascii	"clDarkBlue\000"
.LASF140:
	.ascii	"OnPaint\000"
.LASF105:
	.ascii	"TEVTYPE\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
