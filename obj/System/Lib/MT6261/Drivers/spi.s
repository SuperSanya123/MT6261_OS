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
	.file	"spi.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.SPI_WaitBusy,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	SPI_WaitBusy, %function
SPI_WaitBusy:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\spi.c"
	.loc 1 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 29 0
	nop
.L2:
	.loc 1 29 0 is_stmt 0 discriminator 1
	ldr	r3, .L4
	ldr	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	beq	.L2
	.loc 1 31 0 is_stmt 1
	movs	r3, #1
	.loc 1 32 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	-1608646624
	.cfi_endproc
.LFE1:
	.size	SPI_WaitBusy, .-SPI_WaitBusy
	.section	.text.SPI_Reset,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	SPI_Reset, %function
SPI_Reset:
.LFB2:
	.loc 1 35 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 36 0
	movs	r0, #23
	bl	PCTL_GetPeripheralPowerStatus
	subs	r3, r0, #0
	beq	.L8
	.loc 1 38 0
	ldr	r3, .L9
	ldr	r2, .L9
	ldr	r2, [r2]
	movs	r1, #4
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 39 0
	ldr	r3, .L9
	ldr	r2, .L9
	ldr	r2, [r2]
	movs	r1, #4
	bics	r2, r1
	str	r2, [r3]
.L8:
	.loc 1 41 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	-1608646632
	.cfi_endproc
.LFE2:
	.size	SPI_Reset, .-SPI_Reset
	.section	.text.SPI_SetupRXTX_DMA,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	SPI_SetupRXTX_DMA, %function
SPI_SetupRXTX_DMA:
.LFB3:
	.loc 1 44 0
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
	.loc 1 45 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 47 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L12
	.loc 1 49 0
	ldr	r3, .L17
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 1 50 0
	ldr	r3, .L17+4
	ldr	r2, .L17+4
	ldr	r2, [r2]
	movs	r1, #128
	lsls	r1, r1, #3
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 51 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	b	.L13
.L12:
	.loc 1 53 0
	ldr	r3, .L17+4
	ldr	r2, .L17+4
	ldr	r2, [r2]
	ldr	r1, .L17+8
	ands	r2, r1
	str	r2, [r3]
.L13:
	.loc 1 55 0
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L14
	.loc 1 57 0
	ldr	r3, .L17+12
	ldr	r2, [r7]
	str	r2, [r3]
	.loc 1 58 0
	ldr	r3, .L17+4
	ldr	r2, .L17+4
	ldr	r2, [r2]
	movs	r1, #128
	lsls	r1, r1, #4
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 59 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	b	.L15
.L14:
	.loc 1 61 0
	ldr	r3, .L17+4
	ldr	r2, .L17+4
	ldr	r2, [r2]
	ldr	r1, .L17+16
	ands	r2, r1
	str	r2, [r3]
.L15:
	.loc 1 63 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 64 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	-1608646644
	.word	-1608646632
	.word	-1025
	.word	-1608646648
	.word	-2049
	.cfi_endproc
.LFE3:
	.size	SPI_SetupRXTX_DMA, .-SPI_SetupRXTX_DMA
	.section	.text.SPI_EnableInterface,"ax",%progbits
	.align	2
	.global	SPI_EnableInterface
	.code	16
	.thumb_func
	.type	SPI_EnableInterface, %function
SPI_EnableInterface:
.LFB4:
	.loc 1 67 0
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
	.loc 1 68 0
	movs	r3, #23
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #46
	bgt	.L20
	.loc 1 68 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	asrs	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, .L22
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
	b	.L21
