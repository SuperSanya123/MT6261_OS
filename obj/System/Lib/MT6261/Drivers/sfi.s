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
	.file	"sfi.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.ramfunc,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	SFI_MaskAHBChannel, %function
SFI_MaskAHBChannel:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\sfi.c"
	.loc 1 25 0
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
	.loc 1 26 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2
	.loc 1 26 0 is_stmt 0 discriminator 1
	ldr	r3, .L5
	ldr	r2, .L5
	ldr	r2, [r2]
	movs	r1, #128
	lsls	r1, r1, #2
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 28 0 is_stmt 1 discriminator 1
	b	.L4
.L2:
	.loc 1 27 0
	ldr	r3, .L5
	ldr	r2, .L5
	ldr	r2, [r2]
	ldr	r1, .L5+4
	ands	r2, r1
	str	r2, [r3]
.L4:
	.loc 1 28 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	-1609301948
	.word	-513
	.cfi_endproc
.LFE1:
	.size	SFI_MaskAHBChannel, .-SFI_MaskAHBChannel
	.align	2
	.code	16
	.thumb_func
	.type	SFI_MACEnable, %function
SFI_MACEnable:
.LFB2:
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
	.loc 1 34 0
	movs	r0, #1
	bl	SFI_MaskAHBChannel
	.loc 1 36 0
	ldr	r3, .L11
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 37 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SFI_GetInterfaceMode
	movs	r3, r0
	cmp	r3, #2
	bne	.L8
	.loc 1 38 0
	ldr	r3, [r7, #12]
	movs	r2, #16
	orrs	r3, r2
	str	r3, [r7, #12]
.L8:
	.loc 1 40 0
	ldr	r3, [r7, #12]
	movs	r2, #8
	orrs	r3, r2
	str	r3, [r7, #12]
	.loc 1 42 0
	nop
.L9:
	.loc 1 42 0 is_stmt 0 discriminator 1
	ldr	r3, .L11+4
	ldr	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #6
	ands	r3, r2
	beq	.L9
	.loc 1 43 0 is_stmt 1
	nop
.L10:
	.loc 1 43 0 is_stmt 0 discriminator 1
	ldr	r3, .L11+8
	ldr	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #1
	ands	r3, r2
	beq	.L10
	.loc 1 45 0 is_stmt 1
	ldr	r3, .L11
	ldr	r2, [r7, #12]
	str	r2, [r3]
	.loc 1 46 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	-1609302016
	.word	-1609301948
	.word	-1609302008
	.cfi_endproc
.LFE2:
	.size	SFI_MACEnable, .-SFI_MACEnable
	.align	2
	.code	16
	.thumb_func
	.type	SFI_MACTrigger, %function
SFI_MACTrigger:
.LFB3:
	.loc 1 49 0
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
	.loc 1 50 0
	ldr	r3, .L16
	ldr	r2, .L16
	ldr	r2, [r2]
	movs	r1, #12
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 52 0
	nop
.L14:
	.loc 1 52 0 is_stmt 0 discriminator 1
	ldr	r3, .L16
	ldr	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	beq	.L14
	.loc 1 53 0 is_stmt 1
	nop
.L15:
	.loc 1 53 0 is_stmt 0 discriminator 1
	ldr	r3, .L16
	ldr	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	bne	.L15
	.loc 1 54 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L17:
	.align	2
.L16:
	.word	-1609302016
	.cfi_endproc
.LFE3:
	.size	SFI_MACTrigger, .-SFI_MACTrigger
	.align	2
	.code	16
	.thumb_func
	.type	SFI_MACLeave, %function
SFI_MACLeave:
.LFB4:
	.loc 1 57 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 58 0
	ldr	r3, .L21
	ldr	r2, .L21
	ldr	r2, [r2]
	ldr	r1, .L21+4
	ands	r2, r1
	str	r2, [r3]
	.loc 1 59 0
	nop
.L19:
	.loc 1 59 0 is_stmt 0 discriminator 1
	ldr	r3, .L21
	ldr	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	bne	.L19
	.loc 1 61 0 is_stmt 1
	ldr	r3, .L21
	ldr	r2, .L21
	ldr	r2, [r2]
	movs	r1, #8
	bics	r2, r1
	str	r2, [r3]
	.loc 1 62 0
	nop
.L20:
	.loc 1 62 0 is_stmt 0 discriminator 1
	ldr	r3, .L21
	ldr	r3, [r3]
	movs	r2, #8
	ands	r3, r2
	bne	.L20
	.loc 1 64 0 is_stmt 1
	movs	r0, #0
	bl	SFI_MaskAHBChannel
	.loc 1 65 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L22:
	.align	2
.L21:
	.word	-1609302016
	.word	-268435477
	.cfi_endproc
.LFE4:
	.size	SFI_MACLeave, .-SFI_MACLeave
	.align	2
	.code	16
	.thumb_func
	.type	SFI_MACWaitReady, %function
SFI_MACWaitReady:
.LFB5:
	.loc 1 68 0
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
	.loc 1 69 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SFI_MACTrigger
	.loc 1 70 0
	bl	SFI_MACLeave
	.loc 1 71 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE5:
	.size	SFI_MACWaitReady, .-SFI_MACWaitReady
	.align	2
	.code	16
	.thumb_func
	.type	SFI_SendCmdList, %function
SFI_SendCmdList:
.LFB6:
	.loc 1 74 0
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
	movs	r2, r0
	str	r1, [r7]
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 75 0
	b	.L25
.L26:
	.loc 1 77 0
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r1, [r3]
	ldr	r3, [r7]
	adds	r2, r3, #2
	ldr	r3, [r7]
	ldrb	r3, [r3]
	subs	r3, r3, #1
	movs	r4, r3
	adds	r3, r7, #7
	ldrb	r0, [r3]
	movs	r3, r4
	bl	SFI_DeviceCommandWrite
	.loc 1 78 0
	ldr	r3, [r7]
	ldrb	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, [r7]
	adds	r3, r2, r3
	str	r3, [r7]
.L25:
	.loc 1 75 0
	ldr	r3, [r7]
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L26
	.loc 1 80 0
	nop
	mov	sp, r7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE6:
	.size	SFI_SendCmdList, .-SFI_SendCmdList
	.align	2
	.global	SFI_GetInterfaceMode
	.code	16
	.thumb_func
	.type	SFI_GetInterfaceMode, %function
SFI_GetInterfaceMode:
.LFB7:
	.loc 1 83 0
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
	.loc 1 84 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L28
	.loc 1 84 0 is_stmt 0 discriminator 1
	ldr	r3, .L32
	ldr	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	beq	.L29
	.loc 1 84 0 discriminator 2
	movs	r3, #2
	b	.L31
.L29:
	.loc 1 84 0 discriminator 3
	movs	r3, #1
	b	.L31
.L28:
	.loc 1 85 0 is_stmt 1
	movs	r3, #0
.L31:
	.loc 1 86 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L33:
	.align	2
.L32:
	.word	-1609302012
	.cfi_endproc
.LFE7:
	.size	SFI_GetInterfaceMode, .-SFI_GetInterfaceMode
	.align	2
	.global	SFI_DeviceCommandRead
	.code	16
	.thumb_func
	.type	SFI_DeviceCommandRead, %function
SFI_DeviceCommandRead:
.LFB8:
	.loc 1 89 0
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
	str	r2, [r7, #8]
	str	r3, [r7, #4]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	movs	r3, #14
	adds	r3, r7, r3
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 90 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L35
	.loc 1 92 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L36
	.loc 1 92 0 discriminator 1
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L37
.L36:
	.loc 1 93 0
	ldr	r3, [r7, #4]
	cmp	r3, #158
	bls	.L37
	.loc 1 94 0
	movs	r3, #159
	str	r3, [r7, #4]
.L37:
	.loc 1 96 0
	ldr	r3, .L45
	movs	r2, #14
	adds	r2, r7, r2
	ldrb	r2, [r2]
	str	r2, [r3]
	.loc 1 97 0
	ldr	r3, .L45+4
	movs	r2, #1
	str	r2, [r3]
	.loc 1 98 0
	ldr	r3, .L45+8
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 1 99 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SFI_MACEnable
	.loc 1 100 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SFI_MACWaitReady
	.loc 1 102 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L38
	.loc 1 102 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L38
.LBB2:
	.loc 1 104 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 105 0
	movs	r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	ldr	r2, .L45+12
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r3, [r3]
	lsrs	r3, r3, #8
	str	r3, [r7, #20]
	.loc 1 107 0
	b	.L39
.L42:
	.loc 1 111 0 discriminator 3
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #20]
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	strb	r2, [r3]
	.loc 1 112 0 discriminator 3
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #8
	str	r3, [r7, #20]
	.loc 1 109 0 discriminator 3
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L40:
	.loc 1 109 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #3
	bhi	.L41
	.loc 1 109 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L42
.L41:
	.loc 1 114 0 is_stmt 1
	movs	r3, #0
	str	r3, [r7, #24]
	.loc 1 115 0
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	ldr	r2, .L45+12
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r3, [r3]
	str	r3, [r7, #20]
.L39:
	.loc 1 107 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L40
.L38:
.LBE2:
	.loc 1 118 0
	movs	r3, #1
	b	.L44
.L35:
	.loc 1 120 0
	movs	r3, #0
.L44:
	.loc 1 121 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
.L46:
	.align	2
.L45:
	.word	-1609299968
	.word	-1609302000
	.word	-1609301996
	.word	671416832
	.cfi_endproc
.LFE8:
	.size	SFI_DeviceCommandRead, .-SFI_DeviceCommandRead
	.align	2
	.global	SFI_DeviceCommandWrite
	.code	16
	.thumb_func
	.type	SFI_DeviceCommandWrite, %function
SFI_DeviceCommandWrite:
.LFB9:
	.loc 1 124 0
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
	str	r2, [r7, #8]
	str	r3, [r7, #4]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	movs	r3, #14
	adds	r3, r7, r3
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 125 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L48
.LBB3:
	.loc 1 127 0
	movs	r3, #1
	str	r3, [r7, #28]
	.loc 1 129 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L49
	.loc 1 129 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L49
.LBB4:
	.loc 1 131 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 132 0
	movs	r3, #8
	str	r3, [r7, #16]
	.loc 1 134 0
	ldr	r3, [r7, #28]
	movs	r2, #160
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L50
	.loc 1 135 0
	ldr	r3, [r7, #28]
	movs	r2, #160
	subs	r3, r2, r3
	str	r3, [r7, #4]
.L50:
	.loc 1 137 0
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	adds	r3, r2, r3
	str	r3, [r7, #28]
	.loc 1 139 0
	b	.L51
.L54:
	.loc 1 143 0 discriminator 3
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #16]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #24]
	orrs	r3, r2
	str	r3, [r7, #24]
	.loc 1 141 0 discriminator 3
	ldr	r3, [r7, #16]
	adds	r3, r3, #8
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L52:
	.loc 1 141 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	cmp	r3, #31
	bhi	.L53
	.loc 1 141 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L54
.L53:
	.loc 1 145 0 is_stmt 1
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 146 0
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldr	r2, .L58
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	str	r2, [r3]
	.loc 1 147 0
	movs	r3, #0
	str	r3, [r7, #24]
.L51:
	.loc 1 139 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L52
.LBE4:
	.loc 1 130 0
	b	.L56
.L49:
	.loc 1 150 0
	ldr	r3, .L58+4
	movs	r2, #14
	adds	r2, r7, r2
	ldrb	r2, [r2]
	str	r2, [r3]
.L56:
	.loc 1 152 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SFI_MACEnable
	.loc 1 153 0
	ldr	r3, .L58+8
	ldr	r2, [r7, #28]
	str	r2, [r3]
	.loc 1 154 0
	ldr	r3, .L58+12
	movs	r2, #0
	str	r2, [r3]
	.loc 1 155 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SFI_MACWaitReady
	.loc 1 157 0
	movs	r3, #1
	b	.L57
.L48:
.LBE3:
	.loc 1 159 0
	movs	r3, #0
.L57:
	.loc 1 160 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
.L59:
	.align	2
.L58:
	.word	671416832
	.word	-1609299968
	.word	-1609302000
	.word	-1609301996
	.cfi_endproc
.LFE9:
	.size	SFI_DeviceCommandWrite, .-SFI_DeviceCommandWrite
	.align	2
	.global	SFI_DeviceCmdAddr3Write
	.code	16
	.thumb_func
	.type	SFI_DeviceCmdAddr3Write, %function
SFI_DeviceCmdAddr3Write:
.LFB10:
	.loc 1 164 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r2, [r7, #8]
	str	r3, [r7, #4]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	movs	r3, #14
	adds	r3, r7, r3
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 165 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.LCB743
	b	.L61	@long jump
.LCB743:
.LBB5:
	.loc 1 167 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 168 0
	ldr	r3, [r7, #8]
	lsls	r2, r3, #24
	ldr	r3, [r7, #8]
	lsls	r1, r3, #8
	movs	r3, #255
	lsls	r3, r3, #16
	ands	r3, r1
	orrs	r2, r3
	ldr	r3, [r7, #8]
	lsrs	r1, r3, #8
	movs	r3, #255
	lsls	r3, r3, #8
	ands	r3, r1
	orrs	r2, r3
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #24
	orrs	r3, r2
	movs	r2, #255
	bics	r3, r2
	movs	r2, r3
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	orrs	r3, r2
	str	r3, [r7, #24]
	.loc 1 169 0
	movs	r3, #4
	str	r3, [r7, #20]
	.loc 1 171 0
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	ldr	r2, .L70
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	str	r2, [r3]
	.loc 1 173 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L62
	.loc 1 173 0 discriminator 1
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L62
.LBB6:
	.loc 1 177 0
	ldr	r3, [r7, #20]
	movs	r2, #160
	subs	r2, r2, r3
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bhi	.L63
	.loc 1 178 0
	ldr	r3, [r7, #20]
	movs	r2, #160
	subs	r3, r2, r3
	str	r3, [r7, #40]
.L63:
	.loc 1 180 0
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #40]
	adds	r3, r2, r3
	str	r3, [r7, #20]
	.loc 1 182 0
	b	.L64
.L68:
	.loc 1 184 0
	movs	r3, #0
	str	r3, [r7, #24]
	.loc 1 185 0
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L65
.L67:
	.loc 1 187 0 discriminator 4
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #16]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #24]
	orrs	r3, r2
	str	r3, [r7, #24]
	.loc 1 185 0 discriminator 4
	ldr	r3, [r7, #16]
	adds	r3, r3, #8
	str	r3, [r7, #16]
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	str	r3, [r7, #40]
.L65:
	.loc 1 185 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	cmp	r3, #31
	bhi	.L66
	.loc 1 185 0 discriminator 3
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L67
.L66:
	.loc 1 189 0 is_stmt 1
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	ldr	r2, .L70
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	str	r2, [r3]
.L64:
	.loc 1 182 0
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L68
.L62:
.LBE6:
	.loc 1 193 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SFI_MACEnable
	.loc 1 194 0
	ldr	r3, .L70+4
	ldr	r2, [r7, #20]
	str	r2, [r3]
	.loc 1 195 0
	ldr	r3, .L70+8
	movs	r2, #0
	str	r2, [r3]
	.loc 1 196 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SFI_MACWaitReady
	.loc 1 198 0
	movs	r3, #1
	b	.L69
.L61:
.LBE5:
	.loc 1 200 0
	movs	r3, #0
.L69:
	.loc 1 201 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
.L71:
	.align	2
.L70:
	.word	671416832
	.word	-1609302000
	.word	-1609301996
	.cfi_endproc
.LFE10:
	.size	SFI_DeviceCmdAddr3Write, .-SFI_DeviceCmdAddr3Write
	.align	2
	.global	SFI_DeviceCmdAddr4Write
	.code	16
	.thumb_func
	.type	SFI_DeviceCmdAddr4Write, %function
SFI_DeviceCmdAddr4Write:
.LFB11:
	.loc 1 205 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r2, [r7, #8]
	str	r3, [r7, #4]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	movs	r3, #14
	adds	r3, r7, r3
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 206 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.LCB931
	b	.L73	@long jump
.LCB931:
.LBB7:
	.loc 1 208 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 209 0
	ldr	r3, [r7, #8]
	movs	r2, #255
	ands	r3, r2
	str	r3, [r7, #24]
	.loc 1 210 0
	movs	r3, #5
	str	r3, [r7, #20]
	.loc 1 212 0
	ldr	r3, [r7, #8]
	lsls	r2, r3, #24
	ldr	r3, [r7, #8]
	lsls	r1, r3, #8
	movs	r3, #255
	lsls	r3, r3, #16
	ands	r3, r1
	orrs	r2, r3
	ldr	r3, [r7, #8]
	lsrs	r1, r3, #8
	movs	r3, #255
	lsls	r3, r3, #8
	ands	r3, r1
	orrs	r2, r3
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #24
	orrs	r3, r2
	str	r3, [r7, #8]
	.loc 1 213 0
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	ldr	r2, .L83
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	lsls	r1, r2, #8
	movs	r2, #14
	adds	r2, r7, r2
	ldrb	r2, [r2]
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 215 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L74
	.loc 1 215 0 discriminator 1
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L74
.LBB8:
	.loc 1 217 0
	movs	r3, #8
	str	r3, [r7, #16]
	.loc 1 219 0
	ldr	r3, [r7, #20]
	movs	r2, #160
	subs	r2, r2, r3
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bhi	.L75
	.loc 1 220 0
	ldr	r3, [r7, #20]
	movs	r2, #160
	subs	r3, r2, r3
	str	r3, [r7, #40]
.L75:
	.loc 1 222 0
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #40]
	adds	r3, r2, r3
	str	r3, [r7, #20]
	.loc 1 224 0
	b	.L76
.L79:
	.loc 1 228 0 discriminator 3
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #16]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #24]
	orrs	r3, r2
	str	r3, [r7, #24]
	.loc 1 226 0 discriminator 3
	ldr	r3, [r7, #16]
	adds	r3, r3, #8
	str	r3, [r7, #16]
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	str	r3, [r7, #40]
.L77:
	.loc 1 226 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	cmp	r3, #31
	bhi	.L78
	.loc 1 226 0 discriminator 2
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L79
.L78:
	.loc 1 230 0 is_stmt 1
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 231 0
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	ldr	r2, .L83
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	str	r2, [r3]
	.loc 1 232 0
	movs	r3, #0
	str	r3, [r7, #24]
.L76:
	.loc 1 224 0
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L77
.LBE8:
	.loc 1 216 0
	b	.L81
.L74:
	.loc 1 235 0
	ldr	r3, .L83+4
	ldr	r2, [r7, #24]
	str	r2, [r3]
.L81:
	.loc 1 237 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SFI_MACEnable
	.loc 1 238 0
	ldr	r3, .L83+8
	ldr	r2, [r7, #20]
	str	r2, [r3]
	.loc 1 239 0
	ldr	r3, .L83+12
	movs	r2, #0
	str	r2, [r3]
	.loc 1 240 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r0, r3
	bl	SFI_MACWaitReady
	.loc 1 242 0
	movs	r3, #1
	b	.L82
.L73:
.LBE7:
	.loc 1 244 0
	movs	r3, #0
.L82:
	.loc 1 245 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
.L84:
	.align	2
.L83:
	.word	671416832
	.word	-1609299968
	.word	-1609302000
	.word	-1609301996
	.cfi_endproc
.LFE11:
	.size	SFI_DeviceCmdAddr4Write, .-SFI_DeviceCmdAddr4Write
	.align	2
	.global	SFI_ConfigureInterface
	.code	16
	.thumb_func
	.type	SFI_ConfigureInterface, %function
SFI_ConfigureInterface:
.LFB12:
	.loc 1 248 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #72
	.cfi_def_cfa_offset 80
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	movs	r2, r0
	str	r1, [r7]
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 249 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L86
	.loc 1 249 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L86
.LBB9:
	.loc 1 251 0 is_stmt 1
	movs	r3, #8
	adds	r2, r7, r3
	ldr	r3, [r7]
	movs	r0, r2
	movs	r1, r3
	movs	r3, #56
	movs	r2, r3
	bl	memcpy
	.loc 1 252 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #68]
	.loc 1 256 0
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r2, [r3, #20]
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r1, r2
	movs	r0, r3
	bl	SFI_SendCmdList
	.loc 1 259 0
	ldr	r2, .L88
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r3, [r3, #28]
	str	r3, [r2]
	.loc 1 260 0
	ldr	r2, .L88+4
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r3, [r3, #32]
	str	r3, [r2]
	.loc 1 261 0
	ldr	r2, .L88+8
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r3, [r3, #36]
	str	r3, [r2]
	.loc 1 262 0
	ldr	r2, .L88+12
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r3, [r3, #40]
	str	r3, [r2]
	.loc 1 263 0
	ldr	r2, .L88+16
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r3, [r3, #44]
	str	r3, [r2]
	.loc 1 264 0
	ldr	r2, .L88+20
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r3, [r3, #48]
	str	r3, [r2]
	.loc 1 266 0
	ldr	r3, .L88+24
	ldr	r3, [r3]
	ldr	r2, .L88+28
	ands	r3, r2
	str	r3, [r7, #64]
	.loc 1 267 0
	ldr	r2, .L88+24
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r1, [r3, #52]
	ldr	r3, [r7, #64]
	orrs	r3, r1
	str	r3, [r2]
	.loc 1 268 0
	ldr	r3, .L88+32
	ldr	r3, [r3]
	ldr	r2, .L88+28
	ands	r3, r2
	str	r3, [r7, #64]
	.loc 1 269 0
	ldr	r2, .L88+32
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r1, [r3, #52]
	ldr	r3, [r7, #64]
	orrs	r3, r1
	str	r3, [r2]
	.loc 1 270 0
	ldr	r3, .L88+36
	ldr	r3, [r3]
	ldr	r2, .L88+28
	ands	r3, r2
	str	r3, [r7, #64]
	.loc 1 271 0
	ldr	r2, .L88+36
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r1, [r3, #52]
	ldr	r3, [r7, #64]
	orrs	r3, r1
	str	r3, [r2]
	.loc 1 274 0
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r2, [r3, #24]
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r1, r2
	movs	r0, r3
	bl	SFI_SendCmdList
	.loc 1 276 0
	ldr	r3, [r7, #68]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 277 0
	movs	r3, #1
	b	.L87
.L86:
.LBE9:
	.loc 1 279 0
	movs	r3, #0
.L87:
	.loc 1 280 0 discriminator 1
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #72
	@ sp needed
	pop	{r7, pc}
.L89:
	.align	2
.L88:
	.word	-1609302016
	.word	-1609302012
	.word	-1609302008
	.word	-1609302004
	.word	-1609301980
	.word	-1609301976
	.word	-1610545664
	.word	-458760
	.word	-1610545660
	.word	-1610545656
	.cfi_endproc
.LFE12:
	.size	SFI_ConfigureInterface, .-SFI_ConfigureInterface
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "d:\\1.11\\share\\em_armgcc\\lib\\gcc\\arm-none-eabi\\5.4.1\\include\\stddef.h"
	.file 5 ".\\Source/systypes.h"
	.file 6 ".\\Source\\Lib\\MT6261/drivers\\sfi.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x637
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.4byte	.LASF80
	.4byte	.LASF81
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
	.byte	0x24
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0xd8
	.4byte	0x85
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x6
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x1d
	.4byte	0xec
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x1d
	.4byte	0xd3
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x76
	.4byte	0x11a
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x7a
	.4byte	0xfd
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x7c
	.4byte	0x148
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x81
	.4byte	0x125
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x83
	.4byte	0x176
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x88
	.4byte	0x153
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0x8a
	.4byte	0x18c
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x38
	.byte	0x6
	.byte	0x8b
	.4byte	0x24d
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x6
	.byte	0x8d
	.4byte	0xa2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x6
	.byte	0x8e
	.4byte	0xc6
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x6
	.byte	0x8f
	.4byte	0xec
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0x90
	.4byte	0x97
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0x91
	.4byte	0xa2
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x6
	.byte	0x92
	.4byte	0x176
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0x93
	.4byte	0xf7
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x6
	.byte	0x94
	.4byte	0xf7
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x6
	.byte	0x95
	.4byte	0xa2
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x6
	.byte	0x96
	.4byte	0xa2
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x6
	.byte	0x97
	.4byte	0xa2
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x6
	.byte	0x98
	.4byte	0xa2
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x6
	.byte	0x99
	.4byte	0xa2
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x6
	.byte	0x9a
	.4byte	0xa2
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x6
	.byte	0x9b
	.4byte	0xa2
	.byte	0x34
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x6
	.byte	0x8a
	.4byte	0x258
	.uleb128 0x5
	.byte	0x4
	.4byte	0x18c
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x1
	.byte	0x18
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x282
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x1
	.byte	0x18
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b3
	.uleb128 0xe
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x20
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x1
	.byte	0x30
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d6
	.uleb128 0xe
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x30
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x1
	.byte	0x38
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x1
	.byte	0x43
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30a
	.uleb128 0xe
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x1
	.byte	0x49
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33b
	.uleb128 0xe
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x49
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x1
	.byte	0x49
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x1
	.byte	0x52
	.4byte	0x148
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x362
	.uleb128 0xe
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x52
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x1
	.byte	0x58
	.4byte	0xec
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e5
	.uleb128 0xe
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x1
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x1
	.byte	0x58
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x1
	.byte	0x58
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x1
	.byte	0x68
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x1
	.byte	0x69
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x1
	.byte	0x69
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x1
	.byte	0x7b
	.4byte	0xec
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x480
	.uleb128 0xe
	.ascii	"CS\000"
	.byte	0x1
	.byte	0x7b
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x1
	.byte	0x7b
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x1
	.byte	0x7b
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x1
	.byte	0x7b
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x1
	.byte	0x7f
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x1
	.byte	0x83
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x1
	.byte	0x83
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x1
	.byte	0x84
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa2
	.4byte	0xec
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x529
	.uleb128 0xe
	.ascii	"CS\000"
	.byte	0x1
	.byte	0xa2
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa2
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa2
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x1
	.byte	0xa3
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa3
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x1
	.byte	0xa7
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x1
	.byte	0xa8
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa9
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x1
	.byte	0xaf
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x1
	.byte	0xcb
	.4byte	0xec
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d2
	.uleb128 0xe
	.ascii	"CS\000"
	.byte	0x1
	.byte	0xcb
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x1
	.byte	0xcb
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x1
	.byte	0xcb
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x1
	.byte	0xcc
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x1
	.byte	0xcc
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x1
	.byte	0xd0
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x1
	.byte	0xd1
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x1
	.byte	0xd2
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x1
	.byte	0xd9
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x1
	.byte	0xf7
	.4byte	0xec
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.ascii	"CS\000"
	.byte	0x1
	.byte	0xf7
	.4byte	0x11a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x1
	.byte	0xf7
	.4byte	0x24d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x1
	.byte	0xfb
	.4byte	0x181
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x1
	.byte	0xfc
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x1
	.byte	0xfd
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
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
	.uleb128 0xa
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
.LASF69:
	.ascii	"OutData\000"
.LASF74:
	.ascii	"SFI_DeviceCmdAddr4Write\000"
.LASF49:
	.ascii	"SFI_DLY_CTL_2\000"
.LASF73:
	.ascii	"Address\000"
.LASF70:
	.ascii	"OutCount\000"
.LASF71:
	.ascii	"TotalLength\000"
.LASF37:
	.ascii	"DeviceID\000"
.LASF23:
	.ascii	"SFI_CSNUM\000"
.LASF35:
	.ascii	"TBSRANGE\000"
.LASF15:
	.ascii	"size_t\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF52:
	.ascii	"pDFCONFIG\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF46:
	.ascii	"SFI_DIRECT_CTL\000"
.LASF34:
	.ascii	"BR_64K\000"
.LASF48:
	.ascii	"SFI_MISC_CTL2\000"
.LASF2:
	.ascii	"short int\000"
.LASF67:
	.ascii	"tmpData\000"
.LASF36:
	.ascii	"TDFCONFIG\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF30:
	.ascii	"TSFIMODE\000"
.LASF61:
	.ascii	"SFI_DeviceCommandRead\000"
.LASF31:
	.ascii	"tag_BSRANGE\000"
.LASF22:
	.ascii	"SFI_CS0\000"
.LASF50:
	.ascii	"SFI_DLY_CTL_3\000"
.LASF56:
	.ascii	"SFI_MACTrigger\000"
.LASF9:
	.ascii	"long long int\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF68:
	.ascii	"SFI_DeviceCommandWrite\000"
.LASF41:
	.ascii	"TotalPages\000"
.LASF6:
	.ascii	"long int\000"
.LASF25:
	.ascii	"tag_SFI_CS\000"
.LASF83:
	.ascii	"SFI_MACLeave\000"
.LASF44:
	.ascii	"PostInitSequence\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF60:
	.ascii	"SFI_GetInterfaceMode\000"
.LASF75:
	.ascii	"Config\000"
.LASF45:
	.ascii	"SFI_MAC_CTL\000"
.LASF77:
	.ascii	"intflags\000"
.LASF16:
	.ascii	"long double\000"
.LASF65:
	.ascii	"Value\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF55:
	.ascii	"Mask\000"
.LASF42:
	.ascii	"EraseSupport\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF72:
	.ascii	"SFI_DeviceCmdAddr3Write\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF19:
	.ascii	"false\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF43:
	.ascii	"PreInitSequence\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF62:
	.ascii	"Command\000"
.LASF32:
	.ascii	"BR_4K\000"
.LASF82:
	.ascii	"tag_DFCONFIG\000"
.LASF18:
	.ascii	"char\000"
.LASF26:
	.ascii	"tag_SFIMODE\000"
.LASF63:
	.ascii	"InData\000"
.LASF27:
	.ascii	"SFM_UNKNOWN\000"
.LASF20:
	.ascii	"true\000"
.LASF28:
	.ascii	"SFM_SPI\000"
.LASF24:
	.ascii	"TSFI_CS\000"
.LASF58:
	.ascii	"SFI_SendCmdList\000"
.LASF47:
	.ascii	"SFI_MISC_CTL\000"
.LASF81:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF76:
	.ascii	"NewConfig\000"
.LASF80:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\sfi.c\000"
.LASF66:
	.ascii	"GPRAMPtr\000"
.LASF40:
	.ascii	"PageSize\000"
.LASF78:
	.ascii	"tmpValue\000"
.LASF53:
	.ascii	"SFI_MaskAHBChannel\000"
.LASF84:
	.ascii	"SFI_ConfigureInterface\000"
.LASF54:
	.ascii	"SFI_MACEnable\000"
.LASF51:
	.ascii	"DRIVING\000"
.LASF59:
	.ascii	"CmdList\000"
.LASF64:
	.ascii	"InCount\000"
.LASF57:
	.ascii	"SFI_MACWaitReady\000"
.LASF38:
	.ascii	"DeviceName\000"
.LASF39:
	.ascii	"Address4Bytes\000"
.LASF29:
	.ascii	"SFM_QPI\000"
.LASF79:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF21:
	.ascii	"boolean\000"
.LASF33:
	.ascii	"BR_32K\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
