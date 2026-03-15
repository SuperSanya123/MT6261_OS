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
	.file	"usart.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	USARTINFO
	.section	.data.USARTINFO,"aw",%progbits
	.align	2
	.type	USARTINFO, %object
	.size	USARTINFO, 84
USARTINFO:
	.word	-1610088448
	.byte	29
	.space	23
	.word	-1610022912
	.byte	30
	.space	23
	.word	-1609957376
	.byte	31
	.space	23
	.section	.text.USART_GetPDCode,"ax",%progbits
	.align	2
	.global	USART_GetPDCode
	.code	16
	.thumb_func
	.type	USART_GetPDCode, %function
USART_GetPDCode:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\usart.c"
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
	movs	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 33 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #2
	bhi	.L2
	.loc 1 33 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L4
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #4
	ldrb	r3, [r3]
	b	.L3
.L2:
	.loc 1 34 0 is_stmt 1
	movs	r3, #1
	rsbs	r3, r3, #0
.L3:
	.loc 1 35 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	USARTINFO
	.cfi_endproc
.LFE1:
	.size	USART_GetPDCode, .-USART_GetPDCode
	.section	.text.USART_GetContext,"ax",%progbits
	.align	2
	.global	USART_GetContext
	.code	16
	.thumb_func
	.type	USART_GetContext, %function
USART_GetContext:
.LFB2:
	.loc 1 38 0
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
	.loc 1 39 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #2
	bls	.L7
	.loc 1 39 0 discriminator 1
	movs	r3, #0
	b	.L8
.L7:
	.loc 1 40 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L9
	adds	r3, r3, r2
.L8:
	.loc 1 41 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	USARTINFO
	.cfi_endproc
.LFE2:
	.size	USART_GetContext, .-USART_GetContext
	.global	__aeabi_uidiv
	.section	.text.USART_Initialize,"ax",%progbits
	.align	2
	.global	USART_Initialize
	.code	16
	.thumb_func
	.type	USART_Initialize, %function
