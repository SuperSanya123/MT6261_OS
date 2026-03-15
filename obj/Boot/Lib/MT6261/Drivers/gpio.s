	.syntax unified
	.cpu arm9e
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.thumb
	.syntax unified
	.file	"gpio.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.GPIO_Setup.part.0,"ax",%progbits
	.align	1
	.code	16
	.thumb_func
	.type	GPIO_Setup.part.0, %function
GPIO_Setup.part.0:
.LFB3:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\gpio.c"
	.loc 1 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 55 0
	movs	r3, #1
	.loc 1 51 0
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 55 0
	tst	r1, r3
	beq	.L2
.LVL1:
.LBB23:
	cmp	r0, #31
	bhi	.L3
	lsls	r3, r3, r0
	ldr	r2, .L88
	b	.L81
.L3:
	cmp	r0, #63
	bhi	.L4
	movs	r2, r0
	subs	r2, r2, #32
	lsls	r3, r3, r2
	ldr	r2, .L88+4
	b	.L81
.LVL2:
.L2:
.LBE23:
.LBB24:
	.loc 1 56 0
	cmp	r0, #31
	bhi	.L5
	lsls	r3, r3, r0
	ldr	r2, .L88+8
	b	.L81
.L5:
	cmp	r0, #63
	bhi	.L4
	movs	r2, r0
	subs	r2, r2, #32
	lsls	r3, r3, r2
	ldr	r2, .L88+12
.LVL3:
.L81:
	str	r3, [r2]
.L4:
.LBE24:
	.loc 1 58 0
	lsls	r3, r1, #30
	bpl	.L6
.LVL4:
.LBB25:
	cmp	r0, #31
	bhi	.L7
	movs	r3, #1
	lsls	r3, r3, r0
.LVL5:
	ldr	r2, .L88+16
	tst	r3, r2
	beq	.L8
	ldr	r2, .L88+20
	b	.L82
.LVL6:
.L7:
	cmp	r0, #63
	bhi	.L8
	movs	r2, r0
	movs	r3, #1
	subs	r2, r2, #32
	lsls	r3, r3, r2
.LVL7:
	movs	r2, #255
	lsls	r2, r2, #5
	tst	r3, r2
	beq	.L8
	ldr	r2, .L88+24
	b	.L82
.LVL8:
.L6:
.LBE25:
.LBB26:
	.loc 1 59 0
	cmp	r0, #31
	bhi	.L9
	movs	r3, #1
	lsls	r3, r3, r0
.LVL9:
	ldr	r2, .L88+16
	tst	r3, r2
	beq	.L8
	ldr	r2, .L88+28
	b	.L82
.LVL10:
.L9:
	cmp	r0, #63
	bhi	.L8
	movs	r2, r0
	movs	r3, #1
	subs	r2, r2, #32
	lsls	r3, r3, r2
.LVL11:
	movs	r2, #255
	lsls	r2, r2, #5
	tst	r3, r2
	beq	.L8
	ldr	r2, .L88+32
.LVL12:
.L82:
	str	r3, [r2]
.L8:
.LBE26:
	.loc 1 61 0
	lsls	r3, r1, #28
	bpl	.L10
.LVL13:
.LBB27:
	cmp	r0, #31
	bhi	.L11
	movs	r3, #1
	lsls	r3, r3, r0
.LVL14:
	ldr	r2, .L88+16
	tst	r3, r2
	beq	.L12
	ldr	r2, .L88+36
	b	.L83
.L12:
	ldr	r2, .L88+40
	tst	r3, r2
	beq	.L13
	ldr	r2, .L88+44
	b	.L83
.LVL15:
.L11:
	cmp	r0, #63
	bhi	.L13
	movs	r2, r0
	movs	r3, #1
	subs	r2, r2, #32
	lsls	r3, r3, r2
.LVL16:
	ldr	r2, .L88+48
	tst	r3, r2
	beq	.L14
	ldr	r2, .L88+52
	b	.L83
.L14:
	ldr	r2, .L88+56
	tst	r3, r2
	beq	.L13
	ldr	r2, .L88+60
	b	.L83
.LVL17:
.L10:
.LBE27:
.LBB28:
	.loc 1 62 0
	cmp	r0, #31
	bhi	.L15
	movs	r3, #1
	lsls	r3, r3, r0
