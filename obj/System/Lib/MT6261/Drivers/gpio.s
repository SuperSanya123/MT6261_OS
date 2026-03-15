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
	.file	"gpio.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.GPIO_Initialize,"ax",%progbits
	.align	2
	.global	GPIO_Initialize
	.code	16
	.thumb_func
	.type	GPIO_Initialize, %function
GPIO_Initialize:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\gpio.c"
	.loc 1 25 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 26 0
	ldr	r3, .L2
	movs	r2, #1
	rsbs	r2, r2, #0
	str	r2, [r3]
	.loc 1 27 0
	ldr	r3, .L2+4
	ldr	r2, .L2+8
	str	r2, [r3]
	.loc 1 29 0
	ldr	r3, .L2+12
	ldr	r2, .L2+16
	str	r2, [r3]
	.loc 1 30 0
	ldr	r3, .L2+20
	ldr	r2, .L2+24
	str	r2, [r3]
	.loc 1 31 0
	ldr	r3, .L2+28
	ldr	r2, .L2+32
	str	r2, [r3]
	.loc 1 32 0
	ldr	r3, .L2+36
	ldr	r2, .L2+40
	str	r2, [r3]
	.loc 1 33 0
	ldr	r3, .L2+44
	ldr	r2, .L2+32
	str	r2, [r3]
	.loc 1 34 0
	ldr	r3, .L2+48
	ldr	r2, .L2+40
	str	r2, [r3]
	.loc 1 36 0
	ldr	r3, .L2+52
	ldr	r2, .L2+56
	str	r2, [r3]
	.loc 1 37 0
	ldr	r3, .L2+60
	ldr	r2, .L2+64
	str	r2, [r3]
	.loc 1 38 0
	ldr	r3, .L2+68
	ldr	r2, .L2+64
	str	r2, [r3]
	.loc 1 39 0
	ldr	r3, .L2+72
	ldr	r2, .L2+76
	str	r2, [r3]
	.loc 1 40 0
	ldr	r3, .L2+80
	ldr	r2, .L2+64
	str	r2, [r3]
	.loc 1 41 0
	ldr	r3, .L2+84
	ldr	r2, .L2+64
	str	r2, [r3]
	.loc 1 42 0
	ldr	r3, .L2+88
	ldr	r2, .L2+92
	str	r2, [r3]
	.loc 1 44 0
	movs	r3, #128
	lsls	r3, r3, #1
	movs	r1, r3
	movs	r0, #51
	bl	GPIO_Setup
	.loc 1 46 0
	movs	r3, #128
	lsls	r3, r3, #1
	movs	r1, r3
	movs	r0, #10
	bl	GPIO_Setup
	.loc 1 47 0
	movs	r3, #128
	lsls	r3, r3, #1
	movs	r1, r3
	movs	r0, #11
	bl	GPIO_Setup
	.loc 1 49 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	-1610481656
	.word	-1610481640
	.word	218103807
	.word	-1610481400
	.word	1136659455
	.word	-1610481384
	.word	15734784
	.word	-1610478840
	.word	-1136659456
	.word	-1610478824
	.word	1042431
	.word	-1610478808
	.word	-1610478792
	.word	-1610478584
	.word	2004353023
	.word	-1610478568
	.word	2004318071
	.word	-1610478552
	.word	-1610478536
	.word	2013263735
	.word	-1610478520
	.word	-1610478504
	.word	-1610478488
	.word	2004320119
	.cfi_endproc
.LFE1:
	.size	GPIO_Initialize, .-GPIO_Initialize
	.section	.text.GPIO_Setup,"ax",%progbits
	.align	2
	.global	GPIO_Setup
	.code	16
	.thumb_func
	.type	GPIO_Setup, %function
