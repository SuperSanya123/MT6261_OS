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
	.file	"afe.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.AFE_SwitchHSon,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	AFE_SwitchHSon, %function
AFE_SwitchHSon:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\afe.c"
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
	.loc 1 28 0
	ldr	r2, .L2
	ldr	r3, .L2
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #3
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 29 0
	ldr	r2, .L2+4
	ldr	r3, .L2+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #3
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 30 0
	ldr	r2, .L2+8
	ldr	r3, .L2+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #96
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 31 0
	ldr	r2, .L2+12
	ldr	r3, .L2+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ldr	r1, .L2+16
	ands	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 32 0
	ldr	r1, .L2+12
	ldr	r3, .L2+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #192
	lsls	r2, r2, #7
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 33 0
	ldr	r2, .L2+20
	adds	r3, r7, #6
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 34 0
	ldr	r1, .L2+20
	adds	r3, r7, #6
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L2+24
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #128
	lsls	r2, r2, #6
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 35 0
	ldr	r2, .L2+28
	ldr	r3, .L2+28
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 36 0
	ldr	r2, .L2+20
	adds	r3, r7, #6
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 1 37 0
	ldr	r2, .L2+12
	ldr	r3, .L2+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ldr	r1, .L2+32
	ands	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 38 0
	ldr	r1, .L2+12
	ldr	r3, .L2+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #128
	lsls	r2, r2, #4
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 39 0
	ldr	r2, .L2+8
	ldr	r3, .L2+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #16
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 40 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	-1603141460
	.word	-1603141476
	.word	-1603141504
	.word	-1603141500
	.word	-24577
	.word	-1603141452
	.word	-31745
	.word	-1603141456
	.word	-8177
	.cfi_endproc
.LFE1:
	.size	AFE_SwitchHSon, .-AFE_SwitchHSon
	.section	.text.AFE_SwitchHSoff,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	AFE_SwitchHSoff, %function
AFE_SwitchHSoff:
.LFB2:
	.loc 1 43 0
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
	.loc 1 44 0
	ldr	r2, .L5
	adds	r3, r7, #6
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 46 0
	ldr	r2, .L5+4
	ldr	r3, .L5+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 47 0
	ldr	r1, .L5
	adds	r3, r7, #6
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L5+8
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #240
	lsls	r2, r2, #7
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 48 0
	ldr	r2, .L5+12
	ldr	r3, .L5+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ldr	r1, .L5+16
	ands	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 49 0
	ldr	r2, .L5+20
	ldr	r3, .L5+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #16
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 50 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	-1603141452
	.word	-1603141456
	.word	-31745
	.word	-1603141500
	.word	-7169
	.word	-1603141504
	.cfi_endproc
.LFE2:
	.size	AFE_SwitchHSoff, .-AFE_SwitchHSoff
	.section	.text.AFE_SwitchHPon,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	AFE_SwitchHPon, %function
AFE_SwitchHPon:
.LFB3:
	.loc 1 53 0
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
	.loc 1 56 0
	ldr	r2, .L8
	ldr	r3, .L8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #3
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 57 0
	ldr	r2, .L8+4
	ldr	r3, .L8+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #3
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 58 0
	ldr	r2, .L8+8
	ldr	r3, .L8+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #96
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 59 0
	ldr	r2, .L8+12
	ldr	r3, .L8+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ldr	r1, .L8+16
	ands	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 60 0
	ldr	r1, .L8+12
	ldr	r3, .L8+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #128
	lsls	r2, r2, #7
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 61 0
	ldr	r2, .L8+20
	adds	r3, r7, #6
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 62 0
	ldr	r2, .L8+20
	adds	r3, r7, #6
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	lsrs	r3, r3, #10
	lsls	r3, r3, #10
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r1, .L8+24
	orrs	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 63 0
	ldr	r2, .L8+28
	ldr	r3, .L8+28
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 65 0
	ldr	r2, .L8+8
	ldr	r3, .L8+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #16
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 66 0
	movs	r0, #10
	bl	USC_Pause_us
	.loc 1 67 0
	ldr	r2, .L8+32
	ldr	r3, .L8+32
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 68 0
	movs	r0, #10
	bl	USC_Pause_us
	.loc 1 69 0
	ldr	r2, .L8+8
	ldr	r3, .L8+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 70 0
	movs	r0, #10
	bl	USC_Pause_us
	.loc 1 71 0
	ldr	r2, .L8+36
	ldr	r3, .L8+36
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 72 0
	ldr	r2, .L8+8
	ldr	r3, .L8+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #12
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 73 0
	ldr	r2, .L8+36
	ldr	r3, .L8+36
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 75 0
	ldr	r3, .L8+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	adds	r3, r7, #4
	ldr	r1, .L8+40
	ands	r2, r1
	strh	r2, [r3]
	.loc 1 76 0
	ldr	r1, .L8+12
	adds	r3, r7, #4
	ldrh	r3, [r3]
	movs	r2, #144
	lsls	r2, r2, #1
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 77 0
	ldr	r2, .L8+32
	ldr	r3, .L8+32
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 78 0
	ldr	r2, .L8+8
	ldr	r3, .L8+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #16
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 79 0
	ldr	r2, .L8+44
	ldr	r3, .L8+44
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #65
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 80 0
	ldr	r2, .L8+20
	adds	r3, r7, #6
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 1 81 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L9:
	.align	2
