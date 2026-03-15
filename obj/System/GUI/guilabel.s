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
	.file	"guilabel.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.GUI_DrawDefaultLabel,"ax",%progbits
	.align	2
	.global	GUI_DrawDefaultLabel
	.code	16
	.thumb_func
	.type	GUI_DrawDefaultLabel, %function
GUI_DrawDefaultLabel:
.LFB1:
	.file 1 "Source\\GUI\\guilabel.c"
	.loc 1 26 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
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
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 27 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	.loc 1 31 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.LCB20
	b	.L12	@long jump
.LCB20:
	.loc 1 31 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	bne	.LCB24
	b	.L12	@long jump
.LCB24:
	.loc 1 32 0 discriminator 2
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	.loc 1 31 0 discriminator 2
	cmp	r3, #3
	bne	.L12
	.loc 1 32 0
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L12
	.loc 1 34 0
	movs	r3, #8
	adds	r2, r7, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	.loc 1 35 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	movs	r3, #23
	adds	r3, r7, r3
	movs	r1, #62
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	.loc 1 37 0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #80]
	cmp	r3, #0
	beq	.L5
.LBB2:
	.loc 1 39 0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	movs	r2, #62
	ldrb	r0, [r3, r2]
	.loc 1 40 0
	ldr	r3, [r7, #24]
	adds	r3, r3, #60
	movs	r1, r3
	.loc 1 43 0
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #25]
	.loc 1 39 0
	cmp	r3, #0
	beq	.L6
	.loc 1 43 0
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #27]
	cmp	r3, #0
	beq	.L6
	.loc 1 39 0
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #68]
	b	.L7
.L6:
	.loc 1 39 0 is_stmt 0 discriminator 1
	ldr	r2, .L13
.L7:
	.loc 1 39 0 discriminator 3
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #72]
	ldr	r5, [r7]
	movs	r4, #8
	adds	r4, r7, r4
	str	r3, [sp, #4]
	str	r2, [sp]
	movs	r3, r5
	movs	r2, r4
	bl	GDI_DrawText
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 46 0 is_stmt 1 discriminator 3
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L5
.LBB3:
	.loc 1 50 0
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L8
.L9:
	.loc 1 51 0 discriminator 3
	ldr	r3, [r7, #24]
	ldr	r4, [r3, #84]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	movs	r1, #4
	adds	r3, r2, r3
	adds	r2, r3, r1
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r4
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	GDI_FillRectangle
	.loc 1 50 0 discriminator 3
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L8:
	.loc 1 50 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L9
	.loc 1 53 0 is_stmt 1
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	GDI_DeleteRList
	.loc 1 54 0
	b	.L1
.L5:
.LBE3:
.LBE2:
	.loc 1 57 0
	ldr	r2, [r7]
	movs	r3, #8
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L1
	.loc 1 58 0
	ldr	r3, [r7, #24]
	ldr	r1, [r3, #84]
	movs	r3, #8
	adds	r2, r7, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	GDI_FillRectangle
	b	.L1
.L12:
	.loc 1 32 0
	nop
.L1:
	.loc 1 59 0
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r7, pc}
.L14:
	.align	2
.L13:
	.word	-8355712
	.cfi_endproc
.LFE1:
	.size	GUI_DrawDefaultLabel, .-GUI_DrawDefaultLabel
	.section	.text.GUI_CreateLabel,"ax",%progbits
	.align	2
	.global	GUI_CreateLabel
	.code	16
	.thumb_func
	.type	GUI_CreateLabel, %function
GUI_CreateLabel:
.LFB2:
	.loc 1 63 0
	.cfi_startproc
	@ args = 36, pretend = 8, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 7, -16
	.cfi_offset 14, -12
	sub	sp, sp, #52
	.cfi_def_cfa_offset 72
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #20]
	movs	r0, #12
	adds	r0, r7, r0
	str	r1, [r0]
	str	r2, [r0, #4]
	movs	r2, #4
	movs	r1, #64
	mov	ip, r1
	add	ip, ip, r7
	add	r2, r2, ip
	str	r3, [r2]
	.loc 1 67 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L16
	.loc 1 68 0 discriminator 1
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	.loc 1 67 0 discriminator 1
	beq	.L16
	.loc 1 68 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	GUI_IsLayerObject
	subs	r3, r0, #0
	beq	.L17
.L16:
	.loc 1 68 0 discriminator 1
	movs	r3, #0
	b	.L18
.L17:
	.loc 1 70 0
	movs	r0, #88
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #44]
	.loc 1 71 0
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.LCB226
	b	.L19	@long jump
.LCB226:
.LBB4:
	.loc 1 73 0
	ldr	r3, [r7, #20]
	adds	r3, r3, #68
	str	r3, [r7, #36]
	.loc 1 75 0
	ldr	r3, [r7, #44]
	movs	r2, #88
	movs	r1, #0
	movs	r0, r3
	bl	memset
.LBB5:
	.loc 1 77 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L20
	.loc 1 77 0 is_stmt 0 discriminator 1
	movs	r3, #34
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
	movs	r2, #34
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #4]
.L20:
.LBE5:
.LBB6:
	.loc 1 78 0 is_stmt 1
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L21
	.loc 1 78 0 is_stmt 0 discriminator 1
	movs	r3, #32
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
	movs	r2, #32
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #6]
.L21:
.LBE6:
	.loc 1 80 0 is_stmt 1
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
	.loc 1 81 0
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #20]
	str	r2, [r3, #20]
	.loc 1 82 0
	movs	r3, #32
	movs	r2, #64
	mov	ip, r2
	add	ip, ip, r7
	add	r3, r3, ip
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
	.loc 1 83 0
	movs	r3, #32
	movs	r2, #64
	mov	ip, r2
	add	ip, ip, r7
	add	r3, r3, ip
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
	.loc 1 84 0
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #25]
	cmp	r3, #0
	beq	.L22
	.loc 1 84 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #27]
	cmp	r3, #0
	beq	.L22
	.loc 1 84 0 discriminator 3
	movs	r3, #1
	b	.L23
.L22:
	.loc 1 84 0 discriminator 4
	movs	r3, #0
.L23:
	.loc 1 84 0 discriminator 6
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #44]
	strb	r2, [r3, #27]
	.loc 1 85 0 is_stmt 1 discriminator 6
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L24
	.loc 1 85 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #28]
	cmp	r3, #0
	beq	.L24
	.loc 1 85 0 discriminator 3
	movs	r3, #1
	b	.L25
.L24:
	.loc 1 85 0 discriminator 4
	movs	r3, #0
.L25:
	.loc 1 85 0 discriminator 6
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #44]
	strb	r2, [r3, #28]
	.loc 1 87 0 is_stmt 1 discriminator 6
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #92]
	str	r2, [r3, #84]
	.loc 1 89 0 discriminator 6
	movs	r3, #68
	adds	r3, r7, r3
	movs	r0, r3
	bl	GDI_UpdateTextExtent
	.loc 1 90 0 discriminator 6
	ldr	r3, [r7, #44]
	movs	r2, #4
	movs	r1, #64
	mov	ip, r1
	add	ip, ip, r7
	add	r2, r2, ip
	adds	r3, r3, #60
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	.loc 1 91 0 discriminator 6
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #44]
	str	r2, [r3, #72]
	.loc 1 93 0 discriminator 6
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L26
	.loc 1 93 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #44]
	movs	r3, #43
	adds	r4, r7, r3
	ldr	r3, [r7, #36]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	movs	r3, r0
	strb	r3, [r4]
	b	.L27
.L26:
.LBB7:
	.loc 1 98 0 is_stmt 1
	movs	r3, #28
	adds	r2, r7, r3
	ldr	r3, [r7, #20]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_GetTopNonWindowObject
	.loc 1 100 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L28
	.loc 1 101 0 discriminator 1
	ldr	r2, [r7, #44]
	.loc 1 100 0 discriminator 1
	ldr	r3, [r7, #36]
	movs	r1, #0
	movs	r0, r3
	bl	DL_AddItemAtIndexPtr
	movs	r3, r0
	movs	r2, r3
	b	.L29
.L28:
	.loc 1 102 0 discriminator 2
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #44]
	.loc 1 100 0 discriminator 2
	ldr	r3, [r7, #36]
	movs	r0, r3
	bl	DL_InsertItemAfterPtr
	movs	r3, r0
	movs	r2, r3
.L29:
	.loc 1 100 0 is_stmt 0 discriminator 4
	movs	r3, #43
	adds	r3, r7, r3
	strb	r2, [r3]
.L27:
.LBE7:
	.loc 1 105 0 is_stmt 1
	movs	r3, #43
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L30
	.loc 1 107 0
	ldr	r3, [r7, #44]
	movs	r2, #3
	strb	r2, [r3, #24]
	.loc 1 108 0
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L19
	.loc 1 108 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #28]
	cmp	r3, #0
	beq	.L19
	.loc 1 109 0 is_stmt 1
	ldr	r3, [r7, #44]
	movs	r0, r3
	bl	GUI_Invalidate
	b	.L19
.L30:
	.loc 1 113 0
	ldr	r3, [r7, #44]
	movs	r0, r3
	bl	free
	.loc 1 114 0
	movs	r3, #0
	str	r3, [r7, #44]
.L19:
.LBE4:
	.loc 1 117 0
	ldr	r3, [r7, #44]
.L18:
	.loc 1 118 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r7}
	pop	{r3}
	add	sp, sp, #8
	bx	r3
	.cfi_endproc
.LFE2:
	.size	GUI_CreateLabel, .-GUI_CreateLabel
	.section	.text.GUI_DestroyLabel,"ax",%progbits
	.align	2
	.global	GUI_DestroyLabel
	.code	16
	.thumb_func
	.type	GUI_DestroyLabel, %function
GUI_DestroyLabel:
.LFB3:
	.loc 1 121 0
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
	.loc 1 122 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L36
	.loc 1 122 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bne	.L36
.LBB8:
	.loc 1 124 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	.loc 1 126 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	beq	.L34
	.loc 1 126 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	movs	r0, r3
	bl	IsDynamicMemory
	subs	r3, r0, #0
	beq	.L34
	.loc 1 127 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	movs	r0, r3
	bl	free
.L34:
	.loc 1 128 0
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
	.loc 1 130 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	cmp	r3, #0
	beq	.L35
	.loc 1 130 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	movs	r0, r3
	bl	IsDynamicMemory
	subs	r3, r0, #0
	beq	.L35
	.loc 1 131 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	movs	r0, r3
	bl	free
.L35:
	.loc 1 132 0
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #80]
.L36:
.LBE8:
	.loc 1 134 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	GUI_DestroyLabel, .-GUI_DestroyLabel
	.section	.text.GUI_GetTextLabel,"ax",%progbits
	.align	2
	.global	GUI_GetTextLabel
	.code	16
	.thumb_func
	.type	GUI_GetTextLabel, %function
GUI_GetTextLabel:
.LFB4:
	.loc 1 137 0
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
	.loc 1 138 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L38
	.loc 1 138 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bne	.L38
	.loc 1 140 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #4]
	str	r2, [r3, #72]
	.loc 1 142 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	b	.L39
.L38:
	.loc 1 144 0
	movs	r3, #0
.L39:
	.loc 1 145 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	GUI_GetTextLabel, .-GUI_GetTextLabel
	.section	.text.GUI_SetTextLabel,"ax",%progbits
	.align	2
	.global	GUI_SetTextLabel
	.code	16
	.thumb_func
	.type	GUI_SetTextLabel, %function
GUI_SetTextLabel:
.LFB5:
	.loc 1 148 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 149 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L41
	.loc 1 149 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #3
	bne	.L41
	.loc 1 149 0 is_stmt 0 discriminator 2
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L41
	.loc 1 151 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	adds	r3, r3, #60
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	.loc 1 152 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #4]
	str	r2, [r3, #72]
	.loc 1 154 0
	movs	r3, #1
	b	.L42
.L41:
	.loc 1 156 0
	movs	r3, #0
.L42:
	.loc 1 157 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE5:
	.size	GUI_SetTextLabel, .-GUI_SetTextLabel
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\System/dlist.h"
	.file 6 ".\\Source\\GUI/gditypes.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 8 ".\\Source\\System/evmngr.h"
	.file 9 ".\\Source\\GUI/bfcfont.h"
	.file 10 ".\\Source\\GUI/gdifont.h"
	.file 11 ".\\Source\\GUI/guiobject.h"
	.file 12 ".\\Source\\GUI/guiwin.h"
	.file 13 ".\\Source\\GUI/guilabel.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xc22
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF197
	.byte	0xc
	.4byte	.LASF198
	.4byte	.LASF199
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
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x17
	.4byte	0x12c
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0xc
	.byte	0x5
	.byte	0x18
	.4byte	0x15d
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1a
	.4byte	0x15d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x1b
	.4byte	0x15d
	.byte	0x4
	.uleb128 0xb
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
	.4byte	0x168
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12c
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0xc
	.byte	0x5
	.byte	0x1f
	.4byte	0x19f
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x21
	.4byte	0x15d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x22
	.4byte	0x15d
	.byte	0x4
	.uleb128 0xb
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
	.4byte	0x16e
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x5
	.byte	0x24
	.4byte	0x1b5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16e
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x4
	.4byte	0x9b
	.byte	0x6
	.byte	0x16
	.4byte	0x2ad
	.uleb128 0xd
	.4byte	.LASF37
	.4byte	0xff000000
	.uleb128 0xd
	.4byte	.LASF38
	.4byte	0xff003366
	.uleb128 0xd
	.4byte	.LASF39
	.4byte	0xff000080
	.uleb128 0xd
	.4byte	.LASF40
	.4byte	0xff008000
	.uleb128 0xd
	.4byte	.LASF41
	.4byte	0xff008080
	.uleb128 0xd
	.4byte	.LASF42
	.4byte	0xff400000
	.uleb128 0xd
	.4byte	.LASF43
	.4byte	0xff404040
	.uleb128 0xd
	.4byte	.LASF44
	.4byte	0xff800000
	.uleb128 0xd
	.4byte	.LASF45
	.4byte	0xff800080
	.uleb128 0xd
	.4byte	.LASF46
	.4byte	0xff808000
	.uleb128 0xd
	.4byte	.LASF47
	.4byte	0xff808080
	.uleb128 0xd
	.4byte	.LASF48
	.4byte	0xffc0c0c0
	.uleb128 0xd
	.4byte	.LASF49
	.4byte	0xff0000ff
	.uleb128 0xd
	.4byte	.LASF50
	.4byte	0xff00c000
	.uleb128 0xd
	.4byte	.LASF51
	.4byte	0xff00ff00
	.uleb128 0xd
	.4byte	.LASF52
	.4byte	0xff00ffff
	.uleb128 0xd
	.4byte	.LASF53
	.4byte	0xffff0000
	.uleb128 0xd
	.4byte	.LASF54
	.4byte	0xffff00ff
	.uleb128 0xd
	.4byte	.LASF55
	.4byte	0xffffff00
	.uleb128 0xd
	.4byte	.LASF56
	.4byte	0xffffffff
	.uleb128 0xd
	.4byte	.LASF57
	.4byte	0xffc0dcc0
	.uleb128 0xd
	.4byte	.LASF58
	.4byte	0xfff0c8a4
	.uleb128 0xd
	.4byte	.LASF59
	.4byte	0xfff0f8fc
	.uleb128 0xd
	.4byte	.LASF60
	.4byte	0xffa4a0a0
	.uleb128 0xd
	.4byte	.LASF61
	.4byte	0xffc8d0d4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x6
	.byte	0x31
	.4byte	0x1bb
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x4
	.byte	0x6
	.byte	0x41
	.4byte	0x2d9
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x6
	.byte	0x43
	.4byte	0xad
	.byte	0
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x6
	.byte	0x44
	.4byte	0xad
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x6
	.byte	0x45
	.4byte	0x2b8
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x6
	.byte	0x45
	.4byte	0x2ef
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b8
	.uleb128 0xf
	.byte	0x8
	.byte	0x6
	.byte	0x49
	.4byte	0x314
	.uleb128 0xe
	.ascii	"lt\000"
	.byte	0x6
	.byte	0x4b
	.4byte	0x2d9
	.byte	0
	.uleb128 0xe
	.ascii	"rb\000"
	.byte	0x6
	.byte	0x4c
	.4byte	0x2d9
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x6
	.byte	0x4e
	.4byte	0x345
	.uleb128 0xe
	.ascii	"l\000"
	.byte	0x6
	.byte	0x50
	.4byte	0xad
	.byte	0
	.uleb128 0xe
	.ascii	"t\000"
	.byte	0x6
	.byte	0x51
	.4byte	0xad
	.byte	0x2
	.uleb128 0xe
	.ascii	"r\000"
	.byte	0x6
	.byte	0x52
	.4byte	0xad
	.byte	0x4
	.uleb128 0xe
	.ascii	"b\000"
	.byte	0x6
	.byte	0x53
	.4byte	0xad
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF200
	.byte	0x8
	.byte	0x6
	.byte	0x47
	.4byte	0x35c
	.uleb128 0x11
	.4byte	0x2f5
	.uleb128 0x11
	.4byte	0x314
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x6
	.byte	0x55
	.4byte	0x345
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x6
	.byte	0x55
	.4byte	0x372
	.uleb128 0x6
	.byte	0x4
	.4byte	0x345
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x4
	.byte	0x6
	.byte	0x5d
	.4byte	0x39b
	.uleb128 0xe
	.ascii	"sx\000"
	.byte	0x6
	.byte	0x5f
	.4byte	0xb8
	.byte	0
	.uleb128 0xe
	.ascii	"sy\000"
	.byte	0x6
	.byte	0x60
	.4byte	0xb8
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x6
	.byte	0x61
	.4byte	0x378
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x24
	.byte	0x6
	.byte	0x63
	.4byte	0x3cb
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x65
	.4byte	0xce
	.byte	0
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x6
	.byte	0x66
	.4byte	0x3cb
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	0x35c
	.4byte	0x3db
	.uleb128 0x13
	.4byte	0xe0
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x6
	.byte	0x67
	.4byte	0x3e6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a6
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0xf1
	.4byte	0x41b
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x7
	.byte	0xf8
	.4byte	0x3ec
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x1
	.4byte	0x37
	.byte	0x8
	.byte	0x16
	.4byte	0x467
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x8
	.byte	0x23
	.4byte	0x426
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x18
	.byte	0x8
	.byte	0x25
	.4byte	0x4bb
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x8
	.byte	0x27
	.4byte	0x121
	.byte	0
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x8
	.byte	0x28
	.4byte	0x467
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x8
	.byte	0x29
	.4byte	0xe7
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x8
	.byte	0x2a
	.4byte	0xce
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x8
	.byte	0x2b
	.4byte	0x4bb
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.4byte	0xa2
	.4byte	0x4ca
	.uleb128 0x14
	.4byte	0xe0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x8
	.byte	0x2c
	.4byte	0x4d5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x472
	.uleb128 0x15
	.byte	0x4
	.byte	0x9
	.byte	0x3d
	.4byte	0x510
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x9
	.byte	0x3f
	.4byte	0xf6
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x9
	.byte	0x40
	.4byte	0x510
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x9
	.byte	0x41
	.4byte	0x51b
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x9
	.byte	0x42
	.4byte	0x526
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x516
	.uleb128 0x17
	.4byte	0x37
	.uleb128 0x6
	.byte	0x4
	.4byte	0x521
	.uleb128 0x17
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x52c
	.uleb128 0x17
	.4byte	0x7f
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x8
	.byte	0x9
	.byte	0x39
	.4byte	0x560
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x9
	.byte	0x3b
	.4byte	0x5b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x9
	.byte	0x3c
	.4byte	0x5b
	.byte	0x2
	.uleb128 0xe
	.ascii	"p\000"
	.byte	0x9
	.byte	0x43
	.4byte	0x4db
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x9
	.byte	0x44
	.4byte	0x531
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x10
	.byte	0x9
	.byte	0x46
	.4byte	0x5a8
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x9
	.byte	0x48
	.4byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x9
	.byte	0x49
	.4byte	0x7f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x9
	.byte	0x4a
	.4byte	0x5a8
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x9
	.byte	0x4b
	.4byte	0x5b3
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5ae
	.uleb128 0x17
	.4byte	0x560
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b9
	.uleb128 0x17
	.4byte	0x56b
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x9
	.byte	0x4c
	.4byte	0x56b
	.uleb128 0x15
	.byte	0x4
	.byte	0x9
	.byte	0x54
	.4byte	0x5fe
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x9
	.byte	0x56
	.4byte	0xf6
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x9
	.byte	0x57
	.4byte	0x510
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x9
	.byte	0x58
	.4byte	0x51b
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x9
	.byte	0x59
	.4byte	0x526
	.byte	0
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x10
	.byte	0x9
	.byte	0x4e
	.4byte	0x645
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x9
	.byte	0x50
	.4byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x9
	.byte	0x51
	.4byte	0x7f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0x9
	.byte	0x52
	.4byte	0x5b
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x9
	.byte	0x53
	.4byte	0x5b
	.byte	0xa
	.uleb128 0xe
	.ascii	"p\000"
	.byte	0x9
	.byte	0x5a
	.4byte	0x5c9
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x9
	.byte	0x5b
	.4byte	0x5fe
	.uleb128 0x15
	.byte	0x4
	.byte	0x9
	.byte	0x63
	.4byte	0x67a
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x9
	.byte	0x65
	.4byte	0xf6
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x9
	.byte	0x66
	.4byte	0x67a
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x9
	.byte	0x67
	.4byte	0x685
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x680
	.uleb128 0x17
	.4byte	0x645
	.uleb128 0x6
	.byte	0x4
	.4byte	0x68b
	.uleb128 0x17
	.4byte	0x5be
	.uleb128 0xf
	.byte	0x10
	.byte	0x9
	.byte	0x5d
	.4byte	0x6d3
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x9
	.byte	0x5f
	.4byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x9
	.byte	0x60
	.4byte	0x5b
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x9
	.byte	0x61
	.4byte	0x5b
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x9
	.byte	0x62
	.4byte	0x7f
	.byte	0x8
	.uleb128 0xe
	.ascii	"p\000"
	.byte	0x9
	.byte	0x68
	.4byte	0x650
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x9
	.byte	0x69
	.4byte	0x6de
	.uleb128 0x6
	.byte	0x4
	.4byte	0x690
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0x18
	.4byte	0x725
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
	.byte	0
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0xa
	.byte	0x22
	.4byte	0x6e4
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0x8
	.byte	0xa
	.byte	0x24
	.4byte	0x755
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xa
	.byte	0x26
	.4byte	0x2ad
	.byte	0
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xa
	.byte	0x27
	.4byte	0x2ad
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0xa
	.byte	0x28
	.4byte	0x730
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0x18
	.byte	0xa
	.byte	0x2a
	.4byte	0x7a9
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xa
	.byte	0x2c
	.4byte	0x39b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xa
	.byte	0x2d
	.4byte	0x725
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xa
	.byte	0x2e
	.4byte	0x755
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xa
	.byte	0x2f
	.4byte	0x6d3
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xa
	.byte	0x30
	.4byte	0xe9
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0xa
	.byte	0x31
	.4byte	0x760
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0xa
	.byte	0x31
	.4byte	0x7bf
	.uleb128 0x6
	.byte	0x4
	.4byte	0x760
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x1
	.4byte	0x37
	.byte	0xb
	.byte	0x16
	.4byte	0x7f4
	.uleb128 0x9
	.4byte	.LASF142
	.byte	0
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0xb
	.byte	0x1e
	.4byte	0x7c5
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0x1
	.4byte	0x37
	.byte	0xb
	.byte	0x20
	.4byte	0x82e
	.uleb128 0x9
	.4byte	.LASF149
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0xb
	.byte	0x27
	.4byte	0x7ff
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0xb
	.byte	0x29
	.4byte	0x844
	.uleb128 0x6
	.byte	0x4
	.4byte	0x84a
	.uleb128 0xa
	.4byte	.LASF156
	.byte	0x3c
	.byte	0xb
	.byte	0x2a
	.4byte	0x90b
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0xb
	.byte	0x2c
	.4byte	0x121
	.byte	0
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xb
	.byte	0x2d
	.4byte	0x35c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xb
	.byte	0x2e
	.4byte	0x839
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xb
	.byte	0x2f
	.4byte	0x7f4
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xb
	.byte	0x30
	.4byte	0x116
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xb
	.byte	0x31
	.4byte	0x116
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xb
	.byte	0x32
	.4byte	0x116
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0xb
	.byte	0x33
	.4byte	0x116
	.byte	0x1c
	.uleb128 0xe
	.ascii	"Tag\000"
	.byte	0xb
	.byte	0x34
	.4byte	0xc3
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0xb
	.byte	0x35
	.4byte	0x91b
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0xb
	.byte	0x36
	.4byte	0x91b
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xb
	.byte	0x37
	.4byte	0x91b
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0xb
	.byte	0x38
	.4byte	0x91b
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0xb
	.byte	0x39
	.4byte	0x931
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0xb
	.byte	0x3a
	.4byte	0x942
	.byte	0x38
	.byte	0
	.uleb128 0x18
	.4byte	0x91b
	.uleb128 0x19
	.4byte	0x839
	.uleb128 0x19
	.4byte	0x2e4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x90b
	.uleb128 0x18
	.4byte	0x931
	.uleb128 0x19
	.4byte	0x839
	.uleb128 0x19
	.4byte	0x367
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x921
	.uleb128 0x18
	.4byte	0x942
	.uleb128 0x19
	.4byte	0x839
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x937
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0xb
	.byte	0x3b
	.4byte	0x84a
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0xc
	.byte	0x17
	.4byte	0x95e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x964
	.uleb128 0xa
	.4byte	.LASF172
	.byte	0x54
	.byte	0xc
	.byte	0x18
	.4byte	0x9c5
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xc
	.byte	0x1a
	.4byte	0x948
	.byte	0
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0xc
	.byte	0x1b
	.4byte	0x116
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0xc
	.byte	0x1c
	.4byte	0x116
	.byte	0x3d
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0xc
	.byte	0x1d
	.4byte	0x41b
	.byte	0x3e
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xc
	.byte	0x1e
	.4byte	0x2ad
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0xc
	.byte	0x1f
	.4byte	0x19f
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0xc
	.byte	0x20
	.4byte	0x9d9
	.byte	0x50
	.byte	0
	.uleb128 0x1a
	.4byte	0x116
	.4byte	0x9d9
	.uleb128 0x19
	.4byte	0x4ca
	.uleb128 0x19
	.4byte	0x839
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9c5
	.uleb128 0xa
	.4byte	.LASF179
	.byte	0x58
	.byte	0xd
	.byte	0x16
	.4byte	0xa10
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xd
	.byte	0x18
	.4byte	0x948
	.byte	0
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0xd
	.byte	0x19
	.4byte	0x7a9
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xd
	.byte	0x1a
	.4byte	0x2ad
	.byte	0x54
	.byte	0
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0xd
	.byte	0x1b
	.4byte	0xa1b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9df
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0x1
	.byte	0x19
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaab
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0x1
	.byte	0x19
	.4byte	0x839
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.4byte	.LASF182
	.byte	0x1
	.byte	0x19
	.4byte	0x367
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF183
	.byte	0x1
	.byte	0x1b
	.4byte	0xa10
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.4byte	.LASF184
	.byte	0x1
	.byte	0x1c
	.4byte	0x35c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.4byte	.LASF176
	.byte	0x1
	.byte	0x1d
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1e
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1d
	.4byte	.LASF185
	.byte	0x1
	.byte	0x27
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1f
	.ascii	"i\000"
	.byte	0x1
	.byte	0x30
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF193
	.byte	0x1
	.byte	0x3d
	.4byte	0x839
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8f
	.uleb128 0x1c
	.4byte	.LASF158
	.byte	0x1
	.byte	0x3d
	.4byte	0x839
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0x1
	.byte	0x3d
	.4byte	0x35c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.4byte	.LASF180
	.byte	0x1
	.byte	0x3d
	.4byte	0x7a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0x1
	.byte	0x3e
	.4byte	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1c
	.4byte	.LASF186
	.byte	0x1
	.byte	0x3e
	.4byte	0x82e
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1d
	.4byte	.LASF183
	.byte	0x1
	.byte	0x40
	.4byte	0xa10
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.4byte	.LASF187
	.byte	0x1
	.byte	0x41
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1e
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1d
	.4byte	.LASF188
	.byte	0x1
	.byte	0x49
	.4byte	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xb59
	.uleb128 0x1d
	.4byte	.LASF189
	.byte	0x1
	.byte	0x4d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.uleb128 0x21
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xb75
	.uleb128 0x1d
	.4byte	.LASF189
	.byte	0x1
	.byte	0x4e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1d
	.4byte	.LASF190
	.byte	0x1
	.byte	0x60
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0x1
	.byte	0x78
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbcb
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0x1
	.byte	0x78
	.4byte	0x839
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x1d
	.4byte	.LASF183
	.byte	0x1
	.byte	0x7c
	.4byte	0xa10
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF194
	.byte	0x1
	.byte	0x88
	.4byte	0x7b4
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf3
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0x1
	.byte	0x88
	.4byte	0x839
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF195
	.byte	0x1
	.byte	0x93
	.4byte	0x116
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0x1
	.byte	0x93
	.4byte	0x839
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.4byte	.LASF196
	.byte	0x1
	.byte	0x93
	.4byte	0x7b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
.LASF81:
	.ascii	"tag_EVTYPE\000"
.LASF124:
	.ascii	"AV_TOP\000"
.LASF19:
	.ascii	"long double\000"
.LASF70:
	.ascii	"tag_RLIST\000"
.LASF175:
	.ascii	"Framed\000"
.LASF195:
	.ascii	"GUI_SetTextLabel\000"
.LASF23:
	.ascii	"true\000"
.LASF128:
	.ascii	"TTXTALIGN\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF44:
	.ascii	"clNavy\000"
.LASF154:
	.ascii	"TGOFLAGS\000"
.LASF187:
	.ascii	"Result\000"
.LASF96:
	.ascii	"Param\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF176:
	.ascii	"Layer\000"
.LASF42:
	.ascii	"clDarkBlue\000"
.LASF190:
	.ascii	"tmpDLItem\000"
.LASF65:
	.ascii	"pPOINT\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF172:
	.ascii	"tag_WIN\000"
.LASF11:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF141:
	.ascii	"tag_GOTYPE\000"
.LASF138:
	.ascii	"Text\000"
.LASF107:
	.ascii	"LastChar\000"
.LASF188:
	.ascii	"ObjectsList\000"
.LASF156:
	.ascii	"tag_GUIOBJECT\000"
.LASF198:
	.ascii	"Source\\GUI\\guilabel.c\000"
.LASF180:
	.ascii	"Caption\000"
.LASF97:
	.ascii	"pEVENT\000"
.LASF164:
	.ascii	"OnPress\000"
.LASF89:
	.ascii	"ET_ONTIMER\000"
.LASF64:
	.ascii	"TPOINT\000"
.LASF8:
	.ascii	"long int\000"
.LASF192:
	.ascii	"GUI_DestroyLabel\000"
.LASF73:
	.ascii	"tag_COLOR\000"
.LASF94:
	.ascii	"Object\000"
.LASF132:
	.ascii	"TTEXTCOLOR\000"
.LASF146:
	.ascii	"GO_NUMTYPES\000"
.LASF110:
	.ascii	"BFC_FONT_MONO\000"
.LASF80:
	.ascii	"TVLINDEX\000"
.LASF181:
	.ascii	"pLABEL\000"
.LASF177:
	.ascii	"ChildObjects\000"
.LASF92:
	.ascii	"ListHeader\000"
.LASF150:
	.ascii	"GF_VISIBLE\000"
.LASF153:
	.ascii	"GF_AUTOREPEAT\000"
.LASF173:
	.ascii	"Head\000"
.LASF82:
	.ascii	"ET_UNKNOWN\000"
.LASF113:
	.ascii	"pProp\000"
.LASF134:
	.ascii	"Extent\000"
.LASF84:
	.ascii	"ET_PENRELEASE\000"
.LASF139:
	.ascii	"TTEXT\000"
.LASF158:
	.ascii	"Parent\000"
.LASF93:
	.ascii	"Event\000"
.LASF111:
	.ascii	"FontWidth\000"
.LASF118:
	.ascii	"pBFC_FONT\000"
.LASF98:
	.ascii	"pData\000"
.LASF117:
	.ascii	"Reversed\000"
.LASF99:
	.ascii	"pData8\000"
.LASF159:
	.ascii	"Type\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF59:
	.ascii	"clCream\000"
.LASF163:
	.ascii	"InheritedVisible\000"
.LASF37:
	.ascii	"clBlack\000"
.LASF183:
	.ascii	"Label\000"
.LASF199:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF197:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF58:
	.ascii	"clSkyBlue\000"
.LASF40:
	.ascii	"clGreen\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF170:
	.ascii	"TGUIOBJECT\000"
.LASF174:
	.ascii	"Topmost\000"
.LASF52:
	.ascii	"clYellow\000"
.LASF108:
	.ascii	"pFirstCharInfo\000"
.LASF155:
	.ascii	"pGUIOBJECT\000"
.LASF72:
	.ascii	"pRLIST\000"
.LASF135:
	.ascii	"Align\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF171:
	.ascii	"pWIN\000"
.LASF83:
	.ascii	"ET_PENPRESS\000"
.LASF137:
	.ascii	"Font\000"
.LASF62:
	.ascii	"TCOLOR\000"
.LASF48:
	.ascii	"clSilver\000"
.LASF131:
	.ascii	"BackColor\000"
.LASF116:
	.ascii	"Baseline\000"
.LASF100:
	.ascii	"pData16\000"
.LASF50:
	.ascii	"clMidGreen\000"
.LASF49:
	.ascii	"clRed\000"
.LASF35:
	.ascii	"TDLIST\000"
.LASF120:
	.ascii	"AH_LEFT\000"
.LASF125:
	.ascii	"AV_BOTTOM\000"
.LASF105:
	.ascii	"BFC_FONT_PROP\000"
.LASF27:
	.ascii	"Next\000"
.LASF162:
	.ascii	"InheritedEnabled\000"
.LASF57:
	.ascii	"clMoneyGreen\000"
.LASF20:
	.ascii	"sizetype\000"
.LASF142:
	.ascii	"GO_UNKNOWN\000"
.LASF151:
	.ascii	"GF_TOPMOST\000"
.LASF85:
	.ascii	"ET_PENMOVE\000"
.LASF191:
	.ascii	"GUI_DrawDefaultLabel\000"
.LASF53:
	.ascii	"clBlue\000"
.LASF41:
	.ascii	"clOlive\000"
.LASF61:
	.ascii	"clBtnFace\000"
.LASF4:
	.ascii	"short int\000"
.LASF194:
	.ascii	"GUI_GetTextLabel\000"
.LASF33:
	.ascii	"Last\000"
.LASF26:
	.ascii	"Prev\000"
.LASF36:
	.ascii	"pDLIST\000"
.LASF79:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF169:
	.ascii	"OnDestroy\000"
.LASF74:
	.ascii	"tag_VLINDEX\000"
.LASF122:
	.ascii	"AH_CENTER\000"
.LASF148:
	.ascii	"tag_GOFLAGS\000"
.LASF152:
	.ascii	"GF_FRAMED\000"
.LASF51:
	.ascii	"clLime\000"
.LASF182:
	.ascii	"Clip\000"
.LASF60:
	.ascii	"clMedGray\000"
.LASF54:
	.ascii	"clFuchsia\000"
.LASF55:
	.ascii	"clAqua\000"
.LASF184:
	.ascii	"LabelRect\000"
.LASF32:
	.ascii	"First\000"
.LASF136:
	.ascii	"Color\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF86:
	.ascii	"ET_ONPAINT\000"
.LASF189:
	.ascii	"tval\000"
.LASF193:
	.ascii	"GUI_CreateLabel\000"
.LASF143:
	.ascii	"GO_WINDOW\000"
.LASF129:
	.ascii	"tag_TEXTCOLOR\000"
.LASF160:
	.ascii	"Enabled\000"
.LASF130:
	.ascii	"ForeColor\000"
.LASF127:
	.ascii	"AV_MASK\000"
.LASF45:
	.ascii	"clPurple\000"
.LASF109:
	.ascii	"pNextProp\000"
.LASF101:
	.ascii	"pData32\000"
.LASF22:
	.ascii	"false\000"
.LASF87:
	.ascii	"ET_GODESTROY\000"
.LASF66:
	.ascii	"TRECT\000"
.LASF31:
	.ascii	"tag_DList\000"
.LASF145:
	.ascii	"GO_LABEL\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF121:
	.ascii	"AH_RIGHT\000"
.LASF56:
	.ascii	"clWhite\000"
.LASF200:
	.ascii	"tag_RECT\000"
.LASF165:
	.ascii	"OnRelease\000"
.LASF123:
	.ascii	"AH_MASK\000"
.LASF75:
	.ascii	"LCDIF_LAYER0\000"
.LASF21:
	.ascii	"char\000"
.LASF43:
	.ascii	"clDarkGray\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF104:
	.ascii	"DataSize\000"
.LASF24:
	.ascii	"boolean\000"
.LASF161:
	.ascii	"Visible\000"
.LASF69:
	.ascii	"TSIZEXY\000"
.LASF186:
	.ascii	"Flags\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF157:
	.ascii	"Position\000"
.LASF78:
	.ascii	"LCDIF_LAYER3\000"
.LASF149:
	.ascii	"GF_ENABLED\000"
.LASF76:
	.ascii	"LCDIF_LAYER1\000"
.LASF77:
	.ascii	"LCDIF_LAYER2\000"
.LASF91:
	.ascii	"tag_EVENT\000"
.LASF196:
	.ascii	"ObjectText\000"
.LASF147:
	.ascii	"TGOTYPE\000"
.LASF67:
	.ascii	"pRECT\000"
.LASF140:
	.ascii	"pTEXT\000"
.LASF179:
	.ascii	"tag_LABEL\000"
.LASF46:
	.ascii	"clTeal\000"
.LASF34:
	.ascii	"Count\000"
.LASF30:
	.ascii	"tag_ListItem\000"
.LASF185:
	.ascii	"BackRects\000"
.LASF88:
	.ascii	"ET_PWRKEY\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF28:
	.ascii	"Data\000"
.LASF119:
	.ascii	"tag_TXTALIGN\000"
.LASF133:
	.ascii	"tag_TEXT\000"
.LASF102:
	.ascii	"BFC_CHARINFO\000"
.LASF167:
	.ascii	"OnClick\000"
.LASF63:
	.ascii	"tag_POINT\000"
.LASF178:
	.ascii	"EventHandler\000"
.LASF106:
	.ascii	"FirstChar\000"
.LASF166:
	.ascii	"OnMove\000"
.LASF115:
	.ascii	"FontHeight\000"
.LASF95:
	.ascii	"ParamSz\000"
.LASF68:
	.ascii	"tag_SIZEXY\000"
.LASF144:
	.ascii	"GO_BUTTON\000"
.LASF103:
	.ascii	"Width\000"
.LASF126:
	.ascii	"AV_CENTER\000"
.LASF39:
	.ascii	"clMaroon\000"
.LASF25:
	.ascii	"TDLITEM\000"
.LASF71:
	.ascii	"Item\000"
.LASF114:
	.ascii	"FontType\000"
.LASF38:
	.ascii	"clBrown\000"
.LASF29:
	.ascii	"pDLITEM\000"
.LASF47:
	.ascii	"clGray\000"
.LASF112:
	.ascii	"pMono\000"
.LASF168:
	.ascii	"OnPaint\000"
.LASF90:
	.ascii	"TEVTYPE\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
