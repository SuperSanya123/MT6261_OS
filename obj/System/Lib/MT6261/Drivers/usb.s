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
	.file	"usb.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	EPFIFOSize
	.section	.rodata.EPFIFOSize,"a",%progbits
	.align	2
	.type	EPFIFOSize, %object
	.size	EPFIFOSize, 7
EPFIFOSize:
	.byte	64
	.byte	64
	.byte	64
	.byte	16
	.byte	16
	.byte	64
	.byte	64
	.comm	USB_OnDeviceActive,4,4
	.comm	EPState,168,4
	.section	.bss.USBDeviceState,"aw",%nobits
	.type	USBDeviceState, %object
	.size	USBDeviceState, 1
USBDeviceState:
	.space	1
	.section	.bss.SetupBuffer,"aw",%nobits
	.align	2
	.type	SetupBuffer, %object
	.size	SetupBuffer, 8
SetupBuffer:
	.space	8
	.section	.text.USB_EPFIFORead,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	USB_EPFIFORead, %function
USB_EPFIFORead:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\usb.c"
	.loc 1 42 0
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
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 43 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	.loc 1 45 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #4
	bls	.L2
	.loc 1 45 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	subs	r2, r2, #4
	strb	r2, [r3]
.L2:
	.loc 1 46 0 is_stmt 1
	ldr	r2, .L6
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 48 0
	b	.L3
.L5:
	.loc 1 49 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L4
	.loc 1 49 0 discriminator 1
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	lsls	r2, r2, #2
	ldr	r1, .L6+4
	mov	ip, r1
	add	r2, r2, ip
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	strb	r2, [r3]
	b	.L3
.L4:
	.loc 1 50 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #2
	ldr	r2, .L6+4
	mov	ip, r2
	add	r3, r3, ip
	ldrb	r3, [r3]