.L8:
	.word	-1603141460
	.word	-1603141476
	.word	-1603141504
	.word	-1603141500
	.word	-24577
	.word	-1603141452
	.word	759
	.word	-1603141456
	.word	-1603141484
	.word	-1603141496
	.word	-8177
	.word	-1603141488
	.cfi_endproc
.LFE3:
	.size	AFE_SwitchHPon, .-AFE_SwitchHPon
	.section	.text.AFE_SwitchHPoff,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	AFE_SwitchHPoff, %function
AFE_SwitchHPoff:
.LFB4:
	.loc 1 84 0
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
	.loc 1 85 0
	ldr	r2, .L11
	adds	r3, r7, #6
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 87 0
	ldr	r2, .L11+4
	ldr	r3, .L11+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 88 0
	movs	r0, #10
	bl	USC_Pause_us
	.loc 1 89 0
	ldr	r2, .L11+4
	ldr	r3, .L11+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #64
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 90 0
	movs	r0, #10
	bl	USC_Pause_us
	.loc 1 91 0
	ldr	r2, .L11+8
	ldr	r3, .L11+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 92 0
	ldr	r1, .L11
	adds	r3, r7, #6
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L11+12
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #231
	lsls	r2, r2, #2
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 93 0
	ldr	r2, .L11+16
	ldr	r3, .L11+16
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #13
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 94 0
	ldr	r2, .L11+20
	ldr	r3, .L11+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ldr	r1, .L11+24
	ands	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 95 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	-1603141452
	.word	-1603141488
	.word	-1603141456
	.word	-991
	.word	-1603141504
	.word	-1603141500
	.word	-1009
	.cfi_endproc
.LFE4:
	.size	AFE_SwitchHPoff, .-AFE_SwitchHPoff
	.section	.text.AFE_DCLKCtrlSeq,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	AFE_DCLKCtrlSeq, %function
AFE_DCLKCtrlSeq:
.LFB5:
	.loc 1 98 0
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
	movs	r4, r0
	movs	r0, r1
	movs	r1, r2
	adds	r3, r7, #7
	adds	r2, r4, #0
	strb	r2, [r3]
	adds	r3, r7, #6
	adds	r2, r0, #0
	strb	r2, [r3]
	adds	r3, r7, #5
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 99 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 101 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.LCB608
	b	.L14	@long jump