USART_Initialize:
.LFB3:
	.loc 1 44 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #48
	.cfi_def_cfa_offset 56
	add	r7, sp, #8
	.cfi_def_cfa 7, 48
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 48 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L12
	.loc 1 48 0 is_stmt 0 discriminator 1
	movs	r3, #20
	str	r3, [r7, #36]
	b	.L13
.L12:
	.loc 1 49 0 is_stmt 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L14
	.loc 1 49 0 is_stmt 0 discriminator 1
	movs	r3, #22
	str	r3, [r7, #36]
	b	.L13
.L14:
	.loc 1 50 0 is_stmt 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #2
	bne	.L15
	.loc 1 50 0 is_stmt 0 discriminator 1
	movs	r3, #29
	str	r3, [r7, #36]
	b	.L13
.L15:
	.loc 1 51 0 is_stmt 1
	movs	r3, #0
	b	.L16
.L13:
	.loc 1 54 0
	ldr	r3, [r7, #36]
	movs	r0, r3
	bl	NVIC_UnregisterIRQ
.LBB2:
	.loc 1 56 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, #35
	adds	r1, r7, r3
	ldr	r0, .L28
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r0, r3
	adds	r3, r3, #4
	ldrb	r3, [r3]
	strb	r3, [r1]
	movs	r3, #35
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #46
	bhi	.L17
	.loc 1 56 0 is_stmt 0 discriminator 1
	movs	r3, #35
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsrs	r3, r3, #4
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	lsls	r3, r3, #2
	ldr	r2, .L28+4
	mov	ip, r2
	add	r3, r3, ip
	movs	r1, r3
	movs	r3, #35
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #15
	ands	r3, r2
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	b	.L18
.L17:
	.loc 1 56 0 discriminator 2
	movs	r3, #35
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #52
	bhi	.L18
	.loc 1 56 0 discriminator 3
	ldr	r2, .L28+8
	movs	r3, #35
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L18:
.LBE2:
	.loc 1 57 0 is_stmt 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L28
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	str	r3, [r7, #28]
	.loc 1 59 0
	ldr	r3, [r7, #28]
	movs	r2, #3
	strb	r2, [r3, #12]
	.loc 1 62 0
	ldr	r3, [r7, #28]
	movs	r2, #76
	movs	r1, #0
	strb	r1, [r3, r2]
	.loc 1 63 0
	ldr	r3, [r7, #28]
	movs	r2, #32
	movs	r1, #0
	strb	r1, [r3, r2]
	.loc 1 64 0
	ldr	r3, [r7, #28]
	movs	r2, #0
	strb	r2, [r3, #4]
	.loc 1 65 0
	ldr	r3, [r7, #28]
	movs	r2, #0
	strb	r2, [r3, #16]
	.loc 1 66 0
	ldr	r3, [r7, #28]
	movs	r2, #6
	strb	r2, [r3, #8]
	.loc 1 67 0
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #20]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #1
	bics	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #28]
	strb	r2, [r3, #20]
	.loc 1 68 0
	ldr	r3, [r7, #28]
	movs	r2, #36
	movs	r1, #0
	strb	r1, [r3, r2]
	.loc 1 69 0
	ldr	r3, [r7, #28]
	movs	r2, #52
	movs	r1, #0
	strb	r1, [r3, r2]
	.loc 1 71 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L19
.LBB3:
	.loc 1 73 0
	ldr	r3, [r7, #8]
	lsls	r3, r3, #4
	lsrs	r3, r3, #1
	ldr	r2, .L28+12
	adds	r2, r3, r2
	ldr	r3, [r7, #8]
	lsls	r3, r3, #4
	movs	r1, r3
	movs	r0, r2
	bl	__aeabi_uidiv
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 75 0
	ldr	r3, [r7, #24]
	cmp	r3, #1
	bhi	.L20
	.loc 1 75 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L16
.L20:
	.loc 1 77 0 is_stmt 1
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #12]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #128
	rsbs	r2, r2, #0
	orrs	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #28]
	strb	r2, [r3, #12]
	.loc 1 78 0
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #28]
	strb	r2, [r3, #4]
	.loc 1 79 0
	ldr	r3, [r7, #24]
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #28]
	strb	r2, [r3]
	.loc 1 80 0
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #12]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #127
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #28]
	strb	r2, [r3, #12]
.LBE3:
	.loc 1 92 0
	ldr	r3, [r7]
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, r2
	movs	r0, r3
	bl	USART_EnableInterrupts
	.loc 1 94 0
	ldr	r3, [r7]
	movs	r2, #14
	ands	r3, r2
	beq	.L24
	b	.L27
.L19:
.LBB4:
	.loc 1 84 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, #22
	adds	r1, r7, r3
	ldr	r0, .L28
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r0, r3
	adds	r3, r3, #4
	ldrb	r3, [r3]
	strb	r3, [r1]
	movs	r3, #22
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #46
	bhi	.L22
	.loc 1 84 0 is_stmt 0 discriminator 1
	movs	r3, #22
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsrs	r3, r3, #4
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	lsls	r3, r3, #2
	ldr	r2, .L28+16
	mov	ip, r2
	add	r3, r3, ip
	movs	r1, r3
	movs	r3, #22
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #15
	ands	r3, r2
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	b	.L23
.L22:
	.loc 1 84 0 discriminator 2
	movs	r3, #22
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #52
	bhi	.L23
	.loc 1 84 0 discriminator 3
	ldr	r2, .L28+20
	movs	r3, #22
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L23:
.LBE4:
	.loc 1 85 0 is_stmt 1
	movs	r3, #0
	b	.L16
.L27:
	.loc 1 96 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L24
	.loc 1 98 0
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #36]
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #1
	movs	r2, #0
	bl	NVIC_RegisterIRQ
.L24:
	.loc 1 103 0
	ldr	r3, [r7]
	movs	r2, #1
	ands	r3, r2
	bne	.L25
.LBB5:
	.loc 1 105 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, #23
	adds	r1, r7, r3
	ldr	r0, .L28
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r0, r3
	adds	r3, r3, #4
	ldrb	r3, [r3]
	strb	r3, [r1]
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #46
	bhi	.L26
	.loc 1 105 0 is_stmt 0 discriminator 1
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsrs	r3, r3, #4
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	lsls	r3, r3, #2
	ldr	r2, .L28+16
	mov	ip, r2
	add	r3, r3, ip
	movs	r1, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #15
	ands	r3, r2
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	b	.L25
.L26:
	.loc 1 105 0 discriminator 2
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #52
	bhi	.L25
	.loc 1 105 0 discriminator 3
	ldr	r2, .L28+20
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L25:
.LBE5:
	.loc 1 107 0 is_stmt 1
	movs	r3, #1
.L16:
	.loc 1 108 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #40
	@ sp needed
	pop	{r7, pc}
.L29:
	.align	2
.L28:
	.word	USARTINFO
	.word	-1610546400
	.word	-1603076080
	.word	52000000
	.word	-1610546416
	.word	-1603076084
	.cfi_endproc
.LFE3:
	.size	USART_Initialize, .-USART_Initialize
	.section	.text.USART_EnableInterrupts,"ax",%progbits
	.align	2
	.global	USART_EnableInterrupts
	.code	16
	.thumb_func
	.type	USART_EnableInterrupts, %function
USART_EnableInterrupts:
.LFB4:
	.loc 1 111 0
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
	adds	r3, r7, #6
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 112 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #2
	bls	.LCB556
	b	.L35	@long jump
.LCB556:
.LBB6:
	.loc 1 115 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 116 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L36
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r3, r1]
	movs	r3, #11
	adds	r3, r7, r3
	ldrb	r2, [r2, #12]
	strb	r2, [r3]
	.loc 1 118 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L36
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r1, [r3, r1]
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L36
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r0]
	ldrb	r3, [r3, #12]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #127
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1, #12]
	.loc 1 120 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	beq	.L32
	.loc 1 120 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L36
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r1, [r3, r1]
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L36
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r0]
	ldrb	r3, [r3, #4]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #2
	orrs	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1, #4]
.L32:
	.loc 1 121 0 is_stmt 1
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #4
	ands	r3, r2
	beq	.L33
	.loc 1 121 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L36
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r1, [r3, r1]
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L36
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r0]
	ldrb	r3, [r3, #4]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #1
	orrs	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1, #4]
.L33:
	.loc 1 122 0 is_stmt 1
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #8
	ands	r3, r2
	beq	.L34
	.loc 1 122 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L36
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r1, [r3, r1]
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L36
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r0]
	ldrb	r3, [r3, #4]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #4
	orrs	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1, #4]
.L34:
	.loc 1 123 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L36
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	movs	r2, #11
	adds	r2, r7, r2
	ldrb	r2, [r2]
	strb	r2, [r3, #12]
	.loc 1 125 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
.L35:
.LBE6:
	.loc 1 128 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L37:
	.align	2
.L36:
	.word	USARTINFO
	.cfi_endproc
.LFE4:
	.size	USART_EnableInterrupts, .-USART_EnableInterrupts
	.section	.text.USART_DisableInterrupts,"ax",%progbits
	.align	2
	.global	USART_DisableInterrupts
	.code	16
	.thumb_func
	.type	USART_DisableInterrupts, %function
USART_DisableInterrupts:
.LFB5:
	.loc 1 131 0
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
	adds	r3, r7, #6
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 132 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #2
	bls	.LCB748
	b	.L43	@long jump
.LCB748:
.LBB7:
	.loc 1 135 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 136 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r3, r1]
	movs	r3, #11
	adds	r3, r7, r3
	ldrb	r2, [r2, #12]
	strb	r2, [r3]
	.loc 1 138 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r1, [r3, r1]
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r0]
	ldrb	r3, [r3, #12]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #127
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1, #12]
	.loc 1 140 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #2
	ands	r3, r2
	beq	.L40
	.loc 1 140 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r1, [r3, r1]
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r0]
	ldrb	r3, [r3, #4]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #2
	bics	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1, #4]
.L40:
	.loc 1 141 0 is_stmt 1
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #4
	ands	r3, r2
	beq	.L41
	.loc 1 141 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r1, [r3, r1]
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r0]
	ldrb	r3, [r3, #4]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #1
	bics	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1, #4]
.L41:
	.loc 1 142 0 is_stmt 1
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #8
	ands	r3, r2
	beq	.L42
	.loc 1 142 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r1, [r3, r1]
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r0]
	ldrb	r3, [r3, #4]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, #4
	bics	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1, #4]
.L42:
	.loc 1 143 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	movs	r2, #11
	adds	r2, r7, r2
	ldrb	r2, [r2]
	strb	r2, [r3, #12]
	.loc 1 145 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
.L43:
.LBE7:
	.loc 1 148 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	USARTINFO
	.cfi_endproc
.LFE5:
	.size	USART_DisableInterrupts, .-USART_DisableInterrupts
	.section	.text.USART_FlashRX,"ax",%progbits
	.align	2
	.global	USART_FlashRX
	.code	16
	.thumb_func
	.type	USART_FlashRX, %function
USART_FlashRX:
.LFB6:
	.loc 1 151 0
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
	.loc 1 152 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #2
	bhi	.L48
	.loc 1 152 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L49
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	movs	r2, #92
	ldrb	r3, [r3, r2]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L48
	.loc 1 153 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L49
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	movs	r2, #3
	strb	r2, [r3, #8]
.L48:
	.loc 1 154 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L50:
	.align	2
.L49:
	.word	USARTINFO
	.cfi_endproc
.LFE6:
	.size	USART_FlashRX, .-USART_FlashRX
	.section	.text.USART_FlashTX,"ax",%progbits
	.align	2
	.global	USART_FlashTX
	.code	16
	.thumb_func
	.type	USART_FlashTX, %function
USART_FlashTX:
.LFB7:
	.loc 1 157 0
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
	.loc 1 158 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #2
	bhi	.L53
	.loc 1 158 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L54
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	movs	r2, #92
	ldrb	r3, [r3, r2]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L53
	.loc 1 159 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L54
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	movs	r2, #5
	strb	r2, [r3, #8]
.L53:
	.loc 1 160 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L55:
	.align	2
.L54:
	.word	USARTINFO
	.cfi_endproc
.LFE7:
	.size	USART_FlashTX, .-USART_FlashTX
	.section	.text.USART_SendChar,"ax",%progbits
	.align	2
	.global	USART_SendChar
	.code	16
	.thumb_func
	.type	USART_SendChar, %function
USART_SendChar:
.LFB8:
	.loc 1 163 0
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
	adds	r3, r7, #6
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 164 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #2
	bhi	.L59
.LBB8:
	.loc 1 166 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L60
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	str	r3, [r7, #12]
	.loc 1 168 0
	nop
.L58:
	.loc 1 168 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #20]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #64
	ands	r3, r2
	beq	.L58
	.loc 1 169 0 is_stmt 1
	ldr	r3, [r7, #12]
	adds	r2, r7, #6
	ldrb	r2, [r2]
	strb	r2, [r3]
.L59:
.LBE8:
	.loc 1 171 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L61:
	.align	2
.L60:
	.word	USARTINFO
	.cfi_endproc
.LFE8:
	.size	USART_SendChar, .-USART_SendChar
	.section	.text.USART_SendString,"ax",%progbits
	.align	2
	.global	USART_SendString
	.code	16
	.thumb_func
	.type	USART_SendString, %function
USART_SendString:
.LFB9:
	.loc 1 174 0
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
	str	r1, [r7]
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 175 0
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L66
	.loc 1 176 0
	b	.L64
.L65:
	.loc 1 176 0 is_stmt 0 discriminator 2
	ldr	r3, [r7]
	adds	r2, r3, #1
	str	r2, [r7]
	ldrb	r2, [r3]
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r1, r2
	movs	r0, r3
	bl	USART_SendChar
.L64:
	.loc 1 176 0 discriminator 1
	ldr	r3, [r7]
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L65
.L66:
	.loc 1 177 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE9:
	.size	USART_SendString, .-USART_SendString
	.section	.text.USART_SendBufferPoll,"ax",%progbits
	.align	2
	.global	USART_SendBufferPoll
	.code	16
	.thumb_func
	.type	USART_SendBufferPoll, %function
USART_SendBufferPoll:
.LFB10:
	.loc 1 180 0
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
	movs	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 183 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #2
	bhi	.L73
	.loc 1 184 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L74
	adds	r3, r3, r2
	str	r3, [r7, #16]
	.loc 1 186 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L67
.LBB9:
	.loc 1 188 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 191 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r1, #2
	movs	r0, r3
	bl	USART_DisableInterrupts
	.loc 1 193 0
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #24]
	adds	r3, r2, r3
	str	r3, [r7, #20]
	.loc 1 195 0
	b	.L70
.L72:
	.loc 1 197 0
	nop
.L71:
	.loc 1 197 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #20]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #64
	ands	r3, r2
	beq	.L71
	.loc 1 198 0 is_stmt 1
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldrb	r2, [r3]
	ldr	r3, [r7, #12]
	strb	r2, [r3]
	.loc 1 199 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #16]
	str	r2, [r3, #24]
.L70:
	.loc 1 195 0
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	bcc	.L72
	.loc 1 201 0
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #24]
	.loc 1 202 0
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #20]
	b	.L67
.L73:
.LBE9:
	.loc 1 183 0
	nop
.L67:
	.loc 1 204 0
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L75:
	.align	2
.L74:
	.word	USARTINFO
	.cfi_endproc
.LFE10:
	.size	USART_SendBufferPoll, .-USART_SendBufferPoll
	.section	.text.USART_SendBufferInt,"ax",%progbits
	.align	2
	.global	USART_SendBufferInt
	.code	16
	.thumb_func
	.type	USART_SendBufferInt, %function
USART_SendBufferInt:
.LFB11:
	.loc 1 207 0
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
	movs	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 210 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #2
	bhi	.L82
	.loc 1 211 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L83
	adds	r3, r3, r2
	str	r3, [r7, #12]
	.loc 1 213 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L76
.LBB10:
	.loc 1 215 0
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 218 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r1, #2
	movs	r0, r3
	bl	USART_DisableInterrupts
	.loc 1 220 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r3, r2, r3
	str	r3, [r7, #16]
	.loc 1 222 0
	b	.L79
.L81:
	.loc 1 225 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r1, r3, #1
	str	r1, [r7, #16]
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 226 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	.loc 1 227 0
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L79:
	.loc 1 222 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #64
	ands	r3, r2
	beq	.L80
	.loc 1 223 0 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	subs	r2, r2, r3
	.loc 1 222 0 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L81
.L80:
	.loc 1 229 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r1, #2
	movs	r0, r3
	bl	USART_EnableInterrupts
	b	.L76
.L82:
.LBE10:
	.loc 1 210 0
	nop
.L76:
	.loc 1 231 0
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L84:
	.align	2
.L83:
	.word	USARTINFO
	.cfi_endproc
.LFE11:
	.size	USART_SendBufferInt, .-USART_SendBufferInt
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\Lib\\MT6261/drivers\\usart.h"
	.file 6 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x7c0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xc
	.4byte	.LASF108
	.4byte	.LASF109
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
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.4byte	0x69
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0xfe
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x1d
	.4byte	0xe5
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1e
	.4byte	0x114
	.uleb128 0x9
	.4byte	0x97
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x19
	.4byte	0x142
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1f
	.4byte	0x119
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x23
	.4byte	0x177
	.uleb128 0xc
	.ascii	"RXB\000"
	.byte	0x5
	.byte	0x25
	.4byte	0x109
	.uleb128 0xc
	.ascii	"TXB\000"
	.byte	0x5
	.byte	0x26
	.4byte	0x109
	.uleb128 0xc
	.ascii	"DLL\000"
	.byte	0x5
	.byte	0x27
	.4byte	0x109
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x29
	.4byte	0x196
	.uleb128 0xc
	.ascii	"IER\000"
	.byte	0x5
	.byte	0x2b
	.4byte	0x109
	.uleb128 0xc
	.ascii	"DLM\000"
	.byte	0x5
	.byte	0x2c
	.4byte	0x109
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.4byte	0x1c0
	.uleb128 0xc
	.ascii	"IIR\000"
	.byte	0x5
	.byte	0x30
	.4byte	0x109
	.uleb128 0xc
	.ascii	"FCR\000"
	.byte	0x5
	.byte	0x31
	.4byte	0x109
	.uleb128 0xc
	.ascii	"EFR\000"
	.byte	0x5
	.byte	0x32
	.4byte	0x109
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x35
	.4byte	0x1df
	.uleb128 0xc
	.ascii	"MCR\000"
	.byte	0x5
	.byte	0x37
	.4byte	0x109
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x5
	.byte	0x38
	.4byte	0x109
	.byte	0
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x60
	.byte	0x5
	.byte	0x21
	.4byte	0x2f4
	.uleb128 0xf
	.4byte	0x14d
	.byte	0
	.uleb128 0xf
	.4byte	0x177
	.byte	0x4
	.uleb128 0xf
	.4byte	0x196
	.byte	0x8
	.uleb128 0x10
	.ascii	"LCR\000"
	.byte	0x5
	.byte	0x34
	.4byte	0x109
	.byte	0xc
	.uleb128 0xf
	.4byte	0x1c0
	.byte	0x10
	.uleb128 0x10
	.ascii	"LSR\000"
	.byte	0x5
	.byte	0x3a
	.4byte	0x109
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3b
	.4byte	0x109
	.byte	0x18
	.uleb128 0x10
	.ascii	"SCR\000"
	.byte	0x5
	.byte	0x3c
	.4byte	0x109
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3d
	.4byte	0x109
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3e
	.4byte	0x109
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3f
	.4byte	0x109
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x5
	.byte	0x40
	.4byte	0x109
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x5
	.byte	0x41
	.4byte	0x109
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x5
	.byte	0x42
	.4byte	0x109
	.byte	0x34
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x5
	.byte	0x43
	.4byte	0x109
	.byte	0x38
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x5
	.byte	0x44
	.4byte	0x109
	.byte	0x3c
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x5
	.byte	0x45
	.4byte	0x109
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x5
	.byte	0x46
	.4byte	0x109
	.byte	0x44
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x5
	.byte	0x47
	.4byte	0x109
	.byte	0x48
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x5
	.byte	0x48
	.4byte	0x109
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x5
	.byte	0x49
	.4byte	0x109
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x5
	.byte	0x4a
	.4byte	0x109
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x5
	.byte	0x4b
	.4byte	0x109
	.byte	0x58
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4c
	.4byte	0x109
	.byte	0x5c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x5
	.byte	0x4d
	.4byte	0x1df
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x4f
	.4byte	0x33a
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x5
	.byte	0x58
	.4byte	0x2ff
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x1c
	.byte	0x5
	.byte	0x5a
	.4byte	0x3b2
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x5
	.byte	0x5c
	.4byte	0x3b2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x5
	.byte	0x5d
	.4byte	0x97
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x5
	.byte	0x5e
	.4byte	0x33a
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x5
	.byte	0x5f
	.4byte	0x3bd
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x5
	.byte	0x60
	.4byte	0x3bd
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x5
	.byte	0x61
	.4byte	0x3c3
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x5
	.byte	0x62
	.4byte	0x3c3
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x5
	.byte	0x63
	.4byte	0x3c3
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3b8
	.uleb128 0x9
	.4byte	0x2f4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x97
	.uleb128 0x9
	.4byte	0xb8
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x5
	.byte	0x64
	.4byte	0x345
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x5
	.byte	0x64
	.4byte	0x3de
	.uleb128 0x5
	.byte	0x4
	.4byte	0x345
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0xf1
	.4byte	0x413
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0x24
	.4byte	0x45a
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x1
	.byte	0x1f
	.4byte	0xad
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x482
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0x1f
	.4byte	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x1
	.byte	0x25
	.4byte	0x3d3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4aa
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0x25
	.4byte	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x1
	.byte	0x2b
	.4byte	0xfe
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x580
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0x2b
	.4byte	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x1
	.byte	0x2b
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x1
	.byte	0x2b
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2b
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x1
	.byte	0x2d
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x1
	.byte	0x2e
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x532
	.uleb128 0x17
	.ascii	"_x\000"
	.byte	0x1
	.byte	0x38
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x16
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x54d
	.uleb128 0x17
	.ascii	"BR\000"
	.byte	0x1
	.byte	0x49
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x568
	.uleb128 0x17
	.ascii	"_x\000"
	.byte	0x1
	.byte	0x54
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x18
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x17
	.ascii	"_x\000"
	.byte	0x1
	.byte	0x69
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x1
	.byte	0x6e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d8
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0x6e
	.4byte	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x6e
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x18
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x1
	.byte	0x73
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x1
	.byte	0x74
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x1
	.byte	0x82
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x630
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0x82
	.4byte	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x82
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x18
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x1
	.byte	0x87
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x1
	.byte	0x88
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF97
	.byte	0x1
	.byte	0x96
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x654
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0x96
	.4byte	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0x1
	.byte	0x9c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x678
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0x9c
	.4byte	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x1
	.byte	0xa2
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c0
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0xa2
	.4byte	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.byte	0xa2
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x18
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x1
	.byte	0xa6
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x1
	.byte	0xad
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f2
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0xad
	.4byte	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1b
	.ascii	"Str\000"
	.byte	0x1
	.byte	0xad
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x1
	.byte	0xb3
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74a
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0xb3
	.4byte	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x1
	.byte	0xb5
	.4byte	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x1
	.byte	0xbc
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x1
	.byte	0xbd
	.4byte	0x3bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0x1
	.byte	0xce
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a2
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0xce
	.4byte	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x1
	.byte	0xd0
	.4byte	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x1
	.byte	0xd7
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x1
	.byte	0xd8
	.4byte	0x3bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x3c8
	.4byte	0x7b2
	.uleb128 0x1d
	.4byte	0xca
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF110
	.byte	0x1
	.byte	0x18
	.4byte	0x7a2
	.uleb128 0x5
	.byte	0x3
	.4byte	USARTINFO
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0xb
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
.LASF105:
	.ascii	"USART_SendBufferInt\000"
.LASF35:
	.ascii	"AUTOBAUD_REG\000"
.LASF42:
	.ascii	"DMA_EN\000"
.LASF96:
	.ascii	"USART_DisableInterrupts\000"
.LASF110:
	.ascii	"USARTINFO\000"
.LASF69:
	.ascii	"pUSART_CONTEXT\000"
.LASF75:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF58:
	.ascii	"tag_USARTREGS\000"
.LASF67:
	.ascii	"USART_TX_Index\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF46:
	.ascii	"FCR_RD\000"
.LASF85:
	.ascii	"USB_EPNUM\000"
.LASF87:
	.ascii	"USART_GetContext\000"
.LASF10:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF93:
	.ascii	"intflags\000"
.LASF99:
	.ascii	"USART_SendChar\000"
.LASF53:
	.ascii	"USART_ERRInt_EnFlag\000"
.LASF7:
	.ascii	"long int\000"
.LASF43:
	.ascii	"RXTRI_AD\000"
.LASF20:
	.ascii	"false\000"
.LASF77:
	.ascii	"USB_EP0\000"
.LASF89:
	.ascii	"USART_Initialize\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF81:
	.ascii	"USB_EP4IN\000"
.LASF108:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\usart.c\000"
.LASF22:
	.ascii	"boolean\000"
.LASF34:
	.ascii	"SAMPLEPOINT\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF66:
	.ascii	"USART_TX_Count\000"
.LASF109:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF59:
	.ascii	"tag_USART_CONTEXT\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF57:
	.ascii	"TUSART_FLAGS\000"
.LASF51:
	.ascii	"USART_TXInt_EnFlag\000"
.LASF107:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF103:
	.ascii	"USARTInf\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF98:
	.ascii	"USART_FlashTX\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF91:
	.ascii	"Handler\000"
.LASF80:
	.ascii	"USB_EP3IN\000"
.LASF31:
	.ascii	"AUTOBAUD_EN\000"
.LASF61:
	.ascii	"PD_Code\000"
.LASF48:
	.ascii	"tag_USART\000"
.LASF63:
	.ascii	"USART_RX_Buffer\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF90:
	.ascii	"Speed\000"
.LASF49:
	.ascii	"tag_USART_FLAGS\000"
.LASF64:
	.ascii	"USART_TX_Buffer\000"
.LASF94:
	.ascii	"tmpLCR\000"
.LASF44:
	.ascii	"FRACDIV_L\000"
.LASF45:
	.ascii	"FRACDIV_M\000"
.LASF37:
	.ascii	"AUTOBAUDSAMPLE\000"
.LASF104:
	.ascii	"Data\000"
.LASF70:
	.ascii	"tag_VLINDEX\000"
.LASF79:
	.ascii	"USB_EP2IN\000"
.LASF36:
	.ascii	"RATEFIX_AD\000"
.LASF47:
	.ascii	"TUSARTREGS\000"
.LASF54:
	.ascii	"USART_HWFlow_EnFlag\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF84:
	.ascii	"USB_EP2OUT\000"
.LASF55:
	.ascii	"USART_TXFIFOEnFlag\000"
.LASF88:
	.ascii	"Index\000"
.LASF2:
	.ascii	"short int\000"
.LASF28:
	.ascii	"TUSART\000"
.LASF65:
	.ascii	"USART_RX_Index\000"
.LASF30:
	.ascii	"XOFF1\000"
.LASF82:
	.ascii	"USB_EPMAXINDEX\000"
.LASF97:
	.ascii	"USART_FlashRX\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF17:
	.ascii	"long double\000"
.LASF19:
	.ascii	"char\000"
.LASF39:
	.ascii	"ESCAPE_DAT\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF106:
	.ascii	"Sent\000"
.LASF78:
	.ascii	"USB_EP1IN\000"
.LASF102:
	.ascii	"USART_SendBufferPoll\000"
.LASF62:
	.ascii	"Flags\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF86:
	.ascii	"USART_GetPDCode\000"
.LASF76:
	.ascii	"tag_EP\000"
.LASF24:
	.ascii	"USART_MODULE1\000"
.LASF25:
	.ascii	"USART_MODULE2\000"
.LASF26:
	.ascii	"USART_MODULE3\000"
.LASF40:
	.ascii	"ESCAPE_EN\000"
.LASF71:
	.ascii	"LCDIF_LAYER0\000"
.LASF72:
	.ascii	"LCDIF_LAYER1\000"
.LASF73:
	.ascii	"LCDIF_LAYER2\000"
.LASF74:
	.ascii	"LCDIF_LAYER3\000"
.LASF23:
	.ascii	"uint8x32_t\000"
.LASF50:
	.ascii	"USART_EnFlag\000"
.LASF100:
	.ascii	"tmpUSART\000"
.LASF68:
	.ascii	"TUSART_CONTEXT\000"
.LASF32:
	.ascii	"HIGHSPEED\000"
.LASF29:
	.ascii	"XON1\000"
.LASF27:
	.ascii	"USART_MODULES\000"
.LASF38:
	.ascii	"GUARD\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF52:
	.ascii	"USART_RXInt_EnFlag\000"
.LASF95:
	.ascii	"USART_EnableInterrupts\000"
.LASF33:
	.ascii	"SAMPLECOUNT\000"
.LASF56:
	.ascii	"USART_RXFIFOEnFlag\000"
.LASF60:
	.ascii	"USART\000"
.LASF101:
	.ascii	"USART_SendString\000"
.LASF83:
	.ascii	"USB_EP1OUT\000"
.LASF41:
	.ascii	"SLEEP_EN\000"
.LASF92:
	.ascii	"IRQ_CODE\000"
.LASF21:
	.ascii	"true\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