.LVL18:
	ldr	r2, .L88+16
	tst	r3, r2
	beq	.L16
	ldr	r2, .L88+64
	b	.L83
.L16:
	ldr	r2, .L88+40
	tst	r3, r2
	beq	.L13
	ldr	r2, .L88+68
	b	.L83
.LVL19:
.L15:
	cmp	r0, #63
	bhi	.L13
	movs	r2, r0
	movs	r3, #1
	subs	r2, r2, #32
	lsls	r3, r3, r2
.LVL20:
	ldr	r2, .L88+48
	tst	r3, r2
	beq	.L17
	ldr	r2, .L88+72
	b	.L83
.L17:
	ldr	r2, .L88+56
	tst	r3, r2
	beq	.L13
	ldr	r2, .L88+76
.LVL21:
.L83:
	str	r3, [r2]
.L13:
.LBE28:
	.loc 1 64 0
	lsls	r3, r1, #29
	bpl	.L18
.LVL22:
.LBB29:
	cmp	r0, #31
	bhi	.L19
	movs	r3, #1
	lsls	r3, r3, r0
.LVL23:
	ldr	r2, .L88+16
	tst	r3, r2
	beq	.L20
	ldr	r2, .L88+80
	b	.L84
.L20:
	ldr	r2, .L88+40
	tst	r3, r2
	beq	.L21
	ldr	r2, .L88+84
	b	.L84
.LVL24:
.L19:
	cmp	r0, #63
	bhi	.L21
	movs	r2, r0
	movs	r3, #1
	subs	r2, r2, #32
	lsls	r3, r3, r2
.LVL25:
	ldr	r2, .L88+48
	tst	r3, r2
	beq	.L22
	ldr	r2, .L88+88
	b	.L84
.L22:
	ldr	r2, .L88+56
	tst	r3, r2
	beq	.L21
	ldr	r2, .L88+92
	b	.L84
.LVL26:
.L18:
.LBE29:
.LBB30:
	.loc 1 65 0
	cmp	r0, #31
	bhi	.L23
	movs	r3, #1
	lsls	r3, r3, r0
.LVL27:
	ldr	r2, .L88+16
	tst	r3, r2
	beq	.L24
	ldr	r2, .L88+96
	b	.L84
.L24:
	ldr	r2, .L88+40
	tst	r3, r2
	beq	.L21
	ldr	r2, .L88+100
	b	.L84
.LVL28:
.L23:
	cmp	r0, #63
	bhi	.L21
	movs	r2, r0
	movs	r3, #1
	subs	r2, r2, #32
	lsls	r3, r3, r2
.LVL29:
	ldr	r2, .L88+48
	tst	r3, r2
	beq	.L25
	ldr	r2, .L88+104
	b	.L84
.L25:
	ldr	r2, .L88+56
	tst	r3, r2
	beq	.L21
	ldr	r2, .L88+108
.LVL30:
.L84:
	str	r3, [r2]
.L21:
.LBE30:
	.loc 1 67 0
	lsls	r3, r1, #27
	bpl	.L26
.LVL31:
.LBB31:
	cmp	r0, #31
	bhi	.L27
	movs	r3, #1
	ldr	r2, .L88+112
	lsls	r3, r3, r0
.LVL32:
	b	.L86
.LVL33:
.L27:
	cmp	r0, #63
	bhi	.L29
	movs	r2, r0
	movs	r3, #1
	subs	r2, r2, #32
	lsls	r3, r3, r2
.LVL34:
	movs	r2, #255
	lsls	r2, r2, #5
	tst	r3, r2
	beq	.L29
	ldr	r2, .L88+116
	b	.L85
.LVL35:
.L26:
.LBE31:
.LBB32:
	.loc 1 68 0
	cmp	r0, #31
	bhi	.L30
	movs	r3, #1
	lsls	r3, r3, r0
.LVL36:
	ldr	r2, .L88+120
.LVL37:
.L86:
	str	r3, [r2]
	b	.L28
.LVL38:
.L30:
	cmp	r0, #63
	bhi	.L29
	movs	r2, r0
	movs	r3, #1
	subs	r2, r2, #32
	lsls	r3, r3, r2
.LVL39:
	movs	r2, #255
	lsls	r2, r2, #5
	tst	r3, r2
	beq	.L29
	ldr	r2, .L88+124
.LVL40:
.L85:
	str	r3, [r2]