.LCB608:
	.loc 1 103 0
	ldr	r2, .L25
	ldr	r3, .L25
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #19
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 105 0
	ldr	r2, .L25+4
	ldr	r3, .L25+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #2
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 106 0
	ldr	r3, .L25+8
	ldr	r2, .L25+12
	strh	r2, [r3]
	.loc 1 107 0
	ldr	r2, .L25+16
	ldr	r3, .L25+16
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 108 0
	ldr	r2, .L25+20
	ldr	r3, .L25+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #3
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 109 0
	movs	r0, #1
	bl	USC_Pause_us
	.loc 1 111 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L15
	.loc 1 111 0 is_stmt 0 discriminator 1
	ldr	r2, .L25+24
	ldr	r3, .L25+24
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #3
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	b	.L16
.L15:
	.loc 1 112 0 is_stmt 1
	ldr	r2, .L25+24
	ldr	r3, .L25+24
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #3
	bics	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #2
	orrs	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L16:
	.loc 1 114 0
	ldr	r2, .L25+28
	ldr	r3, .L25+28
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #96
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 115 0
	ldr	r3, .L25+32
	ldr	r2, .L25+36
	strh	r2, [r3]
	.loc 1 116 0
	ldr	r2, .L25+40
	ldr	r3, .L25+40
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 118 0
	ldr	r3, .L25+44
	movs	r2, #128
	lsls	r2, r2, #1
	strh	r2, [r3]
	.loc 1 120 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L17
	.loc 1 122 0
	ldr	r2, .L25+48
	ldr	r3, .L25+48
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #15
	bics	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #12
	orrs	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 123 0
	ldr	r2, .L25+52
	ldr	r3, .L25+52
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	b	.L18
.L17:
	.loc 1 127 0
	adds	r3, r7, #5
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L19
	.loc 1 128 0
	ldr	r2, .L25+48
	ldr	r3, .L25+48
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #15
	bics	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #12
	orrs	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	b	.L20
.L19:
	.loc 1 129 0
	adds	r3, r7, #5
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L21
	.loc 1 130 0
	ldr	r2, .L25+48
	ldr	r3, .L25+48
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #15
	bics	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #3
	orrs	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	b	.L20
.L21:
	.loc 1 131 0
	ldr	r2, .L25+48
	ldr	r3, .L25+48
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #15
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L20:
	.loc 1 133 0
	ldr	r2, .L25+56
	ldr	r3, .L25+56
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L18:
	.loc 1 135 0
	ldr	r3, .L25+60
	movs	r2, #1
	strh	r2, [r3]
	b	.L22
.L14:
	.loc 1 139 0
	ldr	r2, .L25+28
	ldr	r3, .L25+28
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #96
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 140 0
	ldr	r2, .L25+24
	ldr	r3, .L25+24
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #3
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 141 0
	ldr	r2, .L25+20
	ldr	r3, .L25+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #3
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 142 0
	ldr	r2, .L25+60
	ldr	r3, .L25+60
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 144 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23
	.loc 1 144 0 is_stmt 0 discriminator 1
	ldr	r2, .L25+52
	ldr	r3, .L25+52
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	b	.L24
.L23:
	.loc 1 145 0 is_stmt 1
	ldr	r2, .L25+56
	ldr	r3, .L25+56
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L24:
	.loc 1 147 0
	ldr	r2, .L25+48
	ldr	r3, .L25+48
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #15
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 149 0
	ldr	r3, .L25+64
	movs	r2, #128
	lsls	r2, r2, #1
	strh	r2, [r3]
	.loc 1 151 0
	ldr	r2, .L25+40
	ldr	r3, .L25+40
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 152 0
	ldr	r3, .L25+32
	ldr	r2, .L25+68
	strh	r2, [r3]
	.loc 1 153 0
	ldr	r2, .L25+16
	ldr	r3, .L25+16
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 155 0
	ldr	r2, .L25
	ldr	r1, .L25
	ldr	r3, .L25
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r0, #16
	bics	r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r0, r3, #0
	strh	r0, [r1]
	strh	r3, [r2]
.L22:
	.loc 1 157 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 158 0
	nop
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L26:
	.align	2
.L25:
	.word	-1610546644
	.word	-1603141472
	.word	-1603141464
	.word	5126
	.word	-1603141468
	.word	-1603141460
	.word	-1603141476
	.word	-1603141504
	.word	-1603141444
	.word	4513
	.word	-1603141448
	.word	-2101346264
	.word	-2100493804
	.word	-2100494304
	.word	-2100494336
	.word	-2100493808
	.word	-2101346280
	.word	4129
	.cfi_endproc
.LFE5:
	.size	AFE_DCLKCtrlSeq, .-AFE_DCLKCtrlSeq
	.section	.text.AFE_SwitchIntAmp,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	AFE_SwitchIntAmp, %function
AFE_SwitchIntAmp:
.LFB6:
	.loc 1 161 0
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
	.loc 1 162 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.LCB1015
	b	.L28	@long jump
