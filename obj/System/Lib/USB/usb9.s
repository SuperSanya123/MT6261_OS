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
	.file	"usb9.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.bss.DevInterface,"aw",%nobits
	.align	2
	.type	DevInterface, %object
	.size	DevInterface, 4
DevInterface:
	.space	4
	.section	.bss.U9Buffer,"aw",%nobits
	.align	2
	.type	U9Buffer, %object
	.size	U9Buffer, 2
U9Buffer:
	.space	2
	.section	.text.USB9_GetDescriptor,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	USB9_GetDescriptor, %function
USB9_GetDescriptor:
.LFB1:
	.file 1 "Source\\Lib\\USB\\usb9.c"
	.loc 1 29 0
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
	str	r0, [r7, #4]
	.loc 1 30 0
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 32 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	cmp	r3, #128
	beq	.L2
	.loc 1 33 0
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	b	.L3
.L2:
	.loc 1 36 0
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #2]
	ldrb	r3, [r3, #3]
	lsls	r3, r3, #8
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #255
	lsls	r3, r3, #8
	ands	r3, r2
	movs	r2, #128
	lsls	r2, r2, #2
	cmp	r3, r2
	beq	.L5
	movs	r2, #192
	lsls	r2, r2, #2
	cmp	r3, r2
	beq	.L6
	movs	r2, #128
	lsls	r2, r2, #1
	cmp	r3, r2
	beq	.LCB52
	b	.L14	@long jump
.LCB52:
	.loc 1 39 0
	ldr	r3, .L15
	ldr	r3, [r3]
	ldr	r0, [r3]
.LBB2:
	.loc 1 40 0
	movs	r3, #18
	str	r3, [r7, #24]
	movs	r3, #22
	adds	r2, r7, r3
	ldr	r3, [r7, #4]
	ldrb	r1, [r3, #6]
	ldrb	r3, [r3, #7]
	lsls	r3, r3, #8
	orrs	r3, r1
	strh	r3, [r2]
	movs	r3, #22
	adds	r3, r7, r3
	ldrh	r2, [r3]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	ble	.L8
	movs	r2, r3
.L8:
.LBE2:
	.loc 1 39 0
	movs	r3, r2
	movs	r2, r3
	movs	r1, r0
	movs	r0, #0
	bl	USB_PrepareDataTransmit
	.loc 1 41 0
	b	.L3
.L5:
	.loc 1 43 0
	ldr	r3, .L15
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
.LBB3:
	.loc 1 44 0
	ldr	r3, .L15
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	movs	r3, #20
	adds	r3, r7, r3
	ldrh	r2, [r2, #2]
	strh	r2, [r3]
	movs	r3, #18
	adds	r2, r7, r3
	ldr	r3, [r7, #4]
	ldrb	r1, [r3, #6]
	ldrb	r3, [r3, #7]
	lsls	r3, r3, #8
	orrs	r3, r1
	strh	r3, [r2]
	movs	r3, #18
	adds	r3, r7, r3
	movs	r2, #20
	adds	r2, r7, r2
	ldrh	r2, [r2]
	ldrh	r3, [r3]
	lsls	r1, r3, #16
	lsrs	r0, r1, #16
	lsls	r1, r2, #16
	lsrs	r1, r1, #16
	cmp	r0, r1
	bls	.L9
	adds	r3, r2, #0
.L9:
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.LBE3:
	.loc 1 43 0
	movs	r2, r3
	movs	r1, r4
	movs	r0, #0
	bl	USB_PrepareDataTransmit
	.loc 1 45 0
	b	.L3
.L6:
.LBB4:
	.loc 1 48 0
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #2]
	ldrb	r3, [r3, #3]
	lsls	r3, r3, #8
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #17
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 49 0
	ldr	r3, .L15
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	movs	r2, #17
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r0, r2
	blx	r3
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 51 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L10
	.loc 1 51 0 discriminator 1
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.LBE4:
	.loc 1 54 0 discriminator 1
	b	.L3
.L10:
.LBB6:
.LBB5:
	.loc 1 52 0
	movs	r3, #11
	adds	r3, r7, r3
	ldr	r2, [r7, #12]
	ldrb	r2, [r2]
	strb	r2, [r3]
	movs	r3, #8
	adds	r2, r7, r3
	ldr	r3, [r7, #4]
	ldrb	r1, [r3, #6]
	ldrb	r3, [r3, #7]
	lsls	r3, r3, #8
	orrs	r3, r1
	strh	r3, [r2]
	movs	r3, #11
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r1, r3, #16
	movs	r3, #8
	adds	r3, r7, r3
	ldrh	r2, [r3]
	adds	r3, r1, #0
	lsls	r1, r3, #16
	lsrs	r0, r1, #16
	lsls	r1, r2, #16
	lsrs	r1, r1, #16
	cmp	r0, r1
	bls	.L12
	adds	r3, r2, #0
.L12:
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.LBE5:
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, r3
	movs	r0, #0
	bl	USB_PrepareDataTransmit
.LBE6:
	.loc 1 54 0
	b	.L3
.L14:
	.loc 1 56 0
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 57 0
	nop
.L3:
	.loc 1 60 0
	movs	r3, #31
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 61 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r7, pc}
.L16:
	.align	2
.L15:
	.word	DevInterface
	.cfi_endproc
.LFE1:
	.size	USB9_GetDescriptor, .-USB9_GetDescriptor
	.section	.text.USB9_ClearFeature,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	USB9_ClearFeature, %function
USB9_ClearFeature:
.LFB2:
	.loc 1 64 0
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
	.loc 1 65 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 67 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r3, #3
	ands	r3, r2
	bmi	.L18
	cmp	r3, #1
	ble	.L19
	cmp	r3, #2
	bne	.L18
.LBB7:
	.loc 1 71 0
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #4]
	ldrb	r3, [r3, #5]
	lsls	r3, r3, #8
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #14
	adds	r3, r7, r3
	movs	r1, #15
	ands	r2, r1
	strb	r2, [r3]
	.loc 1 73 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #4
	bls	.L21
	.loc 1 73 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.LBE7:
	.loc 1 82 0 is_stmt 1 discriminator 1
	b	.L18
.L21:
.LBB8:
	.loc 1 76 0
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #4]
	ldrb	r3, [r3, #5]
	lsls	r3, r3, #8
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #128
	ands	r3, r2
	bne	.L23
	.loc 1 76 0 is_stmt 0 discriminator 1
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23
	.loc 1 77 0 is_stmt 1
	movs	r3, #14
	adds	r3, r7, r3
	movs	r2, #14
	adds	r2, r7, r2
	ldrb	r2, [r2]
	adds	r2, r2, #4
	strb	r2, [r3]
.L23:
	.loc 1 78 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L24
	.loc 1 78 0 is_stmt 0 discriminator 1
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, #0
	movs	r0, r3
	bl	USB_ControlEPStall
.LBE8:
	.loc 1 82 0 is_stmt 1 discriminator 1
	b	.L18
.L24:
.LBB9:
	.loc 1 79 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.LBE9:
	.loc 1 82 0
	b	.L18
.L19:
	.loc 1 85 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 86 0
	nop
.L18:
	.loc 1 88 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 89 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	USB9_ClearFeature, .-USB9_ClearFeature
	.section	.text.USB9_SetFeature,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	USB9_SetFeature, %function
USB9_SetFeature:
.LFB3:
	.loc 1 92 0
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
	.loc 1 93 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 95 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r3, #3
	ands	r3, r2
	bmi	.L27
	cmp	r3, #1
	ble	.L28
	cmp	r3, #2
	bne	.L27
.LBB10:
	.loc 1 99 0
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #4]
	ldrb	r3, [r3, #5]
	lsls	r3, r3, #8
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #14
	adds	r3, r7, r3
	movs	r1, #15
	ands	r2, r1
	strb	r2, [r3]
	.loc 1 101 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #4
	bls	.L30
	.loc 1 101 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.LBE10:
	.loc 1 110 0 is_stmt 1 discriminator 1
	b	.L27
.L30:
.LBB11:
	.loc 1 104 0
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #4]
	ldrb	r3, [r3, #5]
	lsls	r3, r3, #8
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #128
	ands	r3, r2
	bne	.L32
	.loc 1 104 0 is_stmt 0 discriminator 1
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L32
	.loc 1 105 0 is_stmt 1
	movs	r3, #14
	adds	r3, r7, r3
	movs	r2, #14
	adds	r2, r7, r2
	ldrb	r2, [r2]
	adds	r2, r2, #4
	strb	r2, [r3]
.L32:
	.loc 1 106 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L33
	.loc 1 106 0 is_stmt 0 discriminator 1
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, #1
	movs	r0, r3
	bl	USB_ControlEPStall
.LBE11:
	.loc 1 110 0 is_stmt 1 discriminator 1
	b	.L27
.L33:
.LBB12:
	.loc 1 107 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.LBE12:
	.loc 1 110 0
	b	.L27
.L28:
	.loc 1 113 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 114 0
	nop
.L27:
	.loc 1 116 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 117 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	USB9_SetFeature, .-USB9_SetFeature
	.section	.text.USB9_GetStatus,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	USB9_GetStatus, %function
USB9_GetStatus:
.LFB4:
	.loc 1 120 0
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
	.loc 1 121 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 123 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r3, #3
	ands	r3, r2
	cmp	r3, #1
	beq	.L37
	cmp	r3, #2
	beq	.L38
	cmp	r3, #0
	beq	.L39
	b	.L36
.L38:
.LBB13:
	.loc 1 127 0
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #4]
	ldrb	r3, [r3, #5]
	lsls	r3, r3, #8
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #14
	adds	r3, r7, r3
	movs	r1, #15
	ands	r2, r1
	strb	r2, [r3]
	.loc 1 129 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #4
	bls	.L40
	.loc 1 129 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.LBE13:
	.loc 1 143 0 is_stmt 1 discriminator 1
	b	.L36
.L40:
.LBB14:
	.loc 1 132 0
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #4]
	ldrb	r3, [r3, #5]
	lsls	r3, r3, #8
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #128
	ands	r3, r2
	bne	.L42
	.loc 1 132 0 is_stmt 0 discriminator 1
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L42
	.loc 1 133 0 is_stmt 1
	movs	r3, #14
	adds	r3, r7, r3
	movs	r2, #14
	adds	r2, r7, r2
	ldrb	r2, [r2]
	adds	r2, r2, #4
	strb	r2, [r3]
.L42:
	.loc 1 134 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L43
	.loc 1 136 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L45
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #2
	ldrb	r2, [r3]
	ldr	r3, .L45+4
	strb	r2, [r3]
	.loc 1 137 0
	ldr	r3, .L45+4
	movs	r2, #0
	strb	r2, [r3, #1]
	.loc 1 138 0
	ldr	r3, .L45+4
	movs	r2, #2
	movs	r1, r3
	movs	r0, #0
	bl	USB_PrepareDataTransmit
.LBE14:
	.loc 1 143 0
	b	.L36
.L43:
.LBB15:
	.loc 1 140 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.LBE15:
	.loc 1 143 0
	b	.L36
.L39:
	.loc 1 145 0
	ldr	r3, .L45+8
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	movs	r2, #2
	movs	r1, r3
	movs	r0, #0
	bl	USB_PrepareDataTransmit
	.loc 1 146 0
	b	.L36
.L37:
	.loc 1 148 0
	ldr	r3, .L45+4
	movs	r2, #0
	strb	r2, [r3, #1]
	ldr	r3, .L45+4
	ldrb	r2, [r3, #1]
	ldr	r3, .L45+4
	strb	r2, [r3]
	.loc 1 149 0
	ldr	r3, .L45+4
	movs	r2, #2
	movs	r1, r3
	movs	r0, #0
	bl	USB_PrepareDataTransmit
	.loc 1 150 0
	nop
.L36:
	.loc 1 152 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 153 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L46:
	.align	2
.L45:
	.word	EPState
	.word	U9Buffer
	.word	DevInterface
	.cfi_endproc
.LFE4:
	.size	USB9_GetStatus, .-USB9_GetStatus
	.section	.text.USB9_HandleStdRequest,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	USB9_HandleStdRequest, %function
USB9_HandleStdRequest:
.LFB5:
	.loc 1 156 0
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
	.loc 1 157 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 159 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]
	cmp	r3, #11
	bls	.LCB698
	b	.L48	@long jump
.LCB698:
	lsls	r2, r3, #2
	ldr	r3, .L72
	adds	r3, r2, r3
	ldr	r3, [r3]
	mov	pc, r3
	.section	.rodata.USB9_HandleStdRequest,"a",%progbits
	.align	2
.L50:
	.word	.L49
	.word	.L51
	.word	.L48
	.word	.L52
	.word	.L48
	.word	.L53
	.word	.L54
	.word	.L48
	.word	.L55
	.word	.L56
	.word	.L57
	.word	.L58
	.section	.text.USB9_HandleStdRequest
.L53:
	.loc 1 162 0
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #2]
	ldrb	r3, [r3, #3]
	lsls	r3, r3, #8
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r0, r3
	bl	USB_SetDeviceAddress
	.loc 1 163 0
	b	.L59
.L54:
	.loc 1 165 0
	movs	r3, #15
	adds	r4, r7, r3
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	USB9_GetDescriptor
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 166 0
	b	.L59
.L55:
	.loc 1 168 0
	ldr	r3, .L72+4
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	movs	r2, #1
	movs	r1, r3
	movs	r0, #0
	bl	USB_PrepareDataTransmit
	.loc 1 169 0
	b	.L59
.L49:
	.loc 1 171 0
	movs	r3, #15
	adds	r4, r7, r3
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	USB9_GetStatus
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 172 0
	b	.L59
.L51:
	.loc 1 174 0
	movs	r3, #15
	adds	r4, r7, r3
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	USB9_ClearFeature
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 175 0
	b	.L59
.L52:
	.loc 1 177 0
	movs	r3, #15
	adds	r4, r7, r3
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	USB9_SetFeature
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 178 0
	b	.L59
.L56:
	.loc 1 180 0
	bl	USB_GetDeviceState
	movs	r3, r0
	cmp	r3, #1
	bhi	.L60
	.loc 1 180 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 192 0 is_stmt 1 discriminator 1
	b	.L59
.L60:
.LBB16:
	.loc 1 183 0
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #2]
	ldrb	r3, [r3, #3]
	lsls	r3, r3, #8
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #14
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 185 0
	ldr	r3, .L72+4
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldrb	r3, [r3, #17]
	movs	r2, #14
	adds	r2, r7, r2
	ldrb	r2, [r2]
	cmp	r2, r3
	bls	.L62
	.loc 1 185 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.LBE16:
	.loc 1 192 0 is_stmt 1 discriminator 1
	b	.L59
.L62:
.LBB17:
	.loc 1 188 0
	ldr	r3, .L72+4
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	movs	r2, #14
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r0, r2
	blx	r3
	.loc 1 189 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L63
	.loc 1 189 0 is_stmt 0 discriminator 1
	movs	r3, #3
	b	.L64
.L63:
	.loc 1 189 0 discriminator 2
	movs	r3, #2
.L64:
	.loc 1 189 0 discriminator 4
	movs	r0, r3
	bl	USB_SetDeviceState
.LBE17:
	.loc 1 192 0 is_stmt 1 discriminator 4
	b	.L59
.L57:
	.loc 1 194 0
	bl	USB_GetDeviceState
	movs	r3, r0
	cmp	r3, #2
	bls	.L65
	.loc 1 195 0 discriminator 1
	ldr	r3, .L72+4
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	.loc 1 194 0 discriminator 1
	cmp	r3, #0
	bne	.L66
.L65:
	.loc 1 195 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 203 0
	b	.L59
.L66:
.LBB18:
	.loc 1 198 0
	ldr	r3, .L72+4
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldrb	r1, [r3, #4]
	ldrb	r3, [r3, #5]
	lsls	r3, r3, #8
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r0, r3
	blx	r2
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 200 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L68
	.loc 1 200 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
.LBE18:
	.loc 1 203 0 discriminator 1
	b	.L59
.L68:
.LBB19:
	.loc 1 201 0
	ldr	r3, [r7, #8]
	movs	r2, #1
	movs	r1, r3
	movs	r0, #0
	bl	USB_PrepareDataTransmit
.LBE19:
	.loc 1 203 0
	b	.L59
.L58:
	.loc 1 205 0
	bl	USB_GetDeviceState
	movs	r3, r0
	cmp	r3, #2
	bls	.L69
	.loc 1 206 0 discriminator 1
	ldr	r3, .L72+4
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	.loc 1 205 0 discriminator 1
	cmp	r3, #0
	bne	.L70
.L69:
	.loc 1 206 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 208 0
	b	.L59
.L70:
	.loc 1 207 0
	ldr	r3, .L72+4
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r1, [r3, #4]
	ldrb	r3, [r3, #5]
	lsls	r3, r3, #8
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r0, r3, #24
	ldr	r3, [r7, #4]
	ldrb	r1, [r3, #2]
	ldrb	r3, [r3, #3]
	lsls	r3, r3, #8
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r1, r3
	blx	r2
	movs	r3, r0
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 208 0
	b	.L59
.L48:
	.loc 1 212 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 213 0
	nop
.L59:
	.loc 1 215 0
	movs	r0, #0
	bl	USB_GetEPStage
	movs	r3, r0
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r1, r3
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, r1
	movs	r1, #0
	movs	r0, #0
	bl	USB_UpdateEPState
	.loc 1 216 0
	nop
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L73:
	.align	2
.L72:
	.word	.L50
	.word	DevInterface
	.cfi_endproc
.LFE5:
	.size	USB9_HandleStdRequest, .-USB9_HandleStdRequest
	.section	.text.USB9_HandleSetupRequest,"ax",%progbits
	.align	2
	.global	USB9_HandleSetupRequest
	.code	16
	.thumb_func
	.type	USB9_HandleSetupRequest, %function
USB9_HandleSetupRequest:
.LFB6:
	.loc 1 219 0
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
	str	r0, [r7, #4]
	.loc 1 220 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r3, #96
	ands	r3, r2
	cmp	r3, #32
	beq	.L76
	cmp	r3, #64
	beq	.L77
	cmp	r3, #0
	bne	.L84
	.loc 1 223 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	USB9_HandleStdRequest
	.loc 1 224 0
	b	.L79
.L76:
	.loc 1 226 0
	ldr	r3, .L85
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L80
	.loc 1 227 0
	ldr	r3, .L85
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
	.loc 1 229 0
	b	.L79
.L80:
	.loc 1 228 0
	movs	r3, #0
	movs	r2, #1
	movs	r1, #0
	movs	r0, #0
	bl	USB_UpdateEPState
	.loc 1 229 0
	b	.L79
.L77:
	.loc 1 231 0
	ldr	r3, .L85
	ldr	r3, [r3]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L82
	.loc 1 232 0
	ldr	r3, .L85
	ldr	r3, [r3]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
	.loc 1 234 0
	b	.L79
.L82:
	.loc 1 233 0
	movs	r3, #0
	movs	r2, #1
	movs	r1, #0
	movs	r0, #0
	bl	USB_UpdateEPState
	.loc 1 234 0
	b	.L79
.L84:
	.loc 1 236 0
	movs	r3, #0
	movs	r2, #1
	movs	r1, #0
	movs	r0, #0
	bl	USB_UpdateEPState
	.loc 1 237 0
	nop
.L79:
	.loc 1 239 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L86:
	.align	2
.L85:
	.word	DevInterface
	.cfi_endproc
.LFE6:
	.size	USB9_HandleSetupRequest, .-USB9_HandleSetupRequest
	.section	.text.USB9_InterfaceInitialize,"ax",%progbits
	.align	2
	.global	USB9_InterfaceInitialize
	.code	16
	.thumb_func
	.type	USB9_InterfaceInitialize, %function
USB9_InterfaceInitialize:
.LFB7:
	.loc 1 242 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 244 0
	bl	USB_CDC_Initialize
	movs	r2, r0
	ldr	r3, .L89
	str	r2, [r3]
	.loc 1 246 0
	ldr	r3, .L89
	ldr	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 250 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L90:
	.align	2
.L89:
	.word	DevInterface
	.cfi_endproc
.LFE7:
	.size	USB9_InterfaceInitialize, .-USB9_InterfaceInitialize
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 6 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 7 "Source\\Lib\\USB\\usb9.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x806
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0xc
	.4byte	.LASF122
	.4byte	.LASF123
	.4byte	.Ldebug_ranges0+0xa8
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
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0xdb
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1d
	.4byte	0xc2
	.uleb128 0x7
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0xf1
	.4byte	0x11b
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x16
	.4byte	0x13e
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x80
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x80
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x1b
	.4byte	0x11b
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x1d
	.4byte	0x16c
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0x22
	.4byte	0x149
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x24
	.4byte	0x1be
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
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x18
	.byte	0x6
	.byte	0x31
	.4byte	0x22b
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x6
	.byte	0x33
	.4byte	0x13e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x6
	.byte	0x34
	.4byte	0x16c
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x6
	.byte	0x35
	.4byte	0xdb
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x6
	.byte	0x36
	.4byte	0x97
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x6
	.byte	0x37
	.4byte	0xe6
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x6
	.byte	0x38
	.4byte	0xe6
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x6
	.byte	0x39
	.4byte	0xa2
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x6
	.byte	0x3a
	.4byte	0x236
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	0x236
	.uleb128 0xc
	.4byte	0x8c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x22b
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x6
	.byte	0x3b
	.4byte	0x1be
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x3d
	.4byte	0x270
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	0x8c
	.4byte	0x27f
	.uleb128 0xe
	.4byte	0xb4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x8
	.byte	0x7
	.byte	0x70
	.4byte	0x2c8
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x7
	.byte	0x72
	.4byte	0x8c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x7
	.byte	0x73
	.4byte	0x8c
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x7
	.byte	0x74
	.4byte	0x97
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x7
	.byte	0x75
	.4byte	0x97
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x7
	.byte	0x76
	.4byte	0x97
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x7
	.byte	0x77
	.4byte	0x2d3
	.uleb128 0x7
	.byte	0x4
	.4byte	0x27f
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x12
	.byte	0x7
	.byte	0x7a
	.4byte	0x38e
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x7
	.byte	0x7c
	.4byte	0x8c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x7
	.byte	0x7d
	.4byte	0x8c
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x7
	.byte	0x7e
	.4byte	0x97
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x7
	.byte	0x7f
	.4byte	0x8c
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x7
	.byte	0x80
	.4byte	0x8c
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x7
	.byte	0x81
	.4byte	0x8c
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x7
	.byte	0x82
	.4byte	0x8c
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x7
	.byte	0x83
	.4byte	0x97
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x7
	.byte	0x84
	.4byte	0x97
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x7
	.byte	0x85
	.4byte	0x97
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x7
	.byte	0x86
	.4byte	0x8c
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x7
	.byte	0x87
	.4byte	0x8c
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x7
	.byte	0x88
	.4byte	0x8c
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x7
	.byte	0x89
	.4byte	0x8c
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x7
	.byte	0x8a
	.4byte	0x399
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2d9
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0xa
	.byte	0x7
	.byte	0x8d
	.4byte	0x418
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x7
	.byte	0x8f
	.4byte	0x8c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x7
	.byte	0x90
	.4byte	0x8c
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x7
	.byte	0x91
	.4byte	0x97
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x7
	.byte	0x92
	.4byte	0x8c
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x7
	.byte	0x93
	.4byte	0x8c
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x7
	.byte	0x94
	.4byte	0x8c
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x7
	.byte	0x95
	.4byte	0x8c
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x7
	.byte	0x96
	.4byte	0x8c
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x7
	.byte	0x97
	.4byte	0x270
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x7
	.byte	0x98
	.4byte	0x423
	.uleb128 0x7
	.byte	0x4
	.4byte	0x39f
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x2
	.byte	0x7
	.byte	0x9b
	.4byte	0x45a
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x7
	.byte	0x9d
	.4byte	0x8c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x7
	.byte	0x9e
	.4byte	0x8c
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0x7
	.byte	0x9f
	.4byte	0x45a
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0x97
	.4byte	0x469
	.uleb128 0xe
	.4byte	0xb4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x7
	.byte	0xa0
	.4byte	0x474
	.uleb128 0x7
	.byte	0x4
	.4byte	0x429
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x28
	.byte	0x7
	.byte	0xab
	.4byte	0x4ff
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0x7
	.byte	0xad
	.4byte	0x38e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0x7
	.byte	0xae
	.4byte	0x418
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0x7
	.byte	0xaf
	.4byte	0x50e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x7
	.byte	0xb0
	.4byte	0x514
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x7
	.byte	0xb1
	.4byte	0x236
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x7
	.byte	0xb2
	.4byte	0x52e
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x7
	.byte	0xb3
	.4byte	0x548
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x7
	.byte	0xb4
	.4byte	0x54e
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0x7
	.byte	0xb5
	.4byte	0x564
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x7
	.byte	0xb6
	.4byte	0x564
	.byte	0x24
	.byte	0
	.uleb128 0xf
	.4byte	0x469
	.4byte	0x50e
	.uleb128 0xc
	.4byte	0x8c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4ff
	.uleb128 0x7
	.byte	0x4
	.4byte	0x51a
	.uleb128 0x10
	.4byte	0x8c
	.uleb128 0xf
	.4byte	0xe6
	.4byte	0x52e
	.uleb128 0xc
	.4byte	0x8c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x51f
	.uleb128 0xf
	.4byte	0xdb
	.4byte	0x548
	.uleb128 0xc
	.4byte	0x8c
	.uleb128 0xc
	.4byte	0x8c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x534
	.uleb128 0x7
	.byte	0x4
	.4byte	0x554
	.uleb128 0x10
	.4byte	0x97
	.uleb128 0xb
	.4byte	0x564
	.uleb128 0xc
	.4byte	0x2c8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x559
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0x7
	.byte	0xb7
	.4byte	0x575
	.uleb128 0x7
	.byte	0x4
	.4byte	0x47a
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0x1
	.byte	0x1c
	.4byte	0xdb
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x647
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x1
	.byte	0x1c
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.byte	0x1e
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x5d8
	.uleb128 0x15
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x28
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x28
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x14
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x600
	.uleb128 0x15
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.byte	0
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x1
	.byte	0x30
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -31
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x1
	.byte	0x31
	.4byte	0x469
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x15
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x34
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x15
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x34
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x1
	.byte	0x3f
	.4byte	0xdb
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x691
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x1
	.byte	0x3f
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.byte	0x41
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x1
	.byte	0x47
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x1
	.byte	0x5b
	.4byte	0xdb
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6db
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x1
	.byte	0x5b
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.byte	0x5d
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x1
	.byte	0x63
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0x1
	.byte	0x77
	.4byte	0xdb
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x725
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x1
	.byte	0x77
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.byte	0x79
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0x58
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x1
	.byte	0x7f
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF124
	.byte	0x1
	.byte	0x9b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x783
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x1
	.byte	0x9b
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.byte	0x9d
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0x76e
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0x1
	.byte	0xb7
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0x1
	.byte	0xc6
	.4byte	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF125
	.byte	0x1
	.byte	0xda
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a7
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x1
	.byte	0xda
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x1
	.byte	0xf1
	.4byte	0xdb
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x1
	.byte	0x19
	.4byte	0x56a
	.uleb128 0x5
	.byte	0x3
	.4byte	DevInterface
	.uleb128 0xd
	.4byte	0x8c
	.4byte	0x7dd
	.uleb128 0x1c
	.4byte	0xb4
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x1
	.byte	0x1a
	.4byte	0x7cd
	.uleb128 0x5
	.byte	0x3
	.4byte	U9Buffer
	.uleb128 0xd
	.4byte	0x23c
	.4byte	0x7fe
	.uleb128 0x1c
	.4byte	0xb4
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x6
	.byte	0xbd
	.4byte	0x7ee
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x4c
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF66:
	.ascii	"wIndex\000"
.LASF58:
	.ascii	"USB_DEVICE_IDLE\000"
.LASF99:
	.ascii	"ConfigDescriptor\000"
.LASF29:
	.ascii	"USB_DIR_IN\000"
.LASF52:
	.ascii	"DataPosition\000"
.LASF98:
	.ascii	"DeviceDescriptor\000"
.LASF53:
	.ascii	"DataLength\000"
.LASF56:
	.ascii	"tag_USBSTATE\000"
.LASF116:
	.ascii	"USB9_SetFeature\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF48:
	.ascii	"Stage\000"
.LASF115:
	.ascii	"EPIndex\000"
.LASF55:
	.ascii	"TEPSTATE\000"
.LASF51:
	.ascii	"DataBuffer\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF86:
	.ascii	"wTotalLength\000"
.LASF46:
	.ascii	"USB_EPNUM\000"
.LASF111:
	.ascii	"String\000"
.LASF57:
	.ascii	"USB_DEVICE_OFF\000"
.LASF114:
	.ascii	"Setup\000"
.LASF33:
	.ascii	"EPSTAGE_IDLE\000"
.LASF0:
	.ascii	"signed char\000"
.LASF73:
	.ascii	"bDeviceClass\000"
.LASF79:
	.ascii	"bcdDevice\000"
.LASF127:
	.ascii	"EPState\000"
.LASF6:
	.ascii	"long int\000"
.LASF38:
	.ascii	"USB_EP0\000"
.LASF85:
	.ascii	"tag_USB_CFG_DESCR\000"
.LASF65:
	.ascii	"wValue\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF42:
	.ascii	"USB_EP4IN\000"
.LASF80:
	.ascii	"iManufacturer\000"
.LASF47:
	.ascii	"EPType\000"
.LASF88:
	.ascii	"bConfigurationValue\000"
.LASF81:
	.ascii	"iProduct\000"
.LASF95:
	.ascii	"wString\000"
.LASF104:
	.ascii	"SetAltInterface\000"
.LASF68:
	.ascii	"pUSBSETUP\000"
.LASF78:
	.ascii	"idProduct\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF63:
	.ascii	"bmRequestType\000"
.LASF107:
	.ascii	"VendorReqHandler\000"
.LASF72:
	.ascii	"bcdUSB\000"
.LASF126:
	.ascii	"USB9_InterfaceInitialize\000"
.LASF62:
	.ascii	"tag_USBSETUP\000"
.LASF124:
	.ascii	"USB9_HandleStdRequest\000"
.LASF123:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF74:
	.ascii	"bDeviceSubClass\000"
.LASF112:
	.ascii	"USB9_GetDescriptor\000"
.LASF121:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF82:
	.ascii	"iSerialNumber\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF36:
	.ascii	"TEPSTAGE\000"
.LASF28:
	.ascii	"USB_DIR_OUT\000"
.LASF119:
	.ascii	"DevInterface\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF9:
	.ascii	"long long int\000"
.LASF120:
	.ascii	"U9Buffer\000"
.LASF49:
	.ascii	"Stalled\000"
.LASF35:
	.ascii	"EPSTAGE_IN\000"
.LASF41:
	.ascii	"USB_EP3IN\000"
.LASF125:
	.ascii	"USB9_HandleSetupRequest\000"
.LASF92:
	.ascii	"ExtraData\000"
.LASF61:
	.ascii	"tag_EPSTATE\000"
.LASF71:
	.ascii	"bDescriptorType\000"
.LASF2:
	.ascii	"short int\000"
.LASF31:
	.ascii	"TUSBDIR\000"
.LASF27:
	.ascii	"tag_USBDIR\000"
.LASF118:
	.ascii	"AltInterfIndex\000"
.LASF109:
	.ascii	"Error\000"
.LASF122:
	.ascii	"Source\\Lib\\USB\\usb9.c\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF113:
	.ascii	"USB9_ClearFeature\000"
.LASF90:
	.ascii	"bmAttributes\000"
.LASF30:
	.ascii	"USB_DIR_MASK\000"
.LASF60:
	.ascii	"USB_DEVICE_CONFIGURED\000"
.LASF76:
	.ascii	"bMaxPacketSize0\000"
.LASF25:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF26:
	.ascii	"tag_VLINDEX\000"
.LASF40:
	.ascii	"USB_EP2IN\000"
.LASF108:
	.ascii	"pUSBDRIVERINTERFACE\000"
.LASF59:
	.ascii	"USB_DEVICE_ADDRESSED\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF110:
	.ascii	"Index\000"
.LASF96:
	.ascii	"pUSB_STR_DESCR\000"
.LASF89:
	.ascii	"iConfiguration\000"
.LASF18:
	.ascii	"false\000"
.LASF69:
	.ascii	"tag_USB_DEV_DESCR\000"
.LASF32:
	.ascii	"tag_EPSTAGE\000"
.LASF43:
	.ascii	"USB_EPMAXINDEX\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF20:
	.ascii	"boolean\000"
.LASF15:
	.ascii	"long double\000"
.LASF83:
	.ascii	"bNumConfigurations\000"
.LASF17:
	.ascii	"char\000"
.LASF75:
	.ascii	"bDeviceProtocol\000"
.LASF97:
	.ascii	"tag_USBDRIVERINTERFACE\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF39:
	.ascii	"USB_EP1IN\000"
.LASF54:
	.ascii	"EventHandler\000"
.LASF103:
	.ascii	"GetAltInterface\000"
.LASF37:
	.ascii	"tag_EP\000"
.LASF70:
	.ascii	"bLength\000"
.LASF87:
	.ascii	"bNumInterfaces\000"
.LASF21:
	.ascii	"LCDIF_LAYER0\000"
.LASF22:
	.ascii	"LCDIF_LAYER1\000"
.LASF23:
	.ascii	"LCDIF_LAYER2\000"
.LASF24:
	.ascii	"LCDIF_LAYER3\000"
.LASF102:
	.ascii	"SetConfiguration\000"
.LASF45:
	.ascii	"USB_EP2OUT\000"
.LASF101:
	.ascii	"ConfigIndex\000"
.LASF84:
	.ascii	"pUSB_DEV_DESCR\000"
.LASF91:
	.ascii	"bMaxPower\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF106:
	.ascii	"InterfaceReqHandler\000"
.LASF117:
	.ascii	"USB9_GetStatus\000"
.LASF64:
	.ascii	"bRequest\000"
.LASF67:
	.ascii	"wLength\000"
.LASF105:
	.ascii	"DeviceStatus\000"
.LASF50:
	.ascii	"PacketSize\000"
.LASF93:
	.ascii	"pUSB_CFG_DESCR\000"
.LASF94:
	.ascii	"tag_USB_STR_DESCR\000"
.LASF100:
	.ascii	"GetStringDescriptor\000"
.LASF44:
	.ascii	"USB_EP1OUT\000"
.LASF34:
	.ascii	"EPSTAGE_OUT\000"
.LASF77:
	.ascii	"idVendor\000"
.LASF19:
	.ascii	"true\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
