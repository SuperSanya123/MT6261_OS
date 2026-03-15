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
	.file	"pwm.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.data.PWMINFO,"aw",%progbits
	.align	2
	.type	PWMINFO, %object
	.size	PWMINFO, 64
PWMINFO:
	.word	-1609695232
	.word	32
	.space	8
	.word	-1603010548
	.word	49
	.space	8
	.word	-1603010536
	.word	48
	.space	8
	.word	-1607991296
	.word	36
	.space	8
	.section	.text.PWM_SetupChannel,"ax",%progbits
	.align	2
	.global	PWM_SetupChannel
	.code	16
	.thumb_func
	.type	PWM_SetupChannel, %function
PWM_SetupChannel:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\pwm.c"
	.loc 1 33 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	movs	r5, r0
	movs	r4, r1
	movs	r0, r2
	movs	r1, r3
	adds	r3, r7, #7
	adds	r2, r5, #0
	strb	r2, [r3]
	adds	r3, r7, #4
	adds	r2, r4, #0
	strh	r2, [r3]
	adds	r3, r7, #2
	adds	r2, r0, #0
	strh	r2, [r3]
	adds	r3, r7, #6
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 34 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #3
	bls	.L2
	.loc 1 34 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L3
.L2:
.LBB2:
	.loc 1 37 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r3, .L9
	lsls	r2, r2, #4
	ldr	r3, [r2, r3]
	str	r3, [r7, #12]
	.loc 1 39 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #8
	ands	r3, r2
	beq	.L4
	.loc 1 39 0 is_stmt 0 discriminator 1
	movs	r2, #4
	b	.L5
.L4:
	.loc 1 39 0 discriminator 2
	movs	r2, #0
.L5:
	.loc 1 39 0 discriminator 4
	ldr	r3, [r7, #12]
	strh	r2, [r3]
	.loc 1 40 0 is_stmt 1 discriminator 4
	adds	r3, r7, #7
	ldrb	r3, [r3]
	adds	r2, r7, #2
	ldrh	r2, [r2]
	lsls	r2, r2, #19
	lsrs	r2, r2, #19
	lsls	r2, r2, #16
	lsrs	r1, r2, #16
	ldr	r2, .L9
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 42 0 discriminator 4
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L6
	.loc 1 45 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	adds	r2, r7, #7
	ldrb	r2, [r2]
	ldr	r1, .L9
	lsls	r2, r2, #4
	adds	r2, r1, r2
	adds	r2, r2, #10
	ldrh	r2, [r2]
	movs	r1, #3
	ands	r2, r1
	lsls	r2, r2, #16
	lsrs	r1, r2, #16
	ldr	r2, .L9
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 46 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	ldr	r2, .L9
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	ldrh	r3, [r3]
	cmp	r3, #2
	bls	.L8
	.loc 1 46 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	ldr	r2, .L9
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	movs	r2, #2
	strh	r2, [r3]
	b	.L8
.L6:
	.loc 1 51 0 is_stmt 1
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	adds	r3, r7, #6
	ldrb	r3, [r3]
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #3
	ands	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
	.loc 1 52 0
	adds	r3, r7, #4
	ldrh	r3, [r3]
	lsls	r3, r3, #19
	lsrs	r3, r3, #19
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3, #4]
	.loc 1 53 0
	ldr	r3, [r7, #12]
	ldr	r2, .L9+4
	cmp	r3, r2
	bne	.L8
	.loc 1 53 0 is_stmt 0 discriminator 1
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #16
	ands	r3, r2
	beq	.L8
	.loc 1 54 0 is_stmt 1
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #8
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
.L8:
	.loc 1 56 0
	adds	r3, r7, #2
	ldrh	r3, [r3]
	lsls	r3, r3, #19
	lsrs	r3, r3, #19
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3, #8]
	.loc 1 57 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #4
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r1, r2
	movs	r0, r3
	bl	PWM_SetPowerDown
	.loc 1 58 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	ldr	r2, .L9
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #8
	adds	r2, r7, #6
	ldrb	r2, [r2]
	strb	r2, [r3]
.LBE2:
	.loc 1 60 0
	movs	r3, #1
.L3:
	.loc 1 61 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r7, pc}
.L10:
	.align	2
.L9:
	.word	PWMINFO
	.word	-1603010536
	.cfi_endproc
.LFE1:
	.size	PWM_SetupChannel, .-PWM_SetupChannel
	.section	.text.PWM_SetPowerDown,"ax",%progbits
	.align	2
	.global	PWM_SetPowerDown
	.code	16
	.thumb_func
	.type	PWM_SetPowerDown, %function
PWM_SetPowerDown:
.LFB2:
	.loc 1 64 0
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
	adds	r3, r7, #6
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 65 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #3
	bls	.L12
	.loc 1 65 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L13
.L12:
.LBB3:
	.loc 1 68 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	ldr	r2, .L22
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #8
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r3, #4
	ands	r3, r2
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #23
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 70 0
	movs	r3, #23
	adds	r2, r7, r3
	adds	r3, r7, #6
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.LCB275
	b	.L14	@long jump
.LCB275:
	.loc 1 72 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r3, .L22
	lsls	r2, r2, #4
	ldr	r3, [r2, r3]
	adds	r2, r7, #6
	ldrb	r2, [r2]
	cmp	r2, #0
	bne	.L15
	.loc 1 72 0 is_stmt 0 discriminator 1
	adds	r2, r7, #7
	ldrb	r2, [r2]
	ldr	r1, .L22
	lsls	r2, r2, #4
	adds	r2, r1, r2
	adds	r2, r2, #10
	ldrh	r2, [r2]
	b	.L16
.L15:
	.loc 1 72 0 discriminator 2
	movs	r2, #0
.L16:
	.loc 1 72 0 discriminator 4
	strh	r2, [r3, #8]
	.loc 1 74 0 is_stmt 1 discriminator 4
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L17
.LBB4:
	.loc 1 76 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	ldr	r2, .L22
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #46
	bhi	.L18
	.loc 1 76 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #4
	ldr	r2, .L22+4
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	movs	r1, r3
	ldr	r3, [r7, #16]
	movs	r2, #15
	ands	r3, r2
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	b	.L19
.L18:
	.loc 1 76 0 discriminator 2
	ldr	r3, [r7, #16]
	cmp	r3, #52
	bhi	.L19
	.loc 1 76 0 discriminator 3
	ldr	r2, .L22+8
	ldr	r3, [r7, #16]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L19:
.LBE4:
	.loc 1 77 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	adds	r2, r7, #7
	ldrb	r2, [r2]
	ldr	r1, .L22
	lsls	r2, r2, #4
	adds	r2, r1, r2
	adds	r2, r2, #8
	ldrb	r2, [r2]
	movs	r1, #4
	bics	r2, r1
	lsls	r2, r2, #24
	lsrs	r1, r2, #24
	ldr	r2, .L22
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #8
	adds	r2, r1, #0
	strb	r2, [r3]
	b	.L14
.L17:
.LBB5:
	.loc 1 81 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	ldr	r2, .L22
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #46
	bhi	.L20
	.loc 1 81 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #4
	ldr	r2, .L22+12
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	movs	r1, r3
	ldr	r3, [r7, #12]
	movs	r2, #15
	ands	r3, r2
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	b	.L21
.L20:
	.loc 1 81 0 discriminator 2
	ldr	r3, [r7, #12]
	cmp	r3, #52
	bhi	.L21
	.loc 1 81 0 discriminator 3
	ldr	r2, .L22+16
	ldr	r3, [r7, #12]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L21:
.LBE5:
	.loc 1 82 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	adds	r2, r7, #7
	ldrb	r2, [r2]
	ldr	r1, .L22
	lsls	r2, r2, #4
	adds	r2, r1, r2
	adds	r2, r2, #8
	ldrb	r2, [r2]
	movs	r1, #4
	orrs	r2, r1
	lsls	r2, r2, #24
	lsrs	r1, r2, #24
	ldr	r2, .L22
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #8
	adds	r2, r1, #0
	strb	r2, [r3]
.L14:
.LBE3:
	.loc 1 86 0
	movs	r3, #1
.L13:
	.loc 1 87 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L23:
	.align	2
.L22:
	.word	PWMINFO
	.word	671105220
	.word	-1603076084
	.word	671105224
	.word	-1603076080
	.cfi_endproc
.LFE2:
	.size	PWM_SetPowerDown, .-PWM_SetPowerDown
	.section	.text.PWM_SetCount,"ax",%progbits
	.align	2
	.global	PWM_SetCount
	.code	16
	.thumb_func
	.type	PWM_SetCount, %function
PWM_SetCount:
.LFB3:
	.loc 1 90 0
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
	adds	r3, r7, #4
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 91 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #3
	bls	.L25
	.loc 1 91 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L26
.L25:
	.loc 1 92 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L27
	.loc 1 92 0 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L26
.L27:
	.loc 1 95 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r3, .L28
	lsls	r2, r2, #4
	ldr	r3, [r2, r3]
	adds	r2, r7, #4
	ldrh	r2, [r2]
	lsls	r2, r2, #19
	lsrs	r2, r2, #19
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #4]
	.loc 1 97 0
	movs	r3, #1
.L26:
	.loc 1 98 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L29:
	.align	2
.L28:
	.word	PWMINFO
	.cfi_endproc
.LFE3:
	.size	PWM_SetCount, .-PWM_SetCount
	.section	.text.PWM_SetThreshold,"ax",%progbits
	.align	2
	.global	PWM_SetThreshold
	.code	16
	.thumb_func
	.type	PWM_SetThreshold, %function
PWM_SetThreshold:
.LFB4:
	.loc 1 101 0
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
	adds	r3, r7, #4
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 102 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #3
	bls	.L31
	.loc 1 102 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L32
.L31:
	.loc 1 103 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L33
	.loc 1 105 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	adds	r2, r7, #7
	ldrb	r2, [r2]
	ldr	r1, .L34
	lsls	r2, r2, #4
	adds	r2, r1, r2
	adds	r2, r2, #10
	ldrh	r2, [r2]
	movs	r1, #3
	ands	r2, r1
	lsls	r2, r2, #16
	lsrs	r1, r2, #16
	ldr	r2, .L34
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 106 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	ldr	r2, .L34
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	ldrh	r3, [r3]
	cmp	r3, #2
	bls	.L33
	.loc 1 106 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	ldr	r2, .L34
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	movs	r2, #2
	strh	r2, [r3]
.L33:
	.loc 1 108 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	adds	r2, r7, #4
	ldrh	r2, [r2]
	lsls	r2, r2, #19
	lsrs	r2, r2, #19
	lsls	r2, r2, #16
	lsrs	r1, r2, #16
	ldr	r2, .L34
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 109 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r3, .L34
	lsls	r2, r2, #4
	ldr	r3, [r2, r3]
	adds	r2, r7, #7
	ldrb	r2, [r2]
	ldr	r1, .L34
	lsls	r2, r2, #4
	adds	r2, r1, r2
	adds	r2, r2, #10
	ldrh	r2, [r2]
	strh	r2, [r3, #8]
	.loc 1 111 0
	movs	r3, #1
.L32:
	.loc 1 112 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L35:
	.align	2
.L34:
	.word	PWMINFO
	.cfi_endproc
.LFE4:
	.size	PWM_SetThreshold, .-PWM_SetThreshold
	.global	__aeabi_uidiv
	.section	.text.PWM_SetDutyCycle,"ax",%progbits
	.align	2
	.global	PWM_SetDutyCycle
	.code	16
	.thumb_func
	.type	PWM_SetDutyCycle, %function
PWM_SetDutyCycle:
.LFB5:
	.loc 1 115 0
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
	str	r1, [r7]
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 116 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #3
	bls	.L37
	.loc 1 116 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L38
.L37:
	.loc 1 117 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L39
	.loc 1 119 0
	ldr	r3, [r7]
	cmp	r3, #49
	bhi	.L40
	.loc 1 119 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	ldr	r2, .L46
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	movs	r2, #0
	strh	r2, [r3]
	b	.L43
.L40:
	.loc 1 120 0 is_stmt 1
	ldr	r3, [r7]
	cmp	r3, #99
	bhi	.L42
	.loc 1 120 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	ldr	r2, .L46
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	movs	r2, #1
	strh	r2, [r3]
	b	.L43
.L42:
	.loc 1 121 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	ldr	r2, .L46
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	movs	r2, #2
	strh	r2, [r3]
	b	.L43
.L39:
.LBB6:
	.loc 1 125 0
	ldr	r3, [r7]
	str	r3, [r7, #12]
	movs	r3, #100
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	cmp	r3, r2
	bls	.L44
	movs	r3, r2
.L44:
.LBE6:
	str	r3, [r7]
	.loc 1 126 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r3, .L46
	lsls	r2, r2, #4
	ldr	r3, [r2, r3]
	ldrh	r3, [r3, #4]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	beq	.L45
	.loc 1 127 0
	adds	r3, r7, #7
	ldrb	r4, [r3]
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r3, .L46
	lsls	r2, r2, #4
	ldr	r3, [r2, r3]
	ldrh	r3, [r3, #4]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r3, #1
	movs	r2, r3
	ldr	r3, [r7]
	muls	r3, r2
	movs	r1, #100
	movs	r0, r3
	bl	__aeabi_uidiv
	movs	r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #19
	lsrs	r3, r3, #19
	lsls	r3, r3, #16
	lsrs	r1, r3, #16
	ldr	r2, .L46
	lsls	r3, r4, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	adds	r2, r1, #0
	strh	r2, [r3]
	b	.L43
.L45:
	.loc 1 128 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	ldr	r2, .L46
	lsls	r3, r3, #4
	adds	r3, r2, r3
	adds	r3, r3, #10
	movs	r2, #0
	strh	r2, [r3]
.L43:
	.loc 1 130 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r3, .L46
	lsls	r2, r2, #4
	ldr	r3, [r2, r3]
	adds	r2, r7, #7
	ldrb	r2, [r2]
	ldr	r1, .L46
	lsls	r2, r2, #4
	adds	r2, r1, r2
	adds	r2, r2, #10
	ldrh	r2, [r2]
	strh	r2, [r3, #8]
	.loc 1 132 0
	movs	r3, #1
.L38:
	.loc 1 133 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L47:
	.align	2
.L46:
	.word	PWMINFO
	.cfi_endproc
.LFE5:
	.size	PWM_SetDutyCycle, .-PWM_SetDutyCycle
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 6 ".\\Source\\Lib\\MT6261/drivers\\pwm.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x477
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xc
	.4byte	.LASF77
	.4byte	.LASF78
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
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0xf1
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x1d
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1f
	.4byte	0x107
	.uleb128 0x7
	.4byte	0xa2
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0xf1
	.4byte	0x13b
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x19
	.4byte	0x16a
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0x20
	.4byte	0x13b
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x22
	.4byte	0x1b0
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x6
	.byte	0x2b
	.4byte	0x175
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0xc
	.byte	0x6
	.byte	0x2d
	.4byte	0x1ec
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x6
	.byte	0x2f
	.4byte	0xfc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x6
	.byte	0x30
	.4byte	0xfc
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x6
	.byte	0x31
	.4byte	0xfc
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x6
	.byte	0x32
	.4byte	0x1bb
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x6
	.byte	0x32
	.4byte	0x202
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1bb
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x10
	.byte	0x6
	.byte	0x34
	.4byte	0x251
	.uleb128 0xc
	.ascii	"PWM\000"
	.byte	0x6
	.byte	0x36
	.4byte	0x251
	.byte	0
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x6
	.byte	0x37
	.4byte	0xad
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x6
	.byte	0x38
	.4byte	0x1b0
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x6
	.byte	0x39
	.4byte	0xa2
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x6
	.byte	0x3a
	.4byte	0x97
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1ec
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x6
	.byte	0x3b
	.4byte	0x208
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0x24
	.4byte	0x2a9
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x1
	.byte	0x20
	.4byte	0xf1
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x313
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0x20
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x20
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x1
	.byte	0x20
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x1
	.byte	0x20
	.4byte	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xf
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x10
	.ascii	"PWM\000"
	.byte	0x1
	.byte	0x25
	.4byte	0x1f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.byte	0x3f
	.4byte	0xf1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x393
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0x3f
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x1
	.byte	0x3f
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xf
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.byte	0x44
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x13
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x37a
	.uleb128 0x10
	.ascii	"_x\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xf
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x10
	.ascii	"_x\000"
	.byte	0x1
	.byte	0x51
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x1
	.byte	0x59
	.4byte	0xf1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c9
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0x59
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x59
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.byte	0x64
	.4byte	0xf1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ff
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0x64
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x1
	.byte	0x64
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x1
	.byte	0x72
	.4byte	0xf1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x459
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0x72
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x1
	.byte	0x72
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x10
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x7d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x7d
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x257
	.4byte	0x469
	.uleb128 0x15
	.4byte	0xca
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x1
	.byte	0x18
	.4byte	0x459
	.uleb128 0x5
	.byte	0x3
	.4byte	PWMINFO
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
.LASF65:
	.ascii	"USB_EP2OUT\000"
.LASF67:
	.ascii	"Index\000"
.LASF55:
	.ascii	"Duty\000"
.LASF72:
	.ascii	"PWM_SetCount\000"
.LASF62:
	.ascii	"USB_EP4IN\000"
.LASF56:
	.ascii	"TPWM_CONTEXT\000"
.LASF2:
	.ascii	"short int\000"
.LASF29:
	.ascii	"tag_VLINDEX\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF49:
	.ascii	"TPWMREGS\000"
.LASF69:
	.ascii	"PWM_SetPowerDown\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF61:
	.ascii	"USB_EP3IN\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF33:
	.ascii	"PWM_CHANNEL3\000"
.LASF34:
	.ascii	"PWM_CHANNEL4\000"
.LASF48:
	.ascii	"Threshold\000"
.LASF75:
	.ascii	"PWMINFO\000"
.LASF53:
	.ascii	"PD_Code\000"
.LASF50:
	.ascii	"pPWMREGS\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF66:
	.ascii	"USB_EPNUM\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF60:
	.ascii	"USB_EP2IN\000"
.LASF54:
	.ascii	"Flags\000"
.LASF35:
	.ascii	"PWM_CHANNELS\000"
.LASF28:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF68:
	.ascii	"PWM_SetupChannel\000"
.LASF9:
	.ascii	"long long int\000"
.LASF6:
	.ascii	"long int\000"
.LASF71:
	.ascii	"AlreadyInState\000"
.LASF73:
	.ascii	"PWM_SetThreshold\000"
.LASF32:
	.ascii	"PWM_CHANNEL2\000"
.LASF63:
	.ascii	"USB_EPMAXINDEX\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF59:
	.ascii	"USB_EP1IN\000"
.LASF17:
	.ascii	"long double\000"
.LASF57:
	.ascii	"tag_EP\000"
.LASF46:
	.ascii	"Ctrl\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF38:
	.ascii	"PWF_CLKDIV1\000"
.LASF39:
	.ascii	"PWF_CLKDIV2\000"
.LASF40:
	.ascii	"PWF_CLKDIV4\000"
.LASF37:
	.ascii	"tag_PWM_FLAGS\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF77:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\pwm.c\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF20:
	.ascii	"false\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF31:
	.ascii	"PWM_CHANNEL1\000"
.LASF47:
	.ascii	"Count\000"
.LASF51:
	.ascii	"tag_PWMREGS\000"
.LASF70:
	.ascii	"PowerDown\000"
.LASF19:
	.ascii	"char\000"
.LASF64:
	.ascii	"USB_EP1OUT\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF21:
	.ascii	"true\000"
.LASF41:
	.ascii	"PWF_CLKDIV8\000"
.LASF36:
	.ascii	"TPWM\000"
.LASF42:
	.ascii	"PWF_ENABLED\000"
.LASF74:
	.ascii	"PWM_SetDutyCycle\000"
.LASF78:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF11:
	.ascii	"__uintptr_t\000"
.LASF43:
	.ascii	"PWF_FSEL_32K\000"
.LASF30:
	.ascii	"tag_PWM\000"
.LASF16:
	.ascii	"uintptr_t\000"
.LASF52:
	.ascii	"tag_PWM_CONTEXT\000"
.LASF45:
	.ascii	"TPWM_FLAGS\000"
.LASF58:
	.ascii	"USB_EP0\000"
.LASF23:
	.ascii	"uint16x32_t\000"
.LASF24:
	.ascii	"LCDIF_LAYER0\000"
.LASF25:
	.ascii	"LCDIF_LAYER1\000"
.LASF26:
	.ascii	"LCDIF_LAYER2\000"
.LASF27:
	.ascii	"LCDIF_LAYER3\000"
.LASF44:
	.ascii	"PWF_ALW_HIGH\000"
.LASF76:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF22:
	.ascii	"boolean\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