.LCB1015:
.LBB2:
	.loc 1 166 0
	ldr	r3, .L35
	movs	r2, #144
	lsls	r2, r2, #7
	strh	r2, [r3]
	.loc 1 167 0
	ldr	r3, .L35+4
	ldr	r2, .L35+8
	strh	r2, [r3]
	.loc 1 168 0
	ldr	r3, .L35+12
	movs	r2, #192
	lsls	r2, r2, #1
	strh	r2, [r3]
	.loc 1 169 0
	movs	r3, #250
	lsls	r3, r3, #3
	movs	r0, r3
	bl	USC_Pause_us
	.loc 1 170 0
	ldr	r3, .L35+12
	movs	r2, #128
	lsls	r2, r2, #1
	strh	r2, [r3]
	.loc 1 173 0
	ldr	r2, .L35+16
	ldr	r3, .L35+16
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #16
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 174 0
	movs	r0, #10
	bl	USC_Pause_us
	.loc 1 175 0
	ldr	r2, .L35+20
	ldr	r3, .L35+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #4
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 177 0
	ldr	r2, .L35+24
	ldr	r3, .L35+24
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 180 0
	ldr	r2, .L35+28
	movs	r3, #12
	adds	r3, r7, r3
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 181 0
	ldr	r1, .L35+28
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L35+32
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #128
	lsls	r2, r2, #6
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 183 0
	ldr	r2, .L35+12
	ldr	r3, .L35+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #128
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 184 0
	movs	r0, #1
	bl	AFE_TurnOnSpeaker
	.loc 1 185 0
	movs	r3, #250
	lsls	r3, r3, #3
	movs	r0, r3
	bl	USC_Pause_us
	.loc 1 186 0
	ldr	r1, .L35
	ldr	r3, .L35
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #128
	lsls	r2, r2, #7
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 187 0
	ldr	r2, .L35+12
	ldr	r3, .L35+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #128
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.LBB3:
	.loc 1 190 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r1, #0
	ldrsh	r1, [r3, r1]
	movs	r3, #10
	adds	r3, r7, r3
	movs	r2, #248
	lsls	r2, r2, #7
	ands	r2, r1
	strh	r2, [r3]
	.loc 1 191 0
	ldr	r3, .L35+28
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #14
	adds	r2, r7, r2
	movs	r1, #248
	lsls	r1, r1, #7
	ands	r3, r1
	strh	r3, [r2]
	.loc 1 192 0
	movs	r3, #10
	adds	r2, r7, r3
	movs	r3, #14
	adds	r3, r7, r3
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	blt	.L29
	.loc 1 192 0 is_stmt 0 discriminator 1
	movs	r3, #128
	lsls	r2, r3, #3
	b	.L30
.L29:
	.loc 1 192 0 discriminator 2
	ldr	r2, .L35+36
.L30:
	.loc 1 192 0 discriminator 4
	movs	r3, #8
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 194 0 is_stmt 1 discriminator 4
	b	.L31
.L32:
	.loc 1 196 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrh	r2, [r3]
	movs	r3, #8
	adds	r3, r7, r3
	ldrh	r3, [r3]
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #14
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 197 0
	ldr	r1, .L35+28
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L35+32
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #14
	adds	r2, r7, r2
	ldrh	r2, [r2]
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 198 0
	movs	r3, #250
	lsls	r3, r3, #1
	movs	r0, r3
	bl	USC_Pause_us
.L31:
	.loc 1 194 0
	movs	r3, #14
	adds	r2, r7, r3
	movs	r3, #10
	adds	r3, r7, r3
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	bne	.L32
.LBE3:
	.loc 1 201 0
	ldr	r2, .L35+28
	movs	r3, #12
	adds	r3, r7, r3
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 1 203 0
	ldr	r1, .L35+20
	ldr	r3, .L35+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #192
	lsls	r2, r2, #7
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 204 0
	ldr	r2, .L35+24
	ldr	r3, .L35+24
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.LBE2:
	.loc 1 214 0
	b	.L34