.L29:
.LVL41:
.LBE32:
.LBB33:
	.loc 1 70 0
	cmp	r0, #55
	bhi	.L1
.LVL42:
.L28:
.LBB34:
	movs	r4, #28
	lsls	r2, r0, #2
	lsrs	r3, r0, #3
.LVL43:
	ands	r4, r2
.LVL44:
	cmp	r0, #7
	bls	.L37
	cmp	r0, #23
	bls	.L36
	cmp	r0, #31
	bls	.L35
	cmp	r0, #47
	bls	.L36
	ldr	r2, .L88+128
	b	.L32
.L35:
	ldr	r2, .L88+132
	b	.L32
.L36:
	ldr	r2, .L88+136
	b	.L32
.L37:
	ldr	r2, .L88+140
.L32:
.LVL45:
	movs	r5, #15
	lsrs	r1, r1, #8
.LVL46:
	lsls	r5, r5, r4
	ands	r1, r2
	lsls	r1, r1, r4
	ldr	r0, .L88+144
.LVL47:
	lsls	r3, r3, #4
.LVL48:
	adds	r3, r3, r0
	ldr	r0, [r3]
	bics	r0, r5
	orrs	r1, r0
	str	r1, [r3]
.LVL49:
.L1:
.LBE34:
.LBE33:
	.loc 1 72 0
	@ sp needed
	pop	{r4, r5, pc}
.L89:
	.align	2
.L88:
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
	.word	-1610480108
	.word	-1610480120
	.word	-1610480104
	.word	2004320119
	.word	2013263735
	.word	2004318071
	.word	2004353023
	.word	-1610478592
	.cfi_endproc
.LFE3:
	.size	GPIO_Setup.part.0, .-GPIO_Setup.part.0
	.section	.text.GPIO_Initialize,"ax",%progbits
	.align	1
	.global	GPIO_Initialize
	.code	16
	.thumb_func
	.type	GPIO_Initialize, %function
GPIO_Initialize:
.LFB1:
	.loc 1 25 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 26 0
	movs	r2, #1
	.loc 1 25 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB35:
.LBB36:
	movs	r4, #128
.LBE36:
.LBE35:
	.loc 1 26 0
	ldr	r3, .L91
	rsbs	r2, r2, #0
	str	r2, [r3]
	.loc 1 27 0
	ldr	r2, .L91+4
	ldr	r3, .L91+8
	.loc 1 32 0
	ldr	r1, .L91+12
	.loc 1 27 0
	str	r2, [r3]
	.loc 1 29 0
	ldr	r2, .L91+16
	ldr	r3, .L91+20
.LBB41:
.LBB37:
	lsls	r4, r4, #1
.LBE37:
.LBE41:
	str	r2, [r3]
	.loc 1 30 0
	ldr	r2, .L91+24
	ldr	r3, .L91+28
.LBB42:
.LBB38:
	movs	r0, #51
.LBE38:
.LBE42:
	str	r2, [r3]
	.loc 1 31 0
	ldr	r2, .L91+32
	ldr	r3, .L91+36
	.loc 1 49 0
	@ sp needed
	.loc 1 31 0
	str	r2, [r3]
	.loc 1 32 0
	ldr	r3, .L91+40
	str	r3, [r1]
	.loc 1 33 0
	ldr	r1, .L91+44
	str	r2, [r1]
	.loc 1 34 0
	ldr	r2, .L91+48
	.loc 1 39 0
	ldr	r1, .L91+52
	.loc 1 34 0
	str	r3, [r2]
	.loc 1 36 0
	ldr	r2, .L91+56
	ldr	r3, .L91+60
	str	r2, [r3]
	.loc 1 37 0
	ldr	r3, .L91+64
	ldr	r2, .L91+68
	str	r3, [r2]
	.loc 1 38 0
	ldr	r2, .L91+72
	str	r3, [r2]
	.loc 1 39 0
	ldr	r2, .L91+76
	str	r1, [r2]
	.loc 1 40 0
	ldr	r2, .L91+80
.LBB43:
.LBB39:
	movs	r1, r4
.LBE39:
.LBE43:
	str	r3, [r2]
	.loc 1 41 0
	ldr	r2, .L91+84
	str	r3, [r2]
	.loc 1 42 0
	ldr	r2, .L91+88
	ldr	r3, .L91+92
	str	r2, [r3]
.LVL50:
.LBB44:
.LBB40:
	bl	GPIO_Setup.part.0