.L3:
	.loc 1 48 0
	ldr	r3, [r7, #8]
	subs	r2, r3, #1
	str	r2, [r7, #8]
	cmp	r3, #0
	bne	.L5
	.loc 1 51 0
	nop
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	-1601175538
	.word	-1601175520
	.cfi_endproc
.LFE1:
	.size	USB_EPFIFORead, .-USB_EPFIFORead
	.section	.text.USB_EPFIFOWrite,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	USB_EPFIFOWrite, %function
USB_EPFIFOWrite:
.LFB2:
	.loc 1 54 0
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
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 55 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	.loc 1 57 0
	ldr	r2, .L11
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 59 0
	b	.L9
.L10:
	.loc 1 60 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #2
	ldr	r2, .L11+4
	mov	ip, r2
	add	r3, r3, ip
	movs	r1, r3
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldrb	r3, [r3]
	strb	r3, [r1]
.L9:
	.loc 1 59 0
	ldr	r3, [r7, #8]
	subs	r2, r3, #1
	str	r2, [r7, #8]
	cmp	r3, #0
	bne	.L10
	.loc 1 61 0
	nop
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	-1601175538
	.word	-1601175520
	.cfi_endproc
.LFE2:
	.size	USB_EPFIFOWrite, .-USB_EPFIFOWrite
	.section	.text.USB_EP0Handler,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	USB_EP0Handler, %function
USB_EP0Handler:
.LFB3:
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
	movs	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 65 0
	ldr	r3, .L20
	ldrb	r3, [r3, #1]
	cmp	r3, #0
	bne	.L14
.LBB2:
	.loc 1 67 0
	movs	r0, #0
	bl	USB_GetOUTDataLength
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 69 0
	ldr	r3, [r7, #12]
	cmp	r3, #7
	bls	.L15
	.loc 1 71 0
	ldr	r3, .L20+4
	movs	r2, r3
	movs	r1, #8
	movs	r0, #0
	bl	USB_EPFIFORead
	.loc 1 72 0
	ldr	r3, .L20+4
	movs	r0, r3
	bl	USB9_HandleSetupRequest
	b	.L17
.L15:
	.loc 1 74 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L17
	.loc 1 74 0 is_stmt 0 discriminator 1
	movs	r3, #1
	movs	r2, #1
	movs	r1, #0
	movs	r0, #0
	bl	USB_UpdateEPState
	b	.L17
.L14:
.LBE2:
	.loc 1 76 0 is_stmt 1
	ldr	r3, .L20
	ldrb	r3, [r3, #1]
	cmp	r3, #1
	bne	.L17
	.loc 1 78 0
	movs	r0, #0
	bl	USB_DataReceive
	subs	r3, r0, #0
	beq	.L17
	.loc 1 80 0
	ldr	r3, .L20+4
	movs	r0, r3
	bl	USB9_HandleSetupRequest
	.loc 1 81 0
	ldr	r3, .L20
	movs	r2, #0
	strb	r2, [r3, #1]
.L17:
	.loc 1 84 0
	ldr	r3, .L20
	ldrb	r3, [r3, #1]
	cmp	r3, #2
	bne	.L19
	.loc 1 86 0
	movs	r0, #0
	bl	USB_DataTransmit
	subs	r3, r0, #0
	beq	.L19
	.loc 1 87 0
	ldr	r3, .L20
	movs	r2, #0
	strb	r2, [r3, #1]
.L19:
	.loc 1 89 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L21:
	.align	2
.L20:
	.word	EPState
	.word	SetupBuffer
	.cfi_endproc
.LFE3:
	.size	USB_EP0Handler, .-USB_EP0Handler
	.section	.rodata
	.align	2
.LC3:
	.ascii	"Can not initialize USB device interface.\015\000"
	.section	.text.USB_ResetDevice,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	USB_ResetDevice, %function
USB_ResetDevice:
.LFB4:
	.loc 1 92 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 93 0
	ldr	r3, .L26
	movs	r2, #16
	strb	r2, [r3]
	.loc 1 95 0
	ldr	r3, .L26+4
	movs	r2, #128
	strb	r2, [r3]
	.loc 1 96 0
	ldr	r3, .L26+4
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 98 0
	ldr	r3, .L26+8
	movs	r2, #128
	strb	r2, [r3]
	.loc 1 99 0
	ldr	r3, .L26+12
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 100 0
	ldr	r3, .L26+16
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 101 0
	ldr	r3, .L26+20
	movs	r2, #7
	strb	r2, [r3]
	.loc 1 103 0
	movs	r0, #1
	bl	USB_SetDeviceState
	.loc 1 105 0
	ldr	r3, .L26+24
	movs	r2, #168
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 107 0
	bl	USB9_InterfaceInitialize
	subs	r3, r0, #0
	bne	.L23
	.loc 1 109 0
	ldr	r3, .L26+28
	movs	r0, r3
	bl	puts
	.loc 1 109 0
	ldr	r3, .L26+32
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 109 0
	movs	r0, r3
	bl	fflush
	.loc 1 110 0
	bl	USB_DisableDevice
	.loc 1 117 0
	b	.L25
.L23:
	.loc 1 114 0
	ldr	r3, .L26+36
	movs	r2, #64
	movs	r1, r3
	movs	r0, #0
	bl	USB_SetupEndpoint
	.loc 1 115 0
	movs	r1, #1
	movs	r0, #0
	bl	USB_SetEndpointEnabled
.L25:
	.loc 1 117 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L27:
	.align	2
.L26:
	.word	-1601175551
	.word	-1601175537
	.word	-1601175552
	.word	-1601175545
	.word	-1601175543
	.word	-1601175541
	.word	EPState
	.word	.LC3
	.word	_impure_ptr
	.word	USB_EP0Handler
	.cfi_endproc
.LFE4:
	.size	USB_ResetDevice, .-USB_ResetDevice
	.section	.text.USB_GetInterruptFlags,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	USB_GetInterruptFlags, %function
USB_GetInterruptFlags:
.LFB5:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 121 0
	ldr	r3, .L33
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	ldr	r2, .L33+4
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #12]
	strb	r2, [r3]
	.loc 1 122 0
	ldr	r3, .L33+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	ldr	r2, .L33+12
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #8]
	strb	r2, [r3]
	.loc 1 123 0
	ldr	r3, .L33+16
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	ldr	r2, .L33+20
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	ands	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	.loc 1 125 0
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L29
	.loc 1 125 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L29
	.loc 1 125 0 discriminator 4
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L30
.L29:
	.loc 1 125 0 discriminator 5
	movs	r3, #1
	b	.L31
.L30:
	.loc 1 125 0 discriminator 6
	movs	r3, #0
.L31:
	.loc 1 125 0 discriminator 8
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 126 0 is_stmt 1 discriminator 8
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L34:
	.align	2
.L33:
	.word	-1601175546
	.word	-1601175541
	.word	-1601175550
	.word	-1601175545
	.word	-1601175548
	.word	-1601175543
	.cfi_endproc
.LFE5:
	.size	USB_GetInterruptFlags, .-USB_GetInterruptFlags
	.section	.text.USB_EPDefaultHandler,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	USB_EPDefaultHandler, %function
USB_EPDefaultHandler:
.LFB6:
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
	adds	r2, r7, #7
	ldrb	r2, [r2]
	movs	r1, #127
	ands	r2, r1
	strb	r2, [r3]
	.loc 1 133 0
	ldr	r2, .L42
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 134 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L36
	.loc 1 136 0
	ldr	r2, .L42+4
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 137 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #4
	ands	r3, r2
	beq	.L37
	.loc 1 137 0 is_stmt 0 discriminator 1
	ldr	r2, .L42+4
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, #4
	bics	r3, r1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r2]
.L37:
	.loc 1 138 0 is_stmt 1
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #16
	ands	r3, r2
	beq	.L41
	.loc 1 138 0 is_stmt 0 discriminator 1
	ldr	r3, .L42+4
	movs	r2, #128
	strb	r2, [r3]
	.loc 1 150 0 is_stmt 1 discriminator 1
	b	.L41
.L36:
	.loc 1 140 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L40
	.loc 1 142 0
	ldr	r2, .L42+4
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 143 0
	ldr	r2, .L42+4
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, #32
	bics	r3, r1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r2]
	.loc 1 150 0
	b	.L41
.L40:
	.loc 1 147 0
	ldr	r2, .L42+8
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 148 0
	ldr	r2, .L42+8
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, #64
	bics	r3, r1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r2]
.L41:
	.loc 1 150 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L43:
	.align	2
.L42:
	.word	-1601175538
	.word	-1601175535
	.word	-1601175532
	.cfi_endproc
.LFE6:
	.size	USB_EPDefaultHandler, .-USB_EPDefaultHandler
	.section	.text.USB_InterruptHandler,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	USB_InterruptHandler, %function
USB_InterruptHandler:
.LFB7:
	.loc 1 153 0
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
	.loc 1 157 0
	b	.L45
.L56:
	.loc 1 159 0
	adds	r3, r7, #5
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r3, #4
	ands	r3, r2
	beq	.L46
	.loc 1 162 0
	bl	USB_ResetDevice
	b	.L44
.L46:
	.loc 1 165 0
	adds	r3, r7, #5
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r3, #2
	ands	r3, r2
	beq	.L48
	.loc 1 168 0
	ldr	r3, .L57
	movs	r2, #5
	strb	r2, [r3]
	.loc 1 169 0
	ldr	r3, .L57+4
	movs	r2, #20
	strb	r2, [r3]
.L48:
	.loc 1 172 0
	adds	r3, r7, #7
	movs	r2, #0
	strb	r2, [r3]
	b	.L49
.L55:
.LBB3:
	.loc 1 174 0
	ldr	r1, .L57+8
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #4
	bls	.L50
	.loc 1 174 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	subs	r3, r3, #4
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L51
.L50:
	.loc 1 174 0 discriminator 2
	adds	r3, r7, #7
	ldrb	r3, [r3]
.L51:
	.loc 1 174 0 discriminator 4
	adds	r2, r7, #6
	strb	r3, [r2]
	adds	r3, r7, #6
	ldrb	r2, [r3]
	adds	r3, r2, #0
	strb	r3, [r1]
	adds	r3, r7, #6
	strb	r2, [r3]
	.loc 1 176 0 is_stmt 1 discriminator 4
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #4
	bhi	.L52
	.loc 1 176 0 is_stmt 0 discriminator 1
	adds	r3, r7, #4
	ldrb	r3, [r3]
	movs	r2, r3
	adds	r3, r7, #6
	ldrb	r3, [r3]
	asrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	beq	.L52
	.loc 1 178 0 is_stmt 1
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	mvns	r3, r3
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	adds	r2, r7, #4
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	ands	r3, r2
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	adds	r3, r7, #4
	strb	r2, [r3]
	.loc 1 179 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #128
	rsbs	r2, r2, #0
	orrs	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r0, r3
	bl	USB_EPDefaultHandler
	.loc 1 180 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L57+12
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L52
	.loc 1 180 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L57+12
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #20
	ldr	r3, [r3]
	adds	r2, r7, #6
	ldrb	r2, [r2]
	movs	r1, #128
	rsbs	r1, r1, #0
	orrs	r2, r1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	movs	r0, r2
	blx	r3
.L52:
	.loc 1 182 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #4
	bls	.L53
	.loc 1 182 0 is_stmt 0 discriminator 1
	adds	r3, r7, #3
	ldrb	r3, [r3]
	movs	r2, r3
	adds	r3, r7, #6
	ldrb	r3, [r3]
	asrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	beq	.L53
	.loc 1 184 0 is_stmt 1
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	mvns	r3, r3
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	adds	r2, r7, #3
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	ands	r3, r2
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	adds	r3, r7, #3
	strb	r2, [r3]
	.loc 1 185 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	movs	r0, r3
	bl	USB_EPDefaultHandler
	.loc 1 186 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L57+12
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L53
	.loc 1 186 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L57+12
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #20
	ldr	r3, [r3]
	adds	r2, r7, #6
	ldrb	r2, [r2]
	movs	r0, r2
	blx	r3
.L53:
.LBE3:
	.loc 1 172 0 discriminator 2
	adds	r3, r7, #7
	ldrb	r2, [r3]
	adds	r3, r7, #7
	adds	r2, r2, #1
	strb	r2, [r3]
.L49:
	.loc 1 172 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L54
	.loc 1 172 0 discriminator 3
	adds	r3, r7, #4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.LCB818
	b	.L55	@long jump
.LCB818:
	.loc 1 172 0 discriminator 4
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.LCB822
	b	.L55	@long jump
.LCB822:
.L54:
	.loc 1 190 0 is_stmt 1
	adds	r3, r7, #5
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L45
	.loc 1 193 0
	ldr	r3, .L57
	movs	r2, #6
	strb	r2, [r3]
	.loc 1 194 0
	ldr	r3, .L57+4
	movs	r2, #17
	strb	r2, [r3]
.L45:
	.loc 1 157 0
	adds	r2, r7, #3
	adds	r1, r7, #4
	adds	r3, r7, #5
	movs	r0, r3
	bl	USB_GetInterruptFlags
	subs	r3, r0, #0
	beq	.LCB846
	b	.L56	@long jump
.LCB846:
.L44:
	.loc 1 197 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L58:
	.align	2
.L57:
	.word	-1601175541
	.word	-1601175551
	.word	-1601175538
	.word	EPState
	.cfi_endproc
.LFE7:
	.size	USB_InterruptHandler, .-USB_InterruptHandler
	.section	.rodata
	.align	2
.LC8:
	.ascii	"USB driver initialization.\015\000"
	.section	.text.USB_Initialize,"ax",%progbits
	.align	2
	.global	USB_Initialize
	.code	16
	.thumb_func
	.type	USB_Initialize, %function
USB_Initialize:
.LFB8:
	.loc 1 200 0
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
	.loc 1 202 0
	ldr	r3, .L60
	movs	r0, r3
	bl	puts
	.loc 1 202 0
	ldr	r3, .L60+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 202 0
	movs	r0, r3
	bl	fflush
	.loc 1 203 0
	ldr	r3, .L60+8
	movs	r2, #168
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 205 0
	bl	USB_DisableDevice
	.loc 1 207 0
	ldr	r1, .L60+12
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #1
	movs	r2, #1
	movs	r0, #25
	bl	NVIC_RegisterIRQ
	.loc 1 211 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L61:
	.align	2
.L60:
	.word	.LC8
	.word	_impure_ptr
	.word	EPState
	.word	USB_InterruptHandler
	.cfi_endproc
.LFE8:
	.size	USB_Initialize, .-USB_Initialize
	.section	.rodata
	.align	2
.LC14:
	.ascii	"USB device enabled.\015\000"
	.section	.text.USB_EnableDevice,"ax",%progbits
	.align	2
	.global	USB_EnableDevice
	.code	16
	.thumb_func
	.type	USB_EnableDevice, %function
USB_EnableDevice:
.LFB9:
	.loc 1 214 0
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
	.loc 1 216 0
	ldr	r3, .L67
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L66
	.loc 1 219 0
	movs	r0, #1
	bl	PMU_TurnOnVUSB
.LBB4:
	.loc 1 221 0
	movs	r3, #18
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #46
	bgt	.L64
	.loc 1 221 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	asrs	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, .L67+4
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
	b	.L65
.L64:
	.loc 1 221 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bgt	.L65
	.loc 1 221 0 discriminator 3
	ldr	r2, .L67+8
	ldr	r3, [r7, #4]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L65:
.LBE4:
	.loc 1 225 0 is_stmt 1
	movs	r0, #50
	bl	USC_Pause_us
	.loc 1 227 0
	ldr	r3, .L67+12
	ldr	r2, .L67+12
	ldr	r2, [r2]
	ldr	r1, .L67+16
	ands	r2, r1
	str	r2, [r3]
	.loc 1 228 0
	ldr	r3, .L67+20
	ldr	r2, .L67+20
	ldr	r2, [r2]
	movs	r1, #128
	lsls	r1, r1, #4
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 229 0
	movs	r0, #10
	bl	USC_Pause_us
	.loc 1 231 0
	ldr	r3, .L67+24
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 232 0
	movs	r0, #1
	bl	USB_SetDeviceState
	.loc 1 234 0
	movs	r0, #25
	bl	NVIC_EnableIRQ
	.loc 1 235 0
	ldr	r3, .L67+28
	movs	r0, r3
	bl	puts
	.loc 1 235 0
	ldr	r3, .L67+32
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 235 0
	movs	r0, r3
	bl	fflush
.L66:
	.loc 1 238 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L68:
	.align	2
.L67:
	.word	USBDeviceState
	.word	-1610546400
	.word	-1603076080
	.word	-1601107772
	.word	-32769
	.word	-1601107776
	.word	-1601174976
	.word	.LC14
	.word	_impure_ptr
	.cfi_endproc
.LFE9:
	.size	USB_EnableDevice, .-USB_EnableDevice
	.section	.rodata
	.align	2
.LC18:
	.ascii	"USB device disabled.\015\000"
	.section	.text.USB_DisableDevice,"ax",%progbits
	.align	2
	.global	USB_DisableDevice
	.code	16
	.thumb_func
	.type	USB_DisableDevice, %function
USB_DisableDevice:
.LFB10:
	.loc 1 241 0
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
	.loc 1 242 0
	ldr	r3, .L74
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L73
	.loc 1 245 0
	movs	r0, #25
	bl	NVIC_DisableIRQ
	.loc 1 248 0
	movs	r0, #0
	bl	USB_SetDeviceState
	.loc 1 249 0
	bl	USB9_InterfaceInitialize
	.loc 1 252 0
	ldr	r2, .L74+4
	ldr	r3, .L74+4
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r2]
	.loc 1 254 0
	ldr	r3, .L74+8
	ldr	r2, .L74+8
	ldr	r2, [r2]
	ldr	r1, .L74+12
	ands	r2, r1
	str	r2, [r3]
	.loc 1 255 0
	ldr	r3, .L74+16
	ldr	r2, .L74+16
	ldr	r2, [r2]
	movs	r1, #128
	lsls	r1, r1, #8
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 257 0
	movs	r0, #0
	bl	PMU_TurnOnVUSB
.LBB5:
	.loc 1 261 0
	movs	r3, #18
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #46
	bgt	.L71
	.loc 1 261 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	asrs	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, .L74+20
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
	b	.L72
.L71:
	.loc 1 261 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bgt	.L72
	.loc 1 261 0 discriminator 3
	ldr	r2, .L74+24
	ldr	r3, [r7, #4]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L72:
.LBE5:
	.loc 1 262 0 is_stmt 1
	ldr	r3, .L74+28
	movs	r0, r3
	bl	puts
	.loc 1 262 0
	ldr	r3, .L74+32
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 262 0
	movs	r0, r3
	bl	fflush
.L73:
	.loc 1 264 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L75:
	.align	2
.L74:
	.word	USBDeviceState
	.word	-1601174976
	.word	-1601107776
	.word	-2049
	.word	-1601107772
	.word	-1610546416
	.word	-1603076084
	.word	.LC18
	.word	_impure_ptr
	.cfi_endproc
.LFE10:
	.size	USB_DisableDevice, .-USB_DisableDevice
	.section	.text.USB_OnCableDisconnect,"ax",%progbits
	.align	2
	.global	USB_OnCableDisconnect
	.code	16
	.thumb_func
	.type	USB_OnCableDisconnect, %function
USB_OnCableDisconnect:
.LFB11:
	.loc 1 267 0
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
	bl	USB_IsDeviceActive
	subs	r3, r0, #0
	beq	.L78
	.loc 1 269 0 is_stmt 0 discriminator 1
	bl	USB_ResetDevice
.L78:
	.loc 1 271 0 is_stmt 1
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE11:
	.size	USB_OnCableDisconnect, .-USB_OnCableDisconnect
	.section	.text.USB_SetDeviceAddress,"ax",%progbits
	.align	2
	.global	USB_SetDeviceAddress
	.code	16
	.thumb_func
	.type	USB_SetDeviceAddress, %function
USB_SetDeviceAddress:
.LFB12:
	.loc 1 274 0
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
	.loc 1 275 0
	ldr	r2, .L80
	adds	r3, r7, #7
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 276 0
	movs	r0, #2
	bl	USB_SetDeviceState
	.loc 1 277 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L81:
	.align	2
.L80:
	.word	-1601175552
	.cfi_endproc
.LFE12:
	.size	USB_SetDeviceAddress, .-USB_SetDeviceAddress
	.section	.text.USB_SetDeviceState,"ax",%progbits
	.align	2
	.global	USB_SetDeviceState
	.code	16
	.thumb_func
	.type	USB_SetDeviceState, %function
USB_SetDeviceState:
.LFB13:
	.loc 1 280 0
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
	.loc 1 281 0
	ldr	r3, .L85
	ldrb	r3, [r3]
	adds	r2, r7, #7
	ldrb	r2, [r2]
	cmp	r2, r3
	beq	.L84
.LBB6:
	.loc 1 283 0
	movs	r3, #15
	adds	r4, r7, r3
	bl	USB_IsDeviceActive
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 286 0
	ldr	r3, .L85
	adds	r2, r7, #7
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 287 0
	movs	r3, #14
	adds	r4, r7, r3
	bl	USB_IsDeviceActive
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 288 0
	ldr	r3, .L85+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L84
	.loc 1 288 0 discriminator 1
	movs	r3, #15
	adds	r2, r7, r3
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	beq	.L84
	.loc 1 289 0
	ldr	r3, .L85+4
	ldr	r3, [r3]
	movs	r2, #14
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r0, r2
	blx	r3
.L84:
.LBE6:
	.loc 1 291 0
	nop
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L86:
	.align	2
.L85:
	.word	USBDeviceState
	.word	USB_OnDeviceActive
	.cfi_endproc
.LFE13:
	.size	USB_SetDeviceState, .-USB_SetDeviceState
	.section	.text.USB_GetDeviceState,"ax",%progbits
	.align	2
	.global	USB_GetDeviceState
	.code	16
	.thumb_func
	.type	USB_GetDeviceState, %function
USB_GetDeviceState:
.LFB14:
	.loc 1 294 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 295 0
	ldr	r3, .L89
	ldrb	r3, [r3]
	.loc 1 296 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L90:
	.align	2
.L89:
	.word	USBDeviceState
	.cfi_endproc
.LFE14:
	.size	USB_GetDeviceState, .-USB_GetDeviceState
	.section	.text.USB_IsDeviceActive,"ax",%progbits
	.align	2
	.global	USB_IsDeviceActive
	.code	16
	.thumb_func
	.type	USB_IsDeviceActive, %function
USB_IsDeviceActive:
.LFB15:
	.loc 1 299 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 300 0
	ldr	r3, .L93
	ldrb	r3, [r3]
	subs	r3, r3, #3
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 301 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L94:
	.align	2
.L93:
	.word	USBDeviceState
	.cfi_endproc
.LFE15:
	.size	USB_IsDeviceActive, .-USB_IsDeviceActive
	.section	.text.USB_SetOnStateChangeHandler,"ax",%progbits
	.align	2
	.global	USB_SetOnStateChangeHandler
	.code	16
	.thumb_func
	.type	USB_SetOnStateChangeHandler, %function
USB_SetOnStateChangeHandler:
.LFB16:
	.loc 1 304 0
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
	.loc 1 306 0
	ldr	r3, .L96
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 1 308 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L97:
	.align	2
.L96:
	.word	USB_OnDeviceActive
	.cfi_endproc
.LFE16:
	.size	USB_SetOnStateChangeHandler, .-USB_SetOnStateChangeHandler
	.section	.text.USB_SetupEndpoint,"ax",%progbits
	.align	2
	.global	USB_SetupEndpoint
	.code	16
	.thumb_func
	.type	USB_SetupEndpoint, %function
USB_SetupEndpoint:
.LFB17:
	.loc 1 311 0
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
	str	r1, [r7]
	movs	r1, r2
	adds	r3, r7, #7
	adds	r2, r0, #0
	strb	r2, [r3]
	adds	r3, r7, #6
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 312 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #128
	strb	r2, [r3]
	.loc 1 314 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L99
	.loc 1 314 0 is_stmt 0 discriminator 2
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L100
.L99:
	.loc 1 314 0 is_stmt 1 discriminator 3
	movs	r3, #0
	b	.L101
.L100:
.LBB7:
	.loc 1 316 0
	movs	r3, #14
	adds	r3, r7, r3
	adds	r2, r7, #6
	ldrb	r2, [r2]
	strb	r2, [r3]
	adds	r3, r7, #7
	ldrb	r2, [r3]
	movs	r3, #13
	adds	r3, r7, r3
	ldr	r1, .L113
	ldrb	r2, [r1, r2]
	strb	r2, [r3]
	movs	r3, #13
	adds	r3, r7, r3
	movs	r2, #14
	adds	r2, r7, r2
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	lsls	r1, r3, #24
	lsrs	r0, r1, #24
	lsls	r1, r2, #24
	lsrs	r1, r1, #24
	cmp	r0, r1
	bls	.L102
	adds	r3, r2, #0
.L102:
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
.LBE7:
	adds	r3, r7, #6
	strb	r2, [r3]
	.loc 1 318 0
	ldr	r2, .L113+4
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #4
	bls	.L103
	.loc 1 318 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	subs	r3, r3, #4
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L104
.L103:
	.loc 1 318 0 discriminator 2
	adds	r3, r7, #7
	ldrb	r3, [r3]
.L104:
	.loc 1 318 0 discriminator 4
	strb	r3, [r2]
	.loc 1 319 0 is_stmt 1 discriminator 4
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L105
	.loc 1 321 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #4
	bhi	.L106
	.loc 1 323 0
	ldr	r3, .L113+8
	movs	r2, #64
	strb	r2, [r3]
	.loc 1 324 0
	ldr	r3, .L113+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L107
	.loc 1 324 0 is_stmt 0 discriminator 1
	ldr	r3, .L113+8
	movs	r2, #136
	strb	r2, [r3]
.L107:
	.loc 1 325 0 is_stmt 1
	ldr	r3, .L113+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L108
	.loc 1 325 0 is_stmt 0 discriminator 1
	ldr	r3, .L113+8
	movs	r2, #136
	strb	r2, [r3]
.L108:
	.loc 1 326 0 is_stmt 1
	ldr	r2, .L113+8
	ldr	r3, .L113+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r1, #127
	ands	r3, r1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r2]
	.loc 1 327 0
	ldr	r2, .L113+12
	adds	r3, r7, #6
	ldrb	r3, [r3]
	strb	r3, [r2]
	b	.L105
.L106:
	.loc 1 329 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #5
	beq	.L109
	.loc 1 329 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bne	.L110
.L109:
	.loc 1 331 0 is_stmt 1
	ldr	r3, .L113+16
	movs	r2, #128
	strb	r2, [r3]
	.loc 1 332 0
	ldr	r3, .L113+16
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L111
	.loc 1 332 0 is_stmt 0 discriminator 1
	ldr	r3, .L113+16
	movs	r2, #16
	strb	r2, [r3]
.L111:
	.loc 1 333 0 is_stmt 1
	ldr	r3, .L113+16
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L112
	.loc 1 333 0 is_stmt 0 discriminator 1
	ldr	r3, .L113+16
	movs	r2, #16
	strb	r2, [r3]
.L112:
	.loc 1 334 0 is_stmt 1
	ldr	r2, .L113+20
	adds	r3, r7, #6
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 335 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	b	.L105
.L110:
	.loc 1 337 0
	movs	r3, #0
	b	.L101
.L105:
	.loc 1 340 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, .L113+24
	adds	r3, r3, r2
	movs	r2, #24
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 342 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L113+24
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #1
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 343 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L113+24
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	strb	r2, [r3, r1]
	.loc 1 344 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L113+24
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #20
	ldr	r2, [r7]
	str	r2, [r3]
	.loc 1 345 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	adds	r3, r7, #6
	ldrb	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r0, r3, #16
	ldr	r1, .L113+24
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #4
	adds	r2, r0, #0
	strh	r2, [r3]
	.loc 1 346 0
	movs	r3, #1
.L101:
	.loc 1 347 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L114:
	.align	2
.L113:
	.word	EPFIFOSize
	.word	-1601175538
	.word	-1601175535
	.word	-1601175536
	.word	-1601175532
	.word	-1601175533
	.word	EPState
	.cfi_endproc
.LFE17:
	.size	USB_SetupEndpoint, .-USB_SetupEndpoint
	.section	.text.USB_SetEndpointEnabled,"ax",%progbits
	.align	2
	.global	USB_SetEndpointEnabled
	.code	16
	.thumb_func
	.type	USB_SetEndpointEnabled, %function
USB_SetEndpointEnabled:
.LFB18:
	.loc 1 350 0
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
	.loc 1 353 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L116
	.loc 1 353 0 is_stmt 0 discriminator 2
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L132
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L117
.L116:
	.loc 1 353 0 is_stmt 1 discriminator 3
	movs	r3, #0
	b	.L118
.L117:
	.loc 1 355 0
	ldr	r1, .L132+4
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #4
	bls	.L119
	.loc 1 355 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	subs	r3, r3, #4
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L120
.L119:
	.loc 1 355 0 discriminator 2
	adds	r3, r7, #7
	ldrb	r3, [r3]
.L120:
	.loc 1 355 0 discriminator 4
	movs	r2, #15
	adds	r2, r7, r2
	strb	r3, [r2]
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	strb	r3, [r1]
	.loc 1 356 0 is_stmt 1 discriminator 4
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L132
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldrb	r3, [r3, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L121
	.loc 1 358 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L122
	.loc 1 360 0
	ldr	r3, .L132+8
	movs	r2, #64
	strb	r2, [r3]
	.loc 1 361 0
	ldr	r3, .L132+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L123
	.loc 1 361 0 is_stmt 0 discriminator 1
	ldr	r3, .L132+8
	movs	r2, #136
	strb	r2, [r3]
.L123:
	.loc 1 362 0 is_stmt 1
	ldr	r3, .L132+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L124
	.loc 1 362 0 is_stmt 0 discriminator 1
	ldr	r3, .L132+8
	movs	r2, #136
	strb	r2, [r3]
.L124:
	.loc 1 363 0 is_stmt 1
	ldr	r2, .L132+8
	ldr	r3, .L132+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r1, #127
	ands	r3, r1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r2]
	.loc 1 364 0
	ldr	r3, .L132+12
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 365 0
	ldr	r1, .L132+16
	ldr	r3, .L132+16
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	lsls	r3, r3, #24
	asrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r0, #1
	lsls	r0, r0, r3
	movs	r3, r0
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	orrs	r3, r2
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1]
	b	.L125
.L122:
	.loc 1 369 0
	ldr	r1, .L132+16
	ldr	r3, .L132+16
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r0, #1
	lsls	r0, r0, r2
	movs	r2, r0
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	mvns	r2, r2
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	ands	r3, r2
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1]
	.loc 1 370 0
	ldr	r3, .L132+12
	movs	r2, #0
	strb	r2, [r3]
.L125:
	.loc 1 372 0
	movs	r3, #1
	b	.L118
.L121:
	.loc 1 374 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #5
	beq	.L126
	.loc 1 374 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bne	.L127
.L126:
	.loc 1 376 0 is_stmt 1
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L128
	.loc 1 378 0
	ldr	r3, .L132+20
	movs	r2, #128
	strb	r2, [r3]
	.loc 1 379 0
	ldr	r3, .L132+20
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L129
	.loc 1 379 0 is_stmt 0 discriminator 1
	ldr	r3, .L132+20
	movs	r2, #16
	strb	r2, [r3]
.L129:
	.loc 1 380 0 is_stmt 1
	ldr	r3, .L132+20
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L130
	.loc 1 380 0 is_stmt 0 discriminator 1
	ldr	r3, .L132+20
	movs	r2, #16
	strb	r2, [r3]
.L130:
	.loc 1 381 0 is_stmt 1
	ldr	r3, .L132+24
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 382 0
	ldr	r1, .L132+28
	ldr	r3, .L132+28
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	lsls	r3, r3, #24
	asrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r0, #1
	lsls	r0, r0, r3
	movs	r3, r0
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	orrs	r3, r2
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1]
	b	.L131
.L128:
	.loc 1 386 0
	ldr	r1, .L132+28
	ldr	r3, .L132+28
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r0, #1
	lsls	r0, r0, r2
	movs	r2, r0
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	mvns	r2, r2
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	ands	r3, r2
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1]
	.loc 1 387 0
	ldr	r3, .L132+24
	movs	r2, #0
	strb	r2, [r3]
.L131:
	.loc 1 389 0
	movs	r3, #1
	b	.L118
.L127:
	.loc 1 391 0
	movs	r3, #0
.L118:
	.loc 1 392 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L133:
	.align	2
.L132:
	.word	EPState
	.word	-1601175538
	.word	-1601175535
	.word	-1601175534
	.word	-1601175545
	.word	-1601175532
	.word	-1601175531
	.word	-1601175543
	.cfi_endproc
.LFE18:
	.size	USB_SetEndpointEnabled, .-USB_SetEndpointEnabled
	.section	.text.USB_GetOUTDataLength,"ax",%progbits
	.align	2
	.global	USB_GetOUTDataLength
	.code	16
	.thumb_func
	.type	USB_GetOUTDataLength, %function
USB_GetOUTDataLength:
.LFB19:
	.loc 1 395 0
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
	.loc 1 396 0
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 399 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L135
	.loc 1 401 0
	ldr	r2, .L140
	adds	r3, r7, #7
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 402 0
	ldr	r2, .L140+4
	movs	r3, #19
	adds	r3, r7, r3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 403 0
	movs	r3, #19
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	beq	.L137
	.loc 1 403 0 is_stmt 0 discriminator 1
	ldr	r3, .L140+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	str	r3, [r7, #20]
	b	.L137
.L135:
	.loc 1 405 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #5
	beq	.L138
	.loc 1 405 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bne	.L137
.L138:
.LBB8:
	.loc 1 407 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	subs	r3, r3, #4
	str	r3, [r7, #12]
	.loc 1 409 0
	ldr	r2, .L140
	ldr	r3, [r7, #12]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r2]
	.loc 1 410 0
	ldr	r2, .L140+12
	movs	r3, #19
	adds	r3, r7, r3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 411 0
	movs	r3, #19
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	beq	.L137
	.loc 1 411 0 is_stmt 0 discriminator 1
	ldr	r3, .L140+16
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #7
	ands	r3, r2
	lsls	r3, r3, #8
	ldr	r2, .L140+8
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	orrs	r3, r2
	str	r3, [r7, #20]
.L137:
.LBE8:
	.loc 1 413 0 is_stmt 1
	ldr	r3, [r7, #20]
	.loc 1 414 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L141:
	.align	2
.L140:
	.word	-1601175538
	.word	-1601175535
	.word	-1601175530
	.word	-1601175532
	.word	-1601175529
	.cfi_endproc
.LFE19:
	.size	USB_GetOUTDataLength, .-USB_GetOUTDataLength
	.section	.text.USB_UpdateEPState,"ax",%progbits
	.align	2
	.global	USB_UpdateEPState
	.code	16
	.thumb_func
	.type	USB_UpdateEPState, %function
USB_UpdateEPState:
.LFB20:
	.loc 1 417 0
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
	.loc 1 420 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L143
	.loc 1 422 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bmi	.L144
	.loc 1 422 0 is_stmt 0 discriminator 1
	movs	r2, #64
	b	.L145
.L144:
	.loc 1 422 0 discriminator 2
	movs	r2, #2
.L145:
	.loc 1 422 0 discriminator 4
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 424 0 is_stmt 1 discriminator 4
	ldr	r2, .L158
	adds	r3, r7, #7
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 425 0 discriminator 4
	adds	r3, r7, #5
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L146
	.loc 1 425 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r1, #32
	orrs	r2, r1
	strb	r2, [r3]
.L146:
	.loc 1 426 0 is_stmt 1
	adds	r3, r7, #4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L147
	.loc 1 426 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r1, #8
	orrs	r2, r1
	strb	r2, [r3]
.L147:
	.loc 1 428 0 is_stmt 1
	ldr	r2, .L158+4
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 450 0
	b	.L157
.L143:
	.loc 1 430 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L157
	.loc 1 432 0
	ldr	r2, .L158
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #4
	bls	.L149
	.loc 1 432 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	subs	r3, r3, #4
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L150
.L149:
	.loc 1 432 0 discriminator 2
	adds	r3, r7, #7
	ldrb	r3, [r3]
.L150:
	.loc 1 432 0 discriminator 4
	strb	r3, [r2]
	.loc 1 433 0 is_stmt 1 discriminator 4
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L158+8
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldrb	r3, [r3, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L151
	.loc 1 435 0
	ldr	r2, .L158+4
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 436 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L152
	.loc 1 436 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r1, #1
	orrs	r2, r1
	strb	r2, [r3]
.L152:
	.loc 1 437 0 is_stmt 1
	adds	r3, r7, #5
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L153
	.loc 1 437 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r1, #16
	orrs	r2, r1
	strb	r2, [r3]
.L153:
	.loc 1 439 0 is_stmt 1
	ldr	r2, .L158+4
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 450 0
	b	.L157
.L151:
	.loc 1 441 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #5
	beq	.L154
	.loc 1 441 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bne	.L157
.L154:
	.loc 1 443 0 is_stmt 1
	ldr	r2, .L158+12
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 444 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bmi	.L155
	.loc 1 444 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r1, #1
	bics	r2, r1
	strb	r2, [r3]
.L155:
	.loc 1 445 0 is_stmt 1
	adds	r3, r7, #5
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L156
	.loc 1 445 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r1, #16
	orrs	r2, r1
	strb	r2, [r3]
.L156:
	.loc 1 447 0 is_stmt 1
	ldr	r2, .L158+12
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	strb	r3, [r2]
.L157:
	.loc 1 450 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r7, pc}
.L159:
	.align	2
.L158:
	.word	-1601175538
	.word	-1601175535
	.word	EPState
	.word	-1601175532
	.cfi_endproc
.LFE20:
	.size	USB_UpdateEPState, .-USB_UpdateEPState
	.section	.text.USB_ControlEPStall,"ax",%progbits
	.align	2
	.global	USB_ControlEPStall
	.code	16
	.thumb_func
	.type	USB_ControlEPStall, %function
USB_ControlEPStall:
.LFB21:
	.loc 1 453 0
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
	.loc 1 456 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.LCB2378
	b	.L179	@long jump
.LCB2378:
	.loc 1 458 0
	ldr	r2, .L180
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #4
	bls	.L163
	.loc 1 458 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	subs	r3, r3, #4
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L164
.L163:
	.loc 1 458 0 discriminator 2
	adds	r3, r7, #7
	ldrb	r3, [r3]
.L164:
	.loc 1 458 0 discriminator 4
	strb	r3, [r2]
	.loc 1 459 0 is_stmt 1 discriminator 4
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.LCB2401
	b	.L165	@long jump
.LCB2401:
	.loc 1 461 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L180+4
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldrb	r3, [r3, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L166
	.loc 1 463 0
	ldr	r2, .L180+8
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 464 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r1, #16
	orrs	r2, r1
	strb	r2, [r3]
	.loc 1 465 0
	ldr	r2, .L180+8
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 466 0
	ldr	r3, .L180+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L167
	.loc 1 466 0 is_stmt 0 discriminator 1
	ldr	r1, .L180+8
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #120
	rsbs	r2, r2, #0
	orrs	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1]
.L167:
	.loc 1 467 0 is_stmt 1
	ldr	r3, .L180+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L168
	.loc 1 467 0 is_stmt 0 discriminator 1
	ldr	r1, .L180+8
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #120
	rsbs	r2, r2, #0
	orrs	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1]
.L168:
	.loc 1 468 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L180+4
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #2
	movs	r2, #0
	strb	r2, [r3]
	b	.L160
.L166:
	.loc 1 470 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #5
	beq	.L170
	.loc 1 470 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	beq	.LCB2496
	b	.L160	@long jump
.LCB2496:
.L170:
	.loc 1 472 0 is_stmt 1
	ldr	r2, .L180+12
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 473 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r1, #32
	orrs	r2, r1
	strb	r2, [r3]
	.loc 1 474 0
	ldr	r2, .L180+12
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 475 0
	ldr	r3, .L180+12
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L171
	.loc 1 475 0 is_stmt 0 discriminator 1
	ldr	r2, .L180+12
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, #16
	orrs	r3, r1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r2]
.L171:
	.loc 1 476 0 is_stmt 1
	ldr	r3, .L180+12
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L172
	.loc 1 476 0 is_stmt 0 discriminator 1
	ldr	r2, .L180+12
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, #16
	orrs	r3, r1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r2]
.L172:
	.loc 1 477 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L180+4
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #2
	movs	r2, #0
	strb	r2, [r3]
	b	.L160
.L165:
	.loc 1 482 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L180+4
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldrb	r3, [r3, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L173
	.loc 1 484 0
	ldr	r2, .L180+8
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 485 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r1, #16
	bics	r2, r1
	strb	r2, [r3]
	.loc 1 486 0
	ldr	r2, .L180+8
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 487 0
	ldr	r3, .L180+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L174
	.loc 1 487 0 is_stmt 0 discriminator 1
	ldr	r1, .L180+8
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #120
	rsbs	r2, r2, #0
	orrs	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1]
.L174:
	.loc 1 488 0 is_stmt 1
	ldr	r3, .L180+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L175
	.loc 1 488 0 is_stmt 0 discriminator 1
	ldr	r1, .L180+8
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #120
	rsbs	r2, r2, #0
	orrs	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r1]
.L175:
	.loc 1 489 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L180+4
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #2
	movs	r2, #1
	strb	r2, [r3]
	b	.L160
.L173:
	.loc 1 491 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #5
	beq	.L176
	.loc 1 491 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bne	.L160
.L176:
	.loc 1 493 0 is_stmt 1
	ldr	r2, .L180+12
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 494 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	movs	r1, #32
	bics	r2, r1
	strb	r2, [r3]
	.loc 1 495 0
	ldr	r2, .L180+12
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	strb	r3, [r2]
	.loc 1 496 0
	ldr	r3, .L180+12
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L177
	.loc 1 496 0 is_stmt 0 discriminator 1
	ldr	r2, .L180+12
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, #16
	orrs	r3, r1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r2]
.L177:
	.loc 1 497 0 is_stmt 1
	ldr	r3, .L180+12
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L178
	.loc 1 497 0 is_stmt 0 discriminator 1
	ldr	r2, .L180+12
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r1, #16
	orrs	r3, r1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r2]
.L178:
	.loc 1 498 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L180+4
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #2
	movs	r2, #1
	strb	r2, [r3]
	b	.L160
.L179:
	.loc 1 456 0
	nop
.L160:
	.loc 1 501 0
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L181:
	.align	2
.L180:
	.word	-1601175538
	.word	EPState
	.word	-1601175535
	.word	-1601175532
	.cfi_endproc
.LFE21:
	.size	USB_ControlEPStall, .-USB_ControlEPStall
	.section	.text.USB_PrepareDataReceive,"ax",%progbits
	.align	2
	.global	USB_PrepareDataReceive
	.code	16
	.thumb_func
	.type	USB_PrepareDataReceive, %function
USB_PrepareDataReceive:
.LFB22:
	.loc 1 504 0
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
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 505 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L187
	.loc 1 505 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L184
	.loc 1 506 0 is_stmt 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L188
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldrb	r3, [r3, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bmi	.L187
.L184:
	.loc 1 508 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L188
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #8
	ldr	r2, [r7, #8]
	str	r2, [r3]
	.loc 1 509 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L188
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #12
	ldr	r2, [r7, #8]
	str	r2, [r3]
	.loc 1 510 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L188
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #16
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 1 511 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	.loc 1 511 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L185
	.loc 1 511 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L185
	.loc 1 511 0 discriminator 3
	movs	r3, #1
	b	.L186
.L185:
	.loc 1 511 0 discriminator 4
	movs	r3, #0
.L186:
	.loc 1 511 0 is_stmt 1 discriminator 6
	lsls	r3, r3, #24
	lsrs	r0, r3, #24
	ldr	r1, .L188
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #1
	adds	r2, r0, #0
	strb	r2, [r3]
.L187:
	.loc 1 513 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L189:
	.align	2
.L188:
	.word	EPState
	.cfi_endproc
.LFE22:
	.size	USB_PrepareDataReceive, .-USB_PrepareDataReceive
	.section	.text.USB_DataReceive,"ax",%progbits
	.align	2
	.global	USB_DataReceive
	.code	16
	.thumb_func
	.type	USB_DataReceive, %function
USB_DataReceive:
.LFB23:
	.loc 1 516 0
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
	movs	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 517 0
	movs	r3, #39
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 519 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bls	.LCB2909
	b	.L191	@long jump
.LCB2909:
	.loc 1 519 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L192
	.loc 1 520 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L197
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldrb	r3, [r3, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bmi	.L191
.L192:
	.loc 1 521 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L197
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #8
	ldr	r3, [r3]
	.loc 1 520 0 discriminator 1
	cmp	r3, #0
	beq	.L191
	.loc 1 521 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L197
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L191
.LBB9:
	.loc 1 523 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, .L197
	adds	r3, r3, r2
	str	r3, [r7, #28]
	.loc 1 524 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r0, r3
	bl	USB_GetOUTDataLength
	movs	r3, r0
	str	r3, [r7, #32]
	.loc 1 525 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	movs	r2, r3
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	.loc 1 527 0
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #4]
	movs	r2, r3
	ldr	r3, [r7, #32]
	cmp	r3, r2
	sbcs	r3, r3, r3
	rsbs	r3, r3, #0
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #39
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 529 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L193
.LBB10:
.LBB11:
	.loc 1 531 0
	ldr	r3, [r7, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, r2
	bls	.L194
	movs	r3, r2
.L194:
.LBE11:
	str	r3, [r7, #12]
	.loc 1 533 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #12]
	ldr	r1, [r7, #12]
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r0, r3
	bl	USB_EPFIFORead
	.loc 1 534 0
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	adds	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #12]
	.loc 1 535 0
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	str	r3, [r7, #32]
.L193:
.LBE10:
	.loc 1 537 0
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L195
	.loc 1 537 0 is_stmt 0 discriminator 1
	ldr	r1, [r7, #32]
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r2, #0
	movs	r0, r3
	bl	USB_EPFIFORead
.L195:
	.loc 1 539 0 is_stmt 1
	movs	r3, #39
	adds	r3, r7, r3
	ldrb	r2, [r3]
	adds	r3, r7, #7
	ldrb	r0, [r3]
	movs	r3, r2
	movs	r2, #0
	movs	r1, #0
	bl	USB_UpdateEPState
.L191:
.LBE9:
	.loc 1 541 0
	movs	r3, #39
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 542 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #40
	@ sp needed
	pop	{r7, pc}
.L198:
	.align	2
.L197:
	.word	EPState
	.cfi_endproc
.LFE23:
	.size	USB_DataReceive, .-USB_DataReceive
	.section	.text.USB_PrepareDataTransmit,"ax",%progbits
	.align	2
	.global	USB_PrepareDataTransmit
	.code	16
	.thumb_func
	.type	USB_PrepareDataTransmit, %function
USB_PrepareDataTransmit:
.LFB24:
	.loc 1 545 0
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
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 546 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L204
	.loc 1 546 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L201
	.loc 1 547 0 is_stmt 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L205
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldrb	r3, [r3, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L204
.L201:
	.loc 1 549 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L205
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #8
	ldr	r2, [r7, #8]
	str	r2, [r3]
	.loc 1 550 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L205
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #12
	ldr	r2, [r7, #8]
	str	r2, [r3]
	.loc 1 551 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L205
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #16
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 1 552 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L202
	.loc 1 552 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L202
	.loc 1 552 0 discriminator 3
	movs	r0, #2
	b	.L203
.L202:
	.loc 1 552 0 is_stmt 0 discriminator 4
	movs	r0, #0
.L203:
	.loc 1 552 0 discriminator 6
	ldr	r1, .L205
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #1
	adds	r2, r0, #0
	strb	r2, [r3]
.L204:
	.loc 1 554 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L206:
	.align	2
.L205:
	.word	EPState
	.cfi_endproc
.LFE24:
	.size	USB_PrepareDataTransmit, .-USB_PrepareDataTransmit
	.section	.text.USB_DataTransmit,"ax",%progbits
	.align	2
	.global	USB_DataTransmit
	.code	16
	.thumb_func
	.type	USB_DataTransmit, %function
USB_DataTransmit:
.LFB25:
	.loc 1 557 0
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
	movs	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 558 0
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 560 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L208
	.loc 1 560 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L209
	.loc 1 561 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L213
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldrb	r3, [r3, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L208
.L209:
.LBB12:
	.loc 1 563 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, .L213
	adds	r3, r3, r2
	str	r3, [r7, #24]
.LBB13:
	.loc 1 564 0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
	movs	r3, #18
	adds	r3, r7, r3
	ldr	r2, [r7, #24]
	ldrh	r2, [r2, #4]
	strh	r2, [r3]
	movs	r3, #18
	adds	r3, r7, r3
	ldrh	r3, [r3]
	ldr	r2, [r7, #20]
	cmp	r3, r2
	bls	.L210
	movs	r3, r2
.L210:
.LBE13:
	str	r3, [r7, #12]
	.loc 1 566 0
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #4]
	movs	r2, r3
	ldr	r3, [r7, #12]
	cmp	r3, r2
	sbcs	r3, r3, r3
	rsbs	r3, r3, #0
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #31
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 567 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L211
	.loc 1 567 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L211
	.loc 1 569 0 is_stmt 1
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #12]
	ldr	r1, [r7, #12]
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r0, r3
	bl	USB_EPFIFOWrite
	.loc 1 571 0
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	subs	r2, r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #16]
	.loc 1 572 0
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	adds	r2, r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #12]
.L211:
	.loc 1 574 0
	movs	r3, #31
	adds	r3, r7, r3
	ldrb	r2, [r3]
	adds	r3, r7, #7
	ldrb	r0, [r3]
	movs	r3, r2
	movs	r2, #0
	movs	r1, #128
	bl	USB_UpdateEPState
.L208:
.LBE12:
	.loc 1 576 0
	movs	r3, #31
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 577 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
.L214:
	.align	2
.L213:
	.word	EPState
	.cfi_endproc
.LFE25:
	.size	USB_DataTransmit, .-USB_DataTransmit
	.section	.text.USB_GetDataAmount,"ax",%progbits
	.align	2
	.global	USB_GetDataAmount
	.code	16
	.thumb_func
	.type	USB_GetDataAmount, %function
USB_GetDataAmount:
.LFB26:
	.loc 1 580 0
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
	.loc 1 581 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L216
	.loc 1 582 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L218
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #8
	ldr	r3, [r3]
	.loc 1 581 0 discriminator 1
	cmp	r3, #0
	beq	.L216
	.loc 1 582 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L218
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L216
	.loc 1 583 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L218
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #12
	ldr	r3, [r3]
	movs	r0, r3
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L218
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #8
	ldr	r3, [r3]
	.loc 1 582 0 discriminator 1
	cmp	r0, r3
	bls	.L216
	.loc 1 585 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L218
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #12
	ldr	r3, [r3]
	movs	r0, r3
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L218
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #8
	ldr	r3, [r3]
	subs	r3, r0, r3
	b	.L217
.L216:
	.loc 1 587 0
	movs	r3, #0
.L217:
	.loc 1 588 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L219:
	.align	2
.L218:
	.word	EPState
	.cfi_endproc
.LFE26:
	.size	USB_GetDataAmount, .-USB_GetDataAmount
	.section	.text.USB_GetEPStage,"ax",%progbits
	.align	2
	.global	USB_GetEPStage
	.code	16
	.thumb_func
	.type	USB_GetEPStage, %function
USB_GetEPStage:
.LFB27:
	.loc 1 591 0
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
	.loc 1 592 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 593 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L221
	.loc 1 593 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L224
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #1
	ldrb	r2, [r3]
	b	.L222
.L221:
	.loc 1 593 0 discriminator 2
	movs	r2, #0
.L222:
	.loc 1 593 0 discriminator 4
	movs	r3, #11
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 595 0 is_stmt 1 discriminator 4
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 597 0 discriminator 4
	movs	r3, #11
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 598 0 discriminator 4
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L225:
	.align	2
.L224:
	.word	EPState
	.cfi_endproc
.LFE27:
	.size	USB_GetEPStage, .-USB_GetEPStage
	.section	.text.USB_SetEPStage,"ax",%progbits
	.align	2
	.global	USB_SetEPStage
	.code	16
	.thumb_func
	.type	USB_SetEPStage, %function
USB_SetEPStage:
.LFB28:
	.loc 1 601 0
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
	.loc 1 602 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #6
	bhi	.L227
	.loc 1 602 0 is_stmt 0 discriminator 1
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #2
	bhi	.L227
.LBB14:
	.loc 1 604 0 is_stmt 1
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 606 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L229
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #1
	adds	r2, r7, #6
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 607 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 608 0
	movs	r3, #1
	b	.L228
.L227:
.LBE14:
	.loc 1 610 0
	movs	r3, #0
.L228:
	.loc 1 611 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L230:
	.align	2
.L229:
	.word	EPState
	.cfi_endproc
.LFE28:
	.size	USB_SetEPStage, .-USB_SetEPStage
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\lock.h"
	.file 5 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_types.h"
	.file 6 "d:\\1.11\\share\\em_armgcc\\lib\\gcc\\arm-none-eabi\\5.4.1\\include\\stddef.h"
	.file 7 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\reent.h"
	.file 8 ".\\Source/systypes.h"
	.file 9 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 10 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 11 ".\\Source\\Lib\\USB/usb9.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x12e5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF242
	.byte	0xc
	.4byte	.LASF243
	.4byte	.LASF244
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
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x72
	.4byte	0x57
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x165
	.4byte	0x90
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.4byte	0x116
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0xa8
	.4byte	0xeb
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x5
	.byte	0xa9
	.4byte	0x116
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x126
	.uleb128 0x9
	.4byte	0x126
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.4byte	0x14e
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0xa5
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0xaa
	.4byte	0xf7
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0xab
	.4byte	0x12d
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0xaf
	.4byte	0xca
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF29
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0x16
	.4byte	0x69
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x18
	.byte	0x7
	.byte	0x2d
	.4byte	0x1d1
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x7
	.byte	0x2f
	.4byte	0x1d1
	.byte	0
	.uleb128 0xf
	.ascii	"_k\000"
	.byte	0x7
	.byte	0x30
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.byte	0x30
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x30
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0x30
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xf
	.ascii	"_x\000"
	.byte	0x7
	.byte	0x31
	.4byte	0x1d7
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x17e
	.uleb128 0x8
	.4byte	0x173
	.4byte	0x1e7
	.uleb128 0x9
	.4byte	0x126
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x24
	.byte	0x7
	.byte	0x35
	.4byte	0x260
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x7
	.byte	0x37
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x38
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x7
	.byte	0x39
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3a
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x7
	.byte	0x3b
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x7
	.byte	0x3c
	.4byte	0x7e
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x7
	.byte	0x3d
	.4byte	0x7e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x3e
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x3f
	.4byte	0x7e
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF46
	.2byte	0x108
	.byte	0x7
	.byte	0x48
	.4byte	0x2a0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x7
	.byte	0x49
	.4byte	0x2a0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x7
	.byte	0x4a
	.4byte	0x2a0
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x7
	.byte	0x4c
	.4byte	0x173
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x7
	.byte	0x4f
	.4byte	0x173
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x164
	.4byte	0x2b0
	.uleb128 0x9
	.4byte	0x126
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF51
	.2byte	0x190
	.byte	0x7
	.byte	0x5b
	.4byte	0x2ee
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x7
	.byte	0x5c
	.4byte	0x2ee
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x7
	.byte	0x5d
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x7
	.byte	0x5f
	.4byte	0x2f4
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x7
	.byte	0x60
	.4byte	0x260
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2b0
	.uleb128 0x8
	.4byte	0x304
	.4byte	0x304
	.uleb128 0x9
	.4byte	0x126
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30a
	.uleb128 0x12
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x8
	.byte	0x7
	.byte	0x73
	.4byte	0x330
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0x74
	.4byte	0x330
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x75
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x37
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x68
	.byte	0x7
	.byte	0xb3
	.4byte	0x460
	.uleb128 0xf
	.ascii	"_p\000"
	.byte	0x7
	.byte	0xb4
	.4byte	0x330
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
	.4byte	.LASF58
	.byte	0x7
	.byte	0xb7
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x7
	.byte	0xb8
	.4byte	0x3e
	.byte	0xe
	.uleb128 0xf
	.ascii	"_bf\000"
	.byte	0x7
	.byte	0xb9
	.4byte	0x30b
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x7
	.byte	0xba
	.4byte	0x7e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x7
	.byte	0xc1
	.4byte	0x164
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x7
	.byte	0xc3
	.4byte	0x5b6
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x7
	.byte	0xc5
	.4byte	0x5e5
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7
	.byte	0xc8
	.4byte	0x609
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x7
	.byte	0xc9
	.4byte	0x623
	.byte	0x2c
	.uleb128 0xf
	.ascii	"_ub\000"
	.byte	0x7
	.byte	0xcc
	.4byte	0x30b
	.byte	0x30
	.uleb128 0xf
	.ascii	"_up\000"
	.byte	0x7
	.byte	0xcd
	.4byte	0x330
	.byte	0x38
	.uleb128 0xf
	.ascii	"_ur\000"
	.byte	0x7
	.byte	0xce
	.4byte	0x7e
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x7
	.byte	0xd1
	.4byte	0x629
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x7
	.byte	0xd2
	.4byte	0x639
	.byte	0x43
	.uleb128 0xf
	.ascii	"_lb\000"
	.byte	0x7
	.byte	0xd5
	.4byte	0x30b
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x7
	.byte	0xd8
	.4byte	0x7e
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x7
	.byte	0xd9
	.4byte	0xd5
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x7
	.byte	0xdc
	.4byte	0x47e
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x7
	.byte	0xe0
	.4byte	0x159
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x7
	.byte	0xe2
	.4byte	0x14e
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x7
	.byte	0xe3
	.4byte	0x7e
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x47e
	.uleb128 0x14
	.4byte	0x47e
	.uleb128 0x14
	.4byte	0x164
	.uleb128 0x14
	.4byte	0x166
	.uleb128 0x14
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x484
	.uleb128 0x15
	.4byte	.LASF74
	.2byte	0x428
	.byte	0x7
	.2byte	0x238
	.4byte	0x5b6
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x23a
	.4byte	0x7e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x23f
	.4byte	0x690
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x23f
	.4byte	0x690
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x23f
	.4byte	0x690
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x241
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x242
	.4byte	0x872
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x244
	.4byte	0x7e
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x245
	.4byte	0x5da
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x247
	.4byte	0x7e
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x249
	.4byte	0x88d
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x24c
	.4byte	0x1d1
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x24d
	.4byte	0x7e
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x24e
	.4byte	0x1d1
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x24f
	.4byte	0x893
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x252
	.4byte	0x7e
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x253
	.4byte	0x166
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x276
	.4byte	0x850
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x7
	.2byte	0x27a
	.4byte	0x2ee
	.2byte	0x148
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x27b
	.4byte	0x2b0
	.2byte	0x14c
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x27f
	.4byte	0x8a4
	.2byte	0x2dc
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x284
	.4byte	0x655
	.2byte	0x2e0
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x285
	.4byte	0x8b0
	.2byte	0x2ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x460
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x5da
	.uleb128 0x14
	.4byte	0x47e
	.uleb128 0x14
	.4byte	0x164
	.uleb128 0x14
	.4byte	0x5da
	.uleb128 0x14
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e0
	.uleb128 0x18
	.4byte	0x16c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5bc
	.uleb128 0x13
	.4byte	0xe0
	.4byte	0x609
	.uleb128 0x14
	.4byte	0x47e
	.uleb128 0x14
	.4byte	0x164
	.uleb128 0x14
	.4byte	0xe0
	.uleb128 0x14
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5eb
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x623
	.uleb128 0x14
	.4byte	0x47e
	.uleb128 0x14
	.4byte	0x164
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x60f
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x639
	.uleb128 0x9
	.4byte	0x126
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x649
	.uleb128 0x9
	.4byte	0x126
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x11d
	.4byte	0x336
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0xc
	.byte	0x7
	.2byte	0x121
	.4byte	0x68a
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x123
	.4byte	0x68a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x124
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x125
	.4byte	0x690
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x655
	.uleb128 0xd
	.byte	0x4
	.4byte	0x649
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0xe
	.byte	0x7
	.2byte	0x13d
	.4byte	0x6cb
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x13e
	.4byte	0x6cb
	.byte	0
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x13f
	.4byte	0x6cb
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x140
	.4byte	0x50
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x50
	.4byte	0x6db
	.uleb128 0x9
	.4byte	0x126
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd0
	.byte	0x7
	.2byte	0x257
	.4byte	0x7dc
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x259
	.4byte	0x90
	.byte	0
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x25a
	.4byte	0x166
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x25b
	.4byte	0x7dc
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x25c
	.4byte	0x1e7
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x25d
	.4byte	0x7e
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x25e
	.4byte	0x77
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x25f
	.4byte	0x696
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x260
	.4byte	0x14e
	.byte	0x68
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x261
	.4byte	0x14e
	.byte	0x70
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x262
	.4byte	0x14e
	.byte	0x78
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x263
	.4byte	0x7ec
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x264
	.4byte	0x7fc
	.byte	0x88
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x265
	.4byte	0x7e
	.byte	0xa0
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x266
	.4byte	0x14e
	.byte	0xa4
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x267
	.4byte	0x14e
	.byte	0xac
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x268
	.4byte	0x14e
	.byte	0xb4
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x269
	.4byte	0x14e
	.byte	0xbc
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x26a
	.4byte	0x14e
	.byte	0xc4
	.uleb128 0x16
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x26b
	.4byte	0x7e
	.byte	0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0x16c
	.4byte	0x7ec
	.uleb128 0x9
	.4byte	0x126
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x16c
	.4byte	0x7fc
	.uleb128 0x9
	.4byte	0x126
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x16c
	.4byte	0x80c
	.uleb128 0x9
	.4byte	0x126
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0x7
	.2byte	0x270
	.4byte	0x830
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x273
	.4byte	0x830
	.byte	0
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x274
	.4byte	0x840
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x330
	.4byte	0x840
	.uleb128 0x9
	.4byte	0x126
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x90
	.4byte	0x850
	.uleb128 0x9
	.4byte	0x126
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x7
	.2byte	0x255
	.4byte	0x872
	.uleb128 0x1c
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x26c
	.4byte	0x6db
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x275
	.4byte	0x80c
	.byte	0
	.uleb128 0x8
	.4byte	0x16c
	.4byte	0x882
	.uleb128 0x9
	.4byte	0x126
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.4byte	0x88d
	.uleb128 0x14
	.4byte	0x47e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x882
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1d1
	.uleb128 0x1d
	.4byte	0x8a4
	.uleb128 0x14
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8aa
	.uleb128 0xd
	.byte	0x4
	.4byte	0x899
	.uleb128 0x8
	.4byte	0x649
	.4byte	0x8c0
	.uleb128 0x9
	.4byte	0x126
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x37
	.byte	0x8
	.byte	0x1d
	.4byte	0x8d9
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x8
	.byte	0x1d
	.4byte	0x8c0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x97
	.uleb128 0x20
	.4byte	.LASF134
	.byte	0x1
	.4byte	0x37
	.byte	0x9
	.byte	0xf1
	.4byte	0x919
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0x16
	.4byte	0x93c
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0x80
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x80
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0xa
	.byte	0x1b
	.4byte	0x919
	.uleb128 0x20
	.4byte	.LASF140
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0x1d
	.4byte	0x96a
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0xa
	.byte	0x22
	.4byte	0x947
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0x24
	.4byte	0x9bc
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF148
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF149
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF150
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF151
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF153
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0x7
	.byte	0
	.uleb128 0x21
	.ascii	"TEP\000"
	.byte	0xa
	.byte	0x2f
	.4byte	0x975
	.uleb128 0xe
	.4byte	.LASF155
	.byte	0x18
	.byte	0xa
	.byte	0x31
	.4byte	0xa34
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0xa
	.byte	0x33
	.4byte	0x93c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xa
	.byte	0x34
	.4byte	0x96a
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xa
	.byte	0x35
	.4byte	0x8d9
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xa
	.byte	0x36
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xa
	.byte	0x37
	.4byte	0x8e4
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xa
	.byte	0x38
	.4byte	0x8e4
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xa
	.byte	0x39
	.4byte	0xad
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0xa
	.byte	0x3a
	.4byte	0xa3f
	.byte	0x14
	.byte	0
	.uleb128 0x1d
	.4byte	0xa3f
	.uleb128 0x14
	.4byte	0x97
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xa34
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0xa
	.byte	0x3b
	.4byte	0x9c7
	.uleb128 0x3
	.4byte	.LASF165
	.byte	0xa
	.byte	0x3b
	.4byte	0xa5b
	.uleb128 0xd
	.byte	0x4
	.4byte	0x9c7
	.uleb128 0x20
	.4byte	.LASF166
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0x3d
	.4byte	0xa8a
	.uleb128 0x1f
	.4byte	.LASF167
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF168
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF169
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF170
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0xa
	.byte	0x43
	.4byte	0xa61
	.uleb128 0xe
	.4byte	.LASF172
	.byte	0x8
	.byte	0xb
	.byte	0x70
	.4byte	0xade
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xb
	.byte	0x72
	.4byte	0x97
	.byte	0
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0xb
	.byte	0x73
	.4byte	0x97
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0xb
	.byte	0x74
	.4byte	0xa2
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0xb
	.byte	0x75
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0xb
	.byte	0x76
	.4byte	0xa2
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0xb
	.byte	0x77
	.4byte	0xa95
	.uleb128 0x18
	.4byte	0x97
	.uleb128 0x22
	.4byte	.LASF182
	.byte	0x1
	.byte	0x29
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3c
	.uleb128 0x23
	.4byte	.LASF179
	.byte	0x1
	.byte	0x29
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x23
	.4byte	.LASF180
	.byte	0x1
	.byte	0x29
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.4byte	.LASF181
	.byte	0x1
	.byte	0x29
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.4byte	.LASF184
	.byte	0x1
	.byte	0x2b
	.4byte	0x8e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x22
	.4byte	.LASF183
	.byte	0x1
	.byte	0x35
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8a
	.uleb128 0x23
	.4byte	.LASF179
	.byte	0x1
	.byte	0x35
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x23
	.4byte	.LASF180
	.byte	0x1
	.byte	0x35
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.4byte	.LASF181
	.byte	0x1
	.byte	0x35
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.4byte	.LASF185
	.byte	0x1
	.byte	0x37
	.4byte	0x8e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x25
	.4byte	.LASF186
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc6
	.uleb128 0x23
	.4byte	.LASF187
	.byte	0x1
	.byte	0x3f
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x26
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x24
	.4byte	.LASF180
	.byte	0x1
	.byte	0x43
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF245
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF246
	.byte	0x1
	.byte	0x77
	.4byte	0x8d9
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1b
	.uleb128 0x23
	.4byte	.LASF188
	.byte	0x1
	.byte	0x77
	.4byte	0x8e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LASF189
	.byte	0x1
	.byte	0x77
	.4byte	0x8e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LASF190
	.byte	0x1
	.byte	0x77
	.4byte	0x8e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF191
	.byte	0x1
	.byte	0x80
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc5b
	.uleb128 0x23
	.4byte	.LASF187
	.byte	0x1
	.byte	0x80
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x24
	.4byte	.LASF192
	.byte	0x1
	.byte	0x82
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x24
	.4byte	.LASF193
	.byte	0x1
	.byte	0x83
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x25
	.4byte	.LASF194
	.byte	0x1
	.byte	0x98
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcbf
	.uleb128 0x24
	.4byte	.LASF195
	.byte	0x1
	.byte	0x9a
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x24
	.4byte	.LASF196
	.byte	0x1
	.byte	0x9a
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.4byte	.LASF197
	.byte	0x1
	.byte	0x9a
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.byte	0x9b
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x26
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x24
	.4byte	.LASF192
	.byte	0x1
	.byte	0xae
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF200
	.byte	0x1
	.byte	0xc7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF198
	.byte	0x1
	.byte	0xd5
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcfd
	.uleb128 0x26
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x29
	.ascii	"_x\000"
	.byte	0x1
	.byte	0xdd
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF199
	.byte	0x1
	.byte	0xf0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2b
	.uleb128 0x26
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2c
	.ascii	"_x\000"
	.byte	0x1
	.2byte	0x105
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x10a
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x111
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd63
	.uleb128 0x2f
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x111
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x117
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb1
	.uleb128 0x2f
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x117
	.4byte	0xa8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x26
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x30
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x11b
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x30
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x11c
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x125
	.4byte	0xa8a
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x12a
	.4byte	0x8d9
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x12f
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe03
	.uleb128 0x2f
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x12f
	.4byte	0xe0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1d
	.4byte	0xe0e
	.uleb128 0x14
	.4byte	0x8d9
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xe03
	.uleb128 0x33
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x136
	.4byte	0x8d9
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe91
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x136
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2f
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x136
	.4byte	0xa3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x136
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x30
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x138
	.4byte	0x93c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x26
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x2c
	.ascii	"_a\000"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x2c
	.ascii	"_b\000"
	.byte	0x1
	.2byte	0x13c
	.4byte	0xae9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x15d
	.4byte	0x8d9
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed9
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x15d
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2f
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x15d
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x30
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x15f
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x34
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x18a
	.4byte	0xad
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3a
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x18a
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x30
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x18c
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x30
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x18d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x26
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x30
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x197
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1a0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf9c
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2f
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x93c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x2f
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x2f
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x32
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x1c4
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe0
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2f
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x30
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x32
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x1f7
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1024
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x1f7
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x203
	.4byte	0x8d9
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d3
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x203
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x30
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x205
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x26
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x30
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x20b
	.4byte	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x20c
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x20d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x30
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x213
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x2c
	.ascii	"_a\000"
	.byte	0x1
	.2byte	0x213
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.ascii	"_b\000"
	.byte	0x1
	.2byte	0x213
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x220
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1117
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x220
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x220
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x220
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x22c
	.4byte	0x8d9
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x119e
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x22c
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x30
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x22e
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x26
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x30
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x233
	.4byte	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x234
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x2c
	.ascii	"_a\000"
	.byte	0x1
	.2byte	0x234
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.ascii	"_b\000"
	.byte	0x1
	.2byte	0x234
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x243
	.4byte	0xad
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11c8
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x243
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x33
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x24e
	.4byte	0x96a
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1210
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x24e
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x30
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x250
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x30
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x251
	.4byte	0x96a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x33
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x258
	.4byte	0x8d9
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1262
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x258
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2f
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x258
	.4byte	0x96a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x26
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x30
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x25c
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF236
	.byte	0x1
	.byte	0x26
	.4byte	0xa8a
	.uleb128 0x5
	.byte	0x3
	.4byte	USBDeviceState
	.uleb128 0x24
	.4byte	.LASF237
	.byte	0x1
	.byte	0x27
	.4byte	0xade
	.uleb128 0x5
	.byte	0x3
	.4byte	SetupBuffer
	.uleb128 0x35
	.4byte	.LASF238
	.byte	0x7
	.2byte	0x2fd
	.4byte	0x47e
	.uleb128 0x8
	.4byte	0xa45
	.4byte	0x12a0
	.uleb128 0x9
	.4byte	0x126
	.byte	0x6
	.byte	0
	.uleb128 0x36
	.4byte	.LASF239
	.byte	0x1
	.byte	0x25
	.4byte	0x1290
	.uleb128 0x5
	.byte	0x3
	.4byte	EPState
	.uleb128 0x8
	.4byte	0xae9
	.4byte	0x12c1
	.uleb128 0x9
	.4byte	0x126
	.byte	0x6
	.byte	0
	.uleb128 0x36
	.4byte	.LASF240
	.byte	0x1
	.byte	0x19
	.4byte	0x12d2
	.uleb128 0x5
	.byte	0x3
	.4byte	EPFIFOSize
	.uleb128 0x18
	.4byte	0x12b1
	.uleb128 0x36
	.4byte	.LASF241
	.byte	0x1
	.byte	0x24
	.4byte	0xe0e
	.uleb128 0x5
	.byte	0x3
	.4byte	USB_OnDeviceActive
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
	.uleb128 0x16
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.4byte	0xf4
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
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
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF147:
	.ascii	"USB_EP1IN\000"
.LASF213:
	.ascii	"Direction\000"
.LASF211:
	.ascii	"Handler\000"
.LASF24:
	.ascii	"sizetype\000"
.LASF161:
	.ascii	"DataPosition\000"
.LASF244:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF26:
	.ascii	"__value\000"
.LASF95:
	.ascii	"__sf\000"
.LASF162:
	.ascii	"DataLength\000"
.LASF195:
	.ascii	"IntFlagsUSB\000"
.LASF62:
	.ascii	"_read\000"
.LASF63:
	.ascii	"_write\000"
.LASF106:
	.ascii	"_asctime_buf\000"
.LASF89:
	.ascii	"_cvtlen\000"
.LASF140:
	.ascii	"tag_EPSTAGE\000"
.LASF135:
	.ascii	"tag_USBDIR\000"
.LASF224:
	.ascii	"MaxDataLength\000"
.LASF179:
	.ascii	"Endpoint\000"
.LASF125:
	.ascii	"_unused\000"
.LASF36:
	.ascii	"__tm\000"
.LASF121:
	.ascii	"_wcsrtombs_state\000"
.LASF67:
	.ascii	"_nbuf\000"
.LASF37:
	.ascii	"__tm_sec\000"
.LASF177:
	.ascii	"wLength\000"
.LASF114:
	.ascii	"_l64a_buf\000"
.LASF246:
	.ascii	"USB_GetInterruptFlags\000"
.LASF191:
	.ascii	"USB_EPDefaultHandler\000"
.LASF217:
	.ascii	"USB_GetOUTDataLength\000"
.LASF160:
	.ascii	"DataBuffer\000"
.LASF71:
	.ascii	"_lock\000"
.LASF102:
	.ascii	"_mult\000"
.LASF170:
	.ascii	"USB_DEVICE_CONFIGURED\000"
.LASF207:
	.ascii	"NowActive\000"
.LASF22:
	.ascii	"__wch\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF59:
	.ascii	"_file\000"
.LASF46:
	.ascii	"_on_exit_args\000"
.LASF185:
	.ascii	"SrcPointer\000"
.LASF165:
	.ascii	"pEPSTATE\000"
.LASF202:
	.ascii	"USB_SetDeviceAddress\000"
.LASF117:
	.ascii	"_mbrlen_state\000"
.LASF6:
	.ascii	"long int\000"
.LASF238:
	.ascii	"_impure_ptr\000"
.LASF86:
	.ascii	"_result_k\000"
.LASF56:
	.ascii	"_size\000"
.LASF107:
	.ascii	"_localtime_buf\000"
.LASF148:
	.ascii	"USB_EP2IN\000"
.LASF242:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF41:
	.ascii	"__tm_mon\000"
.LASF178:
	.ascii	"TUSBSETUP\000"
.LASF145:
	.ascii	"tag_EP\000"
.LASF163:
	.ascii	"EventHandler\000"
.LASF81:
	.ascii	"_current_category\000"
.LASF104:
	.ascii	"_unused_rand\000"
.LASF0:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF212:
	.ascii	"MaxPacketSize\000"
.LASF128:
	.ascii	"boolean\000"
.LASF182:
	.ascii	"USB_EPFIFORead\000"
.LASF219:
	.ascii	"Transaction\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF173:
	.ascii	"bmRequestType\000"
.LASF175:
	.ascii	"wValue\000"
.LASF154:
	.ascii	"USB_EPNUM\000"
.LASF74:
	.ascii	"_reent\000"
.LASF166:
	.ascii	"tag_USBSTATE\000"
.LASF204:
	.ascii	"USB_SetDeviceState\000"
.LASF139:
	.ascii	"TUSBDIR\000"
.LASF233:
	.ascii	"USB_GetEPStage\000"
.LASF29:
	.ascii	"char\000"
.LASF229:
	.ascii	"ReadCount\000"
.LASF53:
	.ascii	"_fns\000"
.LASF65:
	.ascii	"_close\000"
.LASF218:
	.ascii	"USB_UpdateEPState\000"
.LASF157:
	.ascii	"Stage\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF76:
	.ascii	"_stdin\000"
.LASF184:
	.ascii	"DestPointer\000"
.LASF227:
	.ascii	"EPInfo\000"
.LASF137:
	.ascii	"USB_DIR_IN\000"
.LASF232:
	.ascii	"USB_GetDataAmount\000"
.LASF126:
	.ascii	"false\000"
.LASF190:
	.ascii	"IntOUT\000"
.LASF61:
	.ascii	"_cookie\000"
.LASF143:
	.ascii	"EPSTAGE_IN\000"
.LASF152:
	.ascii	"USB_EP1OUT\000"
.LASF34:
	.ascii	"_wds\000"
.LASF93:
	.ascii	"_sig_func\000"
.LASF222:
	.ascii	"USB_ControlEPStall\000"
.LASF69:
	.ascii	"_offset\000"
.LASF90:
	.ascii	"_cvtbuf\000"
.LASF138:
	.ascii	"USB_DIR_MASK\000"
.LASF210:
	.ascii	"USB_SetOnStateChangeHandler\000"
.LASF203:
	.ascii	"Address\000"
.LASF167:
	.ascii	"USB_DEVICE_OFF\000"
.LASF183:
	.ascii	"USB_EPFIFOWrite\000"
.LASF141:
	.ascii	"EPSTAGE_IDLE\000"
.LASF149:
	.ascii	"USB_EP3IN\000"
.LASF220:
	.ascii	"SendStall\000"
.LASF142:
	.ascii	"EPSTAGE_OUT\000"
.LASF196:
	.ascii	"IntFlagsIN\000"
.LASF136:
	.ascii	"USB_DIR_OUT\000"
.LASF87:
	.ascii	"_p5s\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF156:
	.ascii	"EPType\000"
.LASF57:
	.ascii	"__sFILE\000"
.LASF83:
	.ascii	"__sdidinit\000"
.LASF73:
	.ascii	"_flags2\000"
.LASF18:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF75:
	.ascii	"_errno\000"
.LASF115:
	.ascii	"_signal_buf\000"
.LASF16:
	.ascii	"uintptr_t\000"
.LASF144:
	.ascii	"TEPSTAGE\000"
.LASF241:
	.ascii	"USB_OnDeviceActive\000"
.LASF35:
	.ascii	"_Bigint\000"
.LASF155:
	.ascii	"tag_EPSTATE\000"
.LASF32:
	.ascii	"_maxwds\000"
.LASF84:
	.ascii	"__cleanup\000"
.LASF194:
	.ascii	"USB_InterruptHandler\000"
.LASF92:
	.ascii	"_atexit0\000"
.LASF199:
	.ascii	"USB_DisableDevice\000"
.LASF187:
	.ascii	"EPAddress\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF80:
	.ascii	"_emergency\000"
.LASF188:
	.ascii	"IntUSB\000"
.LASF9:
	.ascii	"long long int\000"
.LASF225:
	.ascii	"USB_DataReceive\000"
.LASF98:
	.ascii	"_niobs\000"
.LASF180:
	.ascii	"Count\000"
.LASF94:
	.ascii	"__sglue\000"
.LASF124:
	.ascii	"_nmalloc\000"
.LASF214:
	.ascii	"USB_SetupEndpoint\000"
.LASF108:
	.ascii	"_gamma_signgam\000"
.LASF82:
	.ascii	"_current_locale\000"
.LASF88:
	.ascii	"_freelist\000"
.LASF99:
	.ascii	"_iobs\000"
.LASF97:
	.ascii	"_glue\000"
.LASF215:
	.ascii	"USB_SetEndpointEnabled\000"
.LASF33:
	.ascii	"_sign\000"
.LASF240:
	.ascii	"EPFIFOSize\000"
.LASF245:
	.ascii	"USB_ResetDevice\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF216:
	.ascii	"Enable\000"
.LASF122:
	.ascii	"_h_errno\000"
.LASF186:
	.ascii	"USB_EP0Handler\000"
.LASF158:
	.ascii	"Stalled\000"
.LASF120:
	.ascii	"_wcrtomb_state\000"
.LASF40:
	.ascii	"__tm_mday\000"
.LASF91:
	.ascii	"_new\000"
.LASF66:
	.ascii	"_ubuf\000"
.LASF78:
	.ascii	"_stderr\000"
.LASF113:
	.ascii	"_wctomb_state\000"
.LASF72:
	.ascii	"_mbstate\000"
.LASF109:
	.ascii	"_rand_next\000"
.LASF174:
	.ascii	"bRequest\000"
.LASF58:
	.ascii	"_flags\000"
.LASF201:
	.ascii	"USB_OnCableDisconnect\000"
.LASF226:
	.ascii	"LastPacket\000"
.LASF150:
	.ascii	"USB_EP4IN\000"
.LASF51:
	.ascii	"_atexit\000"
.LASF25:
	.ascii	"__count\000"
.LASF151:
	.ascii	"USB_EPMAXINDEX\000"
.LASF192:
	.ascii	"EPIndex\000"
.LASF189:
	.ascii	"IntIN\000"
.LASF43:
	.ascii	"__tm_wday\000"
.LASF17:
	.ascii	"long double\000"
.LASF208:
	.ascii	"USB_GetDeviceState\000"
.LASF44:
	.ascii	"__tm_yday\000"
.LASF101:
	.ascii	"_seed\000"
.LASF64:
	.ascii	"_seek\000"
.LASF20:
	.ascii	"_fpos_t\000"
.LASF23:
	.ascii	"__wchb\000"
.LASF230:
	.ascii	"USB_PrepareDataTransmit\000"
.LASF112:
	.ascii	"_mbtowc_state\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF193:
	.ascii	"tmpCSR\000"
.LASF176:
	.ascii	"wIndex\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF164:
	.ascii	"TEPSTATE\000"
.LASF48:
	.ascii	"_dso_handle\000"
.LASF100:
	.ascii	"_rand48\000"
.LASF77:
	.ascii	"_stdout\000"
.LASF205:
	.ascii	"State\000"
.LASF228:
	.ascii	"TotalReceived\000"
.LASF243:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\usb.c\000"
.LASF68:
	.ascii	"_blksize\000"
.LASF55:
	.ascii	"_base\000"
.LASF236:
	.ascii	"USBDeviceState\000"
.LASF105:
	.ascii	"_strtok_last\000"
.LASF118:
	.ascii	"_mbrtowc_state\000"
.LASF134:
	.ascii	"tag_VLINDEX\000"
.LASF28:
	.ascii	"_flock_t\000"
.LASF172:
	.ascii	"tag_USBSETUP\000"
.LASF96:
	.ascii	"__FILE\000"
.LASF27:
	.ascii	"_mbstate_t\000"
.LASF110:
	.ascii	"_r48\000"
.LASF21:
	.ascii	"wint_t\000"
.LASF198:
	.ascii	"USB_EnableDevice\000"
.LASF237:
	.ascii	"SetupBuffer\000"
.LASF31:
	.ascii	"_next\000"
.LASF70:
	.ascii	"_data\000"
.LASF11:
	.ascii	"__uintptr_t\000"
.LASF129:
	.ascii	"LCDIF_LAYER0\000"
.LASF130:
	.ascii	"LCDIF_LAYER1\000"
.LASF131:
	.ascii	"LCDIF_LAYER2\000"
.LASF132:
	.ascii	"LCDIF_LAYER3\000"
.LASF235:
	.ascii	"USB_SetEPStage\000"
.LASF221:
	.ascii	"DataEnd\000"
.LASF223:
	.ascii	"USB_PrepareDataReceive\000"
.LASF181:
	.ascii	"Data\000"
.LASF111:
	.ascii	"_mblen_state\000"
.LASF2:
	.ascii	"short int\000"
.LASF49:
	.ascii	"_fntypes\000"
.LASF146:
	.ascii	"USB_EP0\000"
.LASF127:
	.ascii	"true\000"
.LASF42:
	.ascii	"__tm_year\000"
.LASF60:
	.ascii	"_lbfsize\000"
.LASF79:
	.ascii	"_inc\000"
.LASF52:
	.ascii	"_ind\000"
.LASF153:
	.ascii	"USB_EP2OUT\000"
.LASF133:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF54:
	.ascii	"__sbuf\000"
.LASF50:
	.ascii	"_is_cxa\000"
.LASF123:
	.ascii	"_nextf\000"
.LASF209:
	.ascii	"USB_IsDeviceActive\000"
.LASF197:
	.ascii	"IntFlagsOUT\000"
.LASF171:
	.ascii	"TUSBSTATE\000"
.LASF200:
	.ascii	"USB_Initialize\000"
.LASF30:
	.ascii	"__ULong\000"
.LASF159:
	.ascii	"PacketSize\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF85:
	.ascii	"_result\000"
.LASF234:
	.ascii	"intflags\000"
.LASF19:
	.ascii	"_off_t\000"
.LASF103:
	.ascii	"_add\000"
.LASF231:
	.ascii	"USB_DataTransmit\000"
.LASF168:
	.ascii	"USB_DEVICE_IDLE\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF206:
	.ascii	"PrevActive\000"
.LASF39:
	.ascii	"__tm_hour\000"
.LASF119:
	.ascii	"_mbsrtowcs_state\000"
.LASF169:
	.ascii	"USB_DEVICE_ADDRESSED\000"
.LASF47:
	.ascii	"_fnargs\000"
.LASF45:
	.ascii	"__tm_isdst\000"
.LASF38:
	.ascii	"__tm_min\000"
.LASF116:
	.ascii	"_getdate_err\000"
.LASF239:
	.ascii	"EPState\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