.L28:
	.loc 1 208 0
	ldr	r2, .L35+20
	ldr	r3, .L35+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #4
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 209 0
	ldr	r1, .L35
	ldr	r3, .L35
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #128
	lsls	r2, r2, #4
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 210 0
	movs	r0, #0
	bl	AFE_TurnOnSpeaker
	.loc 1 211 0
	ldr	r2, .L35
	ldr	r3, .L35
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ldr	r1, .L35+40
	ands	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 212 0
	ldr	r2, .L35+12
	ldr	r3, .L35+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ldr	r1, .L35+44
	ands	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L34:
	.loc 1 214 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L36:
	.align	2
.L35:
	.word	-1603269364
	.word	-1603269352
	.word	2440
	.word	-1603269348
	.word	-1603141504
	.word	-1603141500
	.word	-1603141456
	.word	-1603141452
	.word	-31745
	.word	-1024
	.word	-16385
	.word	-1025
	.cfi_endproc
.LFE6:
	.size	AFE_SwitchIntAmp, .-AFE_SwitchIntAmp
	.section	.text.AFE_ChipInitialization,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	AFE_ChipInitialization, %function
AFE_ChipInitialization:
.LFB7:
	.loc 1 217 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 219 0
	ldr	r3, .L38
	movs	r2, #224
	lsls	r2, r2, #4
	strh	r2, [r3]
	.loc 1 220 0
	ldr	r3, .L38+4
	movs	r2, #2
	strh	r2, [r3]
	.loc 1 221 0
	ldr	r3, .L38+8
	movs	r2, #2
	strh	r2, [r3]
	.loc 1 222 0
	ldr	r3, .L38+12
	ldr	r2, .L38+16
	strh	r2, [r3]
	.loc 1 223 0
	ldr	r3, .L38+20
	movs	r2, #60
	strh	r2, [r3]
	.loc 1 224 0
	ldr	r3, .L38+24
	movs	r2, #128
	strh	r2, [r3]
	.loc 1 226 0
	ldr	r2, .L38+28
	ldr	r3, .L38+28
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #128
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 229 0
	ldr	r2, .L38+32
	ldr	r3, .L38+32
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #2
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 230 0
	ldr	r3, .L38+36
	movs	r2, #186
	adds	r2, r2, #255
	strh	r2, [r3]
	.loc 1 231 0
	movs	r0, #10
	bl	USC_Pause_us
	.loc 1 232 0
	ldr	r2, .L38+36
	ldr	r3, .L38+36
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #64
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 234 0
	ldr	r3, .L38+40
	ldr	r2, .L38+44
	strh	r2, [r3]
	.loc 1 235 0
	ldr	r2, .L38+48
	ldr	r3, .L38+48
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 238 0
	movs	r0, #0
	bl	AFE_SetSpeakerVolume
	.loc 1 257 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L39:
	.align	2
.L38:
	.word	-2100494300
	.word	-2100493952
	.word	-2100494308
	.word	-2100494320
	.word	2108
	.word	-2100494292
	.word	-2100494324
	.word	-1603141552
	.word	-1603141472
	.word	-1603141488
	.word	-1603141464
	.word	5126
	.word	-1603141468
	.cfi_endproc
.LFE7:
	.size	AFE_ChipInitialization, .-AFE_ChipInitialization
	.section	.text.AFE_SetSpeakerVolume,"ax",%progbits
	.align	2
	.global	AFE_SetSpeakerVolume
	.code	16
	.thumb_func
	.type	AFE_SetSpeakerVolume, %function
AFE_SetSpeakerVolume:
.LFB8:
	.loc 1 260 0
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
	.loc 1 261 0
	ldr	r1, .L41
	ldr	r3, .L41
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #48
	bics	r3, r2
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	adds	r3, r7, #7
	ldrb	r3, [r3]
	lsls	r3, r3, #4
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r0, #48
	ands	r3, r0
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 262 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L42:
	.align	2
.L41:
	.word	-1603269376
	.cfi_endproc
.LFE8:
	.size	AFE_SetSpeakerVolume, .-AFE_SetSpeakerVolume
	.section	.text.AFE_TurnOnSpeaker,"ax",%progbits
	.align	2
	.global	AFE_TurnOnSpeaker
	.code	16
	.thumb_func
	.type	AFE_TurnOnSpeaker, %function
