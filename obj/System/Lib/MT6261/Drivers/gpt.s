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
	.file	"gpt.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.bss.GPTStatus,"aw",%nobits
	.align	2
	.type	GPTStatus, %object
	.size	GPTStatus, 20
GPTStatus:
	.space	20
	.section	.text.GPT_GetStatus,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GPT_GetStatus, %function
GPT_GetStatus:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\gpt.c"
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 28 0
	ldr	r3, .L3
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 29 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L4:
	.align	2
.L3:
	.word	-1609826288
	.cfi_endproc
.LFE1:
	.size	GPT_GetStatus, .-GPT_GetStatus
	.section	.text.GPT_PowerUp,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GPT_PowerUp, %function
GPT_PowerUp:
.LFB2:
	.loc 1 32 0
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
.LBB2:
	.loc 1 33 0
	movs	r3, #34
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #46
	bgt	.L6
	.loc 1 33 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	asrs	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, .L9
	mov	ip, r2
	add	r3, r3, ip
	movs	r1, r3
	ldr	r3, [r7, #4]
	movs	r2, #15
	ands	r3, r2
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
.LBE2:
	.loc 1 34 0 is_stmt 1 discriminator 1
	b	.L8
.L6:
.LBB3:
	.loc 1 33 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bgt	.L8
	.loc 1 33 0 is_stmt 0 discriminator 3
	ldr	r2, .L9+4
	ldr	r3, [r7, #4]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L8:
.LBE3:
	.loc 1 34 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	-1610546400
	.word	-1603076080
	.cfi_endproc
.LFE2:
	.size	GPT_PowerUp, .-GPT_PowerUp
	.section	.text.GPT_PowerDown,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GPT_PowerDown, %function
GPT_PowerDown:
.LFB3:
	.loc 1 37 0
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
.LBB4:
	.loc 1 38 0
	movs	r3, #34
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #46
	bgt	.L12
	.loc 1 38 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	asrs	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, .L15
	mov	ip, r2
	add	r3, r3, ip
	movs	r1, r3
	ldr	r3, [r7, #4]
	movs	r2, #15
	ands	r3, r2
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
.LBE4:
	.loc 1 39 0 is_stmt 1 discriminator 1
	b	.L14
.L12:
.LBB5:
	.loc 1 38 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bgt	.L14
	.loc 1 38 0 is_stmt 0 discriminator 3
	ldr	r2, .L15+4
	ldr	r3, [r7, #4]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L14:
.LBE5:
	.loc 1 39 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	-1610546416
	.word	-1603076084
	.cfi_endproc
.LFE3:
	.size	GPT_PowerDown, .-GPT_PowerDown
	.section	.text.GPT_IsPoweredUp,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GPT_IsPoweredUp, %function
GPT_IsPoweredUp:
.LFB4:
	.loc 1 42 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 43 0
	movs	r0, #34
	bl	PCTL_GetPeripheralPowerStatus
	movs	r3, r0
	.loc 1 44 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	GPT_IsPoweredUp, .-GPT_IsPoweredUp
	.section	.text.GPT_UpdatePowerState,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GPT_UpdatePowerState, %function
GPT_UpdatePowerState:
.LFB5:
	.loc 1 47 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 48 0
	ldr	r3, .L22
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L21
	.loc 1 48 0 is_stmt 0 discriminator 1
	bl	GPT_PowerDown
.L21:
	.loc 1 49 0 is_stmt 1
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L23:
	.align	2
.L22:
	.word	GPTStatus
	.cfi_endproc
.LFE5:
	.size	GPT_UpdatePowerState, .-GPT_UpdatePowerState
	.section	.text.GPT_InterruptHandler,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GPT_InterruptHandler, %function
GPT_InterruptHandler:
.LFB6:
	.loc 1 52 0
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
	.loc 1 53 0
	adds	r4, r7, #6
	bl	GPT_GetStatus
	movs	r3, r0
	strh	r3, [r4]
.L27:
	.loc 1 57 0
	adds	r3, r7, #6
	ldrh	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	beq	.L25
	.loc 1 57 0 is_stmt 0 discriminator 1
	ldr	r3, .L28
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L25
	.loc 1 57 0 is_stmt 1 discriminator 2
	ldr	r3, .L28
	ldr	r3, [r3, #4]
	blx	r3
.L25:
	.loc 1 58 0
	adds	r3, r7, #6
	ldrh	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	beq	.L26
	.loc 1 58 0 is_stmt 0 discriminator 1
	ldr	r3, .L28
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L26
	.loc 1 58 0 is_stmt 1 discriminator 2
	ldr	r3, .L28
	ldr	r3, [r3, #12]
	blx	r3
.L26:
	.loc 1 59 0
	adds	r4, r7, #6
	bl	GPT_GetStatus
	movs	r3, r0
	strh	r3, [r4]
	.loc 1 61 0
	adds	r3, r7, #6
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L27
	.loc 1 62 0
	nop
	mov	sp, r7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r7, pc}
.L29:
	.align	2
.L28:
	.word	GPTStatus
	.cfi_endproc
.LFE6:
	.size	GPT_InterruptHandler, .-GPT_InterruptHandler
	.section	.text.GPT_RegisterInterrupt,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GPT_RegisterInterrupt, %function
GPT_RegisterInterrupt:
.LFB7:
	.loc 1 65 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #8
	.cfi_def_cfa 7, 8
	.loc 1 67 0
	ldr	r1, .L32
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #1
	movs	r2, #0
	movs	r0, #23
	bl	NVIC_RegisterIRQ
	movs	r3, r0
	adds	r2, r3, #0
	movs	r3, #1
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L32+4
	movs	r1, #1
	ands	r2, r1
	lsls	r0, r2, #4
	ldrb	r2, [r3, #1]
	movs	r1, #16
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3, #1]
	.loc 1 73 0
	ldr	r3, .L32+4
	ldrb	r3, [r3, #1]
	lsls	r3, r3, #27
	lsrs	r3, r3, #31
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 74 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L33:
	.align	2
.L32:
	.word	GPT_InterruptHandler
	.word	GPTStatus
	.cfi_endproc
.LFE7:
	.size	GPT_RegisterInterrupt, .-GPT_RegisterInterrupt
	.section	.text.GPT_TryUnregisterInterrupt,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	GPT_TryUnregisterInterrupt, %function
GPT_TryUnregisterInterrupt:
.LFB8:
	.loc 1 77 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 78 0
	ldr	r3, .L39
	ldrb	r3, [r3, #1]
	movs	r2, #16
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	bne	.L35
	.loc 1 78 0 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L36
.L35:
	.loc 1 79 0 is_stmt 1
	ldr	r3, .L39
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L37
	.loc 1 80 0 discriminator 1
	ldr	r3, .L39
	ldr	r3, [r3, #12]
	.loc 1 79 0 discriminator 1
	cmp	r3, #0
	beq	.L38
.L37:
	.loc 1 80 0
	movs	r3, #0
	b	.L36
.L38:
	.loc 1 83 0
	movs	r0, #23
	bl	NVIC_UnregisterIRQ
	movs	r3, r0
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L39
	movs	r1, #1
	ands	r2, r1
	lsls	r0, r2, #4
	ldrb	r2, [r3, #1]
	movs	r1, #16
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3, #1]
	.loc 1 87 0
	ldr	r3, .L39
	ldrb	r3, [r3, #1]
	movs	r2, #16
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
.L36:
	.loc 1 88 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L40:
	.align	2
.L39:
	.word	GPTStatus
	.cfi_endproc
.LFE8:
	.size	GPT_TryUnregisterInterrupt, .-GPT_TryUnregisterInterrupt
	.section	.text.GPT_InitializeTimers,"ax",%progbits
	.align	2
	.global	GPT_InitializeTimers
	.code	16
	.thumb_func
	.type	GPT_InitializeTimers, %function
GPT_InitializeTimers:
.LFB9:
	.loc 1 91 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 92 0
	ldr	r3, .L45
	ldrb	r3, [r3, #1]
	movs	r2, #16
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	beq	.L42
	.loc 1 92 0 is_stmt 0 discriminator 1
	bl	GPT_TryUnregisterInterrupt
.L42:
	.loc 1 93 0 is_stmt 1
	bl	GPT_IsPoweredUp
	subs	r3, r0, #0
	bne	.L43
	.loc 1 93 0 is_stmt 0 discriminator 1
	bl	GPT_PowerUp
.L43:
	.loc 1 94 0 is_stmt 1
	ldr	r3, .L45+4
	movs	r2, #0
	str	r2, [r3]
	.loc 1 95 0
	ldr	r3, .L45+8
	movs	r2, #0
	str	r2, [r3]
	.loc 1 96 0
	ldr	r3, .L45+12
	ldr	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	bne	.L44
	.loc 1 96 0 is_stmt 0 discriminator 1
	ldr	r3, .L45+12
	ldr	r2, .L45+12
	ldr	r2, [r2]
	movs	r1, #1
	bics	r2, r1
	str	r2, [r3]
.L44:
	.loc 1 97 0 is_stmt 1
	ldr	r3, .L45
	movs	r2, #20
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 98 0
	ldr	r3, .L45+12
	ldr	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L45
	movs	r1, #1
	ands	r2, r1
	lsls	r0, r2, #3
	ldrb	r2, [r3]
	movs	r1, #8
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3]
	.loc 1 99 0
	bl	GPT_UpdatePowerState
	.loc 1 100 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L46:
	.align	2
.L45:
	.word	GPTStatus
	.word	-1609826304
	.word	-1609826296
	.word	-1609826264
	.cfi_endproc
.LFE9:
	.size	GPT_InitializeTimers, .-GPT_InitializeTimers
	.section	.text.GPT_StartTimer,"ax",%progbits
	.align	2
	.global	GPT_StartTimer
	.code	16
	.thumb_func
	.type	GPT_StartTimer, %function
GPT_StartTimer:
.LFB10:
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
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 106 0
	bl	GPT_IsPoweredUp
	subs	r3, r0, #0
	bne	.L48
	.loc 1 106 0 is_stmt 0 discriminator 1
	bl	GPT_PowerUp
.L48:
	.loc 1 108 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.L50
	cmp	r3, #3
	beq	.L51
	cmp	r3, #0
	bne	.L49
	.loc 1 111 0
	ldr	r3, .L55
	ldr	r2, .L55
	ldr	r2, [r2]
	movs	r1, #128
	lsls	r1, r1, #8
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 112 0
	ldr	r3, .L55
	ldr	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #8
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L55+4
	movs	r1, #1
	ands	r2, r1
	movs	r0, r2
	ldrb	r2, [r3]
	movs	r1, #1
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3]
	ldr	r3, .L55+4
	ldrb	r3, [r3]
	lsls	r3, r3, #31
	lsrs	r3, r3, #31
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 113 0
	b	.L49
.L50:
	.loc 1 115 0
	ldr	r3, .L55+8
	ldr	r2, .L55+8
	ldr	r2, [r2]
	movs	r1, #128
	lsls	r1, r1, #8
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 116 0
	ldr	r3, .L55+8
	ldr	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #8
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L55+4
	movs	r1, #1
	ands	r2, r1
	adds	r0, r2, r2
	ldrb	r2, [r3]
	movs	r1, #2
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3]
	ldr	r3, .L55+4
	ldrb	r3, [r3]
	lsls	r3, r3, #30
	lsrs	r3, r3, #31
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 117 0
	b	.L49
.L51:
	.loc 1 119 0
	ldr	r3, .L55+12
	ldr	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	bne	.L53
	.loc 1 119 0 is_stmt 0 discriminator 1
	ldr	r3, .L55+12
	ldr	r2, .L55+12
	ldr	r2, [r2]
	movs	r1, #1
	orrs	r2, r1
	str	r2, [r3]
.L53:
	.loc 1 120 0 is_stmt 1
	ldr	r3, .L55+12
	ldr	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L55+4
	movs	r1, #1
	ands	r2, r1
	lsls	r0, r2, #3
	ldrb	r2, [r3]
	movs	r1, #8
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3]
	ldr	r3, .L55+4
	ldrb	r3, [r3]
	lsls	r3, r3, #28
	lsrs	r3, r3, #31
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 121 0
	nop
.L49:
	.loc 1 124 0
	bl	GPT_UpdatePowerState
	.loc 1 125 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 126 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L56:
	.align	2
.L55:
	.word	-1609826304
	.word	GPTStatus
	.word	-1609826296
	.word	-1609826264
	.cfi_endproc
.LFE10:
	.size	GPT_StartTimer, .-GPT_StartTimer
	.section	.text.GPT_StopTimer,"ax",%progbits
	.align	2
	.global	GPT_StopTimer
	.code	16
	.thumb_func
	.type	GPT_StopTimer, %function
GPT_StopTimer:
.LFB11:
	.loc 1 129 0
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
	.loc 1 130 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 132 0
	bl	GPT_IsPoweredUp
	subs	r3, r0, #0
	bne	.L58
	.loc 1 132 0 is_stmt 0 discriminator 1
	bl	GPT_PowerUp
.L58:
	.loc 1 134 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.L60
	cmp	r3, #3
	beq	.L61
	cmp	r3, #0
	beq	.LCB745
	b	.L59	@long jump
.LCB745:
	.loc 1 137 0
	ldr	r3, .L65
	ldr	r2, .L65
	ldr	r2, [r2]
	ldr	r1, .L65+4
	ands	r2, r1
	str	r2, [r3]
	.loc 1 138 0
	ldr	r3, .L65
	ldr	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #8
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L65+8
	movs	r1, #1
	ands	r2, r1
	movs	r0, r2
	ldrb	r2, [r3]
	movs	r1, #1
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3]
	ldr	r3, .L65+8
	ldrb	r3, [r3]
	lsls	r3, r3, #31
	lsrs	r3, r3, #31
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #1
	eors	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 139 0
	b	.L59
.L60:
	.loc 1 141 0
	ldr	r3, .L65+12
	ldr	r2, .L65+12
	ldr	r2, [r2]
	ldr	r1, .L65+4
	ands	r2, r1
	str	r2, [r3]
	.loc 1 142 0
	ldr	r3, .L65+12
	ldr	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #8
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L65+8
	movs	r1, #1
	ands	r2, r1
	adds	r0, r2, r2
	ldrb	r2, [r3]
	movs	r1, #2
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3]
	ldr	r3, .L65+8
	ldrb	r3, [r3]
	lsls	r3, r3, #30
	lsrs	r3, r3, #31
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #1
	eors	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 143 0
	b	.L59
.L61:
	.loc 1 145 0
	ldr	r3, .L65+16
	ldr	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	bne	.L63
	.loc 1 145 0 is_stmt 0 discriminator 1
	ldr	r3, .L65+16
	ldr	r2, .L65+16
	ldr	r2, [r2]
	movs	r1, #1
	bics	r2, r1
	str	r2, [r3]
.L63:
	.loc 1 146 0 is_stmt 1
	ldr	r3, .L65+16
	ldr	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #8
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L65+8
	movs	r1, #1
	ands	r2, r1
	lsls	r0, r2, #3
	ldrb	r2, [r3]
	movs	r1, #8
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3]
	ldr	r3, .L65+8
	ldrb	r3, [r3]
	lsls	r3, r3, #28
	lsrs	r3, r3, #31
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #1
	eors	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 147 0
	nop
.L59:
	.loc 1 150 0
	bl	GPT_UpdatePowerState
	.loc 1 151 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 152 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L66:
	.align	2
.L65:
	.word	-1609826304
	.word	-32769
	.word	GPTStatus
	.word	-1609826296
	.word	-1609826264
	.cfi_endproc
.LFE11:
	.size	GPT_StopTimer, .-GPT_StopTimer
	.section	.text.GPT_DisableTimer,"ax",%progbits
	.align	2
	.global	GPT_DisableTimer
	.code	16
	.thumb_func
	.type	GPT_DisableTimer, %function
GPT_DisableTimer:
.LFB12:
	.loc 1 155 0
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
	movs	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 156 0
	movs	r3, #15
	adds	r4, r7, r3
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r0, r3
	bl	GPT_StopTimer
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 158 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L68
	.loc 1 158 0 is_stmt 0 discriminator 1
	ldr	r3, .L77
	ldrb	r3, [r3, #1]
	movs	r2, #16
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	beq	.L68
	.loc 1 160 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L70
	cmp	r3, #1
	beq	.L71
	.loc 1 177 0
	b	.L68
.L70:
	.loc 1 163 0
	ldr	r3, .L77
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L75
	.loc 1 165 0
	ldr	r3, .L77
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 166 0
	bl	GPT_TryUnregisterInterrupt
	.loc 1 168 0
	b	.L75
.L71:
	.loc 1 170 0
	ldr	r3, .L77
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L76
	.loc 1 172 0
	ldr	r3, .L77
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 173 0
	bl	GPT_TryUnregisterInterrupt
	.loc 1 175 0
	b	.L76
.L75:
	.loc 1 168 0
	nop
	b	.L68
.L76:
	.loc 1 175 0
	nop
.L68:
	.loc 1 180 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 181 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L78:
	.align	2
.L77:
	.word	GPTStatus
	.cfi_endproc
.LFE12:
	.size	GPT_DisableTimer, .-GPT_DisableTimer
	.section	.text.GPT_Get26MTicksCount,"ax",%progbits
	.align	2
	.global	GPT_Get26MTicksCount
	.code	16
	.thumb_func
	.type	GPT_Get26MTicksCount, %function
GPT_Get26MTicksCount:
.LFB13:
	.loc 1 184 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 185 0
	ldr	r3, .L83
	ldrb	r3, [r3]
	movs	r2, #8
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	beq	.L80
	.loc 1 185 0 is_stmt 0 discriminator 1
	ldr	r3, .L83+4
	ldr	r3, [r3]
	b	.L82
.L80:
	.loc 1 185 0 discriminator 2
	movs	r3, #0
.L82:
	.loc 1 186 0 is_stmt 1 discriminator 5
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L84:
	.align	2
.L83:
	.word	GPTStatus
	.word	-1609826260
	.cfi_endproc
.LFE13:
	.size	GPT_Get26MTicksCount, .-GPT_Get26MTicksCount
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text.GPT_SetupTimer,"ax",%progbits
	.align	2
	.global	GPT_SetupTimer
	.code	16
	.thumb_func
	.type	GPT_SetupTimer, %function
GPT_SetupTimer:
.LFB14:
	.loc 1 189 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
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
	movs	r4, r0
	movs	r0, r1
	movs	r1, r2
	str	r3, [r7]
	adds	r3, r7, #7
	adds	r2, r4, #0
	strb	r2, [r3]
	adds	r3, r7, #4
	adds	r2, r0, #0
	strh	r2, [r3]
	adds	r3, r7, #6
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 190 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 193 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L87
	cmp	r3, #1
	bne	.LCB1083
	b	.L88	@long jump
.LCB1083:
	.loc 1 260 0
	b	.L91
.L87:
	.loc 1 196 0
	bl	GPT_IsPoweredUp
	subs	r3, r0, #0
	bne	.L89
	.loc 1 196 0 is_stmt 0 discriminator 1
	bl	GPT_PowerUp
.L89:
	.loc 1 197 0 is_stmt 1
	ldr	r3, .L111
	movs	r2, #0
	str	r2, [r3]
	.loc 1 198 0
	ldr	r3, .L111
	ldr	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #8
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L111+4
	movs	r1, #1
	ands	r2, r1
	movs	r0, r2
	ldrb	r2, [r3]
	movs	r1, #1
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3]
	.loc 1 200 0
	adds	r3, r7, #4
	ldrh	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #6
	cmp	r2, r3
	bls	.LCB1122
	b	.L109	@long jump
.LCB1122:
	.loc 1 201 0
	adds	r3, r7, #4
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L92
	.loc 1 203 0
	ldr	r3, .L111+4
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 204 0
	bl	GPT_TryUnregisterInterrupt
	.loc 1 205 0
	b	.L91
.L92:
	.loc 1 208 0
	adds	r3, r7, #4
	ldrh	r3, [r3]
	movs	r1, r3
	movs	r3, #128
	lsls	r0, r3, #7
	bl	__aeabi_idiv
	movs	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #8]
	.loc 1 209 0
	adds	r3, r7, #4
	ldrh	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #7
	movs	r1, r2
	movs	r0, r3
	bl	__aeabi_idivmod
	movs	r3, r1
	movs	r2, r3
	adds	r3, r7, #4
	ldrh	r3, [r3]
	lsrs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	cmp	r2, r3
	blt	.L93
	.loc 1 209 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L93:
	.loc 1 211 0 is_stmt 1
	ldr	r3, .L111+4
	ldr	r2, [r7]
	str	r2, [r3, #4]
	.loc 1 212 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L111+4
	movs	r1, #1
	ands	r2, r1
	movs	r0, r2
	ldrb	r2, [r3, #1]
	movs	r1, #1
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3, #1]
	.loc 1 213 0
	ldr	r3, .L111+4
	movs	r2, #0
	strh	r2, [r3, #8]
	.loc 1 214 0
	ldr	r3, [r7, #8]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, .L111+4
	strh	r2, [r3, #10]
	.loc 1 216 0
	ldr	r3, .L111+8
	ldr	r2, .L111+4
	ldrh	r2, [r2, #8]
	movs	r1, r2
	movs	r2, #7
	ands	r2, r1
	str	r2, [r3]
	.loc 1 217 0
	ldr	r3, .L111+12
	ldr	r2, .L111+4
	ldrh	r2, [r2, #10]
	str	r2, [r3]
	.loc 1 219 0
	ldr	r3, .L111+4
	ldrb	r3, [r3, #1]
	movs	r2, #16
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	bne	.L94
	.loc 1 219 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L94
	.loc 1 219 0 is_stmt 1 discriminator 2
	bl	GPT_RegisterInterrupt
	b	.L95
.L94:
	.loc 1 220 0
	bl	GPT_TryUnregisterInterrupt
.L95:
	.loc 1 222 0
	ldr	r3, .L111
	adds	r2, r7, #6
	ldrb	r2, [r2]
	cmp	r2, #0
	beq	.L96
	.loc 1 222 0 is_stmt 0 discriminator 1
	movs	r2, #128
	lsls	r2, r2, #7
	b	.L97
.L96:
	.loc 1 222 0 discriminator 2
	movs	r2, #0
.L97:
	.loc 1 222 0 discriminator 4
	str	r2, [r3]
	.loc 1 223 0 is_stmt 1 discriminator 4
	movs	r3, #32
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L98
	.loc 1 223 0 is_stmt 0 discriminator 1
	ldr	r3, .L111
	ldr	r2, .L111
	ldr	r2, [r2]
	movs	r1, #128
	lsls	r1, r1, #8
	orrs	r2, r1
	str	r2, [r3]
.L98:
	.loc 1 224 0 is_stmt 1
	ldr	r3, .L111
	ldr	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #8
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L111+4
	movs	r1, #1
	ands	r2, r1
	movs	r0, r2
	ldrb	r2, [r3]
	movs	r1, #1
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3]
	.loc 1 225 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 226 0
	b	.L91
.L88:
	.loc 1 228 0
	bl	GPT_IsPoweredUp
	subs	r3, r0, #0
	bne	.L99
	.loc 1 228 0 is_stmt 0 discriminator 1
	bl	GPT_PowerUp
.L99:
	.loc 1 229 0 is_stmt 1
	ldr	r3, .L111+16
	movs	r2, #0
	str	r2, [r3]
	.loc 1 230 0
	ldr	r3, .L111+16
	ldr	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #8
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L111+4
	movs	r1, #1
	ands	r2, r1
	adds	r0, r2, r2
	ldrb	r2, [r3]
	movs	r1, #2
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3]
	.loc 1 232 0
	adds	r3, r7, #4
	ldrh	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #6
	cmp	r2, r3
	bls	.LCB1313
	b	.L110	@long jump
.LCB1313:
	.loc 1 233 0
	adds	r3, r7, #4
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L101
	.loc 1 235 0
	ldr	r3, .L111+4
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 236 0
	bl	GPT_TryUnregisterInterrupt
	.loc 1 237 0
	b	.L91
.L101:
	.loc 1 240 0
	adds	r3, r7, #4
	ldrh	r3, [r3]
	movs	r1, r3
	movs	r3, #128
	lsls	r0, r3, #7
	bl	__aeabi_idiv
	movs	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #8]
	.loc 1 241 0
	adds	r3, r7, #4
	ldrh	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #7
	movs	r1, r2
	movs	r0, r3
	bl	__aeabi_idivmod
	movs	r3, r1
	movs	r2, r3
	adds	r3, r7, #4
	ldrh	r3, [r3]
	lsrs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	cmp	r2, r3
	blt	.L102
	.loc 1 241 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L102:
	.loc 1 243 0 is_stmt 1
	ldr	r3, .L111+4
	ldr	r2, [r7]
	str	r2, [r3, #12]
	.loc 1 244 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L111+4
	movs	r1, #1
	ands	r2, r1
	adds	r0, r2, r2
	ldrb	r2, [r3, #1]
	movs	r1, #2
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3, #1]
	.loc 1 245 0
	ldr	r3, .L111+4
	movs	r2, #0
	strh	r2, [r3, #16]
	.loc 1 246 0
	ldr	r3, [r7, #8]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, .L111+4
	strh	r2, [r3, #18]
	.loc 1 248 0
	ldr	r3, .L111+20
	ldr	r2, .L111+4
	ldrh	r2, [r2, #16]
	movs	r1, r2
	movs	r2, #7
	ands	r2, r1
	str	r2, [r3]
	.loc 1 249 0
	ldr	r3, .L111+24
	ldr	r2, .L111+4
	ldrh	r2, [r2, #18]
	str	r2, [r3]
	.loc 1 251 0
	ldr	r3, .L111+4
	ldrb	r3, [r3, #1]
	movs	r2, #16
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	bne	.L103
	.loc 1 251 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L103
	.loc 1 251 0 is_stmt 1 discriminator 2
	bl	GPT_RegisterInterrupt
	b	.L104
.L103:
	.loc 1 252 0
	bl	GPT_TryUnregisterInterrupt
.L104:
	.loc 1 254 0
	ldr	r3, .L111+16
	adds	r2, r7, #6
	ldrb	r2, [r2]
	cmp	r2, #0
	beq	.L105
	.loc 1 254 0 is_stmt 0 discriminator 1
	movs	r2, #128
	lsls	r2, r2, #7
	b	.L106
.L105:
	.loc 1 254 0 discriminator 2
	movs	r2, #0
.L106:
	.loc 1 254 0 discriminator 4
	str	r2, [r3]
	.loc 1 255 0 is_stmt 1 discriminator 4
	movs	r3, #32
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L107
	.loc 1 255 0 is_stmt 0 discriminator 1
	ldr	r3, .L111+16
	ldr	r2, .L111+16
	ldr	r2, [r2]
	movs	r1, #128
	lsls	r1, r1, #8
	orrs	r2, r1
	str	r2, [r3]
.L107:
	.loc 1 256 0 is_stmt 1
	ldr	r3, .L111+16
	ldr	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #8
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L111+4
	movs	r1, #1
	ands	r2, r1
	adds	r0, r2, r2
	ldrb	r2, [r3]
	movs	r1, #2
	bics	r2, r1
	adds	r1, r2, #0
	adds	r2, r0, #0
	orrs	r2, r1
	strb	r2, [r3]
	.loc 1 257 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 258 0
	b	.L91
.L109:
	.loc 1 200 0
	nop
	b	.L91
.L110:
	.loc 1 232 0
	nop
.L91:
	.loc 1 263 0
	bl	GPT_UpdatePowerState
	.loc 1 264 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 265 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L112:
	.align	2
.L111:
	.word	-1609826304
	.word	GPTStatus
	.word	-1609826284
	.word	-1609826300
	.word	-1609826296
	.word	-1609826280
	.word	-1609826292
	.cfi_endproc
.LFE14:
	.size	GPT_SetupTimer, .-GPT_SetupTimer
	.section	.text.GPT_SleepTimers,"ax",%progbits
	.align	2
	.global	GPT_SleepTimers
	.code	16
	.thumb_func
	.type	GPT_SleepTimers, %function
GPT_SleepTimers:
.LFB15:
	.loc 1 268 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 269 0
	ldr	r3, .L119
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L118
	.loc 1 271 0
	ldr	r3, .L119
	ldrb	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	beq	.L115
	.loc 1 271 0 is_stmt 0 discriminator 1
	ldr	r3, .L119+4
	ldr	r2, .L119+4
	ldr	r2, [r2]
	ldr	r1, .L119+8
	ands	r2, r1
	str	r2, [r3]
.L115:
	.loc 1 272 0 is_stmt 1
	ldr	r3, .L119
	ldrb	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	beq	.L116
	.loc 1 272 0 is_stmt 0 discriminator 1
	ldr	r3, .L119+12
	ldr	r2, .L119+12
	ldr	r2, [r2]
	ldr	r1, .L119+8
	ands	r2, r1
	str	r2, [r3]
.L116:
	.loc 1 273 0 is_stmt 1
	ldr	r3, .L119+16
	ldr	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	bne	.L117
	.loc 1 273 0 is_stmt 0 discriminator 1
	ldr	r3, .L119
	ldrb	r3, [r3]
	movs	r2, #8
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	beq	.L117
	.loc 1 273 0 discriminator 2
	ldr	r3, .L119+16
	ldr	r2, .L119+16
	ldr	r2, [r2]
	movs	r1, #1
	bics	r2, r1
	str	r2, [r3]
.L117:
	.loc 1 274 0 is_stmt 1
	bl	GPT_PowerDown
	.loc 1 276 0
	ldr	r3, .L119
	ldrb	r3, [r3, #1]
	movs	r2, #16
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	beq	.L118
	.loc 1 276 0 is_stmt 0 discriminator 1
	movs	r0, #23
	bl	NVIC_DisableIRQ
.L118:
	.loc 1 279 0 is_stmt 1
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L120:
	.align	2
.L119:
	.word	GPTStatus
	.word	-1609826304
	.word	-32769
	.word	-1609826296
	.word	-1609826264
	.cfi_endproc
.LFE15:
	.size	GPT_SleepTimers, .-GPT_SleepTimers
	.section	.text.GPT_ResumeTimers,"ax",%progbits
	.align	2
	.global	GPT_ResumeTimers
	.code	16
	.thumb_func
	.type	GPT_ResumeTimers, %function
GPT_ResumeTimers:
.LFB16:
	.loc 1 282 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 283 0
	ldr	r3, .L127
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L126
	.loc 1 285 0
	bl	GPT_PowerUp
	.loc 1 286 0
	ldr	r3, .L127
	ldrb	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	beq	.L123
	.loc 1 286 0 is_stmt 0 discriminator 1
	ldr	r3, .L127+4
	ldr	r2, .L127+4
	ldr	r2, [r2]
	movs	r1, #128
	lsls	r1, r1, #8
	orrs	r2, r1
	str	r2, [r3]
.L123:
	.loc 1 287 0 is_stmt 1
	ldr	r3, .L127
	ldrb	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	beq	.L124
	.loc 1 287 0 is_stmt 0 discriminator 1
	ldr	r3, .L127+8
	ldr	r2, .L127+8
	ldr	r2, [r2]
	movs	r1, #128
	lsls	r1, r1, #8
	orrs	r2, r1
	str	r2, [r3]
.L124:
	.loc 1 288 0 is_stmt 1
	ldr	r3, .L127+12
	ldr	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	bne	.L125
	.loc 1 288 0 is_stmt 0 discriminator 1
	ldr	r3, .L127
	ldrb	r3, [r3]
	movs	r2, #8
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	beq	.L125
	.loc 1 288 0 discriminator 2
	ldr	r3, .L127+12
	ldr	r2, .L127+12
	ldr	r2, [r2]
	movs	r1, #1
	orrs	r2, r1
	str	r2, [r3]
.L125:
	.loc 1 290 0 is_stmt 1
	ldr	r3, .L127
	ldrb	r3, [r3, #1]
	movs	r2, #16
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	beq	.L126
	.loc 1 290 0 is_stmt 0 discriminator 1
	movs	r0, #23
	bl	NVIC_EnableIRQ
.L126:
	.loc 1 293 0 is_stmt 1
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L128:
	.align	2
.L127:
	.word	GPTStatus
	.word	-1609826304
	.word	-1609826296
	.word	-1609826264
	.cfi_endproc
.LFE16:
	.size	GPT_ResumeTimers, .-GPT_ResumeTimers
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\Lib\\MT6261/drivers\\gpt.h"
	.file 6 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4bb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.4byte	.LASF80
	.4byte	.LASF81
	.4byte	.Ldebug_ranges0+0x30
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc8
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0xe2
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1d
	.4byte	0xc9
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x3f
	.4byte	0x110
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x44
	.4byte	0xed
	.uleb128 0xa
	.byte	0x14
	.byte	0x5
	.byte	0x48
	.4byte	0x1c6
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x4a
	.4byte	0x85
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x4b
	.4byte	0x85
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x4d
	.4byte	0x85
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x4f
	.4byte	0x85
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x50
	.4byte	0x85
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x52
	.4byte	0x85
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x54
	.4byte	0xc2
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x55
	.4byte	0x97
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x56
	.4byte	0x97
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x57
	.4byte	0xc2
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x58
	.4byte	0x97
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x59
	.4byte	0x97
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x14
	.byte	0x5
	.byte	0x46
	.4byte	0x1e9
	.uleb128 0xe
	.ascii	"GPT\000"
	.byte	0x5
	.byte	0x5a
	.4byte	0x11b
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x5
	.byte	0x5b
	.4byte	0x8c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0x5c
	.4byte	0x1c6
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0xf1
	.4byte	0x223
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0x24
	.4byte	0x26a
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x1
	.byte	0x1a
	.4byte	0x97
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a8
	.uleb128 0x12
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x13
	.ascii	"_x\000"
	.byte	0x1
	.byte	0x21
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.byte	0x24
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d1
	.uleb128 0x12
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x13
	.ascii	"_x\000"
	.byte	0x1
	.byte	0x26
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x29
	.4byte	0xe2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x1
	.byte	0x33
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31b
	.uleb128 0x17
	.4byte	.LASF61
	.byte	0x1
	.byte	0x35
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0x40
	.4byte	0xe2
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0x4c
	.4byte	0xe2
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x1
	.byte	0x5a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF65
	.byte	0x1
	.byte	0x66
	.4byte	0xe2
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38c
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0x66
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0x68
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x19
	.4byte	.LASF66
	.byte	0x1
	.byte	0x80
	.4byte	0xe2
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c2
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0x80
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0x82
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x1
	.byte	0x9a
	.4byte	0xe2
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f8
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0x9a
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0x9c
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF84
	.byte	0x1
	.byte	0xb7
	.4byte	0xa2
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF69
	.byte	0x1
	.byte	0xbc
	.4byte	0xe2
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x489
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0xbc
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1a
	.4byte	.LASF70
	.byte	0x1
	.byte	0xbc
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LASF71
	.byte	0x1
	.byte	0xbc
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1a
	.4byte	.LASF72
	.byte	0x1
	.byte	0xbc
	.4byte	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.4byte	.LASF73
	.byte	0x1
	.byte	0xbc
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0xbe
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x1
	.byte	0xbf
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x10b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x119
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0x18
	.4byte	0x1e9
	.uleb128 0x5
	.byte	0x3
	.4byte	GPTStatus
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x19
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1c
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
	.4byte	0x94
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF34:
	.ascii	"GPT2_Handler\000"
.LASF54:
	.ascii	"USB_EP2OUT\000"
.LASF29:
	.ascii	"GPT2_AutoRep\000"
.LASF51:
	.ascii	"USB_EP4IN\000"
.LASF2:
	.ascii	"short int\000"
.LASF40:
	.ascii	"tag_VLINDEX\000"
.LASF25:
	.ascii	"GPT1_Enabled\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF59:
	.ascii	"GPT_IsPoweredUp\000"
.LASF35:
	.ascii	"GPT2_Prescaler\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF50:
	.ascii	"USB_EP3IN\000"
.LASF20:
	.ascii	"boolean\000"
.LASF27:
	.ascii	"GPT4_Enabled\000"
.LASF64:
	.ascii	"Result\000"
.LASF57:
	.ascii	"GPT_PowerDown\000"
.LASF32:
	.ascii	"GPT1_Prescaler\000"
.LASF78:
	.ascii	"GPTStatus\000"
.LASF55:
	.ascii	"USB_EPNUM\000"
.LASF49:
	.ascii	"USB_EP2IN\000"
.LASF45:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF9:
	.ascii	"long long int\000"
.LASF75:
	.ascii	"GPT_InitializeTimers\000"
.LASF6:
	.ascii	"long int\000"
.LASF74:
	.ascii	"GPTValue\000"
.LASF52:
	.ascii	"USB_EPMAXINDEX\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF48:
	.ascii	"USB_EP1IN\000"
.LASF38:
	.ascii	"TGPTSTATE\000"
.LASF76:
	.ascii	"GPT_SleepTimers\000"
.LASF68:
	.ascii	"GPT_DisableTimer\000"
.LASF37:
	.ascii	"GPTEnabled\000"
.LASF15:
	.ascii	"long double\000"
.LASF46:
	.ascii	"tag_EP\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF60:
	.ascii	"GPT_InterruptHandler\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF18:
	.ascii	"false\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF67:
	.ascii	"Index\000"
.LASF56:
	.ascii	"GPT_PowerUp\000"
.LASF58:
	.ascii	"GPT_GetStatus\000"
.LASF30:
	.ascii	"GPTIntsRegistered\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF71:
	.ascii	"Arepeat\000"
.LASF26:
	.ascii	"GPT2_Enabled\000"
.LASF17:
	.ascii	"char\000"
.LASF84:
	.ascii	"GPT_Get26MTicksCount\000"
.LASF53:
	.ascii	"USB_EP1OUT\000"
.LASF65:
	.ascii	"GPT_StartTimer\000"
.LASF19:
	.ascii	"true\000"
.LASF70:
	.ascii	"Frequency\000"
.LASF81:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF21:
	.ascii	"GP_TIMER1\000"
.LASF22:
	.ascii	"GP_TIMER2\000"
.LASF23:
	.ascii	"GP_TIMER4\000"
.LASF69:
	.ascii	"GPT_SetupTimer\000"
.LASF72:
	.ascii	"Handler\000"
.LASF61:
	.ascii	"Status\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF83:
	.ascii	"GPT_UpdatePowerState\000"
.LASF66:
	.ascii	"GPT_StopTimer\000"
.LASF73:
	.ascii	"Start\000"
.LASF47:
	.ascii	"USB_EP0\000"
.LASF41:
	.ascii	"LCDIF_LAYER0\000"
.LASF77:
	.ascii	"GPT_ResumeTimers\000"
.LASF43:
	.ascii	"LCDIF_LAYER2\000"
.LASF44:
	.ascii	"LCDIF_LAYER3\000"
.LASF24:
	.ascii	"TGPT\000"
.LASF36:
	.ascii	"GPT2_Value\000"
.LASF80:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\gpt.c\000"
.LASF82:
	.ascii	"tag_GPTSTATE\000"
.LASF42:
	.ascii	"LCDIF_LAYER1\000"
.LASF63:
	.ascii	"GPT_TryUnregisterInterrupt\000"
.LASF31:
	.ascii	"GPT1_Handler\000"
.LASF79:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF33:
	.ascii	"GPT1_Value\000"
.LASF28:
	.ascii	"GPT1_AutoRep\000"
.LASF62:
	.ascii	"GPT_RegisterInterrupt\000"
.LASF39:
	.ascii	"tag_GPT\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
