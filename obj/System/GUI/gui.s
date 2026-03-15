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
	.file	"gui.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	GUILocked,1,1
	.section	.text.GUI_IsObjectVisibleAcrossParents,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GUI_IsObjectVisibleAcrossParents, %function
GUI_IsObjectVisibleAcrossParents:
.LFB1:
	.file 1 "Source\\GUI\\gui.c"
	.loc 1 27 0
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
	str	r0, [r7, #12]
	.loc 1 28 0
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 31 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L2
	.loc 1 31 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L2
.LBB2:
	.loc 1 35 0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L3
	.loc 1 38 0
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	ldr	r3, [r7, #24]
	adds	r3, r3, #12
	movs	r1, r3
	movs	r0, r2
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L4
	.loc 1 39 0 discriminator 1
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	.loc 1 38 0 discriminator 1
	cmp	r3, #0
	bne	.L5
	.loc 1 39 0
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L4
.L5:
	.loc 1 38 0 discriminator 3
	movs	r2, #1
	b	.L6
.L4:
	.loc 1 38 0 is_stmt 0 discriminator 2
	movs	r2, #0
.L6:
	.loc 1 38 0 discriminator 5
	movs	r3, #31
	adds	r3, r7, r3
	strb	r2, [r3]
	b	.L8
.L3:
	.loc 1 41 0 is_stmt 1
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 43 0
	b	.L8
.L12:
	.loc 1 45 0
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #20]
	movs	r3, #16
	adds	r4, r7, r3
	movs	r3, r7
	movs	r1, r2
	movs	r0, r3
	bl	GUI_CalculateClientArea
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 47 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	movs	r2, #16
	adds	r2, r7, r2
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L9
	.loc 1 48 0 discriminator 1
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	.loc 1 47 0 discriminator 1
	beq	.L9
	.loc 1 47 0 is_stmt 0 discriminator 3
	movs	r2, #1
	b	.L10
.L9:
	.loc 1 47 0 discriminator 4
	movs	r2, #0
.L10:
	.loc 1 47 0 discriminator 6
	movs	r3, #31
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 49 0 is_stmt 1 discriminator 6
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	str	r3, [r7, #24]
.L8:
	.loc 1 43 0
	movs	r3, #31
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2
	.loc 1 43 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L12
.L2:
.LBE2:
	.loc 1 52 0 is_stmt 1
	movs	r3, #31
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 53 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE1:
	.size	GUI_IsObjectVisibleAcrossParents, .-GUI_IsObjectVisibleAcrossParents
	.section	.text.GUI_SubTopChildObjectsFromRegion,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GUI_SubTopChildObjectsFromRegion, %function
GUI_SubTopChildObjectsFromRegion:
.LFB2:
	.loc 1 56 0
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
	.loc 1 57 0
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L15
.LBB3:
	.loc 1 59 0
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	adds	r3, r3, #68
	str	r3, [r7, #16]
	.loc 1 60 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	DL_GetLastItem
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 63 0
	b	.L16
.L19:
.LBB4:
	.loc 1 65 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	.loc 1 67 0
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	beq	.L21
	.loc 1 69 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L18
	.loc 1 69 0 discriminator 1
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L18
	.loc 1 71 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	GDI_SUBRectFromRegion
	subs	r3, r0, #0
	beq	.L22
.L18:
	.loc 1 73 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	DL_GetPrevItem
	movs	r3, r0
	str	r3, [r7, #20]
.L16:
.LBE4:
	.loc 1 63 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L15
	.loc 1 63 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	DL_GetItemsCount
	subs	r3, r0, #0
	bne	.L19
	b	.L15
.L21:
.LBB5:
	.loc 1 67 0
	nop
	b	.L15
.L22:
	.loc 1 71 0
	nop
.L15:
.LBE5:
.LBE3:
	.loc 1 76 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	DL_GetItemsCount
	movs	r3, r0
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 77 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	GUI_SubTopChildObjectsFromRegion, .-GUI_SubTopChildObjectsFromRegion
	.section	.text.GUI_UpdateObjectByRegion,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GUI_UpdateObjectByRegion, %function
GUI_UpdateObjectByRegion:
.LFB3:
	.loc 1 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
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
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	.loc 1 81 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	DL_GetFirstItem
	movs	r3, r0
	str	r3, [r7, #36]
	.loc 1 84 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L24
	.loc 1 84 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	movs	r2, #62
	ldrb	r3, [r3, r2]
	b	.L25
.L24:
	.loc 1 85 0 is_stmt 1 discriminator 2
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	.loc 1 84 0 discriminator 2
	movs	r2, #62
	ldrb	r3, [r3, r2]
.L25:
	.loc 1 84 0 is_stmt 0 discriminator 4
	movs	r2, #35
	adds	r2, r7, r2
	strb	r3, [r2]
	.loc 1 87 0 is_stmt 1 discriminator 4
	b	.L26
.L31:
	.loc 1 89 0
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L27
.LBB6:
	.loc 1 91 0
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	movs	r2, #24
	adds	r2, r7, r2
	adds	r3, r3, #12
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	.loc 1 93 0
	ldr	r2, [r7, #12]
	movs	r3, #24
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L27
	.loc 1 95 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L29
	.loc 1 95 0 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #52]
	movs	r2, #24
	adds	r1, r7, r2
	ldr	r2, [r7, #16]
	movs	r0, r2
	blx	r3
	b	.L30
.L29:
	.loc 1 96 0
	movs	r3, #24
	adds	r2, r7, r3
	ldr	r3, [r7, #16]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_DrawObjectDefault
.L30:
	.loc 1 98 0
	movs	r3, #35
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #32
	movs	r2, r3
	ldr	r3, .L32
	adds	r3, r2, r3
	adds	r2, r3, #2
	movs	r3, #24
	adds	r4, r7, r3
	movs	r3, r7
	movs	r1, #24
	adds	r1, r7, r1
	movs	r0, r3
	bl	GDI_LocalToGlobalRct
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 99 0
	movs	r3, #24
	adds	r4, r7, r3
	movs	r3, r7
	ldr	r2, .L32+4
	movs	r1, #24
	adds	r1, r7, r1
	movs	r0, r3
	bl	GDI_GlobalToLocalRct
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 100 0
	movs	r3, #24
	adds	r3, r7, r3
	ldr	r0, [r3]
	ldr	r1, [r3, #4]
	bl	LCDIF_UpdateRectangle
.L27:
.LBE6:
	.loc 1 103 0
	ldr	r3, [r7, #36]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #36]
.L26:
	.loc 1 87 0
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L31
	.loc 1 105 0
	nop
	mov	sp, r7
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r7, pc}
.L33:
	.align	2
.L32:
	.word	LCDScreen
	.word	LCDScreen+8
	.cfi_endproc
.LFE3:
	.size	GUI_UpdateObjectByRegion, .-GUI_UpdateObjectByRegion
	.section	.text.GUI_UpdateChildTree,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GUI_UpdateChildTree, %function
GUI_UpdateChildTree:
.LFB4:
	.loc 1 108 0
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
	.loc 1 109 0
	ldr	r3, [r7, #8]
	adds	r3, r3, #68
	movs	r0, r3
	bl	DL_GetLastItem
	movs	r3, r0
	str	r3, [r7, #36]
	.loc 1 111 0
	movs	r3, #24
	adds	r3, r7, r3
	ldr	r2, [r7, #8]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_CalculateClientArea
	.loc 1 113 0
	b	.L35
.L42:
.LBB7:
	.loc 1 115 0
	movs	r3, #16
	adds	r2, r7, r3
	ldr	r3, [r7, #32]
	adds	r3, r3, #12
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	.loc 1 117 0
	ldr	r3, [r7, #32]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L36
	.loc 1 117 0 is_stmt 0 discriminator 1
	movs	r3, #24
	adds	r2, r7, r3
	movs	r3, #16
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L36
	.loc 1 119 0 is_stmt 1
	ldr	r3, [r7, #32]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L37
	.loc 1 121 0
	movs	r3, #16
	adds	r2, r7, r3
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_UpdateChildTree
	subs	r3, r0, #0
	bne	.L38
	b	.L41
.L37:
	.loc 1 123 0
	movs	r3, #16
	adds	r2, r7, r3
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_UpdateObjectByRegion
.L38:
	.loc 1 124 0
	movs	r3, #16
	adds	r2, r7, r3
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	GDI_SUBRectFromRegion
.L36:
	.loc 1 126 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	DL_GetItemsCount
	subs	r3, r0, #0
	beq	.L44
	.loc 1 127 0
	ldr	r3, [r7, #36]
	movs	r0, r3
	bl	DL_GetPrevItem
	movs	r3, r0
	str	r3, [r7, #36]
.L35:
.LBE7:
	.loc 1 113 0
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L41
	.loc 1 113 0 discriminator 1
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L42
	b	.L41
.L44:
.LBB8:
	.loc 1 126 0
	nop
.L41:
.LBE8:
	.loc 1 129 0
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_UpdateObjectByRegion
	.loc 1 131 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	DL_GetItemsCount
	movs	r3, r0
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 132 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #40
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	GUI_UpdateChildTree, .-GUI_UpdateChildTree
	.section	.text.GUI_DestroySingleObject,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GUI_DestroySingleObject, %function
GUI_DestroySingleObject:
.LFB5:
	.loc 1 135 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #48
	.cfi_def_cfa_offset 56
	add	r7, sp, #16
	.cfi_def_cfa 7, 40
	str	r0, [r7, #4]
	.loc 1 138 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L46
.LBB9:
	.loc 1 140 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	adds	r3, r3, #68
	str	r3, [r7, #28]
	.loc 1 141 0
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #28]
	movs	r2, #0
	movs	r0, r3
	bl	DL_FindItemByData
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 143 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.LCB594
	b	.L50	@long jump
.LCB594:
.LBB10:
	.loc 1 153 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L48
	.loc 1 153 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
.L48:
	.loc 1 154 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L53
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L49
	.loc 1 155 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L53
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
.L49:
	.loc 1 157 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 158 0
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	movs	r1, r2
	movs	r0, r3
	bl	DL_DeleteItem
	.loc 1 159 0
	ldr	r3, [r7, #4]
	movs	r2, #60
	movs	r1, #0
	movs	r0, r3
	bl	__secure_memset
	.loc 1 160 0
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 1 162 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	__restore_interrupts
	b	.L50
.L46:
.LBE10:
.LBE9:
	.loc 1 165 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L50
.LBB11:
	.loc 1 167 0
	movs	r3, #19
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	movs	r1, #62
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	.loc 1 169 0
	movs	r3, #19
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bhi	.L50
	.loc 1 171 0
	ldr	r3, [r7, #4]
	movs	r1, #0
	movs	r0, r3
	bl	GUI_SetObjectVisibility
	.loc 1 173 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L51
	.loc 1 173 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
.L51:
	.loc 1 175 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 176 0
	movs	r1, #0
	movs	r0, #0
	bl	Point
	movs	r3, r0
	movs	r2, r3
	movs	r3, #12
	adds	r3, r7, r3
	str	r2, [r3]
	movs	r3, #12
	adds	r1, r7, r3
	movs	r3, #19
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, #0
	str	r3, [sp, #8]
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	ldr	r1, [r1]
	bl	LCDIF_SetupLayer
	.loc 1 177 0
	ldr	r3, [r7, #4]
	movs	r2, #60
	movs	r1, #0
	movs	r0, r3
	bl	__secure_memset
	.loc 1 178 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	free
	.loc 1 179 0
	movs	r3, #19
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #4]
	ldr	r3, .L53+4
	lsls	r2, r2, #2
	ldr	r1, [r7, #4]
	str	r1, [r2, r3]
	.loc 1 181 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	__restore_interrupts
.L50:
.LBE11:
	.loc 1 184 0
	ldr	r3, [r7, #4]
	.loc 1 185 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
.L54:
	.align	2
.L53:
	.word	DestroyObject.7531
	.word	GUILayer
	.cfi_endproc
.LFE5:
	.size	GUI_DestroySingleObject, .-GUI_DestroySingleObject
	.section	.text.GUI_DestroyChildTree,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GUI_DestroyChildTree, %function
GUI_DestroyChildTree:
.LFB6:
	.loc 1 188 0
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
	.loc 1 189 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #68
	str	r3, [r7, #20]
	.loc 1 199 0
	b	.L56
.L60:
.LBB12:
	.loc 1 201 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	.loc 1 204 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L57
	.loc 1 204 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_DestroyChildTree
.L57:
	.loc 1 206 0 is_stmt 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L58
	.loc 1 206 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, [r7, #12]
	movs	r0, r2
	blx	r3
.L58:
	.loc 1 207 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L61
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L59
	.loc 1 208 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	movs	r2, r3
	ldr	r3, .L61
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
.L59:
	.loc 1 210 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 211 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	DL_DeleteLastItem
	.loc 1 212 0
	ldr	r3, [r7, #12]
	movs	r2, #60
	movs	r1, #0
	movs	r0, r3
	bl	__secure_memset
	.loc 1 214 0
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	__restore_interrupts
.L56:
.LBE12:
	.loc 1 199 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	DL_GetLastItem
	movs	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L60
	.loc 1 216 0
	nop
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L62:
	.align	2
.L61:
	.word	DestroyObject.7539
	.cfi_endproc
.LFE6:
	.size	GUI_DestroyChildTree, .-GUI_DestroyChildTree
	.section	.text.GUI_SetLockState,"ax",%progbits
	.align	2
	.global	GUI_SetLockState
	.code	16
	.thumb_func
	.type	GUI_SetLockState, %function
GUI_SetLockState:
.LFB7:
	.loc 1 219 0
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
	movs	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 220 0
	ldr	r3, .L64
	adds	r2, r7, #7
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 221 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L65:
	.align	2
.L64:
	.word	GUILocked
	.cfi_endproc
.LFE7:
	.size	GUI_SetLockState, .-GUI_SetLockState
	.section	.rodata
	.align	2
.LC6:
	.ascii	"GUI subsystem initialization:\015\000"
	.align	2
.LC10:
	.ascii	" LCD interface initialization...\000"
	.align	2
.LC13:
	.ascii	"GUI initialization failed!\015\000"
	.section	.text.GUI_Initialize,"ax",%progbits
	.align	2
	.global	GUI_Initialize
	.code	16
	.thumb_func
	.type	GUI_Initialize, %function
GUI_Initialize:
.LFB8:
	.loc 1 224 0
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
	.loc 1 227 0
	ldr	r3, .L70
	movs	r0, r3
	bl	puts
	.loc 1 227 0
	ldr	r3, .L70+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 227 0
	movs	r0, r3
	bl	fflush
	.loc 1 229 0
	ldr	r3, .L70+8
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 231 0
	ldr	r3, .L70+12
	movs	r0, r3
	bl	printf
	.loc 1 231 0
	ldr	r3, .L70+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 231 0
	movs	r0, r3
	bl	fflush
	.loc 1 232 0
	adds	r4, r7, #7
	bl	LCDIF_Initialize
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 234 0
	bl	PMUBL_Initialize
	.loc 1 236 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L67
	.loc 1 238 0
	bl	FT6236_Initialize
	.loc 1 240 0
	ldr	r3, .L70+16
	movs	r0, r3
	bl	LCDIF_UpdateRectangleBlocked
	.loc 1 241 0
	ldr	r3, .L70+20
	movs	r0, r3
	bl	USC_Pause_us
	b	.L68
.L67:
	.loc 1 243 0
	ldr	r3, .L70+24
	movs	r0, r3
	bl	puts
	.loc 1 243 0
	ldr	r3, .L70+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 243 0
	movs	r0, r3
	bl	fflush
.L68:
	.loc 1 245 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	.loc 1 246 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r7, pc}
.L71:
	.align	2
.L70:
	.word	.LC6
	.word	_impure_ptr
	.word	GUILocked
	.word	.LC10
	.word	LCDScreen
	.word	75000
	.word	.LC13
	.cfi_endproc
.LFE8:
	.size	GUI_Initialize, .-GUI_Initialize
	.section	.text.GUI_Invalidate,"ax",%progbits
	.align	2
	.global	GUI_Invalidate
	.code	16
	.thumb_func
	.type	GUI_Invalidate, %function
GUI_Invalidate:
.LFB9:
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
	.loc 1 250 0
	movs	r3, #8
	adds	r3, r7, r3
	movs	r0, r3
	movs	r3, #16
	movs	r2, r3
	movs	r1, #0
	bl	memset
	.loc 1 252 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L74
	.loc 1 252 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #28]
	cmp	r3, #0
	beq	.L74
	.loc 1 254 0
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 1 255 0
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	adds	r2, r2, #12
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	.loc 1 257 0
	movs	r3, #8
	adds	r3, r7, r3
	movs	r0, r3
	bl	GUI_IsObjectVisibleAcrossParents
	subs	r3, r0, #0
	beq	.L74
	.loc 1 258 0
	movs	r3, #8
	adds	r2, r7, r3
	movs	r3, #16
	movs	r1, #0
	movs	r0, #4
	bl	EM_PostEvent
.L74:
	.loc 1 260 0
	nop
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE9:
	.size	GUI_Invalidate, .-GUI_Invalidate
	.section	.text.GUI_InvalidateArea,"ax",%progbits
	.align	2
	.global	GUI_InvalidateArea
	.code	16
	.thumb_func
	.type	GUI_InvalidateArea, %function
GUI_InvalidateArea:
.LFB10:
	.loc 1 263 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
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
	.loc 1 264 0
	movs	r3, #20
	adds	r3, r7, r3
	movs	r0, r3
	movs	r3, #16
	movs	r2, r3
	movs	r1, #0
	bl	memset
	.loc 1 266 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.LCB1067
	b	.L75	@long jump
.LCB1067:
	.loc 1 266 0 discriminator 1
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #28]
	cmp	r3, #0
	bne	.LCB1071
	b	.L75	@long jump
.LCB1071:
	.loc 1 266 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.LCB1074
	b	.L75	@long jump
.LCB1074:
	.loc 1 268 0 is_stmt 1
	movs	r3, #20
	adds	r3, r7, r3
	ldr	r2, [r7, #12]
	str	r2, [r3]
	.loc 1 270 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L77
	.loc 1 271 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	adds	r3, r3, #12
	movs	r2, r3
	movs	r3, #20
	adds	r4, r7, r3
	movs	r3, r7
	ldr	r1, [r7, #8]
	movs	r0, r3
	bl	GDI_LocalToGlobalRct
	movs	r2, r7
	adds	r3, r4, #4
	movs	r1, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
	b	.L78
.L77:
	.loc 1 272 0
	ldr	r3, [r7, #12]
	movs	r2, #62
	ldrb	r3, [r3, r2]
	movs	r0, r3
	bl	LCDIF_IsLayerInitialized
	subs	r3, r0, #0
	beq	.L83
	.loc 1 272 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L83
	.loc 1 273 0 is_stmt 1
	movs	r3, #20
	adds	r3, r7, r3
	ldr	r2, [r7, #8]
	adds	r3, r3, #4
	movs	r1, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
.L78:
.LBB13:
	.loc 1 276 0
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #4
	ldrsh	r2, [r3, r2]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r1, #8
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L81
	.loc 1 276 0 is_stmt 0 discriminator 1
	movs	r3, #38
	adds	r3, r7, r3
	movs	r2, #20
	adds	r2, r7, r2
	ldrh	r2, [r2, #4]
	strh	r2, [r3]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #8
	ldrsh	r2, [r3, r2]
	movs	r3, #20
	adds	r3, r7, r3
	strh	r2, [r3, #4]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #38
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #8]
.L81:
.LBE13:
.LBB14:
	.loc 1 277 0 is_stmt 1
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #6
	ldrsh	r2, [r3, r2]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r1, #10
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L82
	.loc 1 277 0 is_stmt 0 discriminator 1
	movs	r3, #36
	adds	r3, r7, r3
	movs	r2, #20
	adds	r2, r7, r2
	ldrh	r2, [r2, #6]
	strh	r2, [r3]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #10
	ldrsh	r2, [r3, r2]
	movs	r3, #20
	adds	r3, r7, r3
	strh	r2, [r3, #6]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #36
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3, #10]
.L82:
.LBE14:
	.loc 1 279 0 is_stmt 1
	movs	r3, #20
	adds	r3, r7, r3
	movs	r0, r3
	bl	GUI_IsObjectVisibleAcrossParents
	subs	r3, r0, #0
	beq	.L75
	.loc 1 280 0
	movs	r3, #20
	adds	r2, r7, r3
	movs	r3, #16
	movs	r1, #0
	movs	r0, #4
	bl	EM_PostEvent
	b	.L75
.L83:
	.loc 1 274 0
	nop
.L75:
	.loc 1 282 0
	mov	sp, r7
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE10:
	.size	GUI_InvalidateArea, .-GUI_InvalidateArea
	.section	.text.GUI_OnPaintHandler,"ax",%progbits
	.align	2
	.global	GUI_OnPaintHandler
	.code	16
	.thumb_func
	.type	GUI_OnPaintHandler, %function
GUI_OnPaintHandler:
.LFB11:
	.loc 1 285 0
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
	.loc 1 286 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.LCB1230
	b	.L99	@long jump
.LCB1230:
	.loc 1 287 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	.loc 1 286 0 discriminator 1
	bne	.L86
	.loc 1 287 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.LCB1242
	b	.L99	@long jump
.LCB1242:
.L86:
.LBB15:
	.loc 1 289 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L87
	.loc 1 290 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 1 289 0 discriminator 1
	movs	r2, #62
	ldrb	r3, [r3, r2]
	b	.L88
.L87:
	.loc 1 290 0 discriminator 2
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	.loc 1 289 0 discriminator 2
	movs	r2, #62
	ldrb	r3, [r3, r2]
.L88:
	.loc 1 289 0 is_stmt 0 discriminator 4
	movs	r2, #19
	adds	r2, r7, r2
	strb	r3, [r2]
	.loc 1 292 0 is_stmt 1 discriminator 4
	movs	r3, #19
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L102
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	bne	.LCB1277
	b	.L99	@long jump
.LCB1277:
	.loc 1 293 0 discriminator 1
	ldr	r3, [r7, #4]
	adds	r0, r3, #4
	movs	r3, #19
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	movs	r2, r3
	ldr	r3, .L102+4
	adds	r3, r2, r3
	adds	r3, r3, #2
	movs	r1, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	.loc 1 292 0 discriminator 1
	bne	.LCB1296
	b	.L99	@long jump
.LCB1296:
.LBB16:
	.loc 1 295 0
	bl	DL_Create
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 296 0
	movs	r0, #20
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 298 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.LCB1307
	b	.L89	@long jump
.LCB1307:
	.loc 1 298 0 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.LCB1310
	b	.L89	@long jump
.LCB1310:
	.loc 1 299 0 discriminator 2
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	subs	r3, r0, #0
	.loc 1 298 0 discriminator 2
	bne	.LCB1318
	b	.L89	@long jump
.LCB1318:
.LBB17:
	.loc 1 303 0
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	adds	r3, r3, #12
	adds	r2, r2, #4
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	.loc 1 305 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L90
	.loc 1 307 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	.loc 1 309 0
	b	.L91
.L93:
	.loc 1 311 0
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_SubTopChildObjectsFromRegion
	subs	r3, r0, #0
	beq	.L100
	.loc 1 312 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
.L91:
	.loc 1 309 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L93
	b	.L90
.L100:
	.loc 1 311 0
	nop
.L90:
	.loc 1 316 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	DL_GetItemsCount
	subs	r3, r0, #0
	beq	.L101
	.loc 1 318 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L95
	.loc 1 320 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L96
	.loc 1 323 0
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_UpdateChildTree
.LBE17:
	.loc 1 300 0
	b	.L101
.L96:
.LBB18:
	.loc 1 325 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L101
	.loc 1 328 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_UpdateChildTree
.LBE18:
	.loc 1 300 0
	b	.L101
.L95:
.LBB19:
	.loc 1 335 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L101
	.loc 1 338 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3, #26]
	cmp	r3, #0
	beq	.L97
	.loc 1 339 0
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_UpdateObjectByRegion
.LBE19:
	.loc 1 300 0
	b	.L101
.L97:
.LBB20:
	.loc 1 343 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_UpdateChildTree
.LBE20:
	.loc 1 300 0
	b	.L101
.L89:
	.loc 1 348 0
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	free
	b	.L98
.L101:
	.loc 1 300 0
	nop
.L98:
	.loc 1 350 0
	ldr	r3, [r7, #12]
	movs	r1, #0
	movs	r0, r3
	bl	DL_Delete
.L99:
.LBE16:
.LBE15:
	.loc 1 353 0
	nop
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L103:
	.align	2
.L102:
	.word	GUILayer
	.word	LCDScreen
	.cfi_endproc
.LFE11:
	.size	GUI_OnPaintHandler, .-GUI_OnPaintHandler
	.section	.text.GUI_OnPenPressHandler,"ax",%progbits
	.align	2
	.global	GUI_OnPenPressHandler
	.code	16
	.thumb_func
	.type	GUI_OnPenPressHandler, %function
GUI_OnPenPressHandler:
.LFB12:
	.loc 1 356 0
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
	.loc 1 357 0
	ldr	r3, .L111
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L105
	.loc 1 357 0 is_stmt 0 discriminator 1
	bl	GUI_GetObjectActive
	subs	r3, r0, #0
	bne	.L105
.LBB21:
	.loc 1 359 0 is_stmt 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	str	r3, [r7, #28]
	.loc 1 361 0
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	movs	r2, #12
	adds	r2, r7, r2
	movs	r1, r2
	movs	r0, r3
	bl	GUI_GetObjectFromPoint
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 363 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L106
.LBB22:
	.loc 1 365 0
	ldr	r2, [r7, #12]
	movs	r3, #23
	adds	r3, r7, r3
	movs	r1, #62
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	.loc 1 368 0
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	bne	.L107
	.loc 1 368 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	b	.L108
.L107:
	.loc 1 368 0 discriminator 2
	ldr	r3, [r7, #24]
.L108:
	.loc 1 368 0 discriminator 4
	movs	r0, r3
	bl	GUI_MoveWindowTreeToTop
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 371 0 is_stmt 1 discriminator 4
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #25]
	cmp	r3, #0
	beq	.L109
	.loc 1 371 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #27]
	cmp	r3, #0
	beq	.L109
	.loc 1 373 0 is_stmt 1
	ldr	r3, [r7, #28]
	adds	r2, r3, #4
	ldr	r4, [r7, #28]
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ScreenToLayerPt
	movs	r3, r0
	str	r3, [r4, #4]
	.loc 1 375 0
	ldr	r3, [r7, #28]
	adds	r2, r3, #4
	ldr	r3, [r7, #24]
	adds	r3, r3, #12
	movs	r1, r3
	movs	r0, r2
	bl	GDI_GlobalToLocalPt
	movs	r3, r0
	movs	r2, r3
	movs	r3, #8
	adds	r3, r7, r3
	str	r2, [r3]
	.loc 1 377 0
	ldr	r3, [r7, #16]
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	ldr	r3, [r7, #24]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_SetObjectActive
	.loc 1 378 0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L109
	.loc 1 378 0 discriminator 1
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #36]
	movs	r2, #8
	adds	r1, r7, r2
	ldr	r2, [r7, #24]
	movs	r0, r2
	blx	r3
.L109:
	.loc 1 380 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	GUI_Invalidate
.LBE22:
	b	.L105
.L106:
	.loc 1 382 0
	movs	r1, #1
	movs	r0, #0
	bl	GUI_SetObjectActive
.L105:
.LBE21:
	.loc 1 384 0
	movs	r0, #0
	bl	PMUBL_RestartBacklightTimer
	.loc 1 385 0
	nop
	mov	sp, r7
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r7, pc}
.L112:
	.align	2
.L111:
	.word	GUILocked
	.cfi_endproc
.LFE12:
	.size	GUI_OnPenPressHandler, .-GUI_OnPenPressHandler
	.section	.text.GUI_OnPenReleaseHandler,"ax",%progbits
	.align	2
	.global	GUI_OnPenReleaseHandler
	.code	16
	.thumb_func
	.type	GUI_OnPenReleaseHandler, %function
GUI_OnPenReleaseHandler:
.LFB13:
	.loc 1 388 0
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
	str	r0, [r7, #4]
	.loc 1 391 0
	ldr	r3, .L120
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.LCB1657
	b	.L114	@long jump
.LCB1657:
	.loc 1 391 0 is_stmt 0 discriminator 1
	bl	GUI_GetObjectActive
	movs	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L114
.LBB23:
	.loc 1 394 0 is_stmt 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	str	r3, [r7, #12]
	.loc 1 398 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L115
	.loc 1 398 0 is_stmt 0 discriminator 1
	movs	r3, #23
	adds	r3, r7, r3
	ldr	r2, [r7, #16]
	movs	r1, #62
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	b	.L116
.L115:
	.loc 1 399 0 is_stmt 1
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L117
	.loc 1 399 0 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #20]
	movs	r3, #23
	adds	r3, r7, r3
	movs	r1, #62
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	b	.L116
.L117:
	.loc 1 402 0
	movs	r1, #1
	movs	r0, #0
	bl	GUI_SetObjectActive
	b	.L114
.L116:
	.loc 1 406 0
	movs	r1, #1
	movs	r0, #0
	bl	GUI_SetObjectActive
	.loc 1 408 0
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #25]
	cmp	r3, #0
	beq	.L114
	.loc 1 408 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #27]
	cmp	r3, #0
	beq	.L114
	.loc 1 410 0 is_stmt 1
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	ldr	r4, [r7, #12]
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ScreenToLayerPt
	movs	r3, r0
	str	r3, [r4, #4]
	.loc 1 412 0
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	ldr	r3, [r7, #16]
	adds	r3, r3, #12
	movs	r1, r3
	movs	r0, r2
	bl	GDI_GlobalToLocalPt
	movs	r3, r0
	movs	r2, r3
	movs	r3, #8
	adds	r3, r7, r3
	str	r2, [r3]
	.loc 1 414 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L119
	.loc 1 415 0 discriminator 1
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	ldr	r3, [r7, #16]
	adds	r3, r3, #12
	movs	r1, r3
	movs	r0, r2
	bl	IsPointInRect
	subs	r3, r0, #0
	.loc 1 414 0 discriminator 1
	beq	.L119
	.loc 1 416 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #48]
	movs	r2, #8
	adds	r1, r7, r2
	ldr	r2, [r7, #16]
	movs	r0, r2
	blx	r3
.L119:
	.loc 1 417 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L114
	.loc 1 417 0 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #40]
	movs	r2, #8
	adds	r1, r7, r2
	ldr	r2, [r7, #16]
	movs	r0, r2
	blx	r3
.L114:
.LBE23:
	.loc 1 421 0
	movs	r0, #1
	bl	PMUBL_RestartBacklightTimer
	.loc 1 422 0
	nop
	mov	sp, r7
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r7, pc}
.L121:
	.align	2
.L120:
	.word	GUILocked
	.cfi_endproc
.LFE13:
	.size	GUI_OnPenReleaseHandler, .-GUI_OnPenReleaseHandler
	.section	.text.GUI_OnPenMoveHandler,"ax",%progbits
	.align	2
	.global	GUI_OnPenMoveHandler
	.code	16
	.thumb_func
	.type	GUI_OnPenMoveHandler, %function
GUI_OnPenMoveHandler:
.LFB14:
	.loc 1 425 0
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
	str	r0, [r7, #4]
	.loc 1 428 0
	ldr	r3, .L130
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L123
	.loc 1 428 0 is_stmt 0 discriminator 1
	bl	GUI_GetObjectActive
	movs	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L123
.LBB24:
	.loc 1 430 0 is_stmt 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	str	r3, [r7, #12]
	.loc 1 434 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L124
	.loc 1 434 0 is_stmt 0 discriminator 1
	movs	r3, #23
	adds	r3, r7, r3
	ldr	r2, [r7, #16]
	movs	r1, #62
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	b	.L125
.L124:
	.loc 1 435 0 is_stmt 1
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L126
	.loc 1 435 0 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #20]
	movs	r3, #23
	adds	r3, r7, r3
	movs	r1, #62
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	b	.L125
.L126:
	.loc 1 438 0
	movs	r1, #1
	movs	r0, #0
	bl	GUI_SetObjectActive
	b	.L122
.L125:
	.loc 1 442 0
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #25]
	cmp	r3, #0
	beq	.L123
	.loc 1 442 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #27]
	cmp	r3, #0
	beq	.L123
	.loc 1 444 0 is_stmt 1
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	ldr	r4, [r7, #12]
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ScreenToLayerPt
	movs	r3, r0
	str	r3, [r4, #4]
	.loc 1 446 0
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	ldr	r3, [r7, #16]
	adds	r3, r3, #12
	movs	r1, r3
	movs	r0, r2
	bl	GDI_GlobalToLocalPt
	movs	r3, r0
	movs	r2, r3
	movs	r3, #8
	adds	r3, r7, r3
	str	r2, [r3]
	.loc 1 448 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L129
	.loc 1 448 0 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #44]
	movs	r2, #8
	adds	r1, r7, r2
	ldr	r2, [r7, #16]
	movs	r0, r2
	blx	r3
.L129:
	.loc 1 449 0
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	ldr	r3, [r7, #16]
	adds	r3, r3, #12
	movs	r1, r3
	movs	r0, r2
	bl	IsPointInRect
	movs	r3, r0
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, r2
	movs	r0, r3
	bl	GUI_UpdateActiveState
.L123:
.LBE24:
	.loc 1 452 0
	movs	r0, #0
	bl	PMUBL_RestartBacklightTimer
.L122:
	.loc 1 453 0
	mov	sp, r7
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r7, pc}
.L131:
	.align	2
.L130:
	.word	GUILocked
	.cfi_endproc
.LFE14:
	.size	GUI_OnPenMoveHandler, .-GUI_OnPenMoveHandler
	.section	.text.GUI_OnDestroyHandler,"ax",%progbits
	.align	2
	.global	GUI_OnDestroyHandler
	.code	16
	.thumb_func
	.type	GUI_OnDestroyHandler, %function
GUI_OnDestroyHandler:
.LFB15:
	.loc 1 456 0
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
	.loc 1 457 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L135
	.loc 1 457 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L135
.LBB25:
	.loc 1 459 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 462 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_IsWindowObject
	subs	r3, r0, #0
	beq	.L134
	.loc 1 462 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_DestroyChildTree
.L134:
	.loc 1 463 0 is_stmt 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	GUI_DestroySingleObject
.L135:
.LBE25:
	.loc 1 465 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE15:
	.size	GUI_OnDestroyHandler, .-GUI_OnDestroyHandler
	.section	.rodata.DestroyObject.7531,"a",%progbits
	.align	2
	.type	DestroyObject.7531, %object
	.size	DestroyObject.7531, 16
DestroyObject.7531:
	.word	0
	.word	GUI_DestroyWindow
	.word	GUI_DestroyButton
	.word	GUI_DestroyLabel
	.section	.rodata.DestroyObject.7539,"a",%progbits
	.align	2
	.type	DestroyObject.7539, %object
	.size	DestroyObject.7539, 16
DestroyObject.7539:
	.word	0
	.word	GUI_DestroyWindow
	.word	GUI_DestroyButton
	.word	GUI_DestroyLabel
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\lock.h"
	.file 5 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_types.h"
	.file 6 "d:\\1.11\\share\\em_armgcc\\lib\\gcc\\arm-none-eabi\\5.4.1\\include\\stddef.h"
	.file 7 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\reent.h"
	.file 8 ".\\Source/systypes.h"
	.file 9 ".\\Source\\System/dlist.h"
	.file 10 ".\\Source\\GUI/gditypes.h"
	.file 11 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 12 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 13 ".\\Source\\System/evmngr.h"
	.file 14 ".\\Source\\GUI/guiobject.h"
	.file 15 ".\\Source\\GUI/guiwin.h"
	.file 16 ".\\Source\\GUI/gui.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x16db
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF321
	.byte	0xc
	.4byte	.LASF322
	.4byte	.LASF323
	.4byte	.Ldebug_ranges0+0x58
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
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x72
	.4byte	0x62
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x165
	.4byte	0x9b
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.4byte	0x12c
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x5
	.byte	0xa8
	.4byte	0x101
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x5
	.byte	0xa9
	.4byte	0x12c
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x13c
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.4byte	0x164
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0xa5
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0xaa
	.4byte	0x10d
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0xab
	.4byte	0x143
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0xaf
	.4byte	0xe0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x182
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF31
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0x16
	.4byte	0x74
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x18
	.byte	0x7
	.byte	0x2d
	.4byte	0x1e7
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x2f
	.4byte	0x1e7
	.byte	0
	.uleb128 0xf
	.ascii	"_k\000"
	.byte	0x7
	.byte	0x30
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0x30
	.4byte	0x89
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0x30
	.4byte	0x89
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x7
	.byte	0x30
	.4byte	0x89
	.byte	0x10
	.uleb128 0xf
	.ascii	"_x\000"
	.byte	0x7
	.byte	0x31
	.4byte	0x1ed
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x194
	.uleb128 0x8
	.4byte	0x189
	.4byte	0x1fd
	.uleb128 0x9
	.4byte	0x13c
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x24
	.byte	0x7
	.byte	0x35
	.4byte	0x276
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x7
	.byte	0x37
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x7
	.byte	0x38
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x7
	.byte	0x39
	.4byte	0x89
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x7
	.byte	0x3a
	.4byte	0x89
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x7
	.byte	0x3b
	.4byte	0x89
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x3c
	.4byte	0x89
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x3d
	.4byte	0x89
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x7
	.byte	0x3e
	.4byte	0x89
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x7
	.byte	0x3f
	.4byte	0x89
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF48
	.2byte	0x108
	.byte	0x7
	.byte	0x48
	.4byte	0x2b6
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x7
	.byte	0x49
	.4byte	0x2b6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x7
	.byte	0x4a
	.4byte	0x2b6
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x7
	.byte	0x4c
	.4byte	0x189
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x7
	.byte	0x4f
	.4byte	0x189
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x17a
	.4byte	0x2c6
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF53
	.2byte	0x190
	.byte	0x7
	.byte	0x5b
	.4byte	0x304
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x5c
	.4byte	0x304
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x7
	.byte	0x5d
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0x5f
	.4byte	0x30a
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x7
	.byte	0x60
	.4byte	0x276
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c6
	.uleb128 0x8
	.4byte	0x31a
	.4byte	0x31a
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x320
	.uleb128 0x12
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x8
	.byte	0x7
	.byte	0x73
	.4byte	0x346
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0x74
	.4byte	0x346
	.byte	0
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0x75
	.4byte	0x89
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x37
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x68
	.byte	0x7
	.byte	0xb3
	.4byte	0x476
	.uleb128 0xf
	.ascii	"_p\000"
	.byte	0x7
	.byte	0xb4
	.4byte	0x346
	.byte	0
	.uleb128 0xf
	.ascii	"_r\000"
	.byte	0x7
	.byte	0xb5
	.4byte	0x89
	.byte	0x4
	.uleb128 0xf
	.ascii	"_w\000"
	.byte	0x7
	.byte	0xb6
	.4byte	0x89
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x7
	.byte	0xb7
	.4byte	0x49
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x7
	.byte	0xb8
	.4byte	0x49
	.byte	0xe
	.uleb128 0xf
	.ascii	"_bf\000"
	.byte	0x7
	.byte	0xb9
	.4byte	0x321
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x7
	.byte	0xba
	.4byte	0x89
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x7
	.byte	0xc1
	.4byte	0x17a
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7
	.byte	0xc3
	.4byte	0x5cc
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x7
	.byte	0xc5
	.4byte	0x5fb
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x7
	.byte	0xc8
	.4byte	0x61f
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x7
	.byte	0xc9
	.4byte	0x639
	.byte	0x2c
	.uleb128 0xf
	.ascii	"_ub\000"
	.byte	0x7
	.byte	0xcc
	.4byte	0x321
	.byte	0x30
	.uleb128 0xf
	.ascii	"_up\000"
	.byte	0x7
	.byte	0xcd
	.4byte	0x346
	.byte	0x38
	.uleb128 0xf
	.ascii	"_ur\000"
	.byte	0x7
	.byte	0xce
	.4byte	0x89
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x7
	.byte	0xd1
	.4byte	0x63f
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x7
	.byte	0xd2
	.4byte	0x64f
	.byte	0x43
	.uleb128 0xf
	.ascii	"_lb\000"
	.byte	0x7
	.byte	0xd5
	.4byte	0x321
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x7
	.byte	0xd8
	.4byte	0x89
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x7
	.byte	0xd9
	.4byte	0xeb
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x7
	.byte	0xdc
	.4byte	0x494
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x7
	.byte	0xe0
	.4byte	0x16f
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x7
	.byte	0xe2
	.4byte	0x164
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x7
	.byte	0xe3
	.4byte	0x89
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.4byte	0x89
	.4byte	0x494
	.uleb128 0x14
	.4byte	0x494
	.uleb128 0x14
	.4byte	0x17a
	.uleb128 0x14
	.4byte	0x17c
	.uleb128 0x14
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x49a
	.uleb128 0x15
	.4byte	.LASF76
	.2byte	0x428
	.byte	0x7
	.2byte	0x238
	.4byte	0x5cc
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x23a
	.4byte	0x89
	.byte	0
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x23f
	.4byte	0x6a6
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x23f
	.4byte	0x6a6
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x23f
	.4byte	0x6a6
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x241
	.4byte	0x89
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x242
	.4byte	0x888
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x244
	.4byte	0x89
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x245
	.4byte	0x5f0
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x247
	.4byte	0x89
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x249
	.4byte	0x8a3
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x24c
	.4byte	0x1e7
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x24d
	.4byte	0x89
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x24e
	.4byte	0x1e7
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x24f
	.4byte	0x8a9
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x252
	.4byte	0x89
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x253
	.4byte	0x17c
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x276
	.4byte	0x866
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF53
	.byte	0x7
	.2byte	0x27a
	.4byte	0x304
	.2byte	0x148
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x27b
	.4byte	0x2c6
	.2byte	0x14c
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x27f
	.4byte	0x8ba
	.2byte	0x2dc
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x284
	.4byte	0x66b
	.2byte	0x2e0
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x285
	.4byte	0x8c6
	.2byte	0x2ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x476
	.uleb128 0x13
	.4byte	0x89
	.4byte	0x5f0
	.uleb128 0x14
	.4byte	0x494
	.uleb128 0x14
	.4byte	0x17a
	.uleb128 0x14
	.4byte	0x5f0
	.uleb128 0x14
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5f6
	.uleb128 0x18
	.4byte	0x182
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5d2
	.uleb128 0x13
	.4byte	0xf6
	.4byte	0x61f
	.uleb128 0x14
	.4byte	0x494
	.uleb128 0x14
	.4byte	0x17a
	.uleb128 0x14
	.4byte	0xf6
	.uleb128 0x14
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x601
	.uleb128 0x13
	.4byte	0x89
	.4byte	0x639
	.uleb128 0x14
	.4byte	0x494
	.uleb128 0x14
	.4byte	0x17a
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x625
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x64f
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x65f
	.uleb128 0x9
	.4byte	0x13c
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x11d
	.4byte	0x34c
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0xc
	.byte	0x7
	.2byte	0x121
	.4byte	0x6a0
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x7
	.2byte	0x123
	.4byte	0x6a0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x124
	.4byte	0x89
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x125
	.4byte	0x6a6
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x66b
	.uleb128 0xd
	.byte	0x4
	.4byte	0x65f
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0xe
	.byte	0x7
	.2byte	0x13d
	.4byte	0x6e1
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x13e
	.4byte	0x6e1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x13f
	.4byte	0x6e1
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x140
	.4byte	0x50
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x50
	.4byte	0x6f1
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd0
	.byte	0x7
	.2byte	0x257
	.4byte	0x7f2
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x259
	.4byte	0x9b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x25a
	.4byte	0x17c
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x25b
	.4byte	0x7f2
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x25c
	.4byte	0x1fd
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x25d
	.4byte	0x89
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x25e
	.4byte	0x82
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x25f
	.4byte	0x6ac
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x260
	.4byte	0x164
	.byte	0x68
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x261
	.4byte	0x164
	.byte	0x70
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x262
	.4byte	0x164
	.byte	0x78
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x263
	.4byte	0x802
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x264
	.4byte	0x812
	.byte	0x88
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x265
	.4byte	0x89
	.byte	0xa0
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x266
	.4byte	0x164
	.byte	0xa4
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x267
	.4byte	0x164
	.byte	0xac
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x268
	.4byte	0x164
	.byte	0xb4
	.uleb128 0x16
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x269
	.4byte	0x164
	.byte	0xbc
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x26a
	.4byte	0x164
	.byte	0xc4
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x26b
	.4byte	0x89
	.byte	0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0x182
	.4byte	0x802
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x182
	.4byte	0x812
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x182
	.4byte	0x822
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0x7
	.2byte	0x270
	.4byte	0x846
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x273
	.4byte	0x846
	.byte	0
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x274
	.4byte	0x856
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x346
	.4byte	0x856
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x9b
	.4byte	0x866
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x7
	.2byte	0x255
	.4byte	0x888
	.uleb128 0x1c
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x26c
	.4byte	0x6f1
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x275
	.4byte	0x822
	.byte	0
	.uleb128 0x8
	.4byte	0x182
	.4byte	0x898
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.4byte	0x8a3
	.uleb128 0x14
	.4byte	0x494
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x898
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1e7
	.uleb128 0x1d
	.4byte	0x8ba
	.uleb128 0x14
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8c0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8af
	.uleb128 0x8
	.4byte	0x65f
	.4byte	0x8d6
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x37
	.byte	0x8
	.byte	0x1d
	.4byte	0x8ef
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0x8
	.byte	0x1d
	.4byte	0x8d6
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x9
	.byte	0x17
	.4byte	0x905
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0xc
	.byte	0x9
	.byte	0x18
	.4byte	0x936
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x9
	.byte	0x1a
	.4byte	0x936
	.byte	0
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x9
	.byte	0x1b
	.4byte	0x936
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x9
	.byte	0x1c
	.4byte	0x17a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0x9
	.byte	0x17
	.4byte	0x941
	.uleb128 0xd
	.byte	0x4
	.4byte	0x905
	.uleb128 0xe
	.4byte	.LASF137
	.byte	0xc
	.byte	0x9
	.byte	0x1f
	.4byte	0x978
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x9
	.byte	0x21
	.4byte	0x936
	.byte	0
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x9
	.byte	0x22
	.4byte	0x936
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x9
	.byte	0x23
	.4byte	0xc3
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0x9
	.byte	0x24
	.4byte	0x947
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x9
	.byte	0x24
	.4byte	0x98e
	.uleb128 0xd
	.byte	0x4
	.4byte	0x947
	.uleb128 0x20
	.4byte	.LASF169
	.byte	0x4
	.4byte	0x9b
	.byte	0xa
	.byte	0x16
	.4byte	0xa86
	.uleb128 0x21
	.4byte	.LASF143
	.4byte	0xff000000
	.uleb128 0x21
	.4byte	.LASF144
	.4byte	0xff003366
	.uleb128 0x21
	.4byte	.LASF145
	.4byte	0xff000080
	.uleb128 0x21
	.4byte	.LASF146
	.4byte	0xff008000
	.uleb128 0x21
	.4byte	.LASF147
	.4byte	0xff008080
	.uleb128 0x21
	.4byte	.LASF148
	.4byte	0xff400000
	.uleb128 0x21
	.4byte	.LASF149
	.4byte	0xff404040
	.uleb128 0x21
	.4byte	.LASF150
	.4byte	0xff800000
	.uleb128 0x21
	.4byte	.LASF151
	.4byte	0xff800080
	.uleb128 0x21
	.4byte	.LASF152
	.4byte	0xff808000
	.uleb128 0x21
	.4byte	.LASF153
	.4byte	0xff808080
	.uleb128 0x21
	.4byte	.LASF154
	.4byte	0xffc0c0c0
	.uleb128 0x21
	.4byte	.LASF155
	.4byte	0xff0000ff
	.uleb128 0x21
	.4byte	.LASF156
	.4byte	0xff00c000
	.uleb128 0x21
	.4byte	.LASF157
	.4byte	0xff00ff00
	.uleb128 0x21
	.4byte	.LASF158
	.4byte	0xff00ffff
	.uleb128 0x21
	.4byte	.LASF159
	.4byte	0xffff0000
	.uleb128 0x21
	.4byte	.LASF160
	.4byte	0xffff00ff
	.uleb128 0x21
	.4byte	.LASF161
	.4byte	0xffffff00
	.uleb128 0x21
	.4byte	.LASF162
	.4byte	0xffffffff
	.uleb128 0x21
	.4byte	.LASF163
	.4byte	0xffc0dcc0
	.uleb128 0x21
	.4byte	.LASF164
	.4byte	0xfff0c8a4
	.uleb128 0x21
	.4byte	.LASF165
	.4byte	0xfff0f8fc
	.uleb128 0x21
	.4byte	.LASF166
	.4byte	0xffa4a0a0
	.uleb128 0x21
	.4byte	.LASF167
	.4byte	0xffc8d0d4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF168
	.byte	0xa
	.byte	0x31
	.4byte	0x994
	.uleb128 0x20
	.4byte	.LASF170
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0x33
	.4byte	0xad2
	.uleb128 0x1f
	.4byte	.LASF171
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF172
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF173
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF174
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF175
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF177
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF178
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0xa
	.byte	0x3d
	.4byte	0xa91
	.uleb128 0xe
	.4byte	.LASF180
	.byte	0x4
	.byte	0xa
	.byte	0x41
	.4byte	0xafe
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0xa
	.byte	0x43
	.4byte	0xad
	.byte	0
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0xa
	.byte	0x44
	.4byte	0xad
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0xa
	.byte	0x45
	.4byte	0xadd
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0xa
	.byte	0x45
	.4byte	0xb14
	.uleb128 0xd
	.byte	0x4
	.4byte	0xadd
	.uleb128 0xa
	.byte	0x8
	.byte	0xa
	.byte	0x49
	.4byte	0xb39
	.uleb128 0xf
	.ascii	"lt\000"
	.byte	0xa
	.byte	0x4b
	.4byte	0xafe
	.byte	0
	.uleb128 0xf
	.ascii	"rb\000"
	.byte	0xa
	.byte	0x4c
	.4byte	0xafe
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0xa
	.byte	0x4e
	.4byte	0xb6a
	.uleb128 0xf
	.ascii	"l\000"
	.byte	0xa
	.byte	0x50
	.4byte	0xad
	.byte	0
	.uleb128 0xf
	.ascii	"t\000"
	.byte	0xa
	.byte	0x51
	.4byte	0xad
	.byte	0x2
	.uleb128 0xf
	.ascii	"r\000"
	.byte	0xa
	.byte	0x52
	.4byte	0xad
	.byte	0x4
	.uleb128 0xf
	.ascii	"b\000"
	.byte	0xa
	.byte	0x53
	.4byte	0xad
	.byte	0x6
	.byte	0
	.uleb128 0x22
	.4byte	.LASF324
	.byte	0x8
	.byte	0xa
	.byte	0x47
	.4byte	0xb81
	.uleb128 0x23
	.4byte	0xb1a
	.uleb128 0x23
	.4byte	0xb39
	.byte	0
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0xa
	.byte	0x55
	.4byte	0xb6a
	.uleb128 0x3
	.4byte	.LASF184
	.byte	0xa
	.byte	0x55
	.4byte	0xb97
	.uleb128 0xd
	.byte	0x4
	.4byte	0xb6a
	.uleb128 0xe
	.4byte	.LASF185
	.byte	0x14
	.byte	0xa
	.byte	0x57
	.4byte	0xbc2
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0xa
	.byte	0x59
	.4byte	0x8fa
	.byte	0
	.uleb128 0xf
	.ascii	"Rct\000"
	.byte	0xa
	.byte	0x5a
	.4byte	0xb81
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0xa
	.byte	0x5b
	.4byte	0xbcd
	.uleb128 0xd
	.byte	0x4
	.4byte	0xb9d
	.uleb128 0x20
	.4byte	.LASF188
	.byte	0x1
	.4byte	0x37
	.byte	0xb
	.byte	0xf1
	.4byte	0xc02
	.uleb128 0x1f
	.4byte	.LASF189
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF190
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF191
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF192
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF193
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0xb
	.byte	0xf8
	.4byte	0xbd3
	.uleb128 0x19
	.4byte	.LASF195
	.byte	0x1c
	.byte	0xb
	.2byte	0x119
	.4byte	0xc83
	.uleb128 0x16
	.4byte	.LASF196
	.byte	0xb
	.2byte	0x11b
	.4byte	0x8ef
	.byte	0
	.uleb128 0x16
	.4byte	.LASF197
	.byte	0xb
	.2byte	0x11c
	.4byte	0x8ef
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF198
	.byte	0xb
	.2byte	0x11d
	.4byte	0xb81
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF199
	.byte	0xb
	.2byte	0x11e
	.4byte	0xafe
	.byte	0xa
	.uleb128 0x16
	.4byte	.LASF200
	.byte	0xb
	.2byte	0x11f
	.4byte	0xc3
	.byte	0x10
	.uleb128 0x24
	.ascii	"BPP\000"
	.byte	0xb
	.2byte	0x120
	.4byte	0xa2
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF201
	.byte	0xb
	.2byte	0x121
	.4byte	0xad2
	.byte	0x15
	.uleb128 0x16
	.4byte	.LASF202
	.byte	0xb
	.2byte	0x122
	.4byte	0x17a
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.4byte	.LASF203
	.byte	0xb
	.2byte	0x123
	.4byte	0xc0d
	.uleb128 0x19
	.4byte	.LASF204
	.byte	0x88
	.byte	0xb
	.2byte	0x125
	.4byte	0xceb
	.uleb128 0x16
	.4byte	.LASF205
	.byte	0xb
	.2byte	0x127
	.4byte	0xb81
	.byte	0
	.uleb128 0x16
	.4byte	.LASF206
	.byte	0xb
	.2byte	0x128
	.4byte	0xafe
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF207
	.byte	0xb
	.2byte	0x129
	.4byte	0xc3
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF208
	.byte	0xb
	.2byte	0x12a
	.4byte	0xc3
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF197
	.byte	0xb
	.2byte	0x12b
	.4byte	0x8ef
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF209
	.byte	0xb
	.2byte	0x12c
	.4byte	0xceb
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	0xc83
	.4byte	0xcfb
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF210
	.byte	0xb
	.2byte	0x12d
	.4byte	0xc8f
	.uleb128 0x20
	.4byte	.LASF211
	.byte	0x1
	.4byte	0x37
	.byte	0xc
	.byte	0x24
	.4byte	0xd4e
	.uleb128 0x1f
	.4byte	.LASF212
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF213
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF214
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF215
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF216
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF217
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF219
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF220
	.byte	0x7
	.byte	0
	.uleb128 0x20
	.4byte	.LASF221
	.byte	0x1
	.4byte	0x37
	.byte	0xd
	.byte	0x16
	.4byte	0xd8f
	.uleb128 0x1f
	.4byte	.LASF222
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF223
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF224
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF225
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF226
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF228
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF229
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF230
	.byte	0xd
	.byte	0x23
	.4byte	0xd4e
	.uleb128 0xe
	.4byte	.LASF231
	.byte	0x18
	.byte	0xd
	.byte	0x25
	.4byte	0xde3
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0xd
	.byte	0x27
	.4byte	0x8fa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF232
	.byte	0xd
	.byte	0x28
	.4byte	0xd8f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF233
	.byte	0xd
	.byte	0x29
	.4byte	0x17a
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF234
	.byte	0xd
	.byte	0x2a
	.4byte	0xc3
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF235
	.byte	0xd
	.byte	0x2b
	.4byte	0xde3
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	0xa2
	.4byte	0xdf2
	.uleb128 0x25
	.4byte	0x13c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF236
	.byte	0xd
	.byte	0x2c
	.4byte	0xdfd
	.uleb128 0xd
	.byte	0x4
	.4byte	0xd9a
	.uleb128 0x20
	.4byte	.LASF237
	.byte	0x1
	.4byte	0x37
	.byte	0xe
	.byte	0x16
	.4byte	0xe32
	.uleb128 0x1f
	.4byte	.LASF238
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF239
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF240
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF241
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF242
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF243
	.byte	0xe
	.byte	0x1e
	.4byte	0xe03
	.uleb128 0x3
	.4byte	.LASF244
	.byte	0xe
	.byte	0x29
	.4byte	0xe48
	.uleb128 0xd
	.byte	0x4
	.4byte	0xe4e
	.uleb128 0xe
	.4byte	.LASF245
	.byte	0x3c
	.byte	0xe
	.byte	0x2a
	.4byte	0xf0f
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0xe
	.byte	0x2c
	.4byte	0x8fa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF246
	.byte	0xe
	.byte	0x2d
	.4byte	0xb81
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF247
	.byte	0xe
	.byte	0x2e
	.4byte	0xe3d
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF248
	.byte	0xe
	.byte	0x2f
	.4byte	0xe32
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0xe
	.byte	0x30
	.4byte	0x8ef
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF249
	.byte	0xe
	.byte	0x31
	.4byte	0x8ef
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF250
	.byte	0xe
	.byte	0x32
	.4byte	0x8ef
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF251
	.byte	0xe
	.byte	0x33
	.4byte	0x8ef
	.byte	0x1c
	.uleb128 0xf
	.ascii	"Tag\000"
	.byte	0xe
	.byte	0x34
	.4byte	0xb8
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF252
	.byte	0xe
	.byte	0x35
	.4byte	0xf1f
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF253
	.byte	0xe
	.byte	0x36
	.4byte	0xf1f
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF254
	.byte	0xe
	.byte	0x37
	.4byte	0xf1f
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF255
	.byte	0xe
	.byte	0x38
	.4byte	0xf1f
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF256
	.byte	0xe
	.byte	0x39
	.4byte	0xf35
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF257
	.byte	0xe
	.byte	0x3a
	.4byte	0xf46
	.byte	0x38
	.byte	0
	.uleb128 0x1d
	.4byte	0xf1f
	.uleb128 0x14
	.4byte	0xe3d
	.uleb128 0x14
	.4byte	0xb09
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xf0f
	.uleb128 0x1d
	.4byte	0xf35
	.uleb128 0x14
	.4byte	0xe3d
	.uleb128 0x14
	.4byte	0xb8c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xf25
	.uleb128 0x1d
	.4byte	0xf46
	.uleb128 0x14
	.4byte	0xe3d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xf3b
	.uleb128 0x3
	.4byte	.LASF258
	.byte	0xe
	.byte	0x3b
	.4byte	0xe4e
	.uleb128 0x3
	.4byte	.LASF259
	.byte	0xf
	.byte	0x17
	.4byte	0xf62
	.uleb128 0xd
	.byte	0x4
	.4byte	0xf68
	.uleb128 0xe
	.4byte	.LASF260
	.byte	0x54
	.byte	0xf
	.byte	0x18
	.4byte	0xfc9
	.uleb128 0xb
	.4byte	.LASF261
	.byte	0xf
	.byte	0x1a
	.4byte	0xf4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF262
	.byte	0xf
	.byte	0x1b
	.4byte	0x8ef
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF263
	.byte	0xf
	.byte	0x1c
	.4byte	0x8ef
	.byte	0x3d
	.uleb128 0xb
	.4byte	.LASF264
	.byte	0xf
	.byte	0x1d
	.4byte	0xc02
	.byte	0x3e
	.uleb128 0xb
	.4byte	.LASF265
	.byte	0xf
	.byte	0x1e
	.4byte	0xa86
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF266
	.byte	0xf
	.byte	0x1f
	.4byte	0x978
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF267
	.byte	0xf
	.byte	0x20
	.4byte	0xfdd
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.4byte	0x8ef
	.4byte	0xfdd
	.uleb128 0x14
	.4byte	0xdf2
	.uleb128 0x14
	.4byte	0xe3d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xfc9
	.uleb128 0xe
	.4byte	.LASF268
	.byte	0x8
	.byte	0x10
	.byte	0x16
	.4byte	0x1008
	.uleb128 0xb
	.4byte	.LASF269
	.byte	0x10
	.byte	0x18
	.4byte	0xc3
	.byte	0
	.uleb128 0xf
	.ascii	"PXY\000"
	.byte	0x10
	.byte	0x19
	.4byte	0xafe
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF270
	.byte	0x10
	.byte	0x1a
	.4byte	0x1013
	.uleb128 0xd
	.byte	0x4
	.4byte	0xfe3
	.uleb128 0xe
	.4byte	.LASF271
	.byte	0x10
	.byte	0x10
	.byte	0x1c
	.4byte	0x104a
	.uleb128 0xb
	.4byte	.LASF233
	.byte	0x10
	.byte	0x1e
	.4byte	0xe3d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF272
	.byte	0x10
	.byte	0x1f
	.4byte	0xb81
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF264
	.byte	0x10
	.byte	0x20
	.4byte	0xc02
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF273
	.byte	0x10
	.byte	0x21
	.4byte	0x1019
	.uleb128 0x3
	.4byte	.LASF274
	.byte	0x10
	.byte	0x21
	.4byte	0x1060
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1019
	.uleb128 0xe
	.4byte	.LASF275
	.byte	0x4
	.byte	0x10
	.byte	0x23
	.4byte	0x107f
	.uleb128 0xb
	.4byte	.LASF233
	.byte	0x10
	.byte	0x25
	.4byte	0xe3d
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF276
	.byte	0x10
	.byte	0x26
	.4byte	0x108a
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1066
	.uleb128 0x26
	.4byte	.LASF279
	.byte	0x1
	.byte	0x1a
	.4byte	0x8ef
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ec
	.uleb128 0x27
	.4byte	.LASF281
	.byte	0x1
	.byte	0x1a
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.4byte	.LASF277
	.byte	0x1
	.byte	0x1c
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x28
	.4byte	.LASF233
	.byte	0x1
	.byte	0x1d
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x28
	.4byte	.LASF278
	.byte	0x1
	.byte	0x21
	.4byte	0xb81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF280
	.byte	0x1
	.byte	0x37
	.4byte	0x8ef
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x115c
	.uleb128 0x27
	.4byte	.LASF282
	.byte	0x1
	.byte	0x37
	.4byte	0x983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.4byte	.LASF233
	.byte	0x1
	.byte	0x37
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x28
	.4byte	.LASF283
	.byte	0x1
	.byte	0x3b
	.4byte	0x983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.4byte	.LASF284
	.byte	0x1
	.byte	0x3c
	.4byte	0x936
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x28
	.4byte	.LASF285
	.byte	0x1
	.byte	0x41
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF295
	.byte	0x1
	.byte	0x4f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d0
	.uleb128 0x27
	.4byte	.LASF282
	.byte	0x1
	.byte	0x4f
	.4byte	0x983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.4byte	.LASF233
	.byte	0x1
	.byte	0x4f
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.4byte	.LASF286
	.byte	0x1
	.byte	0x4f
	.4byte	0xb8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.4byte	.LASF287
	.byte	0x1
	.byte	0x51
	.4byte	0x936
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.4byte	.LASF264
	.byte	0x1
	.byte	0x52
	.4byte	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x29
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x28
	.4byte	.LASF272
	.byte	0x1
	.byte	0x5b
	.4byte	0xb81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF288
	.byte	0x1
	.byte	0x6b
	.4byte	0x8ef
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1252
	.uleb128 0x27
	.4byte	.LASF282
	.byte	0x1
	.byte	0x6b
	.4byte	0x983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.4byte	.LASF233
	.byte	0x1
	.byte	0x6b
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.4byte	.LASF286
	.byte	0x1
	.byte	0x6b
	.4byte	0xb8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.4byte	.LASF287
	.byte	0x1
	.byte	0x6d
	.4byte	0x936
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x28
	.4byte	.LASF285
	.byte	0x1
	.byte	0x6e
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.4byte	.LASF289
	.byte	0x1
	.byte	0x6f
	.4byte	0xb81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x28
	.4byte	.LASF290
	.byte	0x1
	.byte	0x73
	.4byte	0xb81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF291
	.byte	0x1
	.byte	0x86
	.4byte	0x17a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e5
	.uleb128 0x27
	.4byte	.LASF233
	.byte	0x1
	.byte	0x86
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.4byte	.LASF292
	.byte	0x1
	.byte	0x88
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x12cc
	.uleb128 0x28
	.4byte	.LASF283
	.byte	0x1
	.byte	0x8c
	.4byte	0x983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x28
	.4byte	.LASF287
	.byte	0x1
	.byte	0x8d
	.4byte	0x936
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x29
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x28
	.4byte	.LASF293
	.byte	0x1
	.byte	0x91
	.4byte	0x12fa
	.uleb128 0x5
	.byte	0x3
	.4byte	DestroyObject.7531
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x28
	.4byte	.LASF294
	.byte	0x1
	.byte	0xa7
	.4byte	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x12f5
	.4byte	0x12f5
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.4byte	0xf46
	.uleb128 0x18
	.4byte	0x12e5
	.uleb128 0x2b
	.4byte	.LASF296
	.byte	0x1
	.byte	0xbb
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1376
	.uleb128 0x27
	.4byte	.LASF233
	.byte	0x1
	.byte	0xbb
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.4byte	.LASF283
	.byte	0x1
	.byte	0xbd
	.4byte	0x983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x28
	.4byte	.LASF287
	.byte	0x1
	.byte	0xbe
	.4byte	0x936
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.4byte	.LASF293
	.byte	0x1
	.byte	0xbf
	.4byte	0x1376
	.uleb128 0x5
	.byte	0x3
	.4byte	DestroyObject.7539
	.uleb128 0x29
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x28
	.4byte	.LASF285
	.byte	0x1
	.byte	0xc9
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.4byte	.LASF292
	.byte	0x1
	.byte	0xca
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x12e5
	.uleb128 0x2d
	.4byte	.LASF299
	.byte	0x1
	.byte	0xda
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x139f
	.uleb128 0x27
	.4byte	.LASF297
	.byte	0x1
	.byte	0xda
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF325
	.byte	0x1
	.byte	0xdf
	.4byte	0x8ef
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13c7
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0xe1
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF300
	.byte	0x1
	.byte	0xf8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f9
	.uleb128 0x27
	.4byte	.LASF233
	.byte	0x1
	.byte	0xf8
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.4byte	.LASF301
	.byte	0x1
	.byte	0xfa
	.4byte	0x104a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x106
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1473
	.uleb128 0x31
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x106
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.ascii	"Rct\000"
	.byte	0x1
	.2byte	0x106
	.4byte	0xb8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x108
	.4byte	0x104a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x1459
	.uleb128 0x33
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x114
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x29
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x33
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x115
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x11c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ef
	.uleb128 0x31
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x11c
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x33
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x121
	.4byte	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x29
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x33
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x127
	.4byte	0x983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x128
	.4byte	0xbc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x33
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x12d
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x163
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1583
	.uleb128 0x31
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x163
	.4byte	0xdf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x33
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x167
	.4byte	0x1008
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.4byte	.LASF309
	.byte	0x1
	.2byte	0x168
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x169
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x33
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x16d
	.4byte	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x33
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x16e
	.4byte	0xafe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x170
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x183
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15ef
	.uleb128 0x31
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x183
	.4byte	0xdf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x185
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x33
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x18a
	.4byte	0x1008
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x18b
	.4byte	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x33
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x18c
	.4byte	0xafe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x1a8
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x165b
	.uleb128 0x31
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xdf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x33
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x1008
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x1af
	.4byte	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x33
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xafe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x1c7
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x169a
	.uleb128 0x31
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x107f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x33
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1cb
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF317
	.byte	0x7
	.2byte	0x2fd
	.4byte	0x494
	.uleb128 0x34
	.4byte	.LASF318
	.byte	0xb
	.2byte	0x137
	.4byte	0xcfb
	.uleb128 0x8
	.4byte	0xe3d
	.4byte	0x16c2
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x3
	.byte	0
	.uleb128 0x35
	.4byte	.LASF319
	.byte	0xf
	.byte	0x23
	.4byte	0x16b2
	.uleb128 0x36
	.4byte	.LASF320
	.byte	0x1
	.byte	0x18
	.4byte	0x8ef
	.uleb128 0x5
	.byte	0x3
	.4byte	GUILocked
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x1b
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.4byte	0x8c
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF300:
	.ascii	"GUI_Invalidate\000"
.LASF153:
	.ascii	"clGray\000"
.LASF213:
	.ascii	"USB_EP1IN\000"
.LASF310:
	.ascii	"OnPressXY\000"
.LASF26:
	.ascii	"sizetype\000"
.LASF323:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF28:
	.ascii	"__value\000"
.LASF261:
	.ascii	"Head\000"
.LASF257:
	.ascii	"OnDestroy\000"
.LASF97:
	.ascii	"__sf\000"
.LASF64:
	.ascii	"_read\000"
.LASF289:
	.ascii	"tmpWinRect\000"
.LASF65:
	.ascii	"_write\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF290:
	.ascii	"tmpObjectRect\000"
.LASF108:
	.ascii	"_asctime_buf\000"
.LASF91:
	.ascii	"_cvtlen\000"
.LASF154:
	.ascii	"clSilver\000"
.LASF164:
	.ascii	"clSkyBlue\000"
.LASF127:
	.ascii	"_unused\000"
.LASF38:
	.ascii	"__tm\000"
.LASF123:
	.ascii	"_wcsrtombs_state\000"
.LASF69:
	.ascii	"_nbuf\000"
.LASF39:
	.ascii	"__tm_sec\000"
.LASF116:
	.ascii	"_l64a_buf\000"
.LASF208:
	.ascii	"ScreenIndex\000"
.LASF179:
	.ascii	"TCFORMAT\000"
.LASF273:
	.ascii	"TPAINTEV\000"
.LASF73:
	.ascii	"_lock\000"
.LASF104:
	.ascii	"_mult\000"
.LASF158:
	.ascii	"clYellow\000"
.LASF266:
	.ascii	"ChildObjects\000"
.LASF157:
	.ascii	"clLime\000"
.LASF320:
	.ascii	"GUILocked\000"
.LASF283:
	.ascii	"ChildList\000"
.LASF183:
	.ascii	"TRECT\000"
.LASF24:
	.ascii	"__wch\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF61:
	.ascii	"_file\000"
.LASF141:
	.ascii	"TDLIST\000"
.LASF48:
	.ascii	"_on_exit_args\000"
.LASF231:
	.ascii	"tag_EVENT\000"
.LASF119:
	.ascii	"_mbrlen_state\000"
.LASF7:
	.ascii	"long int\000"
.LASF317:
	.ascii	"_impure_ptr\000"
.LASF262:
	.ascii	"Topmost\000"
.LASF250:
	.ascii	"InheritedEnabled\000"
.LASF88:
	.ascii	"_result_k\000"
.LASF275:
	.ascii	"tag_GODESTROYEV\000"
.LASF240:
	.ascii	"GO_BUTTON\000"
.LASF58:
	.ascii	"_size\000"
.LASF196:
	.ascii	"Enabled\000"
.LASF109:
	.ascii	"_localtime_buf\000"
.LASF313:
	.ascii	"OnReleaseXY\000"
.LASF214:
	.ascii	"USB_EP2IN\000"
.LASF321:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF286:
	.ascii	"Clip\000"
.LASF171:
	.ascii	"CF_8IDX\000"
.LASF306:
	.ascii	"SeedRect\000"
.LASF43:
	.ascii	"__tm_mon\000"
.LASF211:
	.ascii	"tag_EP\000"
.LASF298:
	.ascii	"Result\000"
.LASF267:
	.ascii	"EventHandler\000"
.LASF243:
	.ascii	"TGOTYPE\000"
.LASF83:
	.ascii	"_current_category\000"
.LASF287:
	.ascii	"tmpItem\000"
.LASF106:
	.ascii	"_unused_rand\000"
.LASF0:
	.ascii	"signed char\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF236:
	.ascii	"pEVENT\000"
.LASF130:
	.ascii	"boolean\000"
.LASF162:
	.ascii	"clWhite\000"
.LASF207:
	.ascii	"ScreenCount\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF220:
	.ascii	"USB_EPNUM\000"
.LASF76:
	.ascii	"_reent\000"
.LASF284:
	.ascii	"tmpDLItem\000"
.LASF288:
	.ascii	"GUI_UpdateChildTree\000"
.LASF238:
	.ascii	"GO_UNKNOWN\000"
.LASF314:
	.ascii	"GUI_OnPenMoveHandler\000"
.LASF31:
	.ascii	"char\000"
.LASF55:
	.ascii	"_fns\000"
.LASF168:
	.ascii	"TCOLOR\000"
.LASF67:
	.ascii	"_close\000"
.LASF142:
	.ascii	"pDLIST\000"
.LASF265:
	.ascii	"ForeColor\000"
.LASF269:
	.ascii	"PenIndex\000"
.LASF148:
	.ascii	"clDarkBlue\000"
.LASF78:
	.ascii	"_stdin\000"
.LASF237:
	.ascii	"tag_GOTYPE\000"
.LASF167:
	.ascii	"clBtnFace\000"
.LASF143:
	.ascii	"clBlack\000"
.LASF318:
	.ascii	"LCDScreen\000"
.LASF176:
	.ascii	"CF_PARGB8888\000"
.LASF209:
	.ascii	"VLayer\000"
.LASF210:
	.ascii	"TSCREEN\000"
.LASF163:
	.ascii	"clMoneyGreen\000"
.LASF271:
	.ascii	"tag_PAINTEV\000"
.LASF128:
	.ascii	"false\000"
.LASF169:
	.ascii	"tag_COLOR\000"
.LASF174:
	.ascii	"CF_RGB888\000"
.LASF132:
	.ascii	"tag_ListItem\000"
.LASF270:
	.ascii	"pPENEVENT\000"
.LASF204:
	.ascii	"tag_TSCREEN\000"
.LASF63:
	.ascii	"_cookie\000"
.LASF218:
	.ascii	"USB_EP1OUT\000"
.LASF206:
	.ascii	"ScreenOffset\000"
.LASF242:
	.ascii	"GO_NUMTYPES\000"
.LASF36:
	.ascii	"_wds\000"
.LASF161:
	.ascii	"clAqua\000"
.LASF95:
	.ascii	"_sig_func\000"
.LASF149:
	.ascii	"clDarkGray\000"
.LASF71:
	.ascii	"_offset\000"
.LASF92:
	.ascii	"_cvtbuf\000"
.LASF235:
	.ascii	"Param\000"
.LASF316:
	.ascii	"GUI_OnDestroyHandler\000"
.LASF324:
	.ascii	"tag_RECT\000"
.LASF187:
	.ascii	"pRECTITEM\000"
.LASF198:
	.ascii	"LayerRgn\000"
.LASF180:
	.ascii	"tag_POINT\000"
.LASF178:
	.ascii	"CF_NUM\000"
.LASF268:
	.ascii	"tag_PENEVENT\000"
.LASF215:
	.ascii	"USB_EP3IN\000"
.LASF245:
	.ascii	"tag_GUIOBJECT\000"
.LASF89:
	.ascii	"_p5s\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF233:
	.ascii	"Object\000"
.LASF59:
	.ascii	"__sFILE\000"
.LASF85:
	.ascii	"__sdidinit\000"
.LASF75:
	.ascii	"_flags2\000"
.LASF252:
	.ascii	"OnPress\000"
.LASF200:
	.ascii	"LayerEnMask\000"
.LASF20:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF322:
	.ascii	"Source\\GUI\\gui.c\000"
.LASF77:
	.ascii	"_errno\000"
.LASF308:
	.ascii	"PenEvent\000"
.LASF117:
	.ascii	"_signal_buf\000"
.LASF18:
	.ascii	"uintptr_t\000"
.LASF146:
	.ascii	"clGreen\000"
.LASF291:
	.ascii	"GUI_DestroySingleObject\000"
.LASF212:
	.ascii	"USB_EP0\000"
.LASF315:
	.ascii	"OnMoveXY\000"
.LASF37:
	.ascii	"_Bigint\000"
.LASF34:
	.ascii	"_maxwds\000"
.LASF86:
	.ascii	"__cleanup\000"
.LASF94:
	.ascii	"_atexit0\000"
.LASF256:
	.ascii	"OnPaint\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF82:
	.ascii	"_emergency\000"
.LASF177:
	.ascii	"CF_xRGB8888\000"
.LASF301:
	.ascii	"PaintEvent\000"
.LASF10:
	.ascii	"long long int\000"
.LASF195:
	.ascii	"tag_TLCONTEXT\000"
.LASF175:
	.ascii	"CF_ARGB8888\000"
.LASF100:
	.ascii	"_niobs\000"
.LASF140:
	.ascii	"Count\000"
.LASF232:
	.ascii	"Event\000"
.LASF96:
	.ascii	"__sglue\000"
.LASF304:
	.ascii	"GUI_OnPaintHandler\000"
.LASF126:
	.ascii	"_nmalloc\000"
.LASF110:
	.ascii	"_gamma_signgam\000"
.LASF84:
	.ascii	"_current_locale\000"
.LASF258:
	.ascii	"TGUIOBJECT\000"
.LASF90:
	.ascii	"_freelist\000"
.LASF101:
	.ascii	"_iobs\000"
.LASF99:
	.ascii	"_glue\000"
.LASF35:
	.ascii	"_sign\000"
.LASF254:
	.ascii	"OnMove\000"
.LASF147:
	.ascii	"clOlive\000"
.LASF264:
	.ascii	"Layer\000"
.LASF263:
	.ascii	"Framed\000"
.LASF274:
	.ascii	"pPAINTEV\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF260:
	.ascii	"tag_WIN\000"
.LASF131:
	.ascii	"TDLITEM\000"
.LASF249:
	.ascii	"Visible\000"
.LASF197:
	.ascii	"Initialized\000"
.LASF124:
	.ascii	"_h_errno\000"
.LASF226:
	.ascii	"ET_ONPAINT\000"
.LASF202:
	.ascii	"FrameBuffer\000"
.LASF122:
	.ascii	"_wcrtomb_state\000"
.LASF309:
	.ascii	"RootParent\000"
.LASF42:
	.ascii	"__tm_mday\000"
.LASF93:
	.ascii	"_new\000"
.LASF68:
	.ascii	"_ubuf\000"
.LASF80:
	.ascii	"_stderr\000"
.LASF325:
	.ascii	"GUI_Initialize\000"
.LASF115:
	.ascii	"_wctomb_state\000"
.LASF74:
	.ascii	"_mbstate\000"
.LASF223:
	.ascii	"ET_PENPRESS\000"
.LASF111:
	.ascii	"_rand_next\000"
.LASF259:
	.ascii	"pWIN\000"
.LASF60:
	.ascii	"_flags\000"
.LASF248:
	.ascii	"Type\000"
.LASF199:
	.ascii	"LayerOffset\000"
.LASF247:
	.ascii	"Parent\000"
.LASF186:
	.ascii	"ListHeader\000"
.LASF216:
	.ascii	"USB_EP4IN\000"
.LASF136:
	.ascii	"pDLITEM\000"
.LASF53:
	.ascii	"_atexit\000"
.LASF181:
	.ascii	"TPOINT\000"
.LASF27:
	.ascii	"__count\000"
.LASF305:
	.ascii	"UpdateRgn\000"
.LASF217:
	.ascii	"USB_EPMAXINDEX\000"
.LASF45:
	.ascii	"__tm_wday\000"
.LASF19:
	.ascii	"long double\000"
.LASF46:
	.ascii	"__tm_yday\000"
.LASF170:
	.ascii	"tag_CFORMAT\000"
.LASF319:
	.ascii	"GUILayer\000"
.LASF221:
	.ascii	"tag_EVTYPE\000"
.LASF103:
	.ascii	"_seed\000"
.LASF145:
	.ascii	"clMaroon\000"
.LASF66:
	.ascii	"_seek\000"
.LASF173:
	.ascii	"CF_YUYV422\000"
.LASF296:
	.ascii	"GUI_DestroyChildTree\000"
.LASF279:
	.ascii	"GUI_IsObjectVisibleAcrossParents\000"
.LASF22:
	.ascii	"_fpos_t\000"
.LASF25:
	.ascii	"__wchb\000"
.LASF155:
	.ascii	"clRed\000"
.LASF228:
	.ascii	"ET_PWRKEY\000"
.LASF114:
	.ascii	"_mbtowc_state\000"
.LASF285:
	.ascii	"tmpObject\000"
.LASF172:
	.ascii	"CF_RGB565\000"
.LASF302:
	.ascii	"GUI_InvalidateArea\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF255:
	.ascii	"OnClick\000"
.LASF50:
	.ascii	"_dso_handle\000"
.LASF102:
	.ascii	"_rand48\000"
.LASF79:
	.ascii	"_stdout\000"
.LASF227:
	.ascii	"ET_GODESTROY\000"
.LASF156:
	.ascii	"clMidGreen\000"
.LASF70:
	.ascii	"_blksize\000"
.LASF57:
	.ascii	"_base\000"
.LASF307:
	.ascii	"GUI_OnPenPressHandler\000"
.LASF137:
	.ascii	"tag_DList\000"
.LASF107:
	.ascii	"_strtok_last\000"
.LASF120:
	.ascii	"_mbrtowc_state\000"
.LASF188:
	.ascii	"tag_VLINDEX\000"
.LASF203:
	.ascii	"TLCONTEXT\000"
.LASF30:
	.ascii	"_flock_t\000"
.LASF98:
	.ascii	"__FILE\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF29:
	.ascii	"_mbstate_t\000"
.LASF166:
	.ascii	"clMedGray\000"
.LASF112:
	.ascii	"_r48\000"
.LASF23:
	.ascii	"wint_t\000"
.LASF299:
	.ascii	"GUI_SetLockState\000"
.LASF33:
	.ascii	"_next\000"
.LASF185:
	.ascii	"tag_RECTITEM\000"
.LASF72:
	.ascii	"_data\000"
.LASF12:
	.ascii	"__uintptr_t\000"
.LASF182:
	.ascii	"pPOINT\000"
.LASF190:
	.ascii	"LCDIF_LAYER1\000"
.LASF191:
	.ascii	"LCDIF_LAYER2\000"
.LASF192:
	.ascii	"LCDIF_LAYER3\000"
.LASF184:
	.ascii	"pRECT\000"
.LASF150:
	.ascii	"clNavy\000"
.LASF189:
	.ascii	"LCDIF_LAYER0\000"
.LASF282:
	.ascii	"Region\000"
.LASF278:
	.ascii	"ObjectPosition\000"
.LASF134:
	.ascii	"Next\000"
.LASF135:
	.ascii	"Data\000"
.LASF113:
	.ascii	"_mblen_state\000"
.LASF4:
	.ascii	"short int\000"
.LASF133:
	.ascii	"Prev\000"
.LASF295:
	.ascii	"GUI_UpdateObjectByRegion\000"
.LASF160:
	.ascii	"clFuchsia\000"
.LASF139:
	.ascii	"Last\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF151:
	.ascii	"clPurple\000"
.LASF244:
	.ascii	"pGUIOBJECT\000"
.LASF277:
	.ascii	"IsStillVisible\000"
.LASF144:
	.ascii	"clBrown\000"
.LASF229:
	.ascii	"ET_ONTIMER\000"
.LASF51:
	.ascii	"_fntypes\000"
.LASF241:
	.ascii	"GO_LABEL\000"
.LASF129:
	.ascii	"true\000"
.LASF44:
	.ascii	"__tm_year\000"
.LASF276:
	.ascii	"pGODESTROYEV\000"
.LASF311:
	.ascii	"ParentToInvalidate\000"
.LASF280:
	.ascii	"GUI_SubTopChildObjectsFromRegion\000"
.LASF62:
	.ascii	"_lbfsize\000"
.LASF81:
	.ascii	"_inc\000"
.LASF54:
	.ascii	"_ind\000"
.LASF219:
	.ascii	"USB_EP2OUT\000"
.LASF230:
	.ascii	"TEVTYPE\000"
.LASF193:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF56:
	.ascii	"__sbuf\000"
.LASF52:
	.ascii	"_is_cxa\000"
.LASF251:
	.ascii	"InheritedVisible\000"
.LASF125:
	.ascii	"_nextf\000"
.LASF294:
	.ascii	"LayerIndex\000"
.LASF138:
	.ascii	"First\000"
.LASF234:
	.ascii	"ParamSz\000"
.LASF32:
	.ascii	"__ULong\000"
.LASF224:
	.ascii	"ET_PENRELEASE\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF194:
	.ascii	"TVLINDEX\000"
.LASF87:
	.ascii	"_result\000"
.LASF292:
	.ascii	"intflags\000"
.LASF159:
	.ascii	"clBlue\000"
.LASF201:
	.ascii	"ColorFormat\000"
.LASF246:
	.ascii	"Position\000"
.LASF253:
	.ascii	"OnRelease\000"
.LASF21:
	.ascii	"_off_t\000"
.LASF105:
	.ascii	"_add\000"
.LASF272:
	.ascii	"UpdateRect\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF41:
	.ascii	"__tm_hour\000"
.LASF312:
	.ascii	"GUI_OnPenReleaseHandler\000"
.LASF222:
	.ascii	"ET_UNKNOWN\000"
.LASF165:
	.ascii	"clCream\000"
.LASF152:
	.ascii	"clTeal\000"
.LASF205:
	.ascii	"ScreenRgn\000"
.LASF121:
	.ascii	"_mbsrtowcs_state\000"
.LASF225:
	.ascii	"ET_PENMOVE\000"
.LASF281:
	.ascii	"PEvent\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF239:
	.ascii	"GO_WINDOW\000"
.LASF297:
	.ascii	"Locked\000"
.LASF49:
	.ascii	"_fnargs\000"
.LASF47:
	.ascii	"__tm_isdst\000"
.LASF293:
	.ascii	"DestroyObject\000"
.LASF40:
	.ascii	"__tm_min\000"
.LASF118:
	.ascii	"_getdate_err\000"
.LASF303:
	.ascii	"tval\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
