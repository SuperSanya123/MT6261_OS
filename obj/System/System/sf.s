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
	.file	"sf.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	FlashConfig,4,4
	.comm	FlashCapacity,4,4
	.comm	SFI_DeviceCmdAddrWrite,4,4
	.section	.ramfunc,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	SF_DevWaitReady, %function
SF_DevWaitReady:
.LFB1:
	.file 1 "Source\\System\\sf.c"
	.loc 1 31 0
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
	adds	r3, r7, #7
	strb	r2, [r3]
.L2:
	.loc 1 36 0 discriminator 1
	movs	r3, #15
	adds	r2, r7, r3
	adds	r3, r7, #7
	ldrb	r0, [r3]
	movs	r3, #1
	movs	r1, #5
	bl	SFI_DeviceCommandRead
	.loc 1 38 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	bne	.L2
	.loc 1 39 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	SF_DevWaitReady, .-SF_DevWaitReady
	.align	2
	.code	16
	.thumb_func
	.type	SF_BlankCheck, %function
SF_BlankCheck:
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
	str	r1, [r7]
	.loc 1 43 0
	ldr	r2, [r7, #4]
	ldr	r3, .L15
	adds	r3, r2, r3
	str	r3, [r7, #12]
	.loc 1 44 0
	ldr	r3, [r7, #4]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	rsbs	r3, r3, #0
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #11
	adds	r3, r7, r3
	movs	r1, #3
	ands	r2, r1
	strb	r2, [r3]
	.loc 1 46 0
	b	.L4
.L8:
	.loc 1 47 0
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]
	cmp	r3, #255
	beq	.L5
	.loc 1 48 0
	movs	r3, #0
	b	.L6
.L5:
	.loc 1 46 0
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
	movs	r3, #11
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, #11
	adds	r3, r7, r3
	subs	r2, r2, #1
	strb	r2, [r3]
.L4:
	.loc 1 46 0 is_stmt 0 discriminator 1
	movs	r3, #11
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L9
	.loc 1 46 0 discriminator 2
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L8
	.loc 1 49 0 is_stmt 1
	b	.L9
.L11:
	.loc 1 50 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #1
	beq	.L10
	.loc 1 51 0
	movs	r3, #0
	b	.L6
.L10:
	.loc 1 49 0
	ldr	r3, [r7]
	subs	r3, r3, #4
	str	r3, [r7]
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L9:
	.loc 1 49 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #3
	bhi	.L11
	.loc 1 52 0 is_stmt 1
	b	.L12
.L14:
	.loc 1 53 0
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]
	cmp	r3, #255
	beq	.L13
	.loc 1 54 0
	movs	r3, #0
	b	.L6
.L13:
	.loc 1 52 0
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
.L12:
	.loc 1 52 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L14
	.loc 1 56 0 is_stmt 1
	movs	r3, #1
.L6:
	.loc 1 57 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	__ROMBase
	.cfi_endproc
.LFE2:
	.size	SF_BlankCheck, .-SF_BlankCheck
	.align	2
	.code	16
	.thumb_func
	.type	SF_EraseBlock64K, %function
SF_EraseBlock64K:
.LFB3:
	.loc 1 60 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	add	r7, sp, #8
	.cfi_def_cfa 7, 32
	movs	r2, r0
	str	r1, [r7]
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 61 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 63 0
	adds	r3, r7, #7
	ldrb	r0, [r3]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #6
	bl	SFI_DeviceCommandWrite
	.loc 1 64 0
	ldr	r3, .L18
	ldr	r4, [r3]
	ldr	r2, [r7]
	adds	r3, r7, #7
	ldrb	r0, [r3]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r1, #216
	blx	r4
	.loc 1 65 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SF_DevWaitReady
	.loc 1 67 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 68 0
	nop
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L19:
	.align	2
.L18:
	.word	SFI_DeviceCmdAddrWrite
	.cfi_endproc
.LFE3:
	.size	SF_EraseBlock64K, .-SF_EraseBlock64K
	.align	2
	.code	16
	.thumb_func
	.type	SF_EraseBlock32K, %function
SF_EraseBlock32K:
.LFB4:
	.loc 1 71 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	add	r7, sp, #8
	.cfi_def_cfa 7, 32
	movs	r2, r0
	str	r1, [r7]
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 72 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 74 0
	adds	r3, r7, #7
	ldrb	r0, [r3]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #6
	bl	SFI_DeviceCommandWrite
	.loc 1 75 0
	ldr	r3, .L21
	ldr	r4, [r3]
	ldr	r2, [r7]
	adds	r3, r7, #7
	ldrb	r0, [r3]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r1, #82
	blx	r4
	.loc 1 76 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SF_DevWaitReady
	.loc 1 78 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 79 0
	nop
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L22:
	.align	2
.L21:
	.word	SFI_DeviceCmdAddrWrite
	.cfi_endproc
.LFE4:
	.size	SF_EraseBlock32K, .-SF_EraseBlock32K
	.align	2
	.code	16
	.thumb_func
	.type	SF_EraseBlock4K, %function
SF_EraseBlock4K:
.LFB5:
	.loc 1 82 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	add	r7, sp, #8
	.cfi_def_cfa 7, 32
	movs	r2, r0
	str	r1, [r7]
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 83 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 85 0
	adds	r3, r7, #7
	ldrb	r0, [r3]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #6
	bl	SFI_DeviceCommandWrite
	.loc 1 86 0
	ldr	r3, .L24
	ldr	r4, [r3]
	ldr	r2, [r7]
	adds	r3, r7, #7
	ldrb	r0, [r3]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r1, #32
	blx	r4
	.loc 1 87 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SF_DevWaitReady
	.loc 1 89 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 90 0
	nop
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L25:
	.align	2
.L24:
	.word	SFI_DeviceCmdAddrWrite
	.cfi_endproc
.LFE5:
	.size	SF_EraseBlock4K, .-SF_EraseBlock4K
	.align	2
	.code	16
	.thumb_func
	.type	SF_WriteBlock, %function
SF_WriteBlock:
.LFB6:
	.loc 1 93 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
	add	r7, sp, #8
	.cfi_def_cfa 7, 40
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 94 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 96 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #6
	bl	SFI_DeviceCommandWrite
	.loc 1 97 0
	ldr	r3, .L27
	ldr	r4, [r3]
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #4]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r0, [r3]
	ldr	r3, [r7]
	str	r3, [sp]
	movs	r3, r1
	movs	r1, #2
	blx	r4
	.loc 1 98 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SF_DevWaitReady
	.loc 1 99 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 100 0
	nop
	mov	sp, r7
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r7, pc}
.L28:
	.align	2
.L27:
	.word	SFI_DeviceCmdAddrWrite
	.cfi_endproc
.LFE6:
	.size	SF_WriteBlock, .-SF_WriteBlock
	.align	2
	.global	SF_DevReadID
	.code	16
	.thumb_func
	.type	SF_DevReadID, %function
