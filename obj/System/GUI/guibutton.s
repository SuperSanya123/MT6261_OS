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
	.file	"guibutton.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.bss.ButtonTimer,"aw",%nobits
	.align	2
	.type	ButtonTimer, %object
	.size	ButtonTimer, 4
ButtonTimer:
	.space	4
	.section	.bss.ArepeatButton,"aw",%nobits
	.align	2
	.type	ArepeatButton, %object
	.size	ArepeatButton, 4
ArepeatButton:
	.space	4
	.section	.bss.ButtonDelayDone,"aw",%nobits
	.type	ButtonDelayDone, %object
	.size	ButtonDelayDone, 1
ButtonDelayDone:
	.space	1
	.section	.text.GUI_DisableButtonTimer,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GUI_DisableButtonTimer, %function
GUI_DisableButtonTimer:
.LFB1:
	.file 1 "Source\\GUI\\guibutton.c"
	.loc 1 33 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 34 0
	ldr	r3, .L2
	ldr	r3, [r3]
	movs	r0, r3
	bl	LRT_Stop
	.loc 1 35 0
	ldr	r3, .L2
	ldr	r3, [r3]
	movs	r0, r3
	bl	LRT_Destroy
	.loc 1 36 0
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3]
	.loc 1 37 0
	ldr	r3, .L2+4
	movs	r2, #0
	str	r2, [r3]
	.loc 1 38 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	ButtonTimer
	.word	ArepeatButton
	.cfi_endproc
.LFE1:
	.size	GUI_DisableButtonTimer, .-GUI_DisableButtonTimer
	.section	.text.GUI_ButtonTimerHandler,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GUI_ButtonTimerHandler, %function
GUI_ButtonTimerHandler:
.LFB2:
	.loc 1 41 0
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
	.loc 1 42 0
	bl	GUI_GetObjectActive
	movs	r3, r0
	movs	r2, r3
	ldr	r3, .L8
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L5
	.loc 1 43 0 discriminator 1
	ldr	r3, .L8
	ldr	r3, [r3]
	movs	r2, #84
	ldrb	r3, [r3, r2]
	.loc 1 42 0 discriminator 1
	cmp	r3, #0
	beq	.L5
	.loc 1 43 0
	ldr	r3, .L8
	ldr	r3, [r3]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L5