AFE_TurnOnSpeaker:
.LFB9:
	.loc 1 265 0
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
	.loc 1 266 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L44
	.loc 1 266 0 is_stmt 0 discriminator 1
	ldr	r2, .L47
	ldr	r3, .L47
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 268 0 is_stmt 1 discriminator 1
	b	.L46
.L44:
	.loc 1 267 0
	ldr	r2, .L47
	ldr	r3, .L47
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L46:
	.loc 1 268 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L48:
	.align	2
.L47:
	.word	-1603269376
	.cfi_endproc
.LFE9:
	.size	AFE_TurnOnSpeaker, .-AFE_TurnOnSpeaker
	.section	.text.AFE_SetAudioSampleRate,"ax",%progbits
	.align	2
	.global	AFE_SetAudioSampleRate
	.code	16
	.thumb_func
	.type	AFE_SetAudioSampleRate, %function
AFE_SetAudioSampleRate:
.LFB10:
	.loc 1 271 0
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
	.loc 1 272 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #10
	bhi	.L50
	lsls	r2, r3, #2
	ldr	r3, .L54
	adds	r3, r2, r3
	ldr	r3, [r3]
	mov	pc, r3
	.section	.rodata.AFE_SetAudioSampleRate,"a",%progbits
	.align	2
.L52:
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L50
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L50
	.word	.L51
	.word	.L51
	.word	.L51
	.section	.text.AFE_SetAudioSampleRate
.L51:
	.loc 1 283 0
	ldr	r0, .L54+4
	ldr	r3, .L54+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, .L54+8
	ands	r3, r2
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	adds	r3, r7, #7
	ldrb	r3, [r3]
	lsls	r3, r3, #6
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #240
	lsls	r1, r1, #2
	ands	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r0]
	.loc 1 284 0
	movs	r3, #1
	b	.L53
.L50:
	.loc 1 286 0
	movs	r3, #0
.L53:
	.loc 1 288 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L55:
	.align	2
.L54:
	.word	.L52
	.word	-2100494300
	.word	-961
	.cfi_endproc
.LFE10:
	.size	AFE_SetAudioSampleRate, .-AFE_SetAudioSampleRate
	.section	.text.AFE_initialize,"ax",%progbits
	.align	2
	.global	AFE_initialize
	.code	16
	.thumb_func
	.type	AFE_initialize, %function
AFE_initialize:
.LFB11:
	.loc 1 291 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 292 0
	bl	AFE_ChipInitialization
	.loc 1 293 0
	movs	r2, #0
	movs	r1, #1
	movs	r0, #1
	bl	AFE_DCLKCtrlSeq
	.loc 1 295 0
	movs	r0, #0
	bl	AFE_SetAudioSampleRate
	.loc 1 297 0
	bl	AFE_SwitchHSon
	.loc 1 299 0
	movs	r0, #1
	bl	AFE_SwitchIntAmp
	.loc 1 301 0
	ldr	r3, .L57
	movs	r2, #49
	strh	r2, [r3]
	.loc 1 303 0
	ldr	r3, .L57+4
	ldr	r2, .L57+8
	strh	r2, [r3]
	.loc 1 304 0
	ldr	r3, .L57+12
	movs	r0, r3
	bl	USC_Pause_us
	.loc 1 305 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L58:
	.align	2
.L57:
	.word	-1603269376
	.word	-1603141452
	.word	17407
	.word	5000
	.cfi_endproc
.LFE11:
	.size	AFE_initialize, .-AFE_initialize
	.section	.text.Beep,"ax",%progbits
	.align	2
	.global	Beep
	.code	16
	.thumb_func
	.type	Beep, %function
Beep:
.LFB12:
	.loc 1 308 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 309 0
	ldr	r3, .L60
	ldr	r2, .L60+4
	strh	r2, [r3]
	.loc 1 310 0
	ldr	r3, .L60+8
	movs	r0, r3
	bl	USC_Pause_us
	.loc 1 311 0
	ldr	r2, .L60
	ldr	r3, .L60
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #18
	lsrs	r3, r3, #18
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 312 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L61:
	.align	2
.L60:
	.word	-2100494288
	.word	-14570
	.word	50000
	.cfi_endproc