.LVL51:
.LBE40:
.LBE44:
.LBB45:
.LBB46:
	movs	r1, r4
	movs	r0, #10
	bl	GPIO_Setup.part.0
.LVL52:
.LBE46:
.LBE45:
.LBB47:
.LBB48:
	movs	r1, r4
	movs	r0, #11
	bl	GPIO_Setup.part.0
.LVL53:
.LBE48:
.LBE47:
	.loc 1 49 0
	pop	{r4, pc}
.L92:
	.align	2
.L91:
	.word	-1610481656
	.word	218103807
	.word	-1610481640
	.word	-1610478824
	.word	1136659455
	.word	-1610481400
	.word	15734784
	.word	-1610481384
	.word	-1136659456
	.word	-1610478840
	.word	1042431
	.word	-1610478808
	.word	-1610478792
	.word	2013263735
	.word	2004353023
	.word	-1610478584
	.word	2004318071
	.word	-1610478568
	.word	-1610478552
	.word	-1610478536
	.word	-1610478520
	.word	-1610478504
	.word	2004320119
	.word	-1610478488
	.cfi_endproc
.LFE1:
	.size	GPIO_Initialize, .-GPIO_Initialize
	.section	.text.GPIO_Setup,"ax",%progbits
	.align	1
	.global	GPIO_Setup
	.code	16
	.thumb_func
	.type	GPIO_Setup, %function
GPIO_Setup:
.LFB2:
	.loc 1 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL54:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 53 0
	cmp	r0, #55
	bhi	.L93
	bl	GPIO_Setup.part.0