.LBB2:
	.loc 1 45 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	str	r2, [r3]
	.loc 1 47 0
	ldr	r3, .L8+4
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L6
	.loc 1 49 0
	ldr	r3, .L8+4
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 50 0
	ldr	r3, [r7, #4]
	movs	r1, #75
	movs	r0, r3
	bl	LRT_SetInterval
.L6:
	.loc 1 52 0
	ldr	r3, .L8
	ldr	r3, [r3]
	ldr	r2, [r3, #48]
	ldr	r3, .L8
	ldr	r3, [r3]
	movs	r1, #12
	adds	r1, r7, r1
	movs	r0, r3
	blx	r2
.LBE2:
	.loc 1 44 0
	b	.L7
.L5:
	.loc 1 54 0
	bl	GUI_DisableButtonTimer
.L7:
	.loc 1 55 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L9:
	.align	2
.L8:
	.word	ArepeatButton
	.word	ButtonDelayDone
	.cfi_endproc
.LFE2:
	.size	GUI_ButtonTimerHandler, .-GUI_ButtonTimerHandler
	.section	.text.GUI_DrawDefaultButton,"ax",%progbits
	.align	2
	.global	GUI_DrawDefaultButton
	.code	16
	.thumb_func
	.type	GUI_DrawDefaultButton, %function
GUI_DrawDefaultButton:
.LFB3:
	.loc 1 58 0
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
	.loc 1 59 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	.loc 1 63 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.LCB142
	b	.L21	@long jump
.LCB142:
	.loc 1 63 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	bne	.LCB146
	b	.L21	@long jump
.LCB146:
	.loc 1 64 0 discriminator 2
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	.loc 1 63 0 discriminator 2
	cmp	r3, #2
	beq	.LCB150
	b	.L21	@long jump
.LCB150:
	.loc 1 64 0
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.LCB153
	b	.L21	@long jump
.LCB153:
	.loc 1 66 0
	movs	r3, #8
	adds	r2, r7, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	.loc 1 67 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	movs	r3, #23
	adds	r3, r7, r3
	movs	r1, #62
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	.loc 1 69 0
	ldr	r3, [r7, #24]
	movs	r2, #85
	ldrb	r3, [r3, r2]
	movs	r2, #1
	rsbs	r5, r2, #0
	ldr	r4, [r7]
	movs	r2, #8
	adds	r1, r7, r2
	movs	r2, #23
	adds	r2, r7, r2
	ldrb	r0, [r2]
	str	r3, [sp, #4]
	ldr	r3, .L22
	str	r3, [sp]
	movs	r3, r5
	movs	r2, r4
	bl	GDI_Draw3DFrame
	.loc 1 70 0
	movs	r3, #8
	adds	r2, r7, r3
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_CalcClientAreaButton
	.loc 1 72 0
	movs	r3, #8
	adds	r3, r7, r3
	movs	r0, r3
	bl	IsRectCollapsed
	subs	r3, r0, #0
	bne	.L10
	.loc 1 74 0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #80]
	cmp	r3, #0
	beq	.L15
.LBB3:
	.loc 1 76 0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	movs	r2, #62
	ldrb	r0, [r3, r2]
	.loc 1 77 0
	ldr	r3, [r7, #24]
	adds	r3, r3, #60
	movs	r1, r3
	.loc 1 80 0
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #25]
	.loc 1 76 0
	cmp	r3, #0
	beq	.L16
	.loc 1 80 0
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #27]
	cmp	r3, #0
	beq	.L16
	.loc 1 76 0
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #68]
	b	.L17
.L16:
	.loc 1 76 0 is_stmt 0 discriminator 1
	ldr	r2, .L22
.L17:
	.loc 1 76 0 discriminator 3
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
	.loc 1 83 0 is_stmt 1 discriminator 3
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L15
.LBB4:
	.loc 1 87 0
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L18
.L19:
	.loc 1 88 0 discriminator 3
	ldr	r3, [r7, #24]
	ldr	r4, [r3, #88]
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
	.loc 1 87 0 discriminator 3
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L18:
	.loc 1 87 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L19
	.loc 1 90 0 is_stmt 1
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	GDI_DeleteRList
	.loc 1 91 0
	b	.L10
.L15:
.LBE4:
.LBE3:
	.loc 1 94 0
	ldr	r2, [r7]
	movs	r3, #8
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L10
	.loc 1 95 0
	ldr	r3, [r7, #24]
	ldr	r1, [r3, #88]
	movs	r3, #8
	adds	r2, r7, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	ldr	r1, [r2]
	ldr	r2, [r2, #4]
	bl	GDI_FillRectangle
	b	.L10
.L21:
	.loc 1 64 0
	nop
.L10:
	.loc 1 97 0
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r7, pc}
.L23:
	.align	2
.L22:
	.word	-8355712
	.cfi_endproc
.LFE3:
	.size	GUI_DrawDefaultButton, .-GUI_DrawDefaultButton
	.section	.text.GUI_CreateButton,"ax",%progbits
	.align	2
	.global	GUI_CreateButton
	.code	16
	.thumb_func
	.type	GUI_CreateButton, %function
GUI_CreateButton:
.LFB4:
	.loc 1 101 0
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
	.loc 1 105 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L25
	.loc 1 106 0 discriminator 1
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	.loc 1 105 0 discriminator 1
	beq	.L25
	.loc 1 106 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	GUI_IsLayerObject
	subs	r3, r0, #0
	beq	.L26
.L25:
	.loc 1 106 0 discriminator 1
	movs	r3, #0
	b	.L27
.L26:
	.loc 1 108 0
	movs	r0, #92
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #44]
	.loc 1 109 0
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.LCB378
	b	.L28	@long jump
.LCB378:
.LBB5:
	.loc 1 111 0
	ldr	r3, [r7, #20]
	adds	r3, r3, #68
	str	r3, [r7, #36]
	.loc 1 113 0
	ldr	r3, [r7, #44]
	movs	r2, #92
	movs	r1, #0
	movs	r0, r3
	bl	memset
.LBB6:
	.loc 1 115 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L29
	.loc 1 115 0 is_stmt 0 discriminator 1
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
.L29:
.LBE6:
.LBB7:
	.loc 1 116 0 is_stmt 1
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L30
	.loc 1 116 0 is_stmt 0 discriminator 1
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
.L30:
.LBE7:
	.loc 1 118 0 is_stmt 1
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
	.loc 1 119 0
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #20]
	str	r2, [r3, #20]
	.loc 1 120 0
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
	.loc 1 121 0
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
	.loc 1 122 0
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #25]
	cmp	r3, #0
	beq	.L31
	.loc 1 122 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #27]
	cmp	r3, #0
	beq	.L31
	.loc 1 122 0 discriminator 3
	movs	r3, #1
	b	.L32
.L31:
	.loc 1 122 0 discriminator 4
	movs	r3, #0
.L32:
	.loc 1 122 0 discriminator 6
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #44]
	strb	r2, [r3, #27]
	.loc 1 123 0 is_stmt 1 discriminator 6
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L33
	.loc 1 123 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #28]
	cmp	r3, #0
	beq	.L33
	.loc 1 123 0 discriminator 3
	movs	r3, #1
	b	.L34
.L33:
	.loc 1 123 0 discriminator 4
	movs	r3, #0
.L34:
	.loc 1 123 0 discriminator 6
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #44]
	strb	r2, [r3, #28]
	.loc 1 125 0 is_stmt 1 discriminator 6
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #92]
	str	r2, [r3, #88]
	.loc 1 126 0 discriminator 6
	movs	r3, #32
	movs	r2, #64
	mov	ip, r2
	add	ip, ip, r7
	add	r3, r3, ip
	ldrb	r3, [r3]
	movs	r2, #16
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r1, r3
	ldr	r3, [r7, #44]
	movs	r2, #84
	strb	r1, [r3, r2]
	.loc 1 128 0 discriminator 6
	movs	r3, #68
	adds	r3, r7, r3
	movs	r0, r3
	bl	GDI_UpdateTextExtent
	.loc 1 129 0 discriminator 6
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
	.loc 1 130 0 discriminator 6
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #44]
	str	r2, [r3, #72]
	.loc 1 132 0 discriminator 6
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L35
	.loc 1 132 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #44]
	movs	r3, #43
	adds	r4, r7, r3
	ldr	r3, [r7, #36]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	movs	r3, r0
	strb	r3, [r4]
	b	.L36
.L35:
.LBB8:
	.loc 1 137 0 is_stmt 1
	movs	r3, #28
	adds	r2, r7, r3
	ldr	r3, [r7, #20]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_GetTopNonWindowObject
	.loc 1 139 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L37
	.loc 1 140 0 discriminator 1
	ldr	r2, [r7, #44]
	.loc 1 139 0 discriminator 1
	ldr	r3, [r7, #36]
	movs	r1, #0
	movs	r0, r3
	bl	DL_AddItemAtIndexPtr
	movs	r3, r0
	movs	r2, r3
	b	.L38
.L37:
	.loc 1 141 0 discriminator 2
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #44]
	.loc 1 139 0 discriminator 2
	ldr	r3, [r7, #36]
	movs	r0, r3
	bl	DL_InsertItemAfterPtr
	movs	r3, r0
	movs	r2, r3
.L38:
	.loc 1 139 0 is_stmt 0 discriminator 4
	movs	r3, #43
	adds	r3, r7, r3
	strb	r2, [r3]
.L36:
.LBE8:
	.loc 1 144 0 is_stmt 1
	movs	r3, #43
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L39
	.loc 1 146 0
	ldr	r3, [r7, #44]
	movs	r2, #2
	strb	r2, [r3, #24]
	.loc 1 147 0
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L28
	.loc 1 147 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #28]
	cmp	r3, #0
	beq	.L28
	.loc 1 148 0 is_stmt 1
	ldr	r3, [r7, #44]
	movs	r0, r3
	bl	GUI_Invalidate
	b	.L28
.L39:
	.loc 1 152 0
	ldr	r3, [r7, #44]
	movs	r0, r3
	bl	free
	.loc 1 153 0
	movs	r3, #0
	str	r3, [r7, #44]
.L28:
.LBE5:
	.loc 1 156 0
	ldr	r3, [r7, #44]
.L27:
	.loc 1 157 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r7}
	pop	{r3}
	add	sp, sp, #8
	bx	r3
	.cfi_endproc
.LFE4:
	.size	GUI_CreateButton, .-GUI_CreateButton
	.section	.text.GUI_DestroyButton,"ax",%progbits
	.align	2
	.global	GUI_DestroyButton
	.code	16
	.thumb_func
	.type	GUI_DestroyButton, %function
GUI_DestroyButton:
.LFB5:
	.loc 1 160 0
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
	.loc 1 161 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L45
	.loc 1 161 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #2
	bne	.L45
.LBB9:
	.loc 1 163 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	.loc 1 165 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	beq	.L43
	.loc 1 165 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	movs	r0, r3
	bl	IsDynamicMemory
	subs	r3, r0, #0
	beq	.L43
	.loc 1 166 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	movs	r0, r3
	bl	free
.L43:
	.loc 1 167 0
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
	.loc 1 169 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	cmp	r3, #0
	beq	.L44
	.loc 1 169 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	movs	r0, r3
	bl	IsDynamicMemory
	subs	r3, r0, #0
	beq	.L44
	.loc 1 170 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	movs	r0, r3
	bl	free
.L44:
	.loc 1 171 0
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #80]
.L45:
.LBE9:
	.loc 1 173 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE5:
	.size	GUI_DestroyButton, .-GUI_DestroyButton
	.section	.text.GUI_CalcClientAreaButton,"ax",%progbits
	.align	2
	.global	GUI_CalcClientAreaButton
	.code	16
	.thumb_func
	.type	GUI_CalcClientAreaButton, %function
GUI_CalcClientAreaButton:
.LFB6:
	.loc 1 176 0
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
	.loc 1 177 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L48
	.loc 1 177 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L48
	.loc 1 179 0
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
	.loc 1 180 0
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
	.loc 1 181 0
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
	.loc 1 182 0
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
.L48:
	.loc 1 184 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE6:
	.size	GUI_CalcClientAreaButton, .-GUI_CalcClientAreaButton
	.section	.text.GUI_GetTextButton,"ax",%progbits
	.align	2
	.global	GUI_GetTextButton
	.code	16
	.thumb_func
	.type	GUI_GetTextButton, %function
GUI_GetTextButton:
.LFB7:
	.loc 1 187 0
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
	.loc 1 188 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L50
	.loc 1 188 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #2
	bne	.L50
	.loc 1 190 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #4]
	str	r2, [r3, #72]
	.loc 1 192 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	b	.L51
.L50:
	.loc 1 194 0
	movs	r3, #0
.L51:
	.loc 1 195 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	GUI_GetTextButton, .-GUI_GetTextButton
	.section	.text.GUI_SetTextButton,"ax",%progbits
	.align	2
	.global	GUI_SetTextButton
	.code	16
	.thumb_func
	.type	GUI_SetTextButton, %function
GUI_SetTextButton:
.LFB8:
	.loc 1 198 0
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
	.loc 1 199 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L53
	.loc 1 199 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #2
	bne	.L53
	.loc 1 199 0 is_stmt 0 discriminator 2
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L53
	.loc 1 201 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	adds	r3, r3, #60
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	.loc 1 202 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #4]
	str	r2, [r3, #72]
	.loc 1 204 0
	movs	r3, #1
	b	.L54
.L53:
	.loc 1 206 0
	movs	r3, #0
.L54:
	.loc 1 207 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE8:
	.size	GUI_SetTextButton, .-GUI_SetTextButton
	.section	.text.GUI_SetActiveButton,"ax",%progbits
	.align	2
	.global	GUI_SetActiveButton
	.code	16
	.thumb_func
	.type	GUI_SetActiveButton, %function
GUI_SetActiveButton:
.LFB9:
	.loc 1 210 0
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
	.loc 1 211 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L61
	.loc 1 211 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #2
	bne	.L61
	.loc 1 213 0
	ldr	r3, [r7, #4]
	adds	r2, r7, #3
	movs	r1, #85
	ldrb	r2, [r2]
	strb	r2, [r3, r1]
	.loc 1 215 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L57
	.loc 1 215 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r2, #84
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	beq	.L57
	.loc 1 217 0 is_stmt 1
	ldr	r3, .L62
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 218 0
	ldr	r1, .L62+4
	movs	r3, #250
	lsls	r3, r3, #2
	movs	r2, #3
	movs	r0, r3
	bl	LRT_Create
	movs	r2, r0
	ldr	r3, .L62+8
	str	r2, [r3]
	.loc 1 219 0
	ldr	r3, .L62+8
	ldr	r3, [r3]
	.loc 1 219 0
	cmp	r3, #0
	beq	.L58
	.loc 1 219 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #4]
	b	.L59
.L58:
	.loc 1 219 0 discriminator 2
	movs	r2, #0
.L59:
	.loc 1 219 0 is_stmt 1 discriminator 4
	ldr	r3, .L62+12
	str	r2, [r3]
	b	.L56
.L57:
	.loc 1 221 0
	ldr	r3, .L62+8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L61
	.loc 1 222 0
	bl	GUI_DisableButtonTimer
.L56:
	.loc 1 224 0
	nop
.L61:
	nop
	.loc 1 225 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L63:
	.align	2
.L62:
	.word	ButtonDelayDone
	.word	GUI_ButtonTimerHandler
	.word	ButtonTimer
	.word	ArepeatButton
	.cfi_endproc
.LFE9:
	.size	GUI_SetActiveButton, .-GUI_SetActiveButton
	.section	.text.GUI_GetActiveButton,"ax",%progbits
	.align	2
	.global	GUI_GetActiveButton
	.code	16
	.thumb_func
	.type	GUI_GetActiveButton, %function
GUI_GetActiveButton:
.LFB10:
	.loc 1 228 0
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
	.loc 1 229 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L65
	.loc 1 229 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	cmp	r3, #2
	bne	.L65
	.loc 1 229 0 discriminator 3
	ldr	r3, [r7, #4]
	movs	r2, #85
	ldrb	r3, [r3, r2]
	b	.L66
.L65:
	.loc 1 229 0 is_stmt 0 discriminator 4
	movs	r3, #0
.L66:
	.loc 1 231 0 is_stmt 1 discriminator 6
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE10:
	.size	GUI_GetActiveButton, .-GUI_GetActiveButton
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
	.file 10 ".\\Source\\System/lrtimer.h"
	.file 11 ".\\Source\\GUI/bfcfont.h"
	.file 12 ".\\Source\\GUI/gdifont.h"
	.file 13 ".\\Source\\GUI/guiobject.h"
	.file 14 ".\\Source\\GUI/guiwin.h"
	.file 15 ".\\Source\\GUI/guibutton.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xe46
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF232
	.byte	0xc
	.4byte	.LASF233
	.4byte	.LASF234
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
	.4byte	.LASF75
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
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x4
	.byte	0x6
	.byte	0x41
	.4byte	0x2ef
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
	.4byte	.LASF66
	.byte	0x6
	.byte	0x45
	.4byte	0x2ce
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x6
	.byte	0x45
	.4byte	0x305
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ce
	.uleb128 0xf
	.byte	0x8
	.byte	0x6
	.byte	0x49
	.4byte	0x32a
	.uleb128 0xe
	.ascii	"lt\000"
	.byte	0x6
	.byte	0x4b
	.4byte	0x2ef
	.byte	0
	.uleb128 0xe
	.ascii	"rb\000"
	.byte	0x6
	.byte	0x4c
	.4byte	0x2ef
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x6
	.byte	0x4e
	.4byte	0x35b
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
	.4byte	.LASF235
	.byte	0x8
	.byte	0x6
	.byte	0x47
	.4byte	0x372
	.uleb128 0x11
	.4byte	0x30b
	.uleb128 0x11
	.4byte	0x32a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x6
	.byte	0x55
	.4byte	0x35b
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x6
	.byte	0x55
	.4byte	0x388
	.uleb128 0x6
	.byte	0x4
	.4byte	0x35b
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x4
	.byte	0x6
	.byte	0x5d
	.4byte	0x3b1
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
	.4byte	.LASF71
	.byte	0x6
	.byte	0x61
	.4byte	0x38e
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x24
	.byte	0x6
	.byte	0x63
	.4byte	0x3e1
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x65
	.4byte	0xd9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x6
	.byte	0x66
	.4byte	0x3e1
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	0x372
	.4byte	0x3f1
	.uleb128 0x13
	.4byte	0xf6
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x6
	.byte	0x67
	.4byte	0x3fc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3bc
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0xf1
	.4byte	0x431
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x7
	.byte	0xf8
	.4byte	0x402
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x1
	.4byte	0x37
	.byte	0x8
	.byte	0x24
	.4byte	0x483
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x1
	.4byte	0x37
	.byte	0x9
	.byte	0x16
	.4byte	0x4c4
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x9
	.byte	0x23
	.4byte	0x483
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x18
	.byte	0x9
	.byte	0x25
	.4byte	0x518
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x9
	.byte	0x27
	.4byte	0x137
	.byte	0
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x9
	.byte	0x28
	.4byte	0x4c4
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x9
	.byte	0x29
	.4byte	0xfd
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x9
	.byte	0x2a
	.4byte	0xd9
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x9
	.byte	0x2b
	.4byte	0x518
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.4byte	0xad
	.4byte	0x527
	.uleb128 0x14
	.4byte	0xf6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x9
	.byte	0x2c
	.4byte	0x532
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4cf
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0x16
	.4byte	0x561
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xa
	.byte	0x1c
	.4byte	0x538
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xa
	.byte	0x1e
	.4byte	0x577
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57d
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0x1c
	.byte	0xa
	.byte	0x1f
	.4byte	0x5c6
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0xa
	.byte	0x21
	.4byte	0x137
	.byte	0
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0xa
	.byte	0x22
	.4byte	0x561
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0xa
	.byte	0x23
	.4byte	0xd9
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0xa
	.byte	0x24
	.4byte	0xd9
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xa
	.byte	0x25
	.4byte	0x5d1
	.byte	0x18
	.byte	0
	.uleb128 0x15
	.4byte	0x5d1
	.uleb128 0x16
	.4byte	0x56c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c6
	.uleb128 0x17
	.byte	0x4
	.byte	0xb
	.byte	0x3d
	.4byte	0x60c
	.uleb128 0x18
	.4byte	.LASF122
	.byte	0xb
	.byte	0x3f
	.4byte	0x10c
	.uleb128 0x18
	.4byte	.LASF123
	.byte	0xb
	.byte	0x40
	.4byte	0x60c
	.uleb128 0x18
	.4byte	.LASF124
	.byte	0xb
	.byte	0x41
	.4byte	0x617
	.uleb128 0x18
	.4byte	.LASF125
	.byte	0xb
	.byte	0x42
	.4byte	0x622
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x612
	.uleb128 0x19
	.4byte	0x37
	.uleb128 0x6
	.byte	0x4
	.4byte	0x61d
	.uleb128 0x19
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x628
	.uleb128 0x19
	.4byte	0x7f
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0x8
	.byte	0xb
	.byte	0x39
	.4byte	0x65c
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0xb
	.byte	0x3b
	.4byte	0x5b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0xb
	.byte	0x3c
	.4byte	0x5b
	.byte	0x2
	.uleb128 0xe
	.ascii	"p\000"
	.byte	0xb
	.byte	0x43
	.4byte	0x5d7
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xb
	.byte	0x44
	.4byte	0x62d
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0x10
	.byte	0xb
	.byte	0x46
	.4byte	0x6a4
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xb
	.byte	0x48
	.4byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xb
	.byte	0x49
	.4byte	0x7f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xb
	.byte	0x4a
	.4byte	0x6a4
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xb
	.byte	0x4b
	.4byte	0x6af
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6aa
	.uleb128 0x19
	.4byte	0x65c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6b5
	.uleb128 0x19
	.4byte	0x667
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xb
	.byte	0x4c
	.4byte	0x667
	.uleb128 0x17
	.byte	0x4
	.byte	0xb
	.byte	0x54
	.4byte	0x6fa
	.uleb128 0x18
	.4byte	.LASF122
	.byte	0xb
	.byte	0x56
	.4byte	0x10c
	.uleb128 0x18
	.4byte	.LASF123
	.byte	0xb
	.byte	0x57
	.4byte	0x60c
	.uleb128 0x18
	.4byte	.LASF124
	.byte	0xb
	.byte	0x58
	.4byte	0x617
	.uleb128 0x18
	.4byte	.LASF125
	.byte	0xb
	.byte	0x59
	.4byte	0x622
	.byte	0
	.uleb128 0xa
	.4byte	.LASF134
	.byte	0x10
	.byte	0xb
	.byte	0x4e
	.4byte	0x741
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xb
	.byte	0x50
	.4byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xb
	.byte	0x51
	.4byte	0x7f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xb
	.byte	0x52
	.4byte	0x5b
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0xb
	.byte	0x53
	.4byte	0x5b
	.byte	0xa
	.uleb128 0xe
	.ascii	"p\000"
	.byte	0xb
	.byte	0x5a
	.4byte	0x6c5
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0xb
	.byte	0x5b
	.4byte	0x6fa
	.uleb128 0x17
	.byte	0x4
	.byte	0xb
	.byte	0x63
	.4byte	0x776
	.uleb128 0x18
	.4byte	.LASF122
	.byte	0xb
	.byte	0x65
	.4byte	0x10c
	.uleb128 0x18
	.4byte	.LASF136
	.byte	0xb
	.byte	0x66
	.4byte	0x776
	.uleb128 0x18
	.4byte	.LASF137
	.byte	0xb
	.byte	0x67
	.4byte	0x781
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x77c
	.uleb128 0x19
	.4byte	0x741
	.uleb128 0x6
	.byte	0x4
	.4byte	0x787
	.uleb128 0x19
	.4byte	0x6ba
	.uleb128 0xf
	.byte	0x10
	.byte	0xb
	.byte	0x5d
	.4byte	0x7cf
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xb
	.byte	0x5f
	.4byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xb
	.byte	0x60
	.4byte	0x5b
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xb
	.byte	0x61
	.4byte	0x5b
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xb
	.byte	0x62
	.4byte	0x7f
	.byte	0x8
	.uleb128 0xe
	.ascii	"p\000"
	.byte	0xb
	.byte	0x68
	.4byte	0x74c
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0xb
	.byte	0x69
	.4byte	0x7da
	.uleb128 0x6
	.byte	0x4
	.4byte	0x78c
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x1
	.4byte	0x37
	.byte	0xc
	.byte	0x18
	.4byte	0x821
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0
	.uleb128 0x9
	.4byte	.LASF149
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0xc
	.byte	0x22
	.4byte	0x7e0
	.uleb128 0xa
	.4byte	.LASF153
	.byte	0x8
	.byte	0xc
	.byte	0x24
	.4byte	0x851
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xc
	.byte	0x26
	.4byte	0x2c3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xc
	.byte	0x27
	.4byte	0x2c3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xc
	.byte	0x28
	.4byte	0x82c
	.uleb128 0xa
	.4byte	.LASF157
	.byte	0x18
	.byte	0xc
	.byte	0x2a
	.4byte	0x8a5
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xc
	.byte	0x2c
	.4byte	0x3b1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xc
	.byte	0x2d
	.4byte	0x821
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xc
	.byte	0x2e
	.4byte	0x851
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xc
	.byte	0x2f
	.4byte	0x7cf
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xc
	.byte	0x30
	.4byte	0xff
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF163
	.byte	0xc
	.byte	0x31
	.4byte	0x85c
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0xc
	.byte	0x31
	.4byte	0x8bb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x85c
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0x1
	.4byte	0x37
	.byte	0xd
	.byte	0x16
	.4byte	0x8f0
	.uleb128 0x9
	.4byte	.LASF166
	.byte	0
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0xd
	.byte	0x1e
	.4byte	0x8c1
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0x1
	.4byte	0x37
	.byte	0xd
	.byte	0x20
	.4byte	0x92a
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0xd
	.byte	0x27
	.4byte	0x8fb
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0xd
	.byte	0x29
	.4byte	0x940
	.uleb128 0x6
	.byte	0x4
	.4byte	0x946
	.uleb128 0xa
	.4byte	.LASF180
	.byte	0x3c
	.byte	0xd
	.byte	0x2a
	.4byte	0xa07
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0xd
	.byte	0x2c
	.4byte	0x137
	.byte	0
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0xd
	.byte	0x2d
	.4byte	0x372
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0xd
	.byte	0x2e
	.4byte	0x935
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0xd
	.byte	0x2f
	.4byte	0x8f0
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF184
	.byte	0xd
	.byte	0x30
	.4byte	0x12c
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF185
	.byte	0xd
	.byte	0x31
	.4byte	0x12c
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0xd
	.byte	0x32
	.4byte	0x12c
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF187
	.byte	0xd
	.byte	0x33
	.4byte	0x12c
	.byte	0x1c
	.uleb128 0xe
	.ascii	"Tag\000"
	.byte	0xd
	.byte	0x34
	.4byte	0xce
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0xd
	.byte	0x35
	.4byte	0xa17
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0xd
	.byte	0x36
	.4byte	0xa17
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0xd
	.byte	0x37
	.4byte	0xa17
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0xd
	.byte	0x38
	.4byte	0xa17
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0xd
	.byte	0x39
	.4byte	0xa2d
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0xd
	.byte	0x3a
	.4byte	0xa3e
	.byte	0x38
	.byte	0
	.uleb128 0x15
	.4byte	0xa17
	.uleb128 0x16
	.4byte	0x935
	.uleb128 0x16
	.4byte	0x2fa
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa07
	.uleb128 0x15
	.4byte	0xa2d
	.uleb128 0x16
	.4byte	0x935
	.uleb128 0x16
	.4byte	0x37d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa1d
	.uleb128 0x15
	.4byte	0xa3e
	.uleb128 0x16
	.4byte	0x935
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa33
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0xd
	.byte	0x3b
	.4byte	0x946
	.uleb128 0x3
	.4byte	.LASF195
	.byte	0xe
	.byte	0x17
	.4byte	0xa5a
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa60
	.uleb128 0xa
	.4byte	.LASF196
	.byte	0x54
	.byte	0xe
	.byte	0x18
	.4byte	0xac1
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0xe
	.byte	0x1a
	.4byte	0xa44
	.byte	0
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0xe
	.byte	0x1b
	.4byte	0x12c
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF199
	.byte	0xe
	.byte	0x1c
	.4byte	0x12c
	.byte	0x3d
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0xe
	.byte	0x1d
	.4byte	0x431
	.byte	0x3e
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xe
	.byte	0x1e
	.4byte	0x2c3
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF201
	.byte	0xe
	.byte	0x1f
	.4byte	0x1b5
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF202
	.byte	0xe
	.byte	0x20
	.4byte	0xad5
	.byte	0x50
	.byte	0
	.uleb128 0x1a
	.4byte	0x12c
	.4byte	0xad5
	.uleb128 0x16
	.4byte	0x527
	.uleb128 0x16
	.4byte	0x935
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xac1
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0x5c
	.byte	0xf
	.byte	0x16
	.4byte	0xb24
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0xf
	.byte	0x18
	.4byte	0xa44
	.byte	0
	.uleb128 0xb
	.4byte	.LASF204
	.byte	0xf
	.byte	0x19
	.4byte	0x8a5
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF205
	.byte	0xf
	.byte	0x1a
	.4byte	0x12c
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF206
	.byte	0xf
	.byte	0x1b
	.4byte	0x12c
	.byte	0x55
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xf
	.byte	0x1c
	.4byte	0x2c3
	.byte	0x58
	.byte	0
	.uleb128 0x3
	.4byte	.LASF207
	.byte	0xf
	.byte	0x1d
	.4byte	0xb2f
	.uleb128 0x6
	.byte	0x4
	.4byte	0xadb
	.uleb128 0x1b
	.4byte	.LASF236
	.byte	0x1
	.byte	0x20
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF237
	.byte	0x1
	.byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb82
	.uleb128 0x1d
	.4byte	.LASF208
	.byte	0x1
	.byte	0x28
	.4byte	0x56c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1f
	.4byte	.LASF210
	.byte	0x1
	.byte	0x2d
	.4byte	0x2ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF218
	.byte	0x1
	.byte	0x39
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0c
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0x39
	.4byte	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	.LASF209
	.byte	0x1
	.byte	0x39
	.4byte	0x37d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LASF211
	.byte	0x1
	.byte	0x3b
	.4byte	0xb24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LASF212
	.byte	0x1
	.byte	0x3c
	.4byte	0x372
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.4byte	.LASF200
	.byte	0x1
	.byte	0x3d
	.4byte	0x431
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1e
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1f
	.4byte	.LASF213
	.byte	0x1
	.byte	0x4c
	.4byte	0x3f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x21
	.ascii	"i\000"
	.byte	0x1
	.byte	0x55
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF222
	.byte	0x1
	.byte	0x63
	.4byte	0x935
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf0
	.uleb128 0x1d
	.4byte	.LASF182
	.byte	0x1
	.byte	0x63
	.4byte	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.4byte	.LASF181
	.byte	0x1
	.byte	0x63
	.4byte	0x372
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.4byte	.LASF204
	.byte	0x1
	.byte	0x63
	.4byte	0x8a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1d
	.4byte	.LASF154
	.byte	0x1
	.byte	0x64
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x1
	.byte	0x64
	.4byte	0x92a
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1f
	.4byte	.LASF211
	.byte	0x1
	.byte	0x66
	.4byte	0xb24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LASF214
	.byte	0x1
	.byte	0x67
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1e
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1f
	.4byte	.LASF215
	.byte	0x1
	.byte	0x6f
	.4byte	0x1c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xcba
	.uleb128 0x1f
	.4byte	.LASF216
	.byte	0x1
	.byte	0x73
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.uleb128 0x23
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xcd6
	.uleb128 0x1f
	.4byte	.LASF216
	.byte	0x1
	.byte	0x74
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x1f
	.4byte	.LASF217
	.byte	0x1
	.byte	0x87
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF219
	.byte	0x1
	.byte	0x9f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2c
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0x9f
	.4byte	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1f
	.4byte	.LASF211
	.byte	0x1
	.byte	0xa3
	.4byte	0xb24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0xaf
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5e
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0xaf
	.4byte	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.4byte	.LASF221
	.byte	0x1
	.byte	0xaf
	.4byte	0x37d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x25
	.4byte	.LASF223
	.byte	0x1
	.byte	0xba
	.4byte	0x8b0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd86
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0xba
	.4byte	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x25
	.4byte	.LASF224
	.byte	0x1
	.byte	0xc5
	.4byte	0x12c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdbc
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0xc5
	.4byte	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.4byte	.LASF225
	.byte	0x1
	.byte	0xc5
	.4byte	0x8b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.4byte	.LASF226
	.byte	0x1
	.byte	0xd1
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdee
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0xd1
	.4byte	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.4byte	.LASF227
	.byte	0x1
	.byte	0xd1
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x25
	.4byte	.LASF228
	.byte	0x1
	.byte	0xe3
	.4byte	0x12c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe16
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0xe3
	.4byte	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF229
	.byte	0x1
	.byte	0x1c
	.4byte	0x56c
	.uleb128 0x5
	.byte	0x3
	.4byte	ButtonTimer
	.uleb128 0x1f
	.4byte	.LASF230
	.byte	0x1
	.byte	0x1d
	.4byte	0x935
	.uleb128 0x5
	.byte	0x3
	.4byte	ArepeatButton
	.uleb128 0x1f
	.4byte	.LASF231
	.byte	0x1
	.byte	0x1e
	.4byte	0x12c
	.uleb128 0x5
	.byte	0x3
	.4byte	ButtonDelayDone
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
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
	.byte	0
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x23
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x64
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF93:
	.ascii	"tag_EVTYPE\000"
.LASF148:
	.ascii	"AV_TOP\000"
.LASF21:
	.ascii	"long double\000"
.LASF72:
	.ascii	"tag_RLIST\000"
.LASF20:
	.ascii	"uintptr_t\000"
.LASF52:
	.ascii	"clMidGreen\000"
.LASF25:
	.ascii	"true\000"
.LASF226:
	.ascii	"GUI_SetActiveButton\000"
.LASF117:
	.ascii	"tag_TIMER\000"
.LASF152:
	.ascii	"TTXTALIGN\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF46:
	.ascii	"clNavy\000"
.LASF178:
	.ascii	"TGOFLAGS\000"
.LASF214:
	.ascii	"Result\000"
.LASF229:
	.ascii	"ButtonTimer\000"
.LASF224:
	.ascii	"GUI_SetTextButton\000"
.LASF108:
	.ascii	"Param\000"
.LASF95:
	.ascii	"ET_PENPRESS\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF231:
	.ascii	"ButtonDelayDone\000"
.LASF211:
	.ascii	"Button\000"
.LASF92:
	.ascii	"USB_EPNUM\000"
.LASF200:
	.ascii	"Layer\000"
.LASF110:
	.ascii	"tag_MRFLAGS\000"
.LASF44:
	.ascii	"clDarkBlue\000"
.LASF217:
	.ascii	"tmpDLItem\000"
.LASF67:
	.ascii	"pPOINT\000"
.LASF16:
	.ascii	"int16_t\000"
.LASF196:
	.ascii	"tag_WIN\000"
.LASF11:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF165:
	.ascii	"tag_GOTYPE\000"
.LASF162:
	.ascii	"Text\000"
.LASF131:
	.ascii	"LastChar\000"
.LASF215:
	.ascii	"ObjectsList\000"
.LASF180:
	.ascii	"tag_GUIOBJECT\000"
.LASF204:
	.ascii	"Caption\000"
.LASF109:
	.ascii	"pEVENT\000"
.LASF188:
	.ascii	"OnPress\000"
.LASF101:
	.ascii	"ET_ONTIMER\000"
.LASF66:
	.ascii	"TPOINT\000"
.LASF8:
	.ascii	"long int\000"
.LASF75:
	.ascii	"tag_COLOR\000"
.LASF106:
	.ascii	"Object\000"
.LASF156:
	.ascii	"TTEXTCOLOR\000"
.LASF170:
	.ascii	"GO_NUMTYPES\000"
.LASF84:
	.ascii	"USB_EP0\000"
.LASF82:
	.ascii	"TVLINDEX\000"
.LASF4:
	.ascii	"short int\000"
.LASF201:
	.ascii	"ChildObjects\000"
.LASF104:
	.ascii	"ListHeader\000"
.LASF174:
	.ascii	"GF_VISIBLE\000"
.LASF88:
	.ascii	"USB_EP4IN\000"
.LASF177:
	.ascii	"GF_AUTOREPEAT\000"
.LASF197:
	.ascii	"Head\000"
.LASF94:
	.ascii	"ET_UNKNOWN\000"
.LASF137:
	.ascii	"pProp\000"
.LASF158:
	.ascii	"Extent\000"
.LASF96:
	.ascii	"ET_PENRELEASE\000"
.LASF26:
	.ascii	"boolean\000"
.LASF182:
	.ascii	"Parent\000"
.LASF105:
	.ascii	"Event\000"
.LASF135:
	.ascii	"FontWidth\000"
.LASF142:
	.ascii	"pBFC_FONT\000"
.LASF122:
	.ascii	"pData\000"
.LASF114:
	.ascii	"TF_DIRECT\000"
.LASF141:
	.ascii	"Reversed\000"
.LASF123:
	.ascii	"pData8\000"
.LASF183:
	.ascii	"Type\000"
.LASF220:
	.ascii	"GUI_CalcClientAreaButton\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF61:
	.ascii	"clCream\000"
.LASF187:
	.ascii	"InheritedVisible\000"
.LASF39:
	.ascii	"clBlack\000"
.LASF219:
	.ascii	"GUI_DestroyButton\000"
.LASF234:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF17:
	.ascii	"uint16_t\000"
.LASF232:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF60:
	.ascii	"clSkyBlue\000"
.LASF42:
	.ascii	"clGreen\000"
.LASF237:
	.ascii	"GUI_ButtonTimerHandler\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF194:
	.ascii	"TGUIOBJECT\000"
.LASF198:
	.ascii	"Topmost\000"
.LASF54:
	.ascii	"clYellow\000"
.LASF132:
	.ascii	"pFirstCharInfo\000"
.LASF179:
	.ascii	"pGUIOBJECT\000"
.LASF74:
	.ascii	"pRLIST\000"
.LASF159:
	.ascii	"Align\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF195:
	.ascii	"pWIN\000"
.LASF121:
	.ascii	"Handler\000"
.LASF116:
	.ascii	"pTIMER\000"
.LASF161:
	.ascii	"Font\000"
.LASF64:
	.ascii	"TCOLOR\000"
.LASF50:
	.ascii	"clSilver\000"
.LASF87:
	.ascii	"USB_EP3IN\000"
.LASF155:
	.ascii	"BackColor\000"
.LASF140:
	.ascii	"Baseline\000"
.LASF124:
	.ascii	"pData16\000"
.LASF222:
	.ascii	"GUI_CreateButton\000"
.LASF205:
	.ascii	"Autorepeat\000"
.LASF51:
	.ascii	"clRed\000"
.LASF37:
	.ascii	"TDLIST\000"
.LASF144:
	.ascii	"AH_LEFT\000"
.LASF111:
	.ascii	"TF_NONE\000"
.LASF233:
	.ascii	"Source\\GUI\\guibutton.c\000"
.LASF149:
	.ascii	"AV_BOTTOM\000"
.LASF129:
	.ascii	"BFC_FONT_PROP\000"
.LASF29:
	.ascii	"Next\000"
.LASF186:
	.ascii	"InheritedEnabled\000"
.LASF59:
	.ascii	"clMoneyGreen\000"
.LASF107:
	.ascii	"ParamSz\000"
.LASF203:
	.ascii	"tag_BUTTON\000"
.LASF22:
	.ascii	"sizetype\000"
.LASF207:
	.ascii	"pBUTTON\000"
.LASF166:
	.ascii	"GO_UNKNOWN\000"
.LASF175:
	.ascii	"GF_TOPMOST\000"
.LASF97:
	.ascii	"ET_PENMOVE\000"
.LASF55:
	.ascii	"clBlue\000"
.LASF43:
	.ascii	"clOlive\000"
.LASF63:
	.ascii	"clBtnFace\000"
.LASF112:
	.ascii	"TF_ENABLED\000"
.LASF236:
	.ascii	"GUI_DisableButtonTimer\000"
.LASF212:
	.ascii	"ButtonRect\000"
.LASF35:
	.ascii	"Last\000"
.LASF28:
	.ascii	"Prev\000"
.LASF38:
	.ascii	"pDLIST\000"
.LASF81:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF163:
	.ascii	"TTEXT\000"
.LASF193:
	.ascii	"OnDestroy\000"
.LASF210:
	.ascii	"DummyPoint\000"
.LASF146:
	.ascii	"AH_CENTER\000"
.LASF86:
	.ascii	"USB_EP2IN\000"
.LASF172:
	.ascii	"tag_GOFLAGS\000"
.LASF176:
	.ascii	"GF_FRAMED\000"
.LASF53:
	.ascii	"clLime\000"
.LASF209:
	.ascii	"Clip\000"
.LASF62:
	.ascii	"clMedGray\000"
.LASF56:
	.ascii	"clFuchsia\000"
.LASF57:
	.ascii	"clAqua\000"
.LASF119:
	.ascii	"Interval\000"
.LASF221:
	.ascii	"ClientArea\000"
.LASF34:
	.ascii	"First\000"
.LASF160:
	.ascii	"Color\000"
.LASF18:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF98:
	.ascii	"ET_ONPAINT\000"
.LASF216:
	.ascii	"tval\000"
.LASF199:
	.ascii	"Framed\000"
.LASF167:
	.ascii	"GO_WINDOW\000"
.LASF153:
	.ascii	"tag_TEXTCOLOR\000"
.LASF184:
	.ascii	"Enabled\000"
.LASF154:
	.ascii	"ForeColor\000"
.LASF151:
	.ascii	"AV_MASK\000"
.LASF47:
	.ascii	"clPurple\000"
.LASF133:
	.ascii	"pNextProp\000"
.LASF125:
	.ascii	"pData32\000"
.LASF24:
	.ascii	"false\000"
.LASF13:
	.ascii	"__uintptr_t\000"
.LASF223:
	.ascii	"GUI_GetTextButton\000"
.LASF99:
	.ascii	"ET_GODESTROY\000"
.LASF68:
	.ascii	"TRECT\000"
.LASF227:
	.ascii	"Active\000"
.LASF89:
	.ascii	"USB_EPMAXINDEX\000"
.LASF169:
	.ascii	"GO_LABEL\000"
.LASF19:
	.ascii	"uint32_t\000"
.LASF145:
	.ascii	"AH_RIGHT\000"
.LASF58:
	.ascii	"clWhite\000"
.LASF235:
	.ascii	"tag_RECT\000"
.LASF120:
	.ascii	"StartTicks\000"
.LASF189:
	.ascii	"OnRelease\000"
.LASF115:
	.ascii	"TMRFLAGS\000"
.LASF147:
	.ascii	"AH_MASK\000"
.LASF77:
	.ascii	"LCDIF_LAYER0\000"
.LASF23:
	.ascii	"char\000"
.LASF45:
	.ascii	"clDarkGray\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF128:
	.ascii	"DataSize\000"
.LASF85:
	.ascii	"USB_EP1IN\000"
.LASF185:
	.ascii	"Visible\000"
.LASF71:
	.ascii	"TSIZEXY\000"
.LASF118:
	.ascii	"Flags\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF206:
	.ascii	"Pressed\000"
.LASF83:
	.ascii	"tag_EP\000"
.LASF181:
	.ascii	"Position\000"
.LASF80:
	.ascii	"LCDIF_LAYER3\000"
.LASF173:
	.ascii	"GF_ENABLED\000"
.LASF78:
	.ascii	"LCDIF_LAYER1\000"
.LASF79:
	.ascii	"LCDIF_LAYER2\000"
.LASF103:
	.ascii	"tag_EVENT\000"
.LASF225:
	.ascii	"ObjectText\000"
.LASF171:
	.ascii	"TGOTYPE\000"
.LASF91:
	.ascii	"USB_EP2OUT\000"
.LASF69:
	.ascii	"pRECT\000"
.LASF230:
	.ascii	"ArepeatButton\000"
.LASF33:
	.ascii	"tag_DList\000"
.LASF164:
	.ascii	"pTEXT\000"
.LASF228:
	.ascii	"GUI_GetActiveButton\000"
.LASF48:
	.ascii	"clTeal\000"
.LASF36:
	.ascii	"Count\000"
.LASF32:
	.ascii	"tag_ListItem\000"
.LASF213:
	.ascii	"BackRects\000"
.LASF100:
	.ascii	"ET_PWRKEY\000"
.LASF15:
	.ascii	"uint8_t\000"
.LASF30:
	.ascii	"Data\000"
.LASF143:
	.ascii	"tag_TXTALIGN\000"
.LASF157:
	.ascii	"tag_TEXT\000"
.LASF126:
	.ascii	"BFC_CHARINFO\000"
.LASF191:
	.ascii	"OnClick\000"
.LASF65:
	.ascii	"tag_POINT\000"
.LASF202:
	.ascii	"EventHandler\000"
.LASF130:
	.ascii	"FirstChar\000"
.LASF190:
	.ascii	"OnMove\000"
.LASF139:
	.ascii	"FontHeight\000"
.LASF218:
	.ascii	"GUI_DrawDefaultButton\000"
.LASF76:
	.ascii	"tag_VLINDEX\000"
.LASF70:
	.ascii	"tag_SIZEXY\000"
.LASF134:
	.ascii	"BFC_FONT_MONO\000"
.LASF90:
	.ascii	"USB_EP1OUT\000"
.LASF168:
	.ascii	"GO_BUTTON\000"
.LASF127:
	.ascii	"Width\000"
.LASF150:
	.ascii	"AV_CENTER\000"
.LASF41:
	.ascii	"clMaroon\000"
.LASF27:
	.ascii	"TDLITEM\000"
.LASF73:
	.ascii	"Item\000"
.LASF113:
	.ascii	"TF_AUTOREPEAT\000"
.LASF138:
	.ascii	"FontType\000"
.LASF40:
	.ascii	"clBrown\000"
.LASF208:
	.ascii	"Timer\000"
.LASF31:
	.ascii	"pDLITEM\000"
.LASF49:
	.ascii	"clGray\000"
.LASF136:
	.ascii	"pMono\000"
.LASF192:
	.ascii	"OnPaint\000"
.LASF102:
	.ascii	"TEVTYPE\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
