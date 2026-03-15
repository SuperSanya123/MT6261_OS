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
	.file	"ringbuf.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.RB_Create,"ax",%progbits
	.align	2
	.global	RB_Create
	.code	16
	.thumb_func
	.type	RB_Create, %function
RB_Create:
.LFB1:
	.file 1 "Source\\System\\ringbuf.c"
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
	.loc 1 26 0
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 28 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L2
	.loc 1 30 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	movs	r0, r3
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 32 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L3
	.loc 1 32 0 discriminator 1
	movs	r3, #0
	b	.L4
.L3:
	.loc 1 34 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	.loc 1 35 0
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 36 0
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
.L2:
	.loc 1 38 0
	ldr	r3, [r7, #12]
.L4:
	.loc 1 39 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	RB_Create, .-RB_Create
	.section	.text.RB_Destroy,"ax",%progbits
	.align	2
	.global	RB_Destroy
	.code	16
	.thumb_func
	.type	RB_Destroy, %function
RB_Destroy:
.LFB2:
	.loc 1 42 0
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
	.loc 1 43 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L6
.LBB2:
	.loc 1 45 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 47 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	IsDynamicMemory
	subs	r3, r0, #0
	beq	.L7
	.loc 1 47 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	free
.L7:
	.loc 1 48 0 is_stmt 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
.L6:
.LBE2:
	.loc 1 50 0
	movs	r3, #0
	.loc 1 51 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	RB_Destroy, .-RB_Destroy
	.section	.text.RB_WriteByte,"ax",%progbits
	.align	2
	.global	RB_WriteByte
	.code	16
	.thumb_func
	.type	RB_WriteByte, %function
RB_WriteByte:
.LFB3:
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
	movs	r2, r1
	adds	r3, r7, #3
	strb	r2, [r3]
	.loc 1 55 0
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 57 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L10
.LBB3:
	.loc 1 59 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 60 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r3, r2, r3
	str	r3, [r7, #12]
	.loc 1 62 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	adds	r2, r7, #3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 64 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r3, r3, #1
	cmp	r2, r3
	bne	.L11
	.loc 1 64 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L12
.L11:
	.loc 1 65 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L12
	.loc 1 65 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L12:
	.loc 1 67 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L13
	.loc 1 67 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	rsbs	r3, r3, #0
	adds	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L13:
	.loc 1 68 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L14
	.loc 1 68 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	rsbs	r3, r3, #0
	adds	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L14:
	.loc 1 70 0 is_stmt 1
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	.loc 1 72 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	__restore_interrupts
.L10:
.LBE3:
	.loc 1 74 0
	ldr	r3, [r7, #20]
	.loc 1 75 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	RB_WriteByte, .-RB_WriteByte
	.section	.text.RB_WriteData,"ax",%progbits
	.align	2
	.global	RB_WriteData
	.code	16
	.thumb_func
	.type	RB_WriteData, %function
RB_WriteData:
.LFB4:
	.loc 1 78 0
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
	.loc 1 79 0
	movs	r3, #0
	str	r3, [r7, #36]
	.loc 1 81 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L17
	.loc 1 81 0 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L17
	.loc 1 81 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L17
.LBB4:
	.loc 1 83 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #32]
	.loc 1 84 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r3, r2, r3
	str	r3, [r7, #28]
	.loc 1 86 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L18
	.loc 1 88 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	ldr	r2, [r7, #8]
	adds	r3, r2, r3
	str	r3, [r7, #8]
	.loc 1 89 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #4]
	.loc 1 90 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	.loc 1 91 0
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
.L18:
	.loc 1 93 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L19
	.loc 1 93 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L19:
	.loc 1 95 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #36]
	.loc 1 96 0
	b	.L20
.L22:
.LBB5:
.LBB6:
	.loc 1 98 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, r2
	bls	.L21
	movs	r3, r2
.L21:
.LBE6:
	str	r3, [r7, #16]
	.loc 1 100 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #8]
	movs	r0, r3
	bl	memcpy
	.loc 1 101 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #16]
	adds	r3, r2, r3
	str	r3, [r7, #8]
	.loc 1 102 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7, #4]
	.loc 1 103 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	.loc 1 104 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L20
	.loc 1 104 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	rsbs	r3, r3, #0
	adds	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L20:
.LBE5:
	.loc 1 96 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L22
	.loc 1 106 0
	ldr	r3, [r7, #32]
	movs	r0, r3
	bl	__restore_interrupts
.L17:
.LBE4:
	.loc 1 108 0
	ldr	r3, [r7, #36]
	.loc 1 109 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #40
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	RB_WriteData, .-RB_WriteData
	.section	.text.RB_ReadByte,"ax",%progbits
	.align	2
	.global	RB_ReadByte
	.code	16
	.thumb_func
	.type	RB_ReadByte, %function
RB_ReadByte:
.LFB5:
	.loc 1 112 0
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
	.loc 1 113 0
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 115 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L25
	.loc 1 115 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L25
.LBB7:
	.loc 1 117 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 119 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L26
.LBB8:
	.loc 1 121 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r3, r2, r3
	str	r3, [r7, #12]
	.loc 1 123 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #4]
	ldrb	r2, [r3]
	ldr	r3, [r7]
	strb	r2, [r3]
	.loc 1 125 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L27
	.loc 1 125 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	rsbs	r3, r3, #0
	adds	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L27:
	.loc 1 126 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L28
	.loc 1 126 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
.L28:
	.loc 1 128 0 is_stmt 1
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L26:
.LBE8:
	.loc 1 130 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	__restore_interrupts
.L25:
.LBE7:
	.loc 1 132 0
	ldr	r3, [r7, #20]
	.loc 1 133 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE5:
	.size	RB_ReadByte, .-RB_ReadByte
	.section	.text.RB_ReadData,"ax",%progbits
	.align	2
	.global	RB_ReadData
	.code	16
	.thumb_func
	.type	RB_ReadData, %function
RB_ReadData:
.LFB6:
	.loc 1 136 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
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
	.loc 1 137 0
	movs	r3, #0
	str	r3, [r7, #52]
	.loc 1 139 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L31
	.loc 1 139 0 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L31
	.loc 1 139 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L31
.LBB9:
	.loc 1 141 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #48]
.LBB10:
	.loc 1 142 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	RB_GetCurrentDataCount
	movs	r3, r0
	str	r3, [r7, #40]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r3, r2
	bls	.L32
	movs	r3, r2
.L32:
.LBE10:
	str	r3, [r7, #36]
	.loc 1 143 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r3, r2, r3
	str	r3, [r7, #32]
	.loc 1 145 0
	ldr	r3, [r7, #36]
	str	r3, [r7, #4]
	.loc 1 146 0
	b	.L33
.L35:
.LBB11:
.LBB12:
	.loc 1 148 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r3, r2
	bls	.L34
	movs	r3, r2
.L34:
.LBE12:
	str	r3, [r7, #20]
	.loc 1 150 0
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	memcpy
	.loc 1 151 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	adds	r3, r2, r3
	str	r3, [r7, #8]
	.loc 1 152 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #4]
	.loc 1 153 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	adds	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	.loc 1 154 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L33
	.loc 1 154 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	rsbs	r3, r3, #0
	adds	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L33:
.LBE11:
	.loc 1 146 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L35
	.loc 1 156 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L36
	.loc 1 156 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
.L36:
	.loc 1 158 0 is_stmt 1
	ldr	r3, [r7, #48]
	movs	r0, r3
	bl	__restore_interrupts
.L31:
.LBE9:
	.loc 1 160 0
	ldr	r3, [r7, #52]
	.loc 1 161 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #56
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE6:
	.size	RB_ReadData, .-RB_ReadData
	.section	.text.RB_GetCurrentDataCount,"ax",%progbits
	.align	2
	.global	RB_GetCurrentDataCount
	.code	16
	.thumb_func
	.type	RB_GetCurrentDataCount, %function
RB_GetCurrentDataCount:
.LFB7:
	.loc 1 164 0
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
	.loc 1 165 0
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 167 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L39
.LBB13:
	.loc 1 169 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 171 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L40
	.loc 1 171 0 discriminator 1
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L41
.L40:
	.loc 1 172 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L42
	.loc 1 172 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	b	.L41
.L42:
	.loc 1 175 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	.loc 1 177 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bge	.L41
	.loc 1 177 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	adds	r3, r2, r3
	str	r3, [r7, #12]
.L41:
	.loc 1 179 0 is_stmt 1
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	__restore_interrupts
.L39:
.LBE13:
	.loc 1 181 0
	ldr	r3, [r7, #12]
	.loc 1 182 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	RB_GetCurrentDataCount, .-RB_GetCurrentDataCount
	.section	.text.RB_GetCurrentFreeSpace,"ax",%progbits
	.align	2
	.global	RB_GetCurrentFreeSpace
	.code	16
	.thumb_func
	.type	RB_GetCurrentFreeSpace, %function
RB_GetCurrentFreeSpace:
.LFB8:
	.loc 1 185 0
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
	.loc 1 188 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L45
.LBB14:
	.loc 1 190 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 192 0
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	RB_GetCurrentDataCount
	movs	r3, r0
	subs	r3, r4, r3
	str	r3, [r7, #12]
	.loc 1 193 0
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	__restore_interrupts
.LBE14:
	b	.L46
.L45:
	.loc 1 195 0
	movs	r3, #0
	str	r3, [r7, #12]
.L46:
	.loc 1 197 0
	ldr	r3, [r7, #12]
	.loc 1 198 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE8:
	.size	RB_GetCurrentFreeSpace, .-RB_GetCurrentFreeSpace
	.section	.text.RB_FlashBuffer,"ax",%progbits
	.align	2
	.global	RB_FlashBuffer
	.code	16
	.thumb_func
	.type	RB_FlashBuffer, %function
RB_FlashBuffer:
.LFB9:
	.loc 1 201 0
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
	.loc 1 202 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L50
.LBB15:
	.loc 1 204 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 206 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	movs	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 207 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 208 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
.L50:
.LBE15:
	.loc 1 210 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE9:
	.size	RB_FlashBuffer, .-RB_FlashBuffer
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source\\System/ringbuf.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4fc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x1d
	.4byte	0x37
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
	.4byte	0x57
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
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0xca
	.4byte	0x90
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x48
	.4byte	0x85
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x5
	.byte	0x4
	.4byte	0x97
	.uleb128 0x6
	.4byte	0x97
	.4byte	0xed
	.uleb128 0x7
	.4byte	0xca
	.byte	0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0xc
	.byte	0x4
	.byte	0x16
	.4byte	0x12a
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x18
	.4byte	0xd8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x19
	.4byte	0xd8
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x1a
	.4byte	0xad
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1b
	.4byte	0xde
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1c
	.4byte	0x135
	.uleb128 0x5
	.byte	0x4
	.4byte	0xed
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x18
	.4byte	0x12a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x171
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x18
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1a
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x29
	.4byte	0x12a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b1
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x29
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x35
	.4byte	0xad
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21b
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x35
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x35
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x37
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3b
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3c
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4d
	.4byte	0xad
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cf
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4d
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4d
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4f
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x53
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x54
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x62
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0xe
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x62
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x62
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x6f
	.4byte	0xad
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x343
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x6f
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6f
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x1
	.byte	0x71
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x75
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xd
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x79
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.byte	0x87
	.4byte	0xad
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42d
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x87
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x87
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1
	.byte	0x87
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x1
	.byte	0x89
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x8d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x8f
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x3ef
	.uleb128 0xe
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x8e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x8e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0x94
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0xe
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x94
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x94
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa3
	.4byte	0xad
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47b
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa3
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa5
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0xa9
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x1
	.byte	0xb8
	.4byte	0xad
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c7
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0xb8
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.ascii	"n\000"
	.byte	0x1
	.byte	0xba
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0xbe
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0xc8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0xc8
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0xcc
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.4byte	0x5c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF43:
	.ascii	"RB_GetCurrentFreeSpace\000"
.LASF4:
	.ascii	"__uint8_t\000"
.LASF37:
	.ascii	"RB_ReadByte\000"
.LASF24:
	.ascii	"pRINGBUF\000"
.LASF16:
	.ascii	"uintptr_t\000"
.LASF5:
	.ascii	"__int32_t\000"
.LASF11:
	.ascii	"__uintptr_t\000"
.LASF39:
	.ascii	"RB_ReadData\000"
.LASF21:
	.ascii	"Tail\000"
.LASF41:
	.ascii	"RB_GetCurrentDataCount\000"
.LASF22:
	.ascii	"BufferSize\000"
.LASF44:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF45:
	.ascii	"Source\\System\\ringbuf.c\000"
.LASF46:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF33:
	.ascii	"Buflimit\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF40:
	.ascii	"NRead\000"
.LASF23:
	.ascii	"Buffer\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF34:
	.ascii	"RB_WriteData\000"
.LASF38:
	.ascii	"RCount\000"
.LASF31:
	.ascii	"Data\000"
.LASF32:
	.ascii	"WCount\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF25:
	.ascii	"RB_Create\000"
.LASF19:
	.ascii	"char\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF42:
	.ascii	"DSize\000"
.LASF30:
	.ascii	"RB_WriteByte\000"
.LASF14:
	.ascii	"int32_t\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF20:
	.ascii	"Head\000"
.LASF9:
	.ascii	"long long int\000"
.LASF48:
	.ascii	"RB_FlashBuffer\000"
.LASF27:
	.ascii	"RingBuffer\000"
.LASF47:
	.ascii	"tag_RINGBUF\000"
.LASF2:
	.ascii	"short int\000"
.LASF29:
	.ascii	"intflags\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF6:
	.ascii	"long int\000"
.LASF26:
	.ascii	"RB_Destroy\000"
.LASF17:
	.ascii	"long double\000"
.LASF36:
	.ascii	"NWrite\000"
.LASF0:
	.ascii	"signed char\000"
.LASF28:
	.ascii	"tmpRingBuf\000"
.LASF35:
	.ascii	"Count\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