.LVL55:
.L93:
	.loc 1 72 0
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE2:
	.size	GPIO_Setup, .-GPIO_Setup
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x462
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x33
	.byte	0x1
	.4byte	0x1db
	.uleb128 0x6
	.ascii	"Pin\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x8c
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x33
	.4byte	0x8c
	.uleb128 0x8
	.4byte	0xdd
	.uleb128 0x9
	.ascii	"p\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x8c
	.byte	0
	.uleb128 0x8
	.4byte	0xec
	.uleb128 0x9
	.ascii	"p\000"
	.byte	0x1
	.byte	0x38
	.4byte	0x8c
	.byte	0
	.uleb128 0x8
	.4byte	0x104
	.uleb128 0x9
	.ascii	"p\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0x8c
	.uleb128 0x9
	.ascii	"v\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0x8c
	.byte	0
	.uleb128 0x8
	.4byte	0x11c
	.uleb128 0x9
	.ascii	"p\000"
	.byte	0x1
	.byte	0x3b
	.4byte	0x8c
	.uleb128 0x9
	.ascii	"v\000"
	.byte	0x1
	.byte	0x3b
	.4byte	0x8c
	.byte	0
	.uleb128 0x8
	.4byte	0x134
	.uleb128 0x9
	.ascii	"p\000"
	.byte	0x1
	.byte	0x3d
	.4byte	0x8c
	.uleb128 0x9
	.ascii	"v\000"
	.byte	0x1
	.byte	0x3d
	.4byte	0x8c
	.byte	0
	.uleb128 0x8
	.4byte	0x14c
	.uleb128 0x9
	.ascii	"p\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0x8c
	.uleb128 0x9
	.ascii	"v\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0x8c
	.byte	0
	.uleb128 0x8
	.4byte	0x164
	.uleb128 0x9
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x8c
	.uleb128 0x9
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x8c
	.byte	0
	.uleb128 0x8
	.4byte	0x17c
	.uleb128 0x9
	.ascii	"p\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x8c
	.uleb128 0x9
	.ascii	"v\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x8c
	.byte	0
	.uleb128 0x8
	.4byte	0x194
	.uleb128 0x9
	.ascii	"p\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x8c
	.uleb128 0x9
	.ascii	"v\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x8c
	.byte	0
	.uleb128 0x8
	.4byte	0x1ac
	.uleb128 0x9
	.ascii	"p\000"
	.byte	0x1
	.byte	0x44
	.4byte	0x8c
	.uleb128 0x9
	.ascii	"v\000"
	.byte	0x1
	.byte	0x44
	.4byte	0x8c
	.byte	0
	.uleb128 0xa
	.uleb128 0x9
	.ascii	"p\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x8c
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x46
	.4byte	0x81
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x46
	.4byte	0x81
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x46
	.4byte	0x8c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xac
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x367
	.uleb128 0xd
	.4byte	0xb8
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	0xc3
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x217
	.uleb128 0xf
	.4byte	0xd3
	.4byte	.LLST2
	.byte	0
	.uleb128 0xe
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x22e
	.uleb128 0xf
	.4byte	0xe2
	.4byte	.LLST3
	.byte	0
	.uleb128 0xe
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x24e
	.uleb128 0xf
	.4byte	0xf1
	.4byte	.LLST4
	.uleb128 0xf
	.4byte	0xfa
	.4byte	.LLST5
	.byte	0
	.uleb128 0xe
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x26e
	.uleb128 0xf
	.4byte	0x109
	.4byte	.LLST6
	.uleb128 0xf
	.4byte	0x112
	.4byte	.LLST7
	.byte	0
	.uleb128 0xe
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x28e
	.uleb128 0xf
	.4byte	0x121
	.4byte	.LLST8
	.uleb128 0xf
	.4byte	0x12a
	.4byte	.LLST9
	.byte	0
	.uleb128 0xe
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0x2ae
	.uleb128 0xf
	.4byte	0x139
	.4byte	.LLST10
	.uleb128 0xf
	.4byte	0x142
	.4byte	.LLST11
	.byte	0
	.uleb128 0xe
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x2ce
	.uleb128 0xf
	.4byte	0x151
	.4byte	.LLST12
	.uleb128 0xf
	.4byte	0x15a
	.4byte	.LLST13
	.byte	0
	.uleb128 0xe
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x2ee
	.uleb128 0xf
	.4byte	0x169
	.4byte	.LLST14
	.uleb128 0xf
	.4byte	0x172
	.4byte	.LLST15
	.byte	0
	.uleb128 0xe
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x30e
	.uleb128 0xf
	.4byte	0x181
	.4byte	.LLST16
	.uleb128 0xf
	.4byte	0x18a
	.4byte	.LLST17
	.byte	0
	.uleb128 0xe
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x32e
	.uleb128 0xf
	.4byte	0x199
	.4byte	.LLST18
	.uleb128 0xf
	.4byte	0x1a2
	.4byte	.LLST19
	.byte	0
	.uleb128 0x10
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0xf
	.4byte	0x1ad
	.4byte	.LLST20
	.uleb128 0x10
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0xf
	.4byte	0x1b7
	.4byte	.LLST21
	.uleb128 0xf
	.4byte	0x1c2
	.4byte	.LLST22
	.uleb128 0xf
	.4byte	0x1cd
	.4byte	.LLST23
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x18
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42b
	.uleb128 0x12
	.4byte	0xac
	.4byte	.LBB35
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2c
	.4byte	0x3b8
	.uleb128 0xd
	.4byte	0xc3
	.4byte	.LLST24
	.uleb128 0xd
	.4byte	0xb8
	.4byte	.LLST25
	.uleb128 0x13
	.4byte	.LVL51
	.4byte	0x1db
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xac
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.byte	0x2e
	.4byte	0x3f3
	.uleb128 0xd
	.4byte	0xc3
	.4byte	.LLST26
	.uleb128 0xd
	.4byte	0xb8
	.4byte	.LLST27
	.uleb128 0x13
	.4byte	.LVL52
	.4byte	0x1db
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xac
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.byte	0x2f
	.uleb128 0xd
	.4byte	0xc3
	.4byte	.LLST28
	.uleb128 0xd
	.4byte	0xb8
	.4byte	.LLST29
	.uleb128 0x13
	.4byte	.LVL53
	.4byte	0x1db
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0xac
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	0xb8
	.4byte	.LLST30
	.uleb128 0xd
	.4byte	0xc3
	.4byte	.LLST31
	.uleb128 0x13
	.4byte	.LVL55
	.4byte	0x1db
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL46
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xa
	.2byte	0x100
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x8
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xa
	.2byte	0x100
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xa
	.2byte	0x100
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL55-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL55-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
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
.LASF19:
	.ascii	"Mask\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF18:
	.ascii	"ModePos\000"
.LASF24:
	.ascii	"GPIO_Initialize\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF1:
	.ascii	"unsigned char\000"
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
.LASF20:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -Os -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF14:
	.ascii	"sizetype\000"
.LASF23:
	.ascii	"GPIO_Setup\000"
.LASF22:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