.L20:
	.loc 1 68 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bgt	.L21
	.loc 1 68 0 discriminator 3
	ldr	r2, .L22+4
	ldr	r3, [r7, #4]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L21:
.LBE2:
	.loc 1 69 0 is_stmt 1
	bl	SPI_Reset
	.loc 1 70 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L23:
	.align	2
.L22:
	.word	-1610546400
	.word	-1603076080
	.cfi_endproc
.LFE4:
	.size	SPI_EnableInterface, .-SPI_EnableInterface
	.section	.text.SPI_DisableInterface,"ax",%progbits
	.align	2
	.global	SPI_DisableInterface
	.code	16
	.thumb_func
	.type	SPI_DisableInterface, %function
SPI_DisableInterface:
.LFB5:
	.loc 1 73 0
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
	.loc 1 74 0
	bl	SPI_Reset
.LBB3:
	.loc 1 75 0
	movs	r3, #23
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #46
	bgt	.L25
	.loc 1 75 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	asrs	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, .L28
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
.LBE3:
	.loc 1 76 0 is_stmt 1 discriminator 1
	b	.L27
.L25:
.LBB4:
	.loc 1 75 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bgt	.L27
	.loc 1 75 0 is_stmt 0 discriminator 3
	ldr	r2, .L28+4
	ldr	r3, [r7, #4]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L27:
.LBE4:
	.loc 1 76 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L29:
	.align	2
.L28:
	.word	-1610546416
	.word	-1603076084
	.cfi_endproc
.LFE5:
	.size	SPI_DisableInterface, .-SPI_DisableInterface
	.section	.text.SPI_SetupCS,"ax",%progbits
	.align	2
	.global	SPI_SetupCS
	.code	16
	.thumb_func
	.type	SPI_SetupCS, %function
SPI_SetupCS:
.LFB6:
	.loc 1 79 0
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
	.loc 1 80 0
	movs	r0, #23
	bl	PCTL_GetPeripheralPowerStatus
	subs	r3, r0, #0
	beq	.L32
	.loc 1 80 0 is_stmt 0 discriminator 1
	bl	SPI_WaitBusy
	subs	r3, r0, #0
	beq	.L32
	.loc 1 81 0 is_stmt 1
	ldr	r3, .L33
	ldr	r2, .L33
	ldr	r2, [r2]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	.loc 1 82 0
	adds	r1, r7, #7
	ldrb	r1, [r1]
	lsls	r1, r1, #24
	.loc 1 81 0
	orrs	r2, r1
	.loc 1 82 0
	adds	r1, r7, #6
	ldrb	r1, [r1]
	lsls	r1, r1, #16
	orrs	r1, r2
	adds	r2, r7, #5
	ldrb	r2, [r2]
	orrs	r2, r1
	movs	r1, #255
	orrs	r2, r1
	.loc 1 81 0
	str	r2, [r3]
.L32:
	.loc 1 83 0
	nop
	mov	sp, r7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r7, pc}
.L34:
	.align	2
.L33:
	.word	-1608646656
	.cfi_endproc
.LFE6:
	.size	SPI_SetupCS, .-SPI_SetupCS
	.global	__aeabi_uidiv
	.section	.text.SPI_SetupSpeed,"ax",%progbits
	.align	2
	.global	SPI_SetupSpeed
	.code	16
	.thumb_func
	.type	SPI_SetupSpeed, %function
SPI_SetupSpeed:
.LFB7:
	.loc 1 86 0
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
	.loc 1 87 0
	movs	r0, #23
	bl	PCTL_GetPeripheralPowerStatus
	subs	r3, r0, #0
	beq	.L39
	.loc 1 87 0 is_stmt 0 discriminator 1
	bl	SPI_WaitBusy
	subs	r3, r0, #0
	beq	.L39
.LBB5:
.LBB6:
	.loc 1 91 0 is_stmt 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #28]
	ldr	r3, .L40
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #28]
	cmp	r3, r2
	bls	.L37
	movs	r3, r2
.L37:
.LBE6:
	str	r3, [r7, #4]
.LBB7:
	.loc 1 92 0
	movs	r3, #255
	lsls	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #1
	ldr	r2, .L40+4
	mov	ip, r2
	add	r3, r3, ip
	ldr	r1, [r7, #4]
	movs	r0, r3
	bl	__aeabi_uidiv
	movs	r3, r0
	subs	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, r2
	bls	.L38
	movs	r3, r2
.L38:
.LBE7:
	str	r3, [r7, #12]
	.loc 1 93 0
	ldr	r3, .L40+8
	ldr	r2, .L40+8
	ldr	r2, [r2]
	lsrs	r2, r2, #16
	lsls	r1, r2, #16
	.loc 1 94 0
	ldr	r2, [r7, #12]
	lsrs	r2, r2, #1
	movs	r0, #255
	ands	r2, r0
	.loc 1 93 0
	orrs	r1, r2
	.loc 1 94 0
	ldr	r2, [r7, #12]
	lsrs	r0, r2, #1
	ldr	r2, [r7, #12]
	movs	r4, #1
	ands	r2, r4
	adds	r2, r0, r2
	lsls	r2, r2, #8
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	orrs	r2, r1
	.loc 1 93 0
	str	r2, [r3]
.L39:
.LBE5:
	.loc 1 96 0
	nop
	mov	sp, r7
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r7, pc}
.L41:
	.align	2
.L40:
	.word	32000000
	.word	64000000
	.word	-1608646656
	.cfi_endproc
.LFE7:
	.size	SPI_SetupSpeed, .-SPI_SetupSpeed
	.section	.text.SPI_SetupEndian,"ax",%progbits
	.align	2
	.global	SPI_SetupEndian
	.code	16
	.thumb_func
	.type	SPI_SetupEndian, %function
SPI_SetupEndian:
.LFB8:
	.loc 1 99 0
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
	adds	r3, r7, #6
	adds	r2, r4, #0
	strb	r2, [r3]
	adds	r3, r7, #5
	adds	r2, r0, #0
	strb	r2, [r3]
	adds	r3, r7, #4
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 100 0
	movs	r0, #23
	bl	PCTL_GetPeripheralPowerStatus
	subs	r3, r0, #0
	beq	.L48
	.loc 1 100 0 is_stmt 0 discriminator 1
	bl	SPI_WaitBusy
	subs	r3, r0, #0
	beq	.L48
.LBB8:
	.loc 1 102 0 is_stmt 1
	ldr	r3, .L49
	ldr	r3, [r3]
	ldr	r2, .L49+4
	ands	r3, r2
	str	r3, [r7, #12]
	.loc 1 105 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L44
	.loc 1 105 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #128
	lsls	r2, r2, #7
	orrs	r3, r2
	str	r3, [r7, #12]
.L44:
	.loc 1 106 0 is_stmt 1
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L45
	.loc 1 106 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #128
	lsls	r2, r2, #8
	orrs	r3, r2
	str	r3, [r7, #12]
.L45:
	.loc 1 107 0 is_stmt 1
	adds	r3, r7, #5
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L46
	.loc 1 107 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #128
	lsls	r2, r2, #6
	orrs	r3, r2
	str	r3, [r7, #12]
.L46:
	.loc 1 108 0 is_stmt 1
	adds	r3, r7, #4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L47
	.loc 1 108 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #128
	lsls	r2, r2, #5
	orrs	r3, r2
	str	r3, [r7, #12]
.L47:
	.loc 1 109 0 is_stmt 1
	ldr	r3, .L49
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L48:
.LBE8:
	.loc 1 111 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r7, pc}
.L50:
	.align	2
.L49:
	.word	-1608646632
	.word	-61441
	.cfi_endproc
.LFE8:
	.size	SPI_SetupEndian, .-SPI_SetupEndian
	.section	.text.SPI_SetupInterface,"ax",%progbits
	.align	2
	.global	SPI_SetupInterface
	.code	16
	.thumb_func
	.type	SPI_SetupInterface, %function
SPI_SetupInterface:
.LFB9:
	.loc 1 114 0
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
	.loc 1 115 0
	movs	r0, #23
	bl	PCTL_GetPeripheralPowerStatus
	subs	r3, r0, #0
	beq	.L56
	.loc 1 115 0 is_stmt 0 discriminator 1
	bl	SPI_WaitBusy
	subs	r3, r0, #0
	beq	.L56
.LBB9:
	.loc 1 117 0 is_stmt 1
	ldr	r3, .L57
	ldr	r3, [r3]
	ldr	r2, .L57+4
	ands	r3, r2
	str	r3, [r7, #12]
	.loc 1 120 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L53
	.loc 1 120 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #128
	lsls	r2, r2, #2
	orrs	r3, r2
	str	r3, [r7, #12]
.L53:
	.loc 1 121 0 is_stmt 1
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L54
	.loc 1 121 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #128
	lsls	r2, r2, #1
	orrs	r3, r2
	str	r3, [r7, #12]
.L54:
	.loc 1 122 0 is_stmt 1
	adds	r3, r7, #5
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L55
	.loc 1 122 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #32
	orrs	r3, r2
	str	r3, [r7, #12]
.L55:
	.loc 1 123 0 is_stmt 1
	ldr	r3, .L57
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L56:
.LBE9:
	.loc 1 125 0
	nop
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L58:
	.align	2
.L57:
	.word	-1608646632
	.word	-801
	.cfi_endproc
.LFE9:
	.size	SPI_SetupInterface, .-SPI_SetupInterface
	.section	.text.SPI_RXTXDataBufferDMA,"ax",%progbits
	.align	2
	.global	SPI_RXTXDataBufferDMA
	.code	16
	.thumb_func
	.type	SPI_RXTXDataBufferDMA, %function
SPI_RXTXDataBufferDMA:
.LFB10:
	.loc 1 128 0
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
	.loc 1 129 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L60
	.loc 1 129 0 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L61
.L60:
	.loc 1 130 0 is_stmt 1
	movs	r0, #23
	bl	PCTL_GetPeripheralPowerStatus
	subs	r3, r0, #0
	bne	.LCB740
	b	.L62	@long jump
.LCB740:
	.loc 1 130 0 is_stmt 0 discriminator 1
	bl	SPI_WaitBusy
	subs	r3, r0, #0
	bne	.LCB744
	b	.L62	@long jump
.LCB744:
.LBB10:
.LBB11:
	.loc 1 133 0 is_stmt 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #32]
	movs	r3, #128
	lsls	r3, r3, #3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #32]
	cmp	r3, r2
	bls	.L63
	movs	r3, r2
.L63:
.LBE11:
	str	r3, [r7, #36]
	.loc 1 135 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	SPI_SetupRXTX_DMA
	subs	r3, r0, #0
	beq	.L62
	.loc 1 137 0
	ldr	r2, [r7, #4]
	movs	r3, #128
	lsls	r3, r3, #3
	cmp	r2, r3
	bls	.L64
	.loc 1 137 0 is_stmt 0 discriminator 1
	ldr	r3, .L70
	ldr	r2, .L70
	ldr	r2, [r2]
	movs	r1, #16
	orrs	r2, r1
	str	r2, [r3]
	b	.L65
.L64:
	.loc 1 138 0 is_stmt 1
	ldr	r3, .L70
	ldr	r2, .L70
	ldr	r2, [r2]
	movs	r1, #16
	bics	r2, r1
	str	r2, [r3]
.L65:
	.loc 1 140 0
	ldr	r3, .L70+4
	ldr	r2, .L70+4
	ldr	r2, [r2]
	ldr	r1, .L70+8
	ands	r1, r2
	ldr	r2, [r7, #36]
	subs	r2, r2, #1
	lsls	r2, r2, #16
	ldr	r0, .L70+12
	ands	r2, r0
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 141 0
	ldr	r3, .L70
	ldr	r2, .L70
	ldr	r2, [r2]
	movs	r1, #1
	orrs	r2, r1
	str	r2, [r3]
.L69:
	.loc 1 145 0
	ldr	r3, .L70+16
	ldr	r3, [r3]
	str	r3, [r7, #24]
	.loc 1 146 0
	ldr	r3, [r7, #24]
	movs	r2, #2
	ands	r3, r2
	beq	.L66
	.loc 1 148 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #4]
.LBB12:
	.loc 1 149 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	movs	r3, #128
	lsls	r3, r3, #3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	cmp	r3, r2
	bls	.L67
	movs	r3, r2
.L67:
.LBE12:
	str	r3, [r7, #36]
	.loc 1 150 0
	ldr	r2, [r7, #4]
	movs	r3, #128
	lsls	r3, r3, #3
	cmp	r2, r3
	bhi	.L68
	.loc 1 152 0
	ldr	r3, .L70+4
	ldr	r2, .L70+4
	ldr	r2, [r2]
	ldr	r1, .L70+8
	ands	r1, r2
	ldr	r2, [r7, #36]
	subs	r2, r2, #1
	lsls	r2, r2, #16
	ldr	r0, .L70+12
	ands	r2, r0
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 153 0
	ldr	r3, .L70
	ldr	r2, .L70
	ldr	r2, [r2]
	movs	r1, #16
	bics	r2, r1
	str	r2, [r3]
.L68:
	.loc 1 155 0
	ldr	r3, .L70
	ldr	r2, .L70
	ldr	r2, [r2]
	movs	r1, #2
	orrs	r2, r1
	str	r2, [r3]
.L66:
	.loc 1 158 0
	ldr	r3, [r7, #24]
	movs	r2, #1
	ands	r3, r2
	beq	.L69
	.loc 1 160 0
	movs	r3, #1
	b	.L61
.L62:
.LBE10:
	.loc 1 163 0
	movs	r3, #0
.L61:
	.loc 1 164 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #40
	@ sp needed
	pop	{r7, pc}
.L71:
	.align	2
.L70:
	.word	-1608646632
	.word	-1608646652
	.word	-67043329
	.word	67043328
	.word	-1608646628
	.cfi_endproc
.LFE10:
	.size	SPI_RXTXDataBufferDMA, .-SPI_RXTXDataBufferDMA
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\Lib\\MT6261/drivers\\spi.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x42d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xc
	.4byte	.LASF58
	.4byte	.LASF59
	.4byte	.Ldebug_ranges0+0x18
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0xdd
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1d
	.4byte	0xc4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x3d
	.4byte	0x105
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x41
	.4byte	0xe8
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x43
	.4byte	0x12d
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x47
	.4byte	0x110
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x1
	.byte	0x1b
	.4byte	0xdd
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x1
	.byte	0x22
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2b
	.4byte	0xdd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a2
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2b
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2b
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2d
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x42
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cf
	.uleb128 0xf
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x10
	.ascii	"_x\000"
	.byte	0x1
	.byte	0x44
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x48
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f8
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x10
	.ascii	"_x\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x238
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4e
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4e
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4e
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x1
	.byte	0x55
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0x55
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0x59
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x29a
	.uleb128 0x10
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x5b
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x5b
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x10
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x62
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x326
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x1
	.byte	0x62
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x1
	.byte	0x62
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0x62
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x1
	.byte	0x62
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x1
	.byte	0x66
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x71
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37e
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x1
	.byte	0x71
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x1
	.byte	0x71
	.4byte	0x12d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x1
	.byte	0x71
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0xf
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x1
	.byte	0x75
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x1
	.byte	0x7f
	.4byte	0xdd
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x1
	.byte	0x7f
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x1
	.byte	0x7f
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x1
	.byte	0x7f
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x1
	.byte	0x84
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.byte	0x85
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x40a
	.uleb128 0x10
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x85
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x85
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x10
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x95
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x95
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xe
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.4byte	0x64
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF29:
	.ascii	"RX_Dst\000"
.LASF38:
	.ascii	"SPI_SetupSpeed\000"
.LASF36:
	.ascii	"CSHoldTime\000"
.LASF42:
	.ascii	"RXReverse\000"
.LASF60:
	.ascii	"SPI_WaitBusy\000"
.LASF2:
	.ascii	"short int\000"
.LASF26:
	.ascii	"CPHA_0\000"
.LASF27:
	.ascii	"CPHA_1\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF34:
	.ascii	"SPI_SetupCS\000"
.LASF33:
	.ascii	"SPI_DisableInterface\000"
.LASF43:
	.ascii	"TXReverse\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF47:
	.ascii	"SPI_SetupInterface\000"
.LASF48:
	.ascii	"CPOL\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF35:
	.ascii	"CSSetTime\000"
.LASF31:
	.ascii	"Result\000"
.LASF40:
	.ascii	"nTicks\000"
.LASF49:
	.ascii	"CPHA\000"
.LASF37:
	.ascii	"CSIdleTime\000"
.LASF61:
	.ascii	"SPI_Reset\000"
.LASF44:
	.ascii	"RXMSB\000"
.LASF9:
	.ascii	"long long int\000"
.LASF46:
	.ascii	"tmpCMD\000"
.LASF50:
	.ascii	"CSDeassertEn\000"
.LASF6:
	.ascii	"long int\000"
.LASF32:
	.ascii	"SPI_EnableInterface\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF41:
	.ascii	"SPI_SetupEndian\000"
.LASF62:
	.ascii	"SPI_SetupRXTX_DMA\000"
.LASF25:
	.ascii	"tag_SCPHA\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF15:
	.ascii	"long double\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF18:
	.ascii	"false\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF56:
	.ascii	"nBytes\000"
.LASF54:
	.ascii	"Count\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"char\000"
.LASF21:
	.ascii	"CPOL_0\000"
.LASF22:
	.ascii	"CPOL_1\000"
.LASF58:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\spi.c\000"
.LASF19:
	.ascii	"true\000"
.LASF59:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF45:
	.ascii	"TXMSB\000"
.LASF55:
	.ascii	"Status\000"
.LASF39:
	.ascii	"Speed\000"
.LASF23:
	.ascii	"TSCPOL\000"
.LASF53:
	.ascii	"TXData\000"
.LASF52:
	.ascii	"RXData\000"
.LASF28:
	.ascii	"TSCPHA\000"
.LASF30:
	.ascii	"TX_Src\000"
.LASF24:
	.ascii	"tag_SCPOL\000"
.LASF57:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF51:
	.ascii	"SPI_RXTXDataBufferDMA\000"
.LASF20:
	.ascii	"boolean\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