.LFE12:
	.size	Beep, .-Beep
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\Lib\\MT6261/drivers\\afe.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x37e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.4byte	0x5b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
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
	.byte	0x20
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x24
	.4byte	0x50
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
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0xe2
	.4byte	0x11f
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0xe7
	.4byte	0xfc
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0xe9
	.4byte	0x171
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0xf4
	.4byte	0x12a
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x1
	.byte	0x18
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1a
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c4
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2c
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x1
	.byte	0x34
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f6
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x1
	.byte	0x36
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0xb
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x36
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x1
	.byte	0x53
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21a
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1
	.byte	0x55
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x1
	.byte	0x61
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x268
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0x61
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.byte	0x61
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x1
	.byte	0x61
	.4byte	0x11f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x1
	.byte	0x63
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x1
	.byte	0xa0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d7
	.uleb128 0xd
	.ascii	"On\000"
	.byte	0x1
	.byte	0xa0
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xe
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa4
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x1
	.byte	0xbe
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x1
	.byte	0xbf
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x1
	.byte	0xc0
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x1
	.byte	0xd8
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x103
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30e
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x103
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x108
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x333
	.uleb128 0x12
	.ascii	"On\000"
	.byte	0x1
	.2byte	0x108
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x10e
	.4byte	0xf1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35d
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x10e
	.4byte	0x171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x122
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x133
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
.LASF51:
	.ascii	"targ_gain\000"
.LASF47:
	.ascii	"Audio\000"
.LASF57:
	.ascii	"Rate\000"
.LASF4:
	.ascii	"short int\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF27:
	.ascii	"tag_AV_PATH\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF29:
	.ascii	"ASR_8KHZ\000"
.LASF33:
	.ascii	"ASR_22KHZ\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF49:
	.ascii	"savedMask\000"
.LASF58:
	.ascii	"AFE_initialize\000"
.LASF40:
	.ascii	"AFE_SwitchHSoff\000"
.LASF10:
	.ascii	"long long int\000"
.LASF24:
	.ascii	"UL_PATH\000"
.LASF48:
	.ascii	"Path\000"
.LASF7:
	.ascii	"long int\000"
.LASF50:
	.ascii	"AFE_SwitchIntAmp\000"
.LASF60:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF38:
	.ascii	"TASR\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF36:
	.ascii	"ASR_44KHZ\000"
.LASF25:
	.ascii	"DL_UL_BOTH_PATH\000"
.LASF17:
	.ascii	"long double\000"
.LASF37:
	.ascii	"ASR_48KHZ\000"
.LASF42:
	.ascii	"OrgValue\000"
.LASF28:
	.ascii	"tag_ASR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF59:
	.ascii	"Beep\000"
.LASF44:
	.ascii	"AFE_SwitchHPoff\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF41:
	.ascii	"restore\000"
.LASF20:
	.ascii	"false\000"
.LASF39:
	.ascii	"AFE_SwitchHSon\000"
.LASF35:
	.ascii	"ASR_32KHZ\000"
.LASF54:
	.ascii	"Volume\000"
.LASF55:
	.ascii	"AFE_SetSpeakerVolume\000"
.LASF30:
	.ascii	"ASR_11KHZ\000"
.LASF46:
	.ascii	"TurnOn\000"
.LASF23:
	.ascii	"DL_PATH\000"
.LASF63:
	.ascii	"AFE_ChipInitialization\000"
.LASF56:
	.ascii	"AFE_TurnOnSpeaker\000"
.LASF19:
	.ascii	"char\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF14:
	.ascii	"int16_t\000"
.LASF21:
	.ascii	"true\000"
.LASF52:
	.ascii	"curr_gain\000"
.LASF34:
	.ascii	"ASR_24KHZ\000"
.LASF62:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF64:
	.ascii	"AFE_SetAudioSampleRate\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF31:
	.ascii	"ASR_12KHZ\000"
.LASF32:
	.ascii	"ASR_16KHZ\000"
.LASF43:
	.ascii	"AFE_SwitchHPon\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF26:
	.ascii	"TAV_PATH\000"
.LASF61:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\afe.c\000"
.LASF53:
	.ascii	"gain_step\000"
.LASF22:
	.ascii	"boolean\000"
.LASF45:
	.ascii	"AFE_DCLKCtrlSeq\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