SF_DevReadID:
.LFB7:
	.loc 1 103 0
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
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 104 0
	movs	r3, #0
	str	r3, [r7, #8]
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 106 0
	movs	r3, #8
	adds	r2, r7, r3
	adds	r3, r7, #7
	ldrb	r0, [r3]
	movs	r3, #3
	movs	r1, #159
	bl	SFI_DeviceCommandRead
	.loc 1 107 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 109 0
	ldr	r3, [r7, #8]
	.loc 1 110 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	SF_DevReadID, .-SF_DevReadID
	.align	2
	.global	SF_WriteStatus
	.code	16
	.thumb_func
	.type	SF_WriteStatus, %function
SF_WriteStatus:
.LFB8:
	.loc 1 113 0
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
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 114 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 116 0
	ldr	r3, .L34
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L32
	.loc 1 116 0 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L32
	.loc 1 116 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L32
.LBB2:
	.loc 1 118 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 120 0
	movs	r3, #23
	adds	r4, r7, r3
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #6
	bl	SFI_DeviceCommandWrite
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 121 0
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	movs	r1, #1
	bl	SFI_DeviceCommandWrite
	movs	r3, r0
	movs	r1, r3
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #23
	adds	r2, r7, r2
	ldrb	r2, [r2]
	ands	r2, r1
	strb	r2, [r3]
	.loc 1 122 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	__restore_interrupts
.L32:
.LBE2:
	.loc 1 124 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 125 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r7, pc}
.L35:
	.align	2
.L34:
	.word	FlashConfig
	.cfi_endproc
.LFE8:
	.size	SF_WriteStatus, .-SF_WriteStatus
	.align	2
	.global	SF_Read
	.code	16
	.thumb_func
	.type	SF_Read, %function
SF_Read:
.LFB9:
	.loc 1 128 0
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
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 129 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L37
	.loc 1 129 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L37
	.loc 1 129 0 is_stmt 1 discriminator 2
	ldr	r2, [r7, #8]
	ldr	r3, .L41
	ldr	r3, [r3]
	cmp	r2, r3
	bcs	.L37
.LBB3:
	.loc 1 131 0
	ldr	r2, [r7, #8]
	ldr	r3, .L41+4
	adds	r3, r2, r3
	str	r3, [r7, #28]
.LBB4:
	.loc 1 133 0
	ldr	r3, [r7]
	str	r3, [r7, #24]
	ldr	r3, .L41
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, r2
	bls	.L38
	movs	r3, r2
.L38:
.LBE4:
	str	r3, [r7]
	.loc 1 134 0
	ldr	r2, [r7]
	ldr	r1, [r7, #28]
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	memcpy
.LBE3:
	.loc 1 130 0
	b	.L39
.L37:
	.loc 1 136 0
	movs	r3, #0
	str	r3, [r7]
.L39:
	.loc 1 138 0
	ldr	r3, [r7]
	.loc 1 139 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
.L42:
	.align	2
.L41:
	.word	FlashCapacity
	.word	__ROMBase
	.cfi_endproc
.LFE9:
	.size	SF_Read, .-SF_Read
	.align	2
	.global	SF_Write
	.code	16
	.thumb_func
	.type	SF_Write, %function
SF_Write:
.LFB10:
	.loc 1 142 0
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
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 143 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L44
	.loc 1 143 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L44
	.loc 1 143 0 is_stmt 1 discriminator 2
	ldr	r2, [r7, #8]
	ldr	r3, .L52
	ldr	r3, [r3]
	cmp	r2, r3
	bcs	.L44
.LBB5:
	.loc 1 145 0
	ldr	r3, [r7, #8]
	str	r3, [r7, #44]
.LBB6:
	.loc 1 147 0
	ldr	r3, [r7]
	str	r3, [r7, #40]
	ldr	r3, .L52
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r3, r2
	bls	.L45
	movs	r3, r2
.L45:
.LBE6:
	str	r3, [r7]
	.loc 1 149 0
	b	.L46
.L49:
.LBB7:
	.loc 1 151 0
	ldr	r3, .L52+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #10]
	movs	r2, r3
	ldr	r3, .L52+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #10]
	subs	r3, r3, #1
	movs	r1, r3
	ldr	r3, [r7, #44]
	ands	r3, r1
	subs	r3, r2, r3
	str	r3, [r7, #32]
.LBB8:
.LBB9:
	.loc 1 153 0
	ldr	r3, [r7, #32]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r3, r2
	bls	.L47
	movs	r3, r2
.L47:
.LBE9:
	str	r3, [r7, #20]
	movs	r3, #128
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	cmp	r3, r2
	bls	.L48
	movs	r3, r2
.L48:
.LBE8:
	str	r3, [r7, #32]
	.loc 1 155 0
	ldr	r4, [r7, #32]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #44]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r4
	bl	SF_WriteBlock
	.loc 1 157 0
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #32]
	adds	r3, r2, r3
	str	r3, [r7, #44]
	.loc 1 158 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #32]
	adds	r3, r2, r3
	str	r3, [r7, #4]
	.loc 1 159 0
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	subs	r3, r2, r3
	str	r3, [r7]
.L46:
.LBE7:
	.loc 1 149 0
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L49
.LBE5:
	.loc 1 144 0
	b	.L50
.L44:
	.loc 1 162 0
	movs	r3, #0
	str	r3, [r7]
.L50:
	.loc 1 164 0
	ldr	r3, [r7]
	.loc 1 165 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r7, pc}
.L53:
	.align	2
.L52:
	.word	FlashCapacity
	.word	FlashConfig
	.cfi_endproc
.LFE10:
	.size	SF_Write, .-SF_Write
	.global	__aeabi_uidiv
	.align	2
	.global	SF_Erase
	.code	16
	.thumb_func
	.type	SF_Erase, %function
SF_Erase:
.LFB11:
	.loc 1 168 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #68
	.cfi_def_cfa_offset 80
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 169 0
	movs	r3, #63
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 171 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.LCB821
	b	.L55	@long jump
.LCB821:
	.loc 1 171 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #8]
	ldr	r3, .L81
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.LCB826
	b	.L55	@long jump
.LCB826:
	.loc 1 171 0 discriminator 2
	ldr	r3, .L81+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #16]
	cmp	r3, #0
	bne	.LCB831
	b	.L55	@long jump
.LCB831:
.LBB10:
	.loc 1 173 0 is_stmt 1
	ldr	r3, [r7, #8]
	str	r3, [r7, #56]
	.loc 1 174 0
	ldr	r3, .L81+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #16]
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	bne	.L56
	.loc 1 175 0 discriminator 1
	ldr	r3, .L81+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #16]
	movs	r2, r3
	movs	r3, #2
	ands	r3, r2
	.loc 1 174 0 discriminator 1
	bne	.L57
	.loc 1 176 0 discriminator 3
	ldr	r3, .L81+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #16]
	movs	r2, r3
	movs	r3, #4
	ands	r3, r2
	.loc 1 174 0 discriminator 3
	beq	.L58
	.loc 1 174 0 is_stmt 0 discriminator 5
	ldr	r3, .L81+8
	b	.L61
.L58:
	.loc 1 174 0 discriminator 6
	movs	r3, #0
	b	.L61
.L57:
	.loc 1 174 0 discriminator 4
	ldr	r3, .L81+12
	b	.L61
.L56:
	.loc 1 174 0 discriminator 2
	ldr	r3, .L81+16
.L61:
	.loc 1 174 0 discriminator 12
	str	r3, [r7, #40]
	.loc 1 178 0 is_stmt 1 discriminator 12
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.LCB880
	b	.L55	@long jump
.LCB880:
.LBB11:
	.loc 1 181 0
	movs	r3, #0
	str	r3, [r7, #48]
	.loc 1 181 0
	movs	r3, #0
	str	r3, [r7, #44]
	.loc 1 182 0
	ldr	r3, .L81+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #16]
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	bne	.L62
	.loc 1 183 0 discriminator 1
	ldr	r3, .L81+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #16]
	movs	r2, r3
	movs	r3, #2
	ands	r3, r2
	.loc 1 182 0 discriminator 1
	bne	.L63
	.loc 1 184 0 discriminator 3
	ldr	r3, .L81+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #16]
	movs	r2, r3
	movs	r3, #4
	ands	r3, r2
	.loc 1 182 0 discriminator 3
	beq	.L64
	.loc 1 182 0 is_stmt 0 discriminator 5
	movs	r3, #16
	b	.L67
.L64:
	.loc 1 182 0 discriminator 6
	movs	r3, #0
	b	.L67
.L63:
	.loc 1 182 0 discriminator 4
	movs	r3, #8
	b	.L67
.L62:
	.loc 1 182 0 discriminator 2
	movs	r3, #1
.L67:
	.loc 1 182 0 discriminator 12
	str	r3, [r7, #36]
.LBB12:
	.loc 1 186 0 is_stmt 1 discriminator 12
	ldr	r3, [r7, #4]
	str	r3, [r7, #32]
	ldr	r3, .L81
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r3, r2
	bls	.L68
	movs	r3, r2
.L68:
.LBE12:
	str	r3, [r7, #4]
	.loc 1 187 0 discriminator 12
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ands	r3, r2
	str	r3, [r7, #24]
	.loc 1 188 0 discriminator 12
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r3, r2
	str	r3, [r7, #56]
	.loc 1 189 0 discriminator 12
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #4]
	adds	r2, r2, r3
	ldr	r3, [r7, #40]
	adds	r2, r2, r3
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	movs	r1, r3
	movs	r0, r2
	bl	__aeabi_uidiv
	movs	r3, r0
	str	r3, [r7, #52]
	.loc 1 190 0 discriminator 12
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	ldr	r2, [r7, #52]
	muls	r2, r3
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #4]
	adds	r3, r1, r3
	subs	r3, r2, r3
	str	r3, [r7, #20]
	.loc 1 192 0 discriminator 12
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #36]
	muls	r3, r2
	str	r3, [r7, #52]
	.loc 1 194 0 discriminator 12
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L69
	.loc 1 194 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #56]
	movs	r1, r2
	movs	r0, r3
	bl	SF_BlankCheck
	subs	r3, r0, #0
	bne	.L69
	.loc 1 194 0 discriminator 2
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L69
	.loc 1 196 0 is_stmt 1
	ldr	r4, [r7, #24]
	ldr	r2, [r7, #48]
	ldr	r1, [r7, #56]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r4
	bl	SF_Read
.L69:
	.loc 1 197 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.LCB1011
	b	.L71	@long jump
.LCB1011:
	.loc 1 197 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #24]
	adds	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r2, r3
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, r3
	movs	r0, r2
	bl	SF_BlankCheck
	subs	r3, r0, #0
	beq	.LCB1024
	b	.L71	@long jump
.LCB1024:
	.loc 1 197 0 discriminator 2
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.LCB1032
	b	.L71	@long jump
.LCB1032:
	.loc 1 199 0 is_stmt 1
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #24]
	adds	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r2, r3
	movs	r4, r3
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #44]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	movs	r1, r4
	bl	SF_Read
	.loc 1 201 0
	b	.L71
.L77:
	.loc 1 203 0
	ldr	r3, .L81+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #16]
	movs	r2, r3
	movs	r3, #4
	ands	r3, r2
	beq	.L72
	.loc 1 204 0 discriminator 1
	ldr	r3, [r7, #56]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 203 0 discriminator 1
	bne	.L72
	.loc 1 204 0
	ldr	r3, [r7, #52]
	cmp	r3, #15
	bls	.L72
	.loc 1 207 0
	movs	r3, #128
	lsls	r2, r3, #9
	ldr	r3, [r7, #56]
	movs	r1, r2
	movs	r0, r3
	bl	SF_BlankCheck
	subs	r3, r0, #0
	bne	.L73
	.loc 1 208 0
	ldr	r2, [r7, #56]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, r2
	movs	r0, r3
	bl	SF_EraseBlock64K
.L73:
	.loc 1 209 0
	ldr	r3, [r7, #52]
	subs	r3, r3, #16
	str	r3, [r7, #52]
	.loc 1 210 0
	ldr	r3, [r7, #56]
	movs	r2, #128
	lsls	r2, r2, #9
	mov	ip, r2
	add	r3, r3, ip
	str	r3, [r7, #56]
	b	.L71
.L72:
	.loc 1 212 0
	ldr	r3, .L81+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #16]
	movs	r2, r3
	movs	r3, #2
	ands	r3, r2
	beq	.L74
	.loc 1 213 0 discriminator 1
	ldr	r3, [r7, #56]
	lsls	r3, r3, #17
	lsrs	r3, r3, #17
	.loc 1 212 0 discriminator 1
	bne	.L74
	.loc 1 213 0
	ldr	r3, [r7, #52]
	cmp	r3, #7
	bls	.L74
	.loc 1 216 0
	movs	r3, #128
	lsls	r2, r3, #8
	ldr	r3, [r7, #56]
	movs	r1, r2
	movs	r0, r3
	bl	SF_BlankCheck
	subs	r3, r0, #0
	bne	.L75
	.loc 1 217 0
	ldr	r2, [r7, #56]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, r2
	movs	r0, r3
	bl	SF_EraseBlock32K
.L75:
	.loc 1 218 0
	ldr	r3, [r7, #52]
	subs	r3, r3, #8
	str	r3, [r7, #52]
	.loc 1 219 0
	ldr	r3, [r7, #56]
	movs	r2, #128
	lsls	r2, r2, #8
	mov	ip, r2
	add	r3, r3, ip
	str	r3, [r7, #56]
	b	.L71
.L74:
	.loc 1 224 0
	movs	r3, #128
	lsls	r2, r3, #5
	ldr	r3, [r7, #56]
	movs	r1, r2
	movs	r0, r3
	bl	SF_BlankCheck
	subs	r3, r0, #0
	bne	.L76
	.loc 1 225 0
	ldr	r2, [r7, #56]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, r2
	movs	r0, r3
	bl	SF_EraseBlock4K
.L76:
	.loc 1 226 0
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
	.loc 1 227 0
	ldr	r3, [r7, #56]
	movs	r2, #128
	lsls	r2, r2, #5
	mov	ip, r2
	add	r3, r3, ip
	str	r3, [r7, #56]
.L71:
	.loc 1 201 0
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L77
	.loc 1 231 0
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #8]
	ands	r3, r2
	str	r3, [r7, #56]
	.loc 1 232 0
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L78
	.loc 1 234 0
	ldr	r4, [r7, #24]
	ldr	r2, [r7, #48]
	ldr	r1, [r7, #56]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r4
	bl	SF_Write
	.loc 1 235 0
	ldr	r3, [r7, #48]
	movs	r0, r3
	bl	free
.L78:
	.loc 1 237 0
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L79
	.loc 1 239 0
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #24]
	adds	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r2, r3
	movs	r4, r3
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #44]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r0, [r3]
	movs	r3, r1
	movs	r1, r4
	bl	SF_Write
	.loc 1 240 0
	ldr	r3, [r7, #44]
	movs	r0, r3
	bl	free
.L79:
	.loc 1 242 0
	movs	r3, #63
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.L55:
.LBE11:
.LBE10:
	.loc 1 245 0
	movs	r3, #63
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 246 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r7, pc}
.L82:
	.align	2
.L81:
	.word	FlashCapacity
	.word	FlashConfig
	.word	65535
	.word	32767
	.word	4095
	.cfi_endproc
.LFE11:
	.size	SF_Erase, .-SF_Erase
	.section	.rodata
	.align	2
.LC13:
	.ascii	"SPI\000"
	.align	2
.LC15:
	.ascii	"QPI\000"
	.align	2
.LC17:
	.ascii	" Current interface mode: UNKNOWN!\015\000"
	.align	2
.LC20:
	.ascii	" Current interface mode: %s\015\012\000"
	.align	2
.LC22:
	.ascii	" Found device with ID: (0x%02X, 0x%02X, 0x%02X)\015"
	.ascii	"\012\000"
	.align	2
.LC27:
	.ascii	" Something went wrong, can not read device ID!\015\000"
	.align	2
.LC29:
	.ascii	" Found supported device \"%s\"\015\012\000"
	.align	2
.LC33:
	.ascii	" Total capacity - %u KiB\015\012\000"
	.align	2
.LC35:
	.ascii	" Applying SF device configuration...\000"
	.align	2
.LC37:
	.ascii	"Complete.\015\000"
	.align	2
.LC39:
	.ascii	" No configuration found for device (0x%02X, 0x%02X,"
	.ascii	" 0x%02X)\015\012\000"
	.align	2
.LC41:
	.ascii	" SFI initialization failed.\015\000"
	.section	.text.SF_Initialize,"ax",%progbits
	.align	2
	.global	SF_Initialize
	.code	16
	.thumb_func
	.type	SF_Initialize, %function
SF_Initialize:
.LFB12:
	.loc 1 249 0
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
	.loc 1 250 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
.LBB13:
	.loc 1 254 0
	movs	r0, #0
	bl	SF_DevReadID
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 255 0
	adds	r4, r7, #7
	movs	r0, #0
	bl	SFI_GetInterfaceMode
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 256 0
	ldr	r3, .L99
	str	r3, [r7, #16]
	.loc 1 259 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L84
	.loc 1 259 0 is_stmt 0 discriminator 1
	ldr	r3, .L99+4
	str	r3, [r7, #12]
	b	.L85
.L84:
	.loc 1 260 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #2
	bne	.L86
	.loc 1 260 0 is_stmt 0 discriminator 1
	ldr	r3, .L99+8
	str	r3, [r7, #12]
	b	.L85
.L86:
	.loc 1 263 0 is_stmt 1
	ldr	r3, .L99+12
	movs	r0, r3
	bl	puts
	.loc 1 263 0
	ldr	r3, .L99+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 263 0
	movs	r0, r3
	bl	fflush
	.loc 1 264 0
	b	.L87
.L85:
	.loc 1 266 0
	ldr	r2, [r7, #12]
	ldr	r3, .L99+20
	movs	r1, r2
	movs	r0, r3
	bl	printf
	.loc 1 266 0
	ldr	r3, .L99+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 266 0
	movs	r0, r3
	bl	fflush
	.loc 1 268 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L88
	.loc 1 268 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	beq	.L88
	.loc 1 269 0 is_stmt 1
	ldr	r3, [r7, #8]
	movs	r2, #255
	ands	r3, r2
	movs	r1, r3
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #8
	movs	r2, #255
	ands	r3, r2
	movs	r4, r3
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #16
	movs	r2, #255
	ands	r3, r2
	ldr	r0, .L99+24
	movs	r2, r4
	bl	printf
	.loc 1 269 0
	ldr	r3, .L99+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 269 0
	movs	r0, r3
	bl	fflush
	.loc 1 277 0
	ldr	r3, .L99+28
	movs	r2, #0
	str	r2, [r3]
	.loc 1 278 0
	ldr	r3, .L99+32
	movs	r2, #0
	str	r2, [r3]
	.loc 1 279 0
	ldr	r3, .L99+36
	movs	r2, #0
	str	r2, [r3]
	.loc 1 280 0
	b	.L89
.L88:
	.loc 1 273 0
	ldr	r3, .L99+40
	movs	r0, r3
	bl	puts
	.loc 1 273 0
	ldr	r3, .L99+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 273 0
	movs	r0, r3
	bl	fflush
	.loc 1 274 0
	b	.L87
.L92:
	.loc 1 281 0
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L90
	.loc 1 283 0
	ldr	r3, .L99+28
	ldr	r2, [r7, #16]
	str	r2, [r3]
	.loc 1 284 0
	ldr	r3, .L99+28
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, .L99+44
	movs	r1, r2
	movs	r0, r3
	bl	printf
	.loc 1 284 0
	ldr	r3, .L99+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 284 0
	movs	r0, r3
	bl	fflush
	.loc 1 285 0
	b	.L91
.L90:
	.loc 1 287 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #56
	str	r3, [r7, #16]
.L89:
	.loc 1 280 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L92
.L91:
	.loc 1 289 0
	ldr	r3, .L99+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L93
	.loc 1 291 0
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #10]
	movs	r2, r3
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	muls	r2, r3
	ldr	r3, .L99+32
	str	r2, [r3]
	.loc 1 292 0
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #8]
	.loc 1 293 0
	cmp	r3, #0
	beq	.L94
	.loc 1 293 0 is_stmt 0 discriminator 1
	ldr	r2, .L99+48
	b	.L95
.L94:
	.loc 1 293 0 discriminator 2
	ldr	r2, .L99+52
.L95:
	.loc 1 292 0 is_stmt 1
	ldr	r3, .L99+36
	str	r2, [r3]
	.loc 1 296 0
	ldr	r3, .L99+32
	ldr	r3, [r3]
	lsrs	r2, r3, #10
	ldr	r3, .L99+56
	movs	r1, r2
	movs	r0, r3
	bl	printf
	.loc 1 296 0
	ldr	r3, .L99+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 296 0
	movs	r0, r3
	bl	fflush
	.loc 1 298 0
	ldr	r3, .L99+60
	movs	r0, r3
	bl	printf
	.loc 1 298 0
	ldr	r3, .L99+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 298 0
	movs	r0, r3
	bl	fflush
	.loc 1 299 0
	ldr	r3, [r7, #16]
	movs	r1, r3
	movs	r0, #0
	bl	SFI_ConfigureInterface
	.loc 1 300 0
	ldr	r3, .L99+64
	movs	r0, r3
	bl	puts
	.loc 1 300 0
	ldr	r3, .L99+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 300 0
	movs	r0, r3
	bl	fflush
	.loc 1 308 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	b	.L87
.L93:
	.loc 1 304 0
	ldr	r3, [r7, #8]
	movs	r2, #255
	ands	r3, r2
	movs	r1, r3
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #8
	movs	r2, #255
	ands	r3, r2
	movs	r4, r3
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #16
	movs	r2, #255
	ands	r3, r2
	ldr	r0, .L99+68
	movs	r2, r4
	bl	printf
	.loc 1 304 0
	ldr	r3, .L99+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 304 0
	movs	r0, r3
	bl	fflush
	.loc 1 306 0
	nop
.L87:
.LBE13:
	.loc 1 312 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L97
	.loc 1 312 0 is_stmt 0 discriminator 1
	ldr	r3, .L99+72
	movs	r0, r3
	bl	puts
	.loc 1 312 0 is_stmt 1 discriminator 1
	ldr	r3, .L99+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 312 0 discriminator 1
	movs	r0, r3
	bl	fflush
.L97:
	.loc 1 314 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 315 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r7, pc}
.L100:
	.align	2
.L99:
	.word	DFConfigList
	.word	.LC13
	.word	.LC15
	.word	.LC17
	.word	_impure_ptr
	.word	.LC20
	.word	.LC22
	.word	FlashConfig
	.word	FlashCapacity
	.word	SFI_DeviceCmdAddrWrite
	.word	.LC27
	.word	.LC29
	.word	SFI_DeviceCmdAddr4Write
	.word	SFI_DeviceCmdAddr3Write
	.word	.LC33
	.word	.LC35
	.word	.LC37
	.word	.LC39
	.word	.LC41
	.cfi_endproc
.LFE12:
	.size	SF_Initialize, .-SF_Initialize
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "d:\\1.11\\share\\em_armgcc\\lib\\gcc\\arm-none-eabi\\5.4.1\\include\\stddef.h"
	.file 5 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\lock.h"
	.file 6 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_types.h"
	.file 7 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\reent.h"
	.file 8 ".\\Source/systypes.h"
	.file 9 ".\\Source\\Lib\\MT6261/drivers\\sfi.h"
	.file 10 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 11 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 12 ".\\Source\\Application\\Drivers/dflib.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1086
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF215
	.byte	0xc
	.4byte	.LASF216
	.4byte	.LASF217
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.4byte	0x50
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
	.byte	0x24
	.4byte	0x45
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
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0xd8
	.4byte	0x90
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x7
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x72
	.4byte	0x57
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x165
	.4byte	0x90
	.uleb128 0x6
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.4byte	0x121
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x6
	.byte	0xa8
	.4byte	0xf6
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x6
	.byte	0xa9
	.4byte	0x121
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x131
	.uleb128 0x9
	.4byte	0x131
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.byte	0xa3
	.4byte	0x159
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0xa5
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0xaa
	.4byte	0x102
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0xab
	.4byte	0x138
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0xaf
	.4byte	0xd5
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x177
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF30
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x16
	.4byte	0x69
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x18
	.byte	0x7
	.byte	0x2d
	.4byte	0x1dc
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.byte	0x2f
	.4byte	0x1dc
	.byte	0
	.uleb128 0xf
	.ascii	"_k\000"
	.byte	0x7
	.byte	0x30
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x30
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0x30
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0x30
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xf
	.ascii	"_x\000"
	.byte	0x7
	.byte	0x31
	.4byte	0x1e2
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x189
	.uleb128 0x8
	.4byte	0x17e
	.4byte	0x1f2
	.uleb128 0x9
	.4byte	0x131
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x24
	.byte	0x7
	.byte	0x35
	.4byte	0x26b
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x37
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x7
	.byte	0x38
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x7
	.byte	0x39
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x7
	.byte	0x3a
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x7
	.byte	0x3b
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x7
	.byte	0x3c
	.4byte	0x7e
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x3d
	.4byte	0x7e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x3e
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x7
	.byte	0x3f
	.4byte	0x7e
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.2byte	0x108
	.byte	0x7
	.byte	0x48
	.4byte	0x2ab
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x7
	.byte	0x49
	.4byte	0x2ab
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x7
	.byte	0x4a
	.4byte	0x2ab
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x7
	.byte	0x4c
	.4byte	0x17e
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x7
	.byte	0x4f
	.4byte	0x17e
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x16f
	.4byte	0x2bb
	.uleb128 0x9
	.4byte	0x131
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF52
	.2byte	0x190
	.byte	0x7
	.byte	0x5b
	.4byte	0x2f9
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.byte	0x5c
	.4byte	0x2f9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x7
	.byte	0x5d
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x7
	.byte	0x5f
	.4byte	0x2ff
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x7
	.byte	0x60
	.4byte	0x26b
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2bb
	.uleb128 0x8
	.4byte	0x30f
	.4byte	0x30f
	.uleb128 0x9
	.4byte	0x131
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x315
	.uleb128 0x12
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x8
	.byte	0x7
	.byte	0x73
	.4byte	0x33b
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x74
	.4byte	0x33b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0x75
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x37
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x68
	.byte	0x7
	.byte	0xb3
	.4byte	0x46b
	.uleb128 0xf
	.ascii	"_p\000"
	.byte	0x7
	.byte	0xb4
	.4byte	0x33b
	.byte	0
	.uleb128 0xf
	.ascii	"_r\000"
	.byte	0x7
	.byte	0xb5
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xf
	.ascii	"_w\000"
	.byte	0x7
	.byte	0xb6
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x7
	.byte	0xb7
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x7
	.byte	0xb8
	.4byte	0x3e
	.byte	0xe
	.uleb128 0xf
	.ascii	"_bf\000"
	.byte	0x7
	.byte	0xb9
	.4byte	0x316
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x7
	.byte	0xba
	.4byte	0x7e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x7
	.byte	0xc1
	.4byte	0x16f
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x7
	.byte	0xc3
	.4byte	0x5c1
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7
	.byte	0xc5
	.4byte	0x5f0
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x7
	.byte	0xc8
	.4byte	0x614
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x7
	.byte	0xc9
	.4byte	0x62e
	.byte	0x2c
	.uleb128 0xf
	.ascii	"_ub\000"
	.byte	0x7
	.byte	0xcc
	.4byte	0x316
	.byte	0x30
	.uleb128 0xf
	.ascii	"_up\000"
	.byte	0x7
	.byte	0xcd
	.4byte	0x33b
	.byte	0x38
	.uleb128 0xf
	.ascii	"_ur\000"
	.byte	0x7
	.byte	0xce
	.4byte	0x7e
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x7
	.byte	0xd1
	.4byte	0x634
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x7
	.byte	0xd2
	.4byte	0x644
	.byte	0x43
	.uleb128 0xf
	.ascii	"_lb\000"
	.byte	0x7
	.byte	0xd5
	.4byte	0x316
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x7
	.byte	0xd8
	.4byte	0x7e
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x7
	.byte	0xd9
	.4byte	0xe0
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x7
	.byte	0xdc
	.4byte	0x489
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x7
	.byte	0xe0
	.4byte	0x164
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x7
	.byte	0xe2
	.4byte	0x159
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x7
	.byte	0xe3
	.4byte	0x7e
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x489
	.uleb128 0x14
	.4byte	0x489
	.uleb128 0x14
	.4byte	0x16f
	.uleb128 0x14
	.4byte	0x171
	.uleb128 0x14
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x48f
	.uleb128 0x15
	.4byte	.LASF75
	.2byte	0x428
	.byte	0x7
	.2byte	0x238
	.4byte	0x5c1
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x23a
	.4byte	0x7e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x23f
	.4byte	0x69b
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x23f
	.4byte	0x69b
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x23f
	.4byte	0x69b
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x241
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x242
	.4byte	0x87d
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x244
	.4byte	0x7e
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x245
	.4byte	0x5e5
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x247
	.4byte	0x7e
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x249
	.4byte	0x898
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x24c
	.4byte	0x1dc
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x24d
	.4byte	0x7e
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x24e
	.4byte	0x1dc
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x24f
	.4byte	0x89e
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x252
	.4byte	0x7e
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x253
	.4byte	0x171
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x276
	.4byte	0x85b
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x7
	.2byte	0x27a
	.4byte	0x2f9
	.2byte	0x148
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x27b
	.4byte	0x2bb
	.2byte	0x14c
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x27f
	.4byte	0x8af
	.2byte	0x2dc
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x284
	.4byte	0x660
	.2byte	0x2e0
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x285
	.4byte	0x8bb
	.2byte	0x2ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x46b
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x5e5
	.uleb128 0x14
	.4byte	0x489
	.uleb128 0x14
	.4byte	0x16f
	.uleb128 0x14
	.4byte	0x5e5
	.uleb128 0x14
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5eb
	.uleb128 0x18
	.4byte	0x177
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5c7
	.uleb128 0x13
	.4byte	0xeb
	.4byte	0x614
	.uleb128 0x14
	.4byte	0x489
	.uleb128 0x14
	.4byte	0x16f
	.uleb128 0x14
	.4byte	0xeb
	.uleb128 0x14
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5f6
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x62e
	.uleb128 0x14
	.4byte	0x489
	.uleb128 0x14
	.4byte	0x16f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x61a
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x644
	.uleb128 0x9
	.4byte	0x131
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x654
	.uleb128 0x9
	.4byte	0x131
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x11d
	.4byte	0x341
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0xc
	.byte	0x7
	.2byte	0x121
	.4byte	0x695
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x123
	.4byte	0x695
	.byte	0
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x124
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x125
	.4byte	0x69b
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x660
	.uleb128 0xd
	.byte	0x4
	.4byte	0x654
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0xe
	.byte	0x7
	.2byte	0x13d
	.4byte	0x6d6
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x13e
	.4byte	0x6d6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x13f
	.4byte	0x6d6
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x140
	.4byte	0x50
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x50
	.4byte	0x6e6
	.uleb128 0x9
	.4byte	0x131
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd0
	.byte	0x7
	.2byte	0x257
	.4byte	0x7e7
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x259
	.4byte	0x90
	.byte	0
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x25a
	.4byte	0x171
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x25b
	.4byte	0x7e7
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x25c
	.4byte	0x1f2
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x25d
	.4byte	0x7e
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x25e
	.4byte	0x77
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x25f
	.4byte	0x6a1
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x260
	.4byte	0x159
	.byte	0x68
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x261
	.4byte	0x159
	.byte	0x70
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x262
	.4byte	0x159
	.byte	0x78
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x263
	.4byte	0x7f7
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x264
	.4byte	0x807
	.byte	0x88
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x265
	.4byte	0x7e
	.byte	0xa0
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x266
	.4byte	0x159
	.byte	0xa4
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x267
	.4byte	0x159
	.byte	0xac
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x268
	.4byte	0x159
	.byte	0xb4
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x269
	.4byte	0x159
	.byte	0xbc
	.uleb128 0x16
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x26a
	.4byte	0x159
	.byte	0xc4
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x26b
	.4byte	0x7e
	.byte	0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0x177
	.4byte	0x7f7
	.uleb128 0x9
	.4byte	0x131
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x177
	.4byte	0x807
	.uleb128 0x9
	.4byte	0x131
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x177
	.4byte	0x817
	.uleb128 0x9
	.4byte	0x131
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0x7
	.2byte	0x270
	.4byte	0x83b
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x273
	.4byte	0x83b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x274
	.4byte	0x84b
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x33b
	.4byte	0x84b
	.uleb128 0x9
	.4byte	0x131
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x90
	.4byte	0x85b
	.uleb128 0x9
	.4byte	0x131
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x7
	.2byte	0x255
	.4byte	0x87d
	.uleb128 0x1c
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x26c
	.4byte	0x6e6
	.uleb128 0x1c
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x275
	.4byte	0x817
	.byte	0
	.uleb128 0x8
	.4byte	0x177
	.4byte	0x88d
	.uleb128 0x9
	.4byte	0x131
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.4byte	0x898
	.uleb128 0x14
	.4byte	0x489
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x88d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1dc
	.uleb128 0x1d
	.4byte	0x8af
	.uleb128 0x14
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8b5
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8a4
	.uleb128 0x8
	.4byte	0x654
	.4byte	0x8cb
	.uleb128 0x9
	.4byte	0x131
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x37
	.byte	0x8
	.byte	0x1d
	.4byte	0x8e4
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x8
	.byte	0x1d
	.4byte	0x8cb
	.uleb128 0xd
	.byte	0x4
	.4byte	0x97
	.uleb128 0x20
	.4byte	.LASF133
	.byte	0x1
	.4byte	0x37
	.byte	0x9
	.byte	0x76
	.4byte	0x912
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0x9
	.byte	0x7a
	.4byte	0x8f5
	.uleb128 0x20
	.4byte	.LASF134
	.byte	0x1
	.4byte	0x37
	.byte	0x9
	.byte	0x7c
	.4byte	0x940
	.uleb128 0x1f
	.4byte	.LASF135
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0x9
	.byte	0x81
	.4byte	0x91d
	.uleb128 0x20
	.4byte	.LASF139
	.byte	0x1
	.4byte	0x37
	.byte	0x9
	.byte	0x83
	.4byte	0x96e
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0x9
	.byte	0x88
	.4byte	0x94b
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0x9
	.byte	0x8a
	.4byte	0x984
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0x38
	.byte	0x9
	.byte	0x8b
	.4byte	0xa45
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x9
	.byte	0x8d
	.4byte	0xad
	.byte	0
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x9
	.byte	0x8e
	.4byte	0x171
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x9
	.byte	0x8f
	.4byte	0x8e4
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0x9
	.byte	0x90
	.4byte	0xa2
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0x9
	.byte	0x91
	.4byte	0xad
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x9
	.byte	0x92
	.4byte	0x96e
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x9
	.byte	0x93
	.4byte	0x8ef
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x9
	.byte	0x94
	.4byte	0x8ef
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0x9
	.byte	0x95
	.4byte	0xad
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x9
	.byte	0x96
	.4byte	0xad
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x9
	.byte	0x97
	.4byte	0xad
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x9
	.byte	0x98
	.4byte	0xad
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0x9
	.byte	0x99
	.4byte	0xad
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0x9
	.byte	0x9a
	.4byte	0xad
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0x9
	.byte	0x9b
	.4byte	0xad
	.byte	0x34
	.byte	0
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0x9
	.byte	0x8a
	.4byte	0xa50
	.uleb128 0xd
	.byte	0x4
	.4byte	0x984
	.uleb128 0x20
	.4byte	.LASF162
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0xf1
	.4byte	0xa85
	.uleb128 0x1f
	.4byte	.LASF163
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF164
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF165
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF166
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF167
	.byte	0x4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF168
	.byte	0x1
	.4byte	0x37
	.byte	0xb
	.byte	0x24
	.4byte	0xacc
	.uleb128 0x1f
	.4byte	.LASF169
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF170
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF171
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF172
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF173
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF174
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF176
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF177
	.byte	0x7
	.byte	0
	.uleb128 0x21
	.4byte	.LASF182
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafd
	.uleb128 0x22
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0x912
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x23
	.4byte	.LASF180
	.byte	0x1
	.byte	0x20
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x24
	.4byte	.LASF218
	.byte	0x1
	.byte	0x29
	.4byte	0x8e4
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4e
	.uleb128 0x25
	.4byte	.LASF178
	.byte	0x1
	.byte	0x29
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.4byte	.LASF179
	.byte	0x1
	.byte	0x29
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.4byte	.LASF181
	.byte	0x1
	.byte	0x2b
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.ascii	"ns\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x21
	.4byte	.LASF183
	.byte	0x1
	.byte	0x3b
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8d
	.uleb128 0x22
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x3b
	.4byte	0x912
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x25
	.4byte	.LASF178
	.byte	0x1
	.byte	0x3b
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.4byte	.LASF184
	.byte	0x1
	.byte	0x3d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF185
	.byte	0x1
	.byte	0x46
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbcc
	.uleb128 0x22
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x912
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x25
	.4byte	.LASF178
	.byte	0x1
	.byte	0x46
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.4byte	.LASF184
	.byte	0x1
	.byte	0x48
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF186
	.byte	0x1
	.byte	0x51
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0b
	.uleb128 0x22
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x51
	.4byte	0x912
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x25
	.4byte	.LASF178
	.byte	0x1
	.byte	0x51
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.4byte	.LASF184
	.byte	0x1
	.byte	0x53
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF187
	.byte	0x1
	.byte	0x5c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc66
	.uleb128 0x22
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0x912
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x25
	.4byte	.LASF178
	.byte	0x1
	.byte	0x5c
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.4byte	.LASF188
	.byte	0x1
	.byte	0x5c
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.4byte	.LASF179
	.byte	0x1
	.byte	0x5c
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.4byte	.LASF184
	.byte	0x1
	.byte	0x5e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF190
	.byte	0x1
	.byte	0x66
	.4byte	0xad
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca9
	.uleb128 0x22
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x66
	.4byte	0x912
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x23
	.4byte	.LASF189
	.byte	0x1
	.byte	0x68
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LASF184
	.byte	0x1
	.byte	0x68
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF191
	.byte	0x1
	.byte	0x70
	.4byte	0x8e4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd12
	.uleb128 0x22
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x70
	.4byte	0x912
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x25
	.4byte	.LASF188
	.byte	0x1
	.byte	0x70
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.4byte	.LASF179
	.byte	0x1
	.byte	0x70
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.4byte	.LASF192
	.byte	0x1
	.byte	0x72
	.4byte	0x8e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x28
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x23
	.4byte	.LASF184
	.byte	0x1
	.byte	0x76
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF193
	.byte	0x1
	.byte	0x7f
	.4byte	0xc3
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd9f
	.uleb128 0x22
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x7f
	.4byte	0x912
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x25
	.4byte	.LASF178
	.byte	0x1
	.byte	0x7f
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.4byte	.LASF188
	.byte	0x1
	.byte	0x7f
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.4byte	.LASF179
	.byte	0x1
	.byte	0x7f
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x23
	.4byte	.LASF194
	.byte	0x1
	.byte	0x83
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x28
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x26
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x85
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x85
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF195
	.byte	0x1
	.byte	0x8d
	.4byte	0xc3
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe90
	.uleb128 0x22
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x8d
	.4byte	0x912
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x25
	.4byte	.LASF178
	.byte	0x1
	.byte	0x8d
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.4byte	.LASF188
	.byte	0x1
	.byte	0x8d
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.4byte	.LASF179
	.byte	0x1
	.byte	0x8d
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x23
	.4byte	.LASF196
	.byte	0x1
	.byte	0x91
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xe2e
	.uleb128 0x26
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x93
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x93
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x28
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x23
	.4byte	.LASF197
	.byte	0x1
	.byte	0x97
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x26
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x99
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x99
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x26
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x99
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x99
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF198
	.byte	0x1
	.byte	0xa7
	.4byte	0x8e4
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf8c
	.uleb128 0x22
	.ascii	"CS\000"
	.byte	0x1
	.byte	0xa7
	.4byte	0x912
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x25
	.4byte	.LASF178
	.byte	0x1
	.byte	0xa7
	.4byte	0x16f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.4byte	.LASF179
	.byte	0x1
	.byte	0xa7
	.4byte	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x23
	.4byte	.LASF192
	.byte	0x1
	.byte	0xa9
	.4byte	0x8e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x28
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x23
	.4byte	.LASF196
	.byte	0x1
	.byte	0xad
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.4byte	.LASF199
	.byte	0x1
	.byte	0xae
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x23
	.4byte	.LASF200
	.byte	0x1
	.byte	0xb4
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.4byte	.LASF201
	.byte	0x1
	.byte	0xb4
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.4byte	.LASF202
	.byte	0x1
	.byte	0xb4
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.4byte	.LASF203
	.byte	0x1
	.byte	0xb5
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.4byte	.LASF204
	.byte	0x1
	.byte	0xb5
	.4byte	0x8ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.4byte	.LASF205
	.byte	0x1
	.byte	0xb6
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x26
	.ascii	"_a\000"
	.byte	0x1
	.byte	0xba
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.ascii	"_b\000"
	.byte	0x1
	.byte	0xba
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF206
	.byte	0x1
	.byte	0xf8
	.4byte	0x8e4
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff6
	.uleb128 0x23
	.4byte	.LASF192
	.byte	0x1
	.byte	0xfa
	.4byte	0x8e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x28
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x23
	.4byte	.LASF146
	.byte	0x1
	.byte	0xfe
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.4byte	.LASF207
	.byte	0x1
	.byte	0xff
	.4byte	0x940
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2a
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x100
	.4byte	0xa45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x101
	.4byte	0x171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF209
	.byte	0x7
	.2byte	0x2fd
	.4byte	0x489
	.uleb128 0x8
	.4byte	0x100d
	.4byte	0x100d
	.uleb128 0x2d
	.byte	0
	.uleb128 0x18
	.4byte	0x979
	.uleb128 0x2e
	.4byte	.LASF210
	.byte	0xc
	.byte	0x18
	.4byte	0x101d
	.uleb128 0x18
	.4byte	0x1002
	.uleb128 0x2e
	.4byte	.LASF211
	.byte	0x1
	.byte	0x18
	.4byte	0xb8
	.uleb128 0x2f
	.4byte	.LASF212
	.byte	0x1
	.byte	0x1a
	.4byte	0xa45
	.uleb128 0x5
	.byte	0x3
	.4byte	FlashConfig
	.uleb128 0x2f
	.4byte	.LASF213
	.byte	0x1
	.byte	0x1b
	.4byte	0xc3
	.uleb128 0x5
	.byte	0x3
	.4byte	FlashCapacity
	.uleb128 0x13
	.4byte	0x8e4
	.4byte	0x1072
	.uleb128 0x14
	.4byte	0x912
	.uleb128 0x14
	.4byte	0x97
	.uleb128 0x14
	.4byte	0xad
	.uleb128 0x14
	.4byte	0x8ef
	.uleb128 0x14
	.4byte	0xc3
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF214
	.byte	0x1
	.byte	0x1c
	.4byte	0x1083
	.uleb128 0x5
	.byte	0x3
	.4byte	SFI_DeviceCmdAddrWrite
	.uleb128 0xd
	.byte	0x4
	.4byte	0x104f
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.4byte	0x74
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF49:
	.ascii	"_dso_handle\000"
.LASF2:
	.ascii	"short int\000"
.LASF204:
	.ascii	"pEnd\000"
.LASF202:
	.ascii	"nBlocks\000"
.LASF128:
	.ascii	"true\000"
.LASF58:
	.ascii	"__sFILE\000"
.LASF48:
	.ascii	"_fnargs\000"
.LASF17:
	.ascii	"size_t\000"
.LASF189:
	.ascii	"tmpDevixeID\000"
.LASF16:
	.ascii	"uintptr_t\000"
.LASF147:
	.ascii	"DeviceName\000"
.LASF167:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF135:
	.ascii	"SFM_UNKNOWN\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF192:
	.ascii	"Result\000"
.LASF117:
	.ascii	"_getdate_err\000"
.LASF141:
	.ascii	"BR_32K\000"
.LASF121:
	.ascii	"_wcrtomb_state\000"
.LASF150:
	.ascii	"TotalPages\000"
.LASF122:
	.ascii	"_wcsrtombs_state\000"
.LASF191:
	.ascii	"SF_WriteStatus\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF61:
	.ascii	"_lbfsize\000"
.LASF186:
	.ascii	"SF_EraseBlock4K\000"
.LASF154:
	.ascii	"SFI_MAC_CTL\000"
.LASF194:
	.ascii	"pReadData\000"
.LASF177:
	.ascii	"USB_EPNUM\000"
.LASF153:
	.ascii	"PostInitSequence\000"
.LASF119:
	.ascii	"_mbrtowc_state\000"
.LASF114:
	.ascii	"_wctomb_state\000"
.LASF38:
	.ascii	"__tm_sec\000"
.LASF20:
	.ascii	"_off_t\000"
.LASF66:
	.ascii	"_close\000"
.LASF0:
	.ascii	"signed char\000"
.LASF184:
	.ascii	"intflags\000"
.LASF67:
	.ascii	"_ubuf\000"
.LASF155:
	.ascii	"SFI_DIRECT_CTL\000"
.LASF40:
	.ascii	"__tm_hour\000"
.LASF149:
	.ascii	"PageSize\000"
.LASF96:
	.ascii	"__sf\000"
.LASF47:
	.ascii	"_on_exit_args\000"
.LASF198:
	.ascii	"SF_Erase\000"
.LASF195:
	.ascii	"SF_Write\000"
.LASF62:
	.ascii	"_cookie\000"
.LASF95:
	.ascii	"__sglue\000"
.LASF6:
	.ascii	"long int\000"
.LASF160:
	.ascii	"DRIVING\000"
.LASF59:
	.ascii	"_flags\000"
.LASF83:
	.ascii	"_current_locale\000"
.LASF77:
	.ascii	"_stdin\000"
.LASF169:
	.ascii	"USB_EP0\000"
.LASF87:
	.ascii	"_result_k\000"
.LASF9:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF173:
	.ascii	"USB_EP4IN\000"
.LASF91:
	.ascii	"_cvtbuf\000"
.LASF70:
	.ascii	"_offset\000"
.LASF120:
	.ascii	"_mbsrtowcs_state\000"
.LASF118:
	.ascii	"_mbrlen_state\000"
.LASF129:
	.ascii	"boolean\000"
.LASF54:
	.ascii	"_fns\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF34:
	.ascii	"_sign\000"
.LASF209:
	.ascii	"_impure_ptr\000"
.LASF132:
	.ascii	"TSFI_CS\000"
.LASF133:
	.ascii	"tag_SFI_CS\000"
.LASF63:
	.ascii	"_read\000"
.LASF37:
	.ascii	"__tm\000"
.LASF217:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF208:
	.ascii	"pConfig\000"
.LASF78:
	.ascii	"_stdout\000"
.LASF90:
	.ascii	"_cvtlen\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF60:
	.ascii	"_file\000"
.LASF53:
	.ascii	"_ind\000"
.LASF71:
	.ascii	"_data\000"
.LASF210:
	.ascii	"DFConfigList\000"
.LASF99:
	.ascii	"_niobs\000"
.LASF110:
	.ascii	"_rand_next\000"
.LASF157:
	.ascii	"SFI_MISC_CTL2\000"
.LASF116:
	.ascii	"_signal_buf\000"
.LASF107:
	.ascii	"_asctime_buf\000"
.LASF203:
	.ascii	"pStart\000"
.LASF23:
	.ascii	"__wch\000"
.LASF172:
	.ascii	"USB_EP3IN\000"
.LASF92:
	.ascii	"_new\000"
.LASF72:
	.ascii	"_lock\000"
.LASF178:
	.ascii	"Address\000"
.LASF103:
	.ascii	"_mult\000"
.LASF86:
	.ascii	"_result\000"
.LASF131:
	.ascii	"SFI_CSNUM\000"
.LASF205:
	.ascii	"blockGranularity\000"
.LASF64:
	.ascii	"_write\000"
.LASF43:
	.ascii	"__tm_year\000"
.LASF206:
	.ascii	"SF_Initialize\000"
.LASF197:
	.ascii	"nBytes\000"
.LASF144:
	.ascii	"TDFCONFIG\000"
.LASF125:
	.ascii	"_nmalloc\000"
.LASF46:
	.ascii	"__tm_isdst\000"
.LASF180:
	.ascii	"tmpSR\000"
.LASF25:
	.ascii	"sizetype\000"
.LASF145:
	.ascii	"tag_DFCONFIG\000"
.LASF18:
	.ascii	"long double\000"
.LASF179:
	.ascii	"Count\000"
.LASF187:
	.ascii	"SF_WriteBlock\000"
.LASF124:
	.ascii	"_nextf\000"
.LASF182:
	.ascii	"SF_DevWaitReady\000"
.LASF130:
	.ascii	"SFI_CS0\000"
.LASF216:
	.ascii	"Source\\System\\sf.c\000"
.LASF42:
	.ascii	"__tm_mon\000"
.LASF201:
	.ascii	"nEnd\000"
.LASF52:
	.ascii	"_atexit\000"
.LASF84:
	.ascii	"__sdidinit\000"
.LASF109:
	.ascii	"_gamma_signgam\000"
.LASF215:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF22:
	.ascii	"wint_t\000"
.LASF218:
	.ascii	"SF_BlankCheck\000"
.LASF143:
	.ascii	"TBSRANGE\000"
.LASF171:
	.ascii	"USB_EP2IN\000"
.LASF28:
	.ascii	"_mbstate_t\000"
.LASF193:
	.ascii	"SF_Read\000"
.LASF19:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF56:
	.ascii	"_base\000"
.LASF183:
	.ascii	"SF_EraseBlock64K\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF100:
	.ascii	"_iobs\000"
.LASF24:
	.ascii	"__wchb\000"
.LASF134:
	.ascii	"tag_SFIMODE\000"
.LASF123:
	.ascii	"_h_errno\000"
.LASF29:
	.ascii	"_flock_t\000"
.LASF45:
	.ascii	"__tm_yday\000"
.LASF161:
	.ascii	"pDFCONFIG\000"
.LASF55:
	.ascii	"__sbuf\000"
.LASF74:
	.ascii	"_flags2\000"
.LASF89:
	.ascii	"_freelist\000"
.LASF196:
	.ascii	"bAddress\000"
.LASF97:
	.ascii	"__FILE\000"
.LASF151:
	.ascii	"EraseSupport\000"
.LASF127:
	.ascii	"false\000"
.LASF73:
	.ascii	"_mbstate\000"
.LASF112:
	.ascii	"_mblen_state\000"
.LASF80:
	.ascii	"_inc\000"
.LASF158:
	.ascii	"SFI_DLY_CTL_2\000"
.LASF159:
	.ascii	"SFI_DLY_CTL_3\000"
.LASF148:
	.ascii	"Address4Bytes\000"
.LASF140:
	.ascii	"BR_4K\000"
.LASF156:
	.ascii	"SFI_MISC_CTL\000"
.LASF85:
	.ascii	"__cleanup\000"
.LASF199:
	.ascii	"AlignMask\000"
.LASF33:
	.ascii	"_maxwds\000"
.LASF75:
	.ascii	"_reent\000"
.LASF101:
	.ascii	"_rand48\000"
.LASF102:
	.ascii	"_seed\000"
.LASF93:
	.ascii	"_atexit0\000"
.LASF174:
	.ascii	"USB_EPMAXINDEX\000"
.LASF26:
	.ascii	"__count\000"
.LASF27:
	.ascii	"__value\000"
.LASF65:
	.ascii	"_seek\000"
.LASF44:
	.ascii	"__tm_wday\000"
.LASF21:
	.ascii	"_fpos_t\000"
.LASF11:
	.ascii	"__uintptr_t\000"
.LASF50:
	.ascii	"_fntypes\000"
.LASF213:
	.ascii	"FlashCapacity\000"
.LASF76:
	.ascii	"_errno\000"
.LASF30:
	.ascii	"char\000"
.LASF69:
	.ascii	"_blksize\000"
.LASF57:
	.ascii	"_size\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF170:
	.ascii	"USB_EP1IN\000"
.LASF214:
	.ascii	"SFI_DeviceCmdAddrWrite\000"
.LASF142:
	.ascii	"BR_64K\000"
.LASF211:
	.ascii	"__ROMBase\000"
.LASF81:
	.ascii	"_emergency\000"
.LASF51:
	.ascii	"_is_cxa\000"
.LASF152:
	.ascii	"PreInitSequence\000"
.LASF168:
	.ascii	"tag_EP\000"
.LASF79:
	.ascii	"_stderr\000"
.LASF32:
	.ascii	"_next\000"
.LASF106:
	.ascii	"_strtok_last\000"
.LASF163:
	.ascii	"LCDIF_LAYER0\000"
.LASF164:
	.ascii	"LCDIF_LAYER1\000"
.LASF165:
	.ascii	"LCDIF_LAYER2\000"
.LASF166:
	.ascii	"LCDIF_LAYER3\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF136:
	.ascii	"SFM_SPI\000"
.LASF104:
	.ascii	"_add\000"
.LASF31:
	.ascii	"__ULong\000"
.LASF207:
	.ascii	"ItfMode\000"
.LASF176:
	.ascii	"USB_EP2OUT\000"
.LASF82:
	.ascii	"_current_category\000"
.LASF146:
	.ascii	"DeviceID\000"
.LASF200:
	.ascii	"nStart\000"
.LASF105:
	.ascii	"_unused_rand\000"
.LASF35:
	.ascii	"_wds\000"
.LASF98:
	.ascii	"_glue\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF115:
	.ascii	"_l64a_buf\000"
.LASF188:
	.ascii	"Data\000"
.LASF36:
	.ascii	"_Bigint\000"
.LASF94:
	.ascii	"_sig_func\000"
.LASF185:
	.ascii	"SF_EraseBlock32K\000"
.LASF68:
	.ascii	"_nbuf\000"
.LASF126:
	.ascii	"_unused\000"
.LASF162:
	.ascii	"tag_VLINDEX\000"
.LASF137:
	.ascii	"SFM_QPI\000"
.LASF108:
	.ascii	"_localtime_buf\000"
.LASF190:
	.ascii	"SF_DevReadID\000"
.LASF39:
	.ascii	"__tm_min\000"
.LASF111:
	.ascii	"_r48\000"
.LASF175:
	.ascii	"USB_EP1OUT\000"
.LASF139:
	.ascii	"tag_BSRANGE\000"
.LASF113:
	.ascii	"_mbtowc_state\000"
.LASF88:
	.ascii	"_p5s\000"
.LASF181:
	.ascii	"pData\000"
.LASF212:
	.ascii	"FlashConfig\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF41:
	.ascii	"__tm_mday\000"
.LASF138:
	.ascii	"TSFIMODE\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