GPIO_Setup:
.LFB2:
	.loc 1 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #96
	.cfi_def_cfa_offset 104
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 53 0
	ldr	r3, [r7, #4]
	cmp	r3, #55
	bls	.LCB124
	b	.L54	@long jump
.LCB124:
	.loc 1 55 0
	ldr	r3, [r7]
	movs	r2, #1
	ands	r3, r2
	beq	.L6
.LBB2:
	.loc 1 55 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #31
	bhi	.L7
	.loc 1 55 0 discriminator 2
	ldr	r3, .L55
	movs	r1, #1
	ldr	r2, [r7, #88]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L9
.L7:
	.loc 1 55 0 discriminator 3
	ldr	r3, [r7, #88]
	cmp	r3, #63
	bhi	.L9
	.loc 1 55 0 discriminator 4
	ldr	r3, .L55+4
	ldr	r2, [r7, #88]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L9
.L6:
.LBE2:
.LBB3:
	.loc 1 56 0 is_stmt 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #31
	bhi	.L10
	.loc 1 56 0 is_stmt 0 discriminator 1
	ldr	r3, .L55+8
	movs	r1, #1
	ldr	r2, [r7, #84]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L9
.L10:
	.loc 1 56 0 discriminator 2
	ldr	r3, [r7, #84]
	cmp	r3, #63
	bhi	.L9
	.loc 1 56 0 discriminator 3
	ldr	r3, .L55+12
	ldr	r2, [r7, #84]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L9:
.LBE3:
	.loc 1 58 0 is_stmt 1
	ldr	r3, [r7]
	movs	r2, #2
	ands	r3, r2
	beq	.L11
.LBB4:
	.loc 1 58 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #31
	bhi	.L12
	.loc 1 58 0 discriminator 2
	movs	r2, #1
	ldr	r3, [r7, #80]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	ldr	r2, .L55+16
	ands	r3, r2
	beq	.L15
	.loc 1 58 0 discriminator 4
	ldr	r3, .L55+20
	movs	r1, #1
	ldr	r2, [r7, #80]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L15
.L12:
	.loc 1 58 0 discriminator 3
	ldr	r3, [r7, #80]
	cmp	r3, #63
	bhi	.L15
	.loc 1 58 0 discriminator 5
	ldr	r3, [r7, #80]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #76]
	ldr	r2, [r7, #76]
	movs	r3, #255
	lsls	r3, r3, #5
	ands	r3, r2
	beq	.L15
	.loc 1 58 0 discriminator 6
	ldr	r3, .L55+24
	ldr	r2, [r7, #80]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L15
.L11:
.LBE4:
.LBB5:
	.loc 1 59 0 is_stmt 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	cmp	r3, #31
	bhi	.L16
	.loc 1 59 0 is_stmt 0 discriminator 1
	movs	r2, #1
	ldr	r3, [r7, #72]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	ldr	r2, .L55+16
	ands	r3, r2
	beq	.L15
	.loc 1 59 0 discriminator 3
	ldr	r3, .L55+28
	movs	r1, #1
	ldr	r2, [r7, #72]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L15
.L16:
	.loc 1 59 0 discriminator 2
	ldr	r3, [r7, #72]
	cmp	r3, #63
	bhi	.L15
	.loc 1 59 0 discriminator 4
	ldr	r3, [r7, #72]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #68]
	movs	r3, #255
	lsls	r3, r3, #5
	ands	r3, r2
	beq	.L15
	.loc 1 59 0 discriminator 5
	ldr	r3, .L55+32
	ldr	r2, [r7, #72]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L15:
.LBE5:
	.loc 1 61 0 is_stmt 1
	ldr	r3, [r7]
	movs	r2, #8
	ands	r3, r2
	beq	.L18
.LBB6:
	.loc 1 61 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #31
	bhi	.L19
	.loc 1 61 0 discriminator 2
	movs	r2, #1
	ldr	r3, [r7, #64]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldr	r2, .L55+16
	ands	r3, r2
	beq	.L20
	.loc 1 61 0 discriminator 4
	ldr	r3, .L55+36
	ldr	r2, [r7, #60]
	str	r2, [r3]
	b	.L24
.L20:
	.loc 1 61 0 discriminator 5
	ldr	r3, [r7, #60]
	ldr	r2, .L55+40
	ands	r3, r2
	beq	.L24
	.loc 1 61 0 discriminator 6
	ldr	r3, .L55+44
	ldr	r2, [r7, #60]
	str	r2, [r3]
	b	.L24
.L19:
	.loc 1 61 0 discriminator 3
	ldr	r3, [r7, #64]
	cmp	r3, #63
	bhi	.L24
	.loc 1 61 0 discriminator 7
	ldr	r3, [r7, #64]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldr	r2, .L55+48
	ands	r3, r2
	beq	.L23
	.loc 1 61 0 discriminator 8
	ldr	r3, .L55+52
	ldr	r2, [r7, #60]
	str	r2, [r3]
	b	.L24
.L23:
	.loc 1 61 0 discriminator 9
	ldr	r3, [r7, #60]
	ldr	r2, .L55+56
	ands	r3, r2
	beq	.L24
	.loc 1 61 0 discriminator 10
	ldr	r3, .L55+60
	ldr	r2, [r7, #60]
	str	r2, [r3]
	b	.L24
.L18:
.LBE6:
.LBB7:
	.loc 1 62 0 is_stmt 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #31
	bhi	.L25
	.loc 1 62 0 is_stmt 0 discriminator 1
	movs	r2, #1
	ldr	r3, [r7, #56]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	ldr	r2, .L55+16
	ands	r3, r2
	beq	.L26
	.loc 1 62 0 discriminator 3
	ldr	r3, .L55+64
	ldr	r2, [r7, #52]
	str	r2, [r3]
	b	.L24
.L26:
	.loc 1 62 0 discriminator 4
	ldr	r3, [r7, #52]
	ldr	r2, .L55+40
	ands	r3, r2
	beq	.L24
	.loc 1 62 0 discriminator 5
	ldr	r3, .L55+68
	ldr	r2, [r7, #52]
	str	r2, [r3]
	b	.L24
.L25:
	.loc 1 62 0 discriminator 2
	ldr	r3, [r7, #56]
	cmp	r3, #63
	bhi	.L24
	.loc 1 62 0 discriminator 6
	ldr	r3, [r7, #56]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	ldr	r2, .L55+48
	ands	r3, r2
	beq	.L28
	.loc 1 62 0 discriminator 7
	ldr	r3, .L55+72
	ldr	r2, [r7, #52]
	str	r2, [r3]
	b	.L24
.L28:
	.loc 1 62 0 discriminator 8
	ldr	r3, [r7, #52]
	ldr	r2, .L55+56
	ands	r3, r2
	beq	.L24
	.loc 1 62 0 discriminator 9
	ldr	r3, .L55+76
	ldr	r2, [r7, #52]
	str	r2, [r3]
.L24:
.LBE7:
	.loc 1 64 0 is_stmt 1
	ldr	r3, [r7]
	movs	r2, #4
	ands	r3, r2
	beq	.L29
.LBB8:
	.loc 1 64 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #31
	bhi	.L30
	.loc 1 64 0 discriminator 2
	movs	r2, #1
	ldr	r3, [r7, #48]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r2, .L55+16
	ands	r3, r2
	beq	.L31
	.loc 1 64 0 discriminator 4
	ldr	r3, .L55+80
	ldr	r2, [r7, #44]
	str	r2, [r3]
	b	.L35
.L31:
	.loc 1 64 0 discriminator 5
	ldr	r3, [r7, #44]
	ldr	r2, .L55+40
	ands	r3, r2
	beq	.L35
	.loc 1 64 0 discriminator 6
	ldr	r3, .L55+84
	ldr	r2, [r7, #44]
	str	r2, [r3]
	b	.L35
.L30:
	.loc 1 64 0 discriminator 3
	ldr	r3, [r7, #48]
	cmp	r3, #63
	bhi	.L35
	.loc 1 64 0 discriminator 7
	ldr	r3, [r7, #48]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r2, .L55+48
	ands	r3, r2
	beq	.L34
	.loc 1 64 0 discriminator 8
	ldr	r3, .L55+88
	ldr	r2, [r7, #44]
	str	r2, [r3]
	b	.L35
.L34:
	.loc 1 64 0 discriminator 9
	ldr	r3, [r7, #44]
	ldr	r2, .L55+56
	ands	r3, r2
	beq	.L35
	.loc 1 64 0 discriminator 10
	ldr	r3, .L55+92
	ldr	r2, [r7, #44]
	str	r2, [r3]
	b	.L35
.L29:
.LBE8:
.LBB9:
	.loc 1 65 0 is_stmt 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #31
	bhi	.L36
	.loc 1 65 0 is_stmt 0 discriminator 1
	movs	r2, #1
	ldr	r3, [r7, #40]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r2, .L55+16
	ands	r3, r2
	beq	.L37
	.loc 1 65 0 discriminator 3
	ldr	r3, .L55+96
	ldr	r2, [r7, #36]
	str	r2, [r3]
	b	.L35
.L37:
	.loc 1 65 0 discriminator 4
	ldr	r3, [r7, #36]
	ldr	r2, .L55+40
	ands	r3, r2
	beq	.L35
	.loc 1 65 0 discriminator 5
	ldr	r3, .L55+100
	ldr	r2, [r7, #36]
	str	r2, [r3]
	b	.L35
.L36:
	.loc 1 65 0 discriminator 2
	ldr	r3, [r7, #40]
	cmp	r3, #63
	bhi	.L35
	.loc 1 65 0 discriminator 6
	ldr	r3, [r7, #40]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r2, .L55+48
	ands	r3, r2
	beq	.L39
	.loc 1 65 0 discriminator 7
	ldr	r3, .L55+104
	ldr	r2, [r7, #36]
	str	r2, [r3]
	b	.L35
.L39:
	.loc 1 65 0 discriminator 8
	ldr	r3, [r7, #36]
	ldr	r2, .L55+56
	ands	r3, r2
	beq	.L35
	.loc 1 65 0 discriminator 9
	ldr	r3, .L55+108
	ldr	r2, [r7, #36]
	str	r2, [r3]
.L35:
.LBE9:
	.loc 1 67 0 is_stmt 1
	ldr	r3, [r7]
	movs	r2, #16
	ands	r3, r2
	beq	.L40
.LBB10:
	.loc 1 67 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #31
	bhi	.L41
	.loc 1 67 0 discriminator 2
	movs	r2, #1
	ldr	r3, [r7, #32]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.LCB599
	b	.L44	@long jump
.LCB599:
	.loc 1 67 0 discriminator 4
	ldr	r3, .L55+112
	movs	r1, #1
	ldr	r2, [r7, #32]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L44
.L56:
	.align	2
.L55:
	.word	-1610481660
	.word	-1610481644
	.word	-1610481656
	.word	-1610481640
	.word	1136659455
	.word	-1610479356
	.word	-1610479340
	.word	-1610479352
	.word	-1610479336
	.word	-1610480376
	.word	-1136659456
	.word	-1610479100
	.word	15734784
	.word	-1610480360
	.word	1042431
	.word	-1610479084
	.word	-1610480380
	.word	-1610479096
	.word	-1610480364
	.word	-1610479080
	.word	-1610481404
	.word	-1610478844
	.word	-1610481388
	.word	-1610478828
	.word	-1610481400
	.word	-1610478840
	.word	-1610481384
	.word	-1610478824
	.word	-1610480124
.L41:
	.loc 1 67 0 discriminator 3
	ldr	r3, [r7, #32]
	cmp	r3, #63
	bhi	.L44
	.loc 1 67 0 discriminator 5
	ldr	r3, [r7, #32]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	movs	r3, #255
	lsls	r3, r3, #5
	ands	r3, r2
	beq	.L44
	.loc 1 67 0 discriminator 6
	ldr	r3, .L57
	ldr	r2, [r7, #32]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L44
.L40:
.LBE10:
.LBB11:
	.loc 1 68 0 is_stmt 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #31
	bhi	.L45
	.loc 1 68 0 is_stmt 0 discriminator 1
	movs	r2, #1
	ldr	r3, [r7, #24]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L44
	.loc 1 68 0 discriminator 3
	ldr	r3, .L57+4
	movs	r1, #1
	ldr	r2, [r7, #24]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L44
.L45:
	.loc 1 68 0 discriminator 2
	ldr	r3, [r7, #24]
	cmp	r3, #63
	bhi	.L44
	.loc 1 68 0 discriminator 4
	ldr	r3, [r7, #24]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	movs	r3, #255
	lsls	r3, r3, #5
	ands	r3, r2
	beq	.L44
	.loc 1 68 0 discriminator 5
	ldr	r3, .L57+8
	ldr	r2, [r7, #24]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L44:
.LBE11:
.LBB12:
	.loc 1 70 0 is_stmt 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #55
	bhi	.L54
.LBB13:
	.loc 1 70 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #3
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	movs	r1, #7
	ands	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	lsls	r3, r3, #2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #14
	adds	r3, r7, r3
	movs	r1, #28
	ands	r2, r1
	strb	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7, #16]
	cmp	r3, #7
	bhi	.L47
	.loc 1 70 0 discriminator 2
	ldr	r3, .L57+12
	str	r3, [r7, #92]
	b	.L48
.L47:
	.loc 1 70 0 discriminator 3
	ldr	r3, [r7, #16]
	cmp	r3, #15
	bhi	.L49
	.loc 1 70 0 discriminator 5
	ldr	r3, .L57+16
	str	r3, [r7, #92]
	b	.L48
.L49:
	.loc 1 70 0 discriminator 6
	ldr	r3, [r7, #16]
	cmp	r3, #23
	bhi	.L50
	.loc 1 70 0 discriminator 8
	ldr	r3, .L57+16
	str	r3, [r7, #92]
	b	.L48
.L50:
	.loc 1 70 0 discriminator 9
	ldr	r3, [r7, #16]
	cmp	r3, #31
	bhi	.L51
	.loc 1 70 0 discriminator 11
	ldr	r3, .L57+20
	str	r3, [r7, #92]
	b	.L48
.L51:
	.loc 1 70 0 discriminator 12
	ldr	r3, [r7, #16]
	cmp	r3, #39
	bhi	.L52
	.loc 1 70 0 discriminator 14
	ldr	r3, .L57+16
	str	r3, [r7, #92]
	b	.L48
.L52:
	.loc 1 70 0 discriminator 15
	ldr	r3, [r7, #16]
	cmp	r3, #47
	bhi	.L53
	.loc 1 70 0 discriminator 17
	ldr	r3, .L57+16
	str	r3, [r7, #92]
	b	.L48
.L53:
	.loc 1 70 0 discriminator 18
	ldr	r3, [r7, #16]
	cmp	r3, #55
	bhi	.L48
	.loc 1 70 0 discriminator 20
	ldr	r3, .L57+24
	str	r3, [r7, #92]
.L48:
	.loc 1 70 0 discriminator 22
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #4
	ldr	r2, .L57+28
	mov	ip, r2
	add	r3, r3, ip
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	lsls	r2, r2, #4
	ldr	r1, .L57+28
	mov	ip, r1
	add	r2, r2, ip
	ldr	r2, [r2]
	movs	r1, #14
	adds	r1, r7, r1
	ldrb	r1, [r1]
	movs	r0, #15
	lsls	r0, r0, r1
	movs	r1, r0
	mvns	r1, r1
	ands	r1, r2
	ldr	r2, [r7]
	lsrs	r2, r2, #8
	ldr	r0, [r7, #92]
	ands	r0, r2
	movs	r2, #14
	adds	r2, r7, r2
	ldrb	r2, [r2]
	lsls	r0, r0, r2
	movs	r2, r0
	orrs	r2, r1
	str	r2, [r3]
.L54:
.LBE13:
.LBE12:
	.loc 1 72 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #96
	@ sp needed
	pop	{r7, pc}
.L58:
	.align	2
.L57:
	.word	-1610480108
	.word	-1610480120
	.word	-1610480104
	.word	2004353023
	.word	2004318071
	.word	2013263735
	.word	2004320119
	.word	-1610478592
	.cfi_endproc
.LFE2:
	.size	GPIO_Setup, .-GPIO_Setup
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2a0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.4byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x1
	.byte	0x18
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.byte	0x33
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.ascii	"Pin\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x33
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x9
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x106
	.uleb128 0xa
	.ascii	"p\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x120
	.uleb128 0xa
	.ascii	"p\000"
	.byte	0x1
	.byte	0x38
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x146
	.uleb128 0xa
	.ascii	"p\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.ascii	"v\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x16c
	.uleb128 0xa
	.ascii	"p\000"
	.byte	0x1
	.byte	0x3b
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.ascii	"v\000"
	.byte	0x1
	.byte	0x3b
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x192
	.uleb128 0xa
	.ascii	"p\000"
	.byte	0x1
	.byte	0x3d
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.ascii	"v\000"
	.byte	0x1
	.byte	0x3d
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x9
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x1b8
	.uleb128 0xa
	.ascii	"p\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.ascii	"v\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x9
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x1de
	.uleb128 0xa
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x9
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x205
	.uleb128 0xa
	.ascii	"p\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.ascii	"v\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x9
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x22d
	.uleb128 0xa
	.ascii	"p\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.ascii	"v\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x9
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x255
	.uleb128 0xa
	.ascii	"p\000"
	.byte	0x1
	.byte	0x44
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.ascii	"v\000"
	.byte	0x1
	.byte	0x44
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0xb
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0xa
	.ascii	"p\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xb
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x46
	.4byte	0x81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x46
	.4byte	0x81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -90
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x46
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
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
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF8:
	.ascii	"long long int\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF19:
	.ascii	"Mask\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF18:
	.ascii	"ModePos\000"
.LASF23:
	.ascii	"GPIO_Initialize\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF20:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF17:
	.ascii	"RegIdx\000"
.LASF15:
	.ascii	"char\000"
.LASF21:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\gpio.c\000"
.LASF4:
	.ascii	"long int\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"long double\000"
.LASF16:
	.ascii	"Flags\000"
.LASF2:
	.ascii	"short int\000"
.LASF24:
	.ascii	"GPIO_Setup\000"
.LASF14:
	.ascii	"sizetype\000"
.LASF22:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
