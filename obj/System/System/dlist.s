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
	.file	"dlist.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DL_ItemByData,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	DL_ItemByData, %function
DL_ItemByData:
.LFB1:
	.file 1 "Source\\System\\dlist.c"
	.loc 1 26 0
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
	.loc 1 27 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 28 0
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [r7, #24]
	.loc 1 30 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L2
	.loc 1 30 0 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L2
	.loc 1 32 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	.loc 1 33 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L3
	.loc 1 35 0
	b	.L4
.L7:
	.loc 1 37 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L13
	.loc 1 38 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
.L4:
	.loc 1 35 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L7
	b	.L2
.L3:
.LBB2:
	.loc 1 45 0
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L8
.L10:
	.loc 1 47 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L9
	.loc 1 49 0
	ldr	r3, [r7, #20]
	str	r3, [r7, #24]
	.loc 1 50 0
	b	.L2
.L9:
	.loc 1 52 0 discriminator 2
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	.loc 1 45 0 discriminator 2
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L8:
	.loc 1 45 0 discriminator 1
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L10
	b	.L2
.L13:
.LBE2:
	.loc 1 37 0
	nop
.L2:
	.loc 1 56 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L11
	.loc 1 56 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
.L11:
	.loc 1 58 0
	ldr	r3, [r7, #28]
	.loc 1 59 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	DL_ItemByData, .-DL_ItemByData
	.section	.text.DL_ItemByDataRev,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	DL_ItemByDataRev, %function
DL_ItemByDataRev:
.LFB2:
	.loc 1 62 0
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
	.loc 1 63 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 64 0
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [r7, #24]
	.loc 1 66 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L15
	.loc 1 66 0 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L15
	.loc 1 68 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	.loc 1 69 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L16
	.loc 1 71 0
	b	.L17
.L20:
	.loc 1 73 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L26
	.loc 1 74 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	str	r3, [r7, #28]
.L17:
	.loc 1 71 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L20
	b	.L15
.L16:
.LBB3:
	.loc 1 81 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	subs	r3, r3, #1
	str	r3, [r7, #20]
	b	.L21
.L23:
	.loc 1 83 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L22
	.loc 1 85 0
	ldr	r3, [r7, #20]
	str	r3, [r7, #24]
	.loc 1 86 0
	b	.L15
.L22:
	.loc 1 88 0 discriminator 2
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	.loc 1 81 0 discriminator 2
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L21:
	.loc 1 81 0 discriminator 1
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L23
	b	.L15
.L26:
.LBE3:
	.loc 1 73 0
	nop
.L15:
	.loc 1 92 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L24
	.loc 1 92 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
.L24:
	.loc 1 94 0
	ldr	r3, [r7, #28]
	.loc 1 95 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	DL_ItemByDataRev, .-DL_ItemByDataRev
	.section	.text.DL_IndexOfItem,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	DL_IndexOfItem, %function
DL_IndexOfItem:
.LFB3:
	.loc 1 98 0
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
	.loc 1 99 0
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 100 0
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [r7, #12]
	.loc 1 102 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L28
	.loc 1 102 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L28
	.loc 1 104 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	.loc 1 105 0
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L29
.L31:
	.loc 1 107 0
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L30
	.loc 1 109 0
	ldr	r3, [r7, #16]
	str	r3, [r7, #12]
	.loc 1 110 0
	b	.L28
.L30:
	.loc 1 112 0 discriminator 2
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	.loc 1 105 0 discriminator 2
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L29:
	.loc 1 105 0 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L31
.L28:
	.loc 1 115 0
	ldr	r3, [r7, #12]
	.loc 1 116 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	DL_IndexOfItem, .-DL_IndexOfItem
	.section	.text.DL_ItemByIndex,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	DL_ItemByIndex, %function
DL_ItemByIndex:
.LFB4:
	.loc 1 119 0
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
	.loc 1 121 0
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 1 123 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L34
	.loc 1 123 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L34
	.loc 1 125 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsrs	r2, r3, #1
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L35
	.loc 1 127 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 128 0
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L36
.L40:
	.loc 1 129 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L37
	.loc 1 129 0 discriminator 1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	b	.L45
.L37:
	.loc 1 130 0
	movs	r3, #0
	b	.L39
.L45:
	.loc 1 128 0 discriminator 2
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L36:
	.loc 1 128 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L40
	b	.L34
.L35:
	.loc 1 134 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	.loc 1 135 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	subs	r3, r3, #1
	str	r3, [r7, #12]
	b	.L41
.L44:
	.loc 1 136 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L42
	.loc 1 136 0 discriminator 1
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	b	.L46
.L42:
	.loc 1 137 0
	movs	r3, #0
	b	.L39
.L46:
	.loc 1 135 0 discriminator 2
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L41:
	.loc 1 135 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L44
.L34:
	.loc 1 140 0 is_stmt 1
	ldr	r3, [r7, #8]
.L39:
	.loc 1 141 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	DL_ItemByIndex, .-DL_ItemByIndex
	.section	.text.DL_Create,"ax",%progbits
	.align	2
	.global	DL_Create
	.code	16
	.thumb_func
	.type	DL_Create, %function
DL_Create:
.LFB5:
	.loc 1 144 0
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
	.loc 1 145 0
	movs	r0, #12
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #4]
	.loc 1 147 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L48
	.loc 1 147 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r2, #12
	movs	r1, #0
	movs	r0, r3
	bl	memset
.L48:
	.loc 1 149 0
	ldr	r3, [r7, #4]
	.loc 1 150 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE5:
	.size	DL_Create, .-DL_Create
	.section	.text.DL_Delete,"ax",%progbits
	.align	2
	.global	DL_Delete
	.code	16
	.thumb_func
	.type	DL_Delete, %function
DL_Delete:
.LFB6:
	.loc 1 153 0
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
	movs	r2, r1
	adds	r3, r7, #3
	strb	r2, [r3]
	.loc 1 157 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L51
	.loc 1 159 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 161 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	.loc 1 162 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L57
	.loc 1 162 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	movs	r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	beq	.L57
	.loc 1 164 0 is_stmt 1
	b	.L53
.L55:
	.loc 1 166 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	movs	r0, r3
	bl	IsDynamicMemory
	subs	r3, r0, #0
	beq	.L54
	.loc 1 166 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	movs	r0, r3
	bl	free
.L54:
	.loc 1 167 0 is_stmt 1
	ldr	r3, [r7, #20]
	str	r3, [r7, #12]
	.loc 1 168 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	.loc 1 169 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	free
.L53:
	.loc 1 164 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L55
	.loc 1 162 0
	b	.L56
.L58:
	.loc 1 176 0
	ldr	r3, [r7, #20]
	str	r3, [r7, #12]
	.loc 1 177 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	.loc 1 178 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	free
.L57:
	.loc 1 174 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L58
.L56:
	.loc 1 181 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	IsDynamicMemory
	subs	r3, r0, #0
	beq	.L59
	.loc 1 181 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	free
	b	.L60
.L59:
	.loc 1 182 0 is_stmt 1
	ldr	r3, [r7, #4]
	movs	r2, #12
	movs	r1, #0
	movs	r0, r3
	bl	__secure_memset
.L60:
	.loc 1 184 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	__restore_interrupts
.L51:
	.loc 1 186 0
	movs	r3, #0
	.loc 1 187 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE6:
	.size	DL_Delete, .-DL_Delete
	.section	.text.DL_Clear,"ax",%progbits
	.align	2
	.global	DL_Clear
	.code	16
	.thumb_func
	.type	DL_Clear, %function
DL_Clear:
.LFB7:
	.loc 1 190 0
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
	movs	r2, r1
	adds	r3, r7, #3
	strb	r2, [r3]
	.loc 1 194 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L63
	.loc 1 196 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 198 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	.loc 1 199 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L69
	.loc 1 199 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	movs	r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	beq	.L69
	.loc 1 201 0 is_stmt 1
	b	.L65
.L67:
	.loc 1 203 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	movs	r0, r3
	bl	IsDynamicMemory
	subs	r3, r0, #0
	beq	.L66
	.loc 1 203 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	movs	r0, r3
	bl	free
.L66:
	.loc 1 204 0 is_stmt 1
	ldr	r3, [r7, #20]
	str	r3, [r7, #12]
	.loc 1 205 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	.loc 1 206 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	free
.L65:
	.loc 1 201 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L67
	.loc 1 199 0
	b	.L68
.L70:
	.loc 1 213 0
	ldr	r3, [r7, #20]
	str	r3, [r7, #12]
	.loc 1 214 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	.loc 1 215 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	free
.L69:
	.loc 1 211 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L70
.L68:
	.loc 1 219 0
	ldr	r3, [r7, #4]
	movs	r2, #12
	movs	r1, #0
	movs	r0, r3
	bl	__secure_memset
	.loc 1 221 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 222 0
	movs	r3, #1
	b	.L71
.L63:
	.loc 1 224 0
	movs	r3, #0
.L71:
	.loc 1 225 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	DL_Clear, .-DL_Clear
	.section	.text.DL_GetItemsCount,"ax",%progbits
	.align	2
	.global	DL_GetItemsCount
	.code	16
	.thumb_func
	.type	DL_GetItemsCount, %function
DL_GetItemsCount:
.LFB8:
	.loc 1 228 0
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
	.loc 1 231 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L73
.LBB4:
	.loc 1 233 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 235 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	.loc 1 236 0
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	__restore_interrupts
.LBE4:
	b	.L74
.L73:
	.loc 1 238 0
	movs	r3, #0
	str	r3, [r7, #12]
.L74:
	.loc 1 240 0
	ldr	r3, [r7, #12]
	.loc 1 241 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE8:
	.size	DL_GetItemsCount, .-DL_GetItemsCount
	.section	.text.DL_GetFirstItem,"ax",%progbits
	.align	2
	.global	DL_GetFirstItem
	.code	16
	.thumb_func
	.type	DL_GetFirstItem, %function
DL_GetFirstItem:
.LFB9:
	.loc 1 244 0
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
	.loc 1 245 0
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 247 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L77
.LBB5:
	.loc 1 249 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 251 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 252 0
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	__restore_interrupts
.L77:
.LBE5:
	.loc 1 254 0
	ldr	r3, [r7, #12]
	.loc 1 255 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE9:
	.size	DL_GetFirstItem, .-DL_GetFirstItem
	.section	.text.DL_GetLastItem,"ax",%progbits
	.align	2
	.global	DL_GetLastItem
	.code	16
	.thumb_func
	.type	DL_GetLastItem, %function
DL_GetLastItem:
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
.LBB6:
	.loc 1 263 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 265 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	.loc 1 266 0
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	__restore_interrupts
.L80:
.LBE6:
	.loc 1 268 0
	ldr	r3, [r7, #12]
	.loc 1 269 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE10:
	.size	DL_GetLastItem, .-DL_GetLastItem
	.section	.text.DL_GetPrevItem,"ax",%progbits
	.align	2
	.global	DL_GetPrevItem
	.code	16
	.thumb_func
	.type	DL_GetPrevItem, %function
DL_GetPrevItem:
.LFB11:
	.loc 1 272 0
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
	.loc 1 273 0
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 275 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L83
.LBB7:
	.loc 1 277 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 279 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 280 0
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	__restore_interrupts
.L83:
.LBE7:
	.loc 1 282 0
	ldr	r3, [r7, #12]
	.loc 1 283 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE11:
	.size	DL_GetPrevItem, .-DL_GetPrevItem
	.section	.text.DL_GetNextItem,"ax",%progbits
	.align	2
	.global	DL_GetNextItem
	.code	16
	.thumb_func
	.type	DL_GetNextItem, %function
DL_GetNextItem:
.LFB12:
	.loc 1 286 0
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
	.loc 1 287 0
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 289 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L86
.LBB8:
	.loc 1 291 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 293 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	.loc 1 294 0
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	__restore_interrupts
.L86:
.LBE8:
	.loc 1 296 0
	ldr	r3, [r7, #12]
	.loc 1 297 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE12:
	.size	DL_GetNextItem, .-DL_GetNextItem
	.section	.text.DL_GetItemIndex,"ax",%progbits
	.align	2
	.global	DL_GetItemIndex
	.code	16
	.thumb_func
	.type	DL_GetItemIndex, %function
DL_GetItemIndex:
.LFB13:
	.loc 1 300 0
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
	.loc 1 301 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 304 0
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_IndexOfItem
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 305 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 307 0
	ldr	r3, [r7, #8]
	.loc 1 308 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE13:
	.size	DL_GetItemIndex, .-DL_GetItemIndex
	.section	.text.DL_FindItemByData,"ax",%progbits
	.align	2
	.global	DL_FindItemByData
	.code	16
	.thumb_func
	.type	DL_FindItemByData, %function
DL_FindItemByData:
.LFB14:
	.loc 1 311 0
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
	.loc 1 312 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 315 0
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	DL_ItemByData
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 316 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 318 0
	ldr	r3, [r7, #16]
	.loc 1 319 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE14:
	.size	DL_FindItemByData, .-DL_FindItemByData
	.section	.text.DL_FindItemByDataReverse,"ax",%progbits
	.align	2
	.global	DL_FindItemByDataReverse
	.code	16
	.thumb_func
	.type	DL_FindItemByDataReverse, %function
DL_FindItemByDataReverse:
.LFB15:
	.loc 1 322 0
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
	.loc 1 323 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 326 0
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	DL_ItemByDataRev
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 327 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 329 0
	ldr	r3, [r7, #16]
	.loc 1 330 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE15:
	.size	DL_FindItemByDataReverse, .-DL_FindItemByDataReverse
	.section	.text.DL_FindItemByIndex,"ax",%progbits
	.align	2
	.global	DL_FindItemByIndex
	.code	16
	.thumb_func
	.type	DL_FindItemByIndex, %function
DL_FindItemByIndex:
.LFB16:
	.loc 1 333 0
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
	.loc 1 334 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 337 0
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_ItemByIndex
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 338 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 340 0
	ldr	r3, [r7, #8]
	.loc 1 341 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE16:
	.size	DL_FindItemByIndex, .-DL_FindItemByIndex
	.section	.text.DL_AddItem,"ax",%progbits
	.align	2
	.global	DL_AddItem
	.code	16
	.thumb_func
	.type	DL_AddItem, %function
DL_AddItem:
.LFB17:
	.loc 1 344 0
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
	.loc 1 348 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L97
	.loc 1 348 0 discriminator 1
	movs	r3, #0
	b	.L98
.L97:
	.loc 1 350 0
	movs	r0, #12
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 351 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L99
	.loc 1 353 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 355 0
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	.loc 1 356 0
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 357 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L100
	.loc 1 359 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	.loc 1 360 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	.loc 1 361 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	b	.L101
.L100:
	.loc 1 365 0
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 366 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	.loc 1 367 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
.L101:
	.loc 1 369 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 370 0
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	__restore_interrupts
.L99:
	.loc 1 372 0
	ldr	r3, [r7, #12]
.L98:
	.loc 1 373 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE17:
	.size	DL_AddItem, .-DL_AddItem
	.section	.text.DL_AddItemPtr,"ax",%progbits
	.align	2
	.global	DL_AddItemPtr
	.code	16
	.thumb_func
	.type	DL_AddItemPtr, %function
DL_AddItemPtr:
.LFB18:
	.loc 1 376 0
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
	.loc 1 377 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L103
	.loc 1 377 0 discriminator 2
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L104
.L103:
	.loc 1 377 0 discriminator 3
	movs	r3, #0
	b	.L105
.L104:
.LBB9:
	.loc 1 380 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 382 0
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 384 0
	ldr	r3, [r7]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	.loc 1 386 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L106
	.loc 1 388 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	str	r2, [r3]
	.loc 1 389 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	.loc 1 390 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	b	.L107
.L106:
	.loc 1 394 0
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 395 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	.loc 1 396 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
.L107:
	.loc 1 398 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 399 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 401 0
	movs	r3, #1
.L105:
.LBE9:
	.loc 1 403 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE18:
	.size	DL_AddItemPtr, .-DL_AddItemPtr
	.section	.text.DL_AddItemAtIndex,"ax",%progbits
	.align	2
	.global	DL_AddItemAtIndex
	.code	16
	.thumb_func
	.type	DL_AddItemAtIndex, %function
DL_AddItemAtIndex:
.LFB19:
	.loc 1 406 0
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
	.loc 1 408 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 410 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L109
	.loc 1 410 0 discriminator 1
	movs	r3, #0
	b	.L110
.L109:
	.loc 1 412 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 413 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L111
	.loc 1 415 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItem
	movs	r3, r0
	str	r3, [r7, #28]
	b	.L112
.L111:
	.loc 1 419 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	DL_ItemByIndex
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 420 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L112
	.loc 1 422 0
	movs	r0, #12
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #28]
	.loc 1 423 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L112
	.loc 1 425 0
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 427 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L113
	.loc 1 428 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r2, [r7, #28]
	str	r2, [r3, #4]
	b	.L114
.L113:
	.loc 1 429 0
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3]
.L114:
	.loc 1 431 0
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	str	r2, [r3]
	.loc 1 432 0
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	.loc 1 433 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	.loc 1 435 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
.L112:
	.loc 1 439 0
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 441 0
	ldr	r3, [r7, #28]
.L110:
	.loc 1 442 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE19:
	.size	DL_AddItemAtIndex, .-DL_AddItemAtIndex
	.section	.text.DL_AddItemAtIndexPtr,"ax",%progbits
	.align	2
	.global	DL_AddItemAtIndexPtr
	.code	16
	.thumb_func
	.type	DL_AddItemAtIndexPtr, %function
DL_AddItemAtIndexPtr:
.LFB20:
	.loc 1 445 0
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
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 447 0
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 449 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L116
	.loc 1 449 0 discriminator 1
	movs	r3, #0
	b	.L117
.L116:
	.loc 1 451 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 452 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L118
	.loc 1 454 0
	movs	r3, #31
	adds	r4, r7, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	movs	r3, r0
	strb	r3, [r4]
	b	.L119
.L118:
.LBB10:
	.loc 1 458 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	DL_ItemByIndex
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 460 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L119
	.loc 1 462 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 464 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L120
	.loc 1 465 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	b	.L121
.L120:
	.loc 1 466 0
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
.L121:
	.loc 1 468 0
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 469 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	.loc 1 470 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 1 472 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	.loc 1 473 0
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.L119:
.LBE10:
	.loc 1 476 0
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 478 0
	movs	r3, #31
	adds	r3, r7, r3
	ldrb	r3, [r3]
.L117:
	.loc 1 479 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE20:
	.size	DL_AddItemAtIndexPtr, .-DL_AddItemAtIndexPtr
	.section	.text.DL_InsertItemBefore,"ax",%progbits
	.align	2
	.global	DL_InsertItemBefore
	.code	16
	.thumb_func
	.type	DL_InsertItemBefore, %function
DL_InsertItemBefore:
.LFB21:
	.loc 1 483 0
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
	.loc 1 487 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L123
	.loc 1 487 0 discriminator 1
	movs	r3, #0
	b	.L124
.L123:
	.loc 1 488 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L125
	.loc 1 488 0 discriminator 1
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItem
	movs	r3, r0
	b	.L124
.L125:
	.loc 1 490 0
	movs	r0, #12
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 491 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L126
	.loc 1 493 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 495 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 496 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	.loc 1 497 0
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	str	r2, [r3]
	.loc 1 498 0
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	.loc 1 500 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L127
	.loc 1 500 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	b	.L128
.L127:
	.loc 1 501 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
.L128:
	.loc 1 503 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	.loc 1 504 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	__restore_interrupts
.L126:
	.loc 1 506 0
	ldr	r3, [r7, #20]
.L124:
	.loc 1 507 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE21:
	.size	DL_InsertItemBefore, .-DL_InsertItemBefore
	.section	.text.DL_InsertItemBeforePtr,"ax",%progbits
	.align	2
	.global	DL_InsertItemBeforePtr
	.code	16
	.thumb_func
	.type	DL_InsertItemBeforePtr, %function
DL_InsertItemBeforePtr:
.LFB22:
	.loc 1 510 0
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
	.loc 1 513 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L130
	.loc 1 513 0 discriminator 1
	movs	r3, #0
	b	.L131
.L130:
	.loc 1 514 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L132
	.loc 1 514 0 discriminator 1
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	movs	r3, r0
	b	.L131
.L132:
	.loc 1 516 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 519 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 520 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	.loc 1 521 0
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 522 0
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 1 524 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L133
	.loc 1 524 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	b	.L134
.L133:
	.loc 1 525 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
.L134:
	.loc 1 527 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	.loc 1 528 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 530 0
	movs	r3, #1
.L131:
	.loc 1 531 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE22:
	.size	DL_InsertItemBeforePtr, .-DL_InsertItemBeforePtr
	.section	.text.DL_InsertItemAfter,"ax",%progbits
	.align	2
	.global	DL_InsertItemAfter
	.code	16
	.thumb_func
	.type	DL_InsertItemAfter, %function
DL_InsertItemAfter:
.LFB23:
	.loc 1 534 0
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
	.loc 1 538 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L136
	.loc 1 538 0 discriminator 1
	movs	r3, #0
	b	.L137
.L136:
	.loc 1 539 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L138
	.loc 1 539 0 discriminator 1
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItem
	movs	r3, r0
	b	.L137
.L138:
	.loc 1 541 0
	movs	r0, #12
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 542 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L139
	.loc 1 544 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 546 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 547 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	.loc 1 548 0
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	.loc 1 549 0
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	.loc 1 551 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L140
	.loc 1 551 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	b	.L141
.L140:
	.loc 1 552 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3]
.L141:
	.loc 1 554 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	.loc 1 555 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	__restore_interrupts
.L139:
	.loc 1 557 0
	ldr	r3, [r7, #20]
.L137:
	.loc 1 558 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE23:
	.size	DL_InsertItemAfter, .-DL_InsertItemAfter
	.section	.text.DL_InsertItemAfterPtr,"ax",%progbits
	.align	2
	.global	DL_InsertItemAfterPtr
	.code	16
	.thumb_func
	.type	DL_InsertItemAfterPtr, %function
DL_InsertItemAfterPtr:
.LFB24:
	.loc 1 561 0
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
	.loc 1 564 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L143
	.loc 1 564 0 discriminator 1
	movs	r3, #0
	b	.L144
.L143:
	.loc 1 565 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L145
	.loc 1 565 0 discriminator 1
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	movs	r3, r0
	b	.L144
.L145:
	.loc 1 567 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 570 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 571 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	.loc 1 572 0
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	.loc 1 573 0
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	.loc 1 575 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L146
	.loc 1 575 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	b	.L147
.L146:
	.loc 1 576 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	str	r2, [r3]
.L147:
	.loc 1 578 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	.loc 1 579 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 581 0
	movs	r3, #1
.L144:
	.loc 1 582 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE24:
	.size	DL_InsertItemAfterPtr, .-DL_InsertItemAfterPtr
	.section	.text.DL_ExcludeItem,"ax",%progbits
	.align	2
	.global	DL_ExcludeItem
	.code	16
	.thumb_func
	.type	DL_ExcludeItem, %function
DL_ExcludeItem:
.LFB25:
	.loc 1 585 0
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
	.loc 1 586 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 587 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 589 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L149
	.loc 1 589 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L149
	.loc 1 591 0
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L150
	.loc 1 592 0
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	b	.L151
.L150:
	.loc 1 593 0
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L151:
	.loc 1 595 0
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L152
	.loc 1 596 0
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r2, [r7]
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L153
.L152:
	.loc 1 597 0
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L153:
	.loc 1 599 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 600 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.L149:
	.loc 1 602 0
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 604 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 605 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE25:
	.size	DL_ExcludeItem, .-DL_ExcludeItem
	.section	.text.DL_DeleteItem,"ax",%progbits
	.align	2
	.global	DL_DeleteItem
	.code	16
	.thumb_func
	.type	DL_DeleteItem, %function
DL_DeleteItem:
.LFB26:
	.loc 1 608 0
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
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 610 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 612 0
	movs	r3, #11
	adds	r4, r7, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_ExcludeItem
	movs	r3, r0
	strb	r3, [r4]
	movs	r3, #11
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L156
	.loc 1 613 0
	ldr	r3, [r7]
	movs	r0, r3
	bl	free
.L156:
	.loc 1 614 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 616 0
	movs	r3, #11
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 617 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE26:
	.size	DL_DeleteItem, .-DL_DeleteItem
	.section	.text.DL_DeleteItemByData,"ax",%progbits
	.align	2
	.global	DL_DeleteItemByData
	.code	16
	.thumb_func
	.type	DL_DeleteItemByData, %function
DL_DeleteItemByData:
.LFB27:
	.loc 1 620 0
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
	.loc 1 621 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 622 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 625 0
	ldr	r1, [r7]
	ldr	r3, [r7, #4]
	movs	r2, #0
	movs	r0, r3
	bl	DL_ItemByData
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 626 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L159
	.loc 1 628 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L160
	.loc 1 629 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	b	.L161
.L160:
	.loc 1 630 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L161:
	.loc 1 632 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L162
	.loc 1 633 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L163
.L162:
	.loc 1 634 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L163:
	.loc 1 636 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 637 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	free
	.loc 1 638 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.L159:
	.loc 1 640 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 642 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 643 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE27:
	.size	DL_DeleteItemByData, .-DL_DeleteItemByData
	.section	.text.DL_DeleteItemByIndex,"ax",%progbits
	.align	2
	.global	DL_DeleteItemByIndex
	.code	16
	.thumb_func
	.type	DL_DeleteItemByIndex, %function
DL_DeleteItemByIndex:
.LFB28:
	.loc 1 646 0
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
	.loc 1 647 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 648 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 651 0
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_ItemByIndex
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 652 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L166
	.loc 1 654 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L167
	.loc 1 655 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	b	.L168
.L167:
	.loc 1 656 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L168:
	.loc 1 658 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L169
	.loc 1 659 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L170
.L169:
	.loc 1 660 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L170:
	.loc 1 662 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 663 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	free
	.loc 1 664 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.L166:
	.loc 1 666 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 668 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 669 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE28:
	.size	DL_DeleteItemByIndex, .-DL_DeleteItemByIndex
	.section	.text.DL_DeleteFirstItem,"ax",%progbits
	.align	2
	.global	DL_DeleteFirstItem
	.code	16
	.thumb_func
	.type	DL_DeleteFirstItem, %function
DL_DeleteFirstItem:
.LFB29:
	.loc 1 672 0
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
	.loc 1 673 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 675 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L173
.LBB11:
	.loc 1 677 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 680 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 681 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L174
	.loc 1 683 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 685 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L175
	.loc 1 686 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [r3]
	b	.L176
.L175:
	.loc 1 687 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
.L176:
	.loc 1 689 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 690 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	free
	.loc 1 691 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.L174:
	.loc 1 693 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	__restore_interrupts
.L173:
.LBE11:
	.loc 1 695 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 696 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE29:
	.size	DL_DeleteFirstItem, .-DL_DeleteFirstItem
	.section	.text.DL_DeleteLastItem,"ax",%progbits
	.align	2
	.global	DL_DeleteLastItem
	.code	16
	.thumb_func
	.type	DL_DeleteLastItem, %function
DL_DeleteLastItem:
.LFB30:
	.loc 1 699 0
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
	.loc 1 700 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 702 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L179
.LBB12:
	.loc 1 704 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 707 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	.loc 1 708 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L180
	.loc 1 710 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	.loc 1 712 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L181
	.loc 1 713 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #4]
	b	.L182
.L181:
	.loc 1 714 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
.L182:
	.loc 1 716 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 717 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	free
	.loc 1 718 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.L180:
	.loc 1 720 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	__restore_interrupts
.L179:
.LBE12:
	.loc 1 722 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 723 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE30:
	.size	DL_DeleteLastItem, .-DL_DeleteLastItem
	.section	.text.DL_MoveItemToIndex,"ax",%progbits
	.align	2
	.global	DL_MoveItemToIndex
	.code	16
	.thumb_func
	.type	DL_MoveItemToIndex, %function
DL_MoveItemToIndex:
.LFB31:
	.loc 1 726 0
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
	.loc 1 727 0
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 728 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 729 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	DL_IndexOfItem
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 731 0
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	beq	.L185
	.loc 1 733 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L186
	.loc 1 733 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L186:
	.loc 1 734 0 is_stmt 1
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L187
.LBB13:
	.loc 1 736 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	DL_ItemByIndex
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 738 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L187
	.loc 1 741 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L188
	.loc 1 742 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	b	.L189
.L188:
	.loc 1 743 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L189:
	.loc 1 745 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L190
	.loc 1 746 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L191
.L190:
	.loc 1 747 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L191:
	.loc 1 750 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bcs	.L192
	.loc 1 752 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L193
	.loc 1 753 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	b	.L194
.L193:
	.loc 1 754 0
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
.L194:
	.loc 1 756 0
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 757 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	.loc 1 758 0
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	b	.L187
.L192:
	.loc 1 762 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L195
	.loc 1 763 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	b	.L196
.L195:
	.loc 1 764 0
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
.L196:
	.loc 1 766 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	.loc 1 767 0
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	.loc 1 768 0
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
.L187:
.LBE13:
	.loc 1 772 0
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.L185:
	.loc 1 774 0
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 776 0
	movs	r3, #31
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 777 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE31:
	.size	DL_MoveItemToIndex, .-DL_MoveItemToIndex
	.section	.text.DL_ReplaceItemData,"ax",%progbits
	.align	2
	.global	DL_ReplaceItemData
	.code	16
	.thumb_func
	.type	DL_ReplaceItemData, %function
DL_ReplaceItemData:
.LFB32:
	.loc 1 780 0
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
	.loc 1 781 0
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 785 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L199
	.loc 1 785 0 discriminator 1
	movs	r3, #0
	b	.L200
.L199:
	.loc 1 787 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 788 0
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r2, #0
	movs	r0, r3
	bl	DL_ItemByData
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 789 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L201
	.loc 1 791 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 792 0
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.L201:
	.loc 1 794 0
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 796 0
	movs	r3, #31
	adds	r3, r7, r3
	ldrb	r3, [r3]
.L200:
	.loc 1 797 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE32:
	.size	DL_ReplaceItemData, .-DL_ReplaceItemData
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\System/dlist.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd4d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.4byte	.LASF79
	.4byte	.LASF80
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x3f
	.4byte	0x4c
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
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xca
	.4byte	0x85
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x48
	.4byte	0x7a
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
	.4byte	0x2c
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
	.4byte	.LASF25
	.byte	0xc
	.byte	0x5
	.byte	0x18
	.4byte	0x119
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x1a
	.4byte	0x119
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x1b
	.4byte	0x119
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1c
	.4byte	0xbb
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x17
	.4byte	0x124
	.uleb128 0xa
	.byte	0x4
	.4byte	0xe8
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0xc
	.byte	0x5
	.byte	0x1f
	.4byte	0x15b
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x21
	.4byte	0x119
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x22
	.4byte	0x119
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0x23
	.4byte	0x97
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x24
	.4byte	0x166
	.uleb128 0xa
	.byte	0x4
	.4byte	0x12a
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1
	.byte	0x19
	.4byte	0x119
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e2
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x19
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x19
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x19
	.4byte	0x1e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1b
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1c
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xe
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2b
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8c
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3d
	.4byte	0x119
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25e
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3d
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3d
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x3d
	.4byte	0x1e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3f
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x40
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xe
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4f
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x61
	.4byte	0x8c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bc
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x61
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x1
	.byte	0x61
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x63
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x64
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x64
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x76
	.4byte	0x119
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30c
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x76
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x76
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x78
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x79
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x8f
	.4byte	0x15b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x334
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0x91
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0x98
	.4byte	0x15b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x394
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x98
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x1
	.byte	0x98
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.byte	0x9a
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9b
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x1
	.byte	0x9b
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0xbd
	.4byte	0xdd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f4
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0xbd
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x1
	.byte	0xbd
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.byte	0xbf
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc0
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x1
	.byte	0xc0
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe3
	.4byte	0x97
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x440
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0xe3
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.ascii	"n\000"
	.byte	0x1
	.byte	0xe5
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.byte	0xe9
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0xf3
	.4byte	0x119
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48e
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0xf3
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0xf5
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.byte	0xf9
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x101
	.4byte	0x119
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e0
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x101
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x103
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x107
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x10f
	.4byte	0x119
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x532
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x10f
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x111
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x115
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x11d
	.4byte	0x119
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x584
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x11d
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x11f
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x123
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x12b
	.4byte	0x8c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5db
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x12b
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x12b
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x12d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x12e
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x136
	.4byte	0x119
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x641
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x136
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x136
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x136
	.4byte	0x1e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x138
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x139
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x141
	.4byte	0x119
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a7
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x141
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x141
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x141
	.4byte	0x1e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x143
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x144
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x14c
	.4byte	0x119
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fe
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x14c
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x14c
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x14e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x14f
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x157
	.4byte	0x119
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x755
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x157
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x157
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x159
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x15a
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x177
	.4byte	0xdd
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a7
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x177
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x177
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x17c
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x195
	.4byte	0x119
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81c
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x195
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x195
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x195
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x197
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x198
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x198
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1bc
	.4byte	0xdd
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89b
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1be
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xe
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x119
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x901
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x1e2
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1fd
	.4byte	0xdd
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x958
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x215
	.4byte	0x119
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9be
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x215
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x215
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x215
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x217
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x218
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x230
	.4byte	0xdd
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa15
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x230
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x230
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x230
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x232
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x248
	.4byte	0xdd
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6c
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x248
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x248
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x24a
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x24b
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x25f
	.4byte	0xdd
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac3
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x25f
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x25f
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x261
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x262
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x26b
	.4byte	0xdd
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb29
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x26b
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x26b
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x26d
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x26e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x26f
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x285
	.4byte	0xdd
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8f
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x285
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x285
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x287
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x288
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x289
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x29f
	.4byte	0xdd
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf0
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x29f
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x2a1
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x2a6
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x2ba
	.4byte	0xdd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc51
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x2bc
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x2d5
	.4byte	0xdd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcdf
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x2d5
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x2d5
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x2d5
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x2d7
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x2d8
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x30b
	.4byte	0xdd
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x30b
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x30b
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x30b
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x30d
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x30e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x30f
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x114
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
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
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF45:
	.ascii	"tmpItemToFree\000"
.LASF32:
	.ascii	"Index\000"
.LASF41:
	.ascii	"DL_Create\000"
.LASF43:
	.ascii	"FreeData\000"
.LASF2:
	.ascii	"short int\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF74:
	.ascii	"DL_MoveItemToIndex\000"
.LASF49:
	.ascii	"DL_GetLastItem\000"
.LASF77:
	.ascii	"NewData\000"
.LASF30:
	.ascii	"pDLIST\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF54:
	.ascii	"DL_FindItemByData\000"
.LASF53:
	.ascii	"DL_GetItemIndex\000"
.LASF75:
	.ascii	"OldIndex\000"
.LASF60:
	.ascii	"NewIndexItem\000"
.LASF34:
	.ascii	"Result\000"
.LASF14:
	.ascii	"uintptr_t\000"
.LASF46:
	.ascii	"DL_Clear\000"
.LASF79:
	.ascii	"Source\\System\\dlist.c\000"
.LASF28:
	.ascii	"Last\000"
.LASF15:
	.ascii	"long double\000"
.LASF8:
	.ascii	"long long int\000"
.LASF42:
	.ascii	"DL_Delete\000"
.LASF4:
	.ascii	"long int\000"
.LASF33:
	.ascii	"tmpItem\000"
.LASF66:
	.ascii	"DL_InsertItemAfter\000"
.LASF59:
	.ascii	"DL_AddItemAtIndex\000"
.LASF81:
	.ascii	"DL_ReplaceItemData\000"
.LASF47:
	.ascii	"DL_GetItemsCount\000"
.LASF23:
	.ascii	"Data\000"
.LASF58:
	.ascii	"DL_AddItemPtr\000"
.LASF52:
	.ascii	"DL_GetNextItem\000"
.LASF61:
	.ascii	"DL_AddItemAtIndexPtr\000"
.LASF76:
	.ascii	"OldData\000"
.LASF67:
	.ascii	"DL_InsertItemAfterPtr\000"
.LASF13:
	.ascii	"uint32_t\000"
.LASF57:
	.ascii	"DL_AddItem\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF56:
	.ascii	"DL_FindItemByIndex\000"
.LASF65:
	.ascii	"BaseItem\000"
.LASF68:
	.ascii	"DL_ExcludeItem\000"
.LASF0:
	.ascii	"signed char\000"
.LASF50:
	.ascii	"DL_GetPrevItem\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF25:
	.ascii	"tag_ListItem\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF18:
	.ascii	"false\000"
.LASF70:
	.ascii	"DL_DeleteItemByData\000"
.LASF38:
	.ascii	"Item\000"
.LASF62:
	.ascii	"ItemToInsert\000"
.LASF51:
	.ascii	"LItem\000"
.LASF31:
	.ascii	"DList\000"
.LASF69:
	.ascii	"DL_DeleteItem\000"
.LASF44:
	.ascii	"intflags\000"
.LASF17:
	.ascii	"char\000"
.LASF21:
	.ascii	"Prev\000"
.LASF12:
	.ascii	"int32_t\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF36:
	.ascii	"DL_ItemByDataRev\000"
.LASF19:
	.ascii	"true\000"
.LASF22:
	.ascii	"Next\000"
.LASF71:
	.ascii	"DL_DeleteItemByIndex\000"
.LASF29:
	.ascii	"Count\000"
.LASF80:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF10:
	.ascii	"__uintptr_t\000"
.LASF27:
	.ascii	"First\000"
.LASF35:
	.ascii	"DL_ItemByData\000"
.LASF39:
	.ascii	"DL_ItemByIndex\000"
.LASF64:
	.ascii	"DL_InsertItemBeforePtr\000"
.LASF5:
	.ascii	"__int32_t\000"
.LASF37:
	.ascii	"DL_IndexOfItem\000"
.LASF24:
	.ascii	"pDLITEM\000"
.LASF73:
	.ascii	"DL_DeleteLastItem\000"
.LASF26:
	.ascii	"tag_DList\000"
.LASF48:
	.ascii	"DL_GetFirstItem\000"
.LASF63:
	.ascii	"DL_InsertItemBefore\000"
.LASF78:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF40:
	.ascii	"tmpDList\000"
.LASF20:
	.ascii	"boolean\000"
.LASF72:
	.ascii	"DL_DeleteFirstItem\000"
.LASF55:
	.ascii	"DL_FindItemByDataReverse\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
