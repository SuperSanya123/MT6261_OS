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
	.file	"lcdif.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	CFormatToBPP
	.section	.rodata.CFormatToBPP,"a",%progbits
	.align	2
	.type	CFormatToBPP, %object
	.size	CFormatToBPP, 7
CFormatToBPP:
	.byte	1
	.byte	2
	.byte	0
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.global	LCDIF_LAYER
	.section	.data.LCDIF_LAYER,"aw",%progbits
	.align	2
	.type	LCDIF_LAYER, %object
	.size	LCDIF_LAYER, 16
LCDIF_LAYER:
	.word	-1606090576
	.word	-1606090528
	.word	-1606090480
	.word	-1606090432
	.comm	LCDScreen,136,4
	.comm	LCDIFQueue,4,4
	.section	.text.LCDIF_WriteCommand,"ax",%progbits
	.align	2
	.global	LCDIF_WriteCommand
	.code	16
	.thumb_func
	.type	LCDIF_WriteCommand, %function
LCDIF_WriteCommand:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\lcdif.c"
	.loc 1 36 0
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
	.loc 1 37 0
	ldr	r3, .L2
	adds	r2, r7, #7
	ldrb	r2, [r2]
	str	r2, [r3]
	.loc 1 38 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	-1606086784
	.cfi_endproc
.LFE1:
	.size	LCDIF_WriteCommand, .-LCDIF_WriteCommand
	.section	.text.LCDIF_WriteData,"ax",%progbits
	.align	2
	.global	LCDIF_WriteData
	.code	16
	.thumb_func
	.type	LCDIF_WriteData, %function
LCDIF_WriteData:
.LFB2:
	.loc 1 41 0
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
	.loc 1 42 0
	ldr	r3, .L5
	adds	r2, r7, #7
	ldrb	r2, [r2]
	str	r2, [r3]
	.loc 1 43 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	-1606086768
	.cfi_endproc
.LFE2:
	.size	LCDIF_WriteData, .-LCDIF_WriteData
	.section	.text.LCDIF_ReadData,"ax",%progbits
	.align	2
	.global	LCDIF_ReadData
	.code	16
	.thumb_func
	.type	LCDIF_ReadData, %function
LCDIF_ReadData:
.LFB3:
	.loc 1 46 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 47 0
	ldr	r3, .L9
	ldr	r3, [r3]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 48 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	-1606086768
	.cfi_endproc
.LFE3:
	.size	LCDIF_ReadData, .-LCDIF_ReadData
	.section	.text.LCDIF_SetClock,"ax",%progbits
	.align	2
	.global	LCDIF_SetClock
	.code	16
	.thumb_func
	.type	LCDIF_SetClock, %function
LCDIF_SetClock:
.LFB4:
	.loc 1 51 0
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
	.loc 1 52 0
	ldr	r3, .L12
	ldr	r2, .L12
	ldr	r2, [r2]
	movs	r1, #112
	bics	r2, r1
	movs	r1, r2
	adds	r2, r7, #7
	ldrb	r2, [r2]
	lsls	r2, r2, #4
	movs	r0, r2
	movs	r2, #112
	ands	r2, r0
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 53 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	-1610546916
	.cfi_endproc
.LFE4:
	.size	LCDIF_SetClock, .-LCDIF_SetClock
	.section	.text.LCDIF_StartLCDTransfer,"ax",%progbits
	.align	2
	.global	LCDIF_StartLCDTransfer
	.code	16
	.thumb_func
	.type	LCDIF_StartLCDTransfer, %function
LCDIF_StartLCDTransfer:
.LFB5:
	.loc 1 56 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 57 0
	ldr	r3, .L15
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 58 0
	ldr	r3, .L15
	ldr	r2, .L15+4
	strh	r2, [r3]
	.loc 1 59 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	-1606090740
	.word	-32768
	.cfi_endproc
.LFE5:
	.size	LCDIF_StartLCDTransfer, .-LCDIF_StartLCDTransfer
	.section	.text.LCDIF_IsQueueRunning,"ax",%progbits
	.align	2
	.global	LCDIF_IsQueueRunning
	.code	16
	.thumb_func
	.type	LCDIF_IsQueueRunning, %function
LCDIF_IsQueueRunning:
.LFB6:
	.loc 1 62 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 63 0
	ldr	r3, .L19
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsrs	r3, r3, #15
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 64 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L20:
	.align	2
.L19:
	.word	-1606090740
	.cfi_endproc
.LFE6:
	.size	LCDIF_IsQueueRunning, .-LCDIF_IsQueueRunning
	.section	.text.LCDIF_DeleteCommandFromQueue,"ax",%progbits
	.align	2
	.global	LCDIF_DeleteCommandFromQueue
	.code	16
	.thumb_func
	.type	LCDIF_DeleteCommandFromQueue, %function
LCDIF_DeleteCommandFromQueue:
.LFB7:
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
	.loc 1 68 0
	ldr	r3, .L24
	ldr	r3, [r3]
	movs	r0, r3
	bl	DL_GetFirstItem
	movs	r3, r0
	str	r3, [r7, #4]
	.loc 1 70 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L23
	.loc 1 71 0
	ldr	r3, .L24
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_DeleteItem
.L23:
	.loc 1 72 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L25:
	.align	2
.L24:
	.word	LCDIFQueue
	.cfi_endproc
.LFE7:
	.size	LCDIF_DeleteCommandFromQueue, .-LCDIF_DeleteCommandFromQueue
	.section	.text.LCDIF_GetCommandFromQueue,"ax",%progbits
	.align	2
	.global	LCDIF_GetCommandFromQueue
	.code	16
	.thumb_func
	.type	LCDIF_GetCommandFromQueue, %function
LCDIF_GetCommandFromQueue:
.LFB8:
	.loc 1 75 0
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
	.loc 1 78 0
	b	.L27
.L34:
.LBB2:
	.loc 1 80 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	str	r3, [r7, #4]
	.loc 1 82 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L28
	.loc 1 84 0
	ldr	r3, .L35
	ldr	r2, [r7, #4]
	movs	r1, #12
	ldrsh	r2, [r2, r1]
	movs	r1, r2
	ldr	r2, .L35+4
	movs	r0, #8
	ldrsh	r2, [r2, r0]
	adds	r2, r1, r2
	lsls	r2, r2, #22
	lsrs	r1, r2, #22
	.loc 1 85 0
	ldr	r2, [r7, #4]
	movs	r0, #14
	ldrsh	r2, [r2, r0]
	movs	r0, r2
	ldr	r2, .L35+4
	movs	r4, #10
	ldrsh	r2, [r2, r4]
	adds	r2, r0, r2
	lsls	r2, r2, #16
	ldr	r0, .L35+8
	ands	r2, r0
	.loc 1 84 0
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 86 0
	ldr	r3, .L35+12
	ldr	r2, [r7, #4]
	movs	r1, #16
	ldrsh	r2, [r2, r1]
	movs	r1, r2
	ldr	r2, [r7, #4]
	movs	r0, #12
	ldrsh	r2, [r2, r0]
	subs	r2, r1, r2
	adds	r2, r2, #1
	lsls	r2, r2, #21
	lsrs	r1, r2, #21
	.loc 1 87 0
	ldr	r2, [r7, #4]
	movs	r0, #18
	ldrsh	r2, [r2, r0]
	movs	r0, r2
	ldr	r2, [r7, #4]
	movs	r4, #14
	ldrsh	r2, [r2, r4]
	subs	r2, r0, r2
	adds	r2, r2, #1
	lsls	r2, r2, #16
	ldr	r0, .L35+16
	ands	r2, r0
	.loc 1 86 0
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 89 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L29
.LBB3:
	.loc 1 93 0
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L30
.L31:
	.loc 1 93 0 is_stmt 0 discriminator 3
	ldr	r3, [r7, #12]
	ldr	r2, .L35+20
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #12]
	adds	r1, r1, #6
	lsls	r1, r1, #2
	ldr	r2, [r1, r2]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L30:
	.loc 1 93 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L31
	.loc 1 94 0 is_stmt 1
	ldr	r3, .L35+24
	ldr	r2, .L35+24
	ldr	r2, [r2]
	ldr	r1, .L35+28
	ands	r2, r1
	str	r2, [r3]
	.loc 1 95 0
	ldr	r2, .L35+24
	ldr	r3, .L35+24
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	subs	r3, r3, #1
	lsls	r0, r3, #8
	movs	r3, #252
	lsls	r3, r3, #6
	ands	r3, r0
	orrs	r3, r1
	movs	r1, #128
	lsls	r1, r1, #8
	orrs	r3, r1
	str	r3, [r2]
.LBE3:
	b	.L32
.L29:
	.loc 1 97 0
	ldr	r3, .L35+24
	ldr	r2, .L35+24
	ldr	r2, [r2]
	ldr	r1, .L35+32
	ands	r2, r1
	str	r2, [r3]
.L32:
	.loc 1 99 0
	bl	LCDIF_DeleteCommandFromQueue
	.loc 1 100 0
	movs	r3, #1
	b	.L33
.L28:
	.loc 1 102 0
	bl	LCDIF_DeleteCommandFromQueue
.L27:
.LBE2:
	.loc 1 78 0
	ldr	r3, .L35+36
	ldr	r3, [r3]
	movs	r0, r3
	bl	DL_GetFirstItem
	movs	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L34
	.loc 1 104 0
	movs	r3, #0
.L33:
	.loc 1 105 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L36:
	.align	2
.L35:
	.word	-1606090620
	.word	LCDScreen
	.word	67043328
	.word	-1606090608
	.word	134152192
	.word	672219904
	.word	-1606090624
	.word	-16129
	.word	-32769
	.word	LCDIFQueue
	.cfi_endproc
.LFE8:
	.size	LCDIF_GetCommandFromQueue, .-LCDIF_GetCommandFromQueue
	.section	.text.LCDIF_RestartQueue,"ax",%progbits
	.align	2
	.global	LCDIF_RestartQueue
	.code	16
	.thumb_func
	.type	LCDIF_RestartQueue, %function
LCDIF_RestartQueue:
.LFB9:
	.loc 1 108 0
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
	.loc 1 109 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #4]
	.loc 1 111 0
	bl	LCDIF_IsQueueRunning
	subs	r3, r0, #0
	bne	.L38
	.loc 1 111 0 is_stmt 0 discriminator 1
	bl	LCDIF_GetCommandFromQueue
	subs	r3, r0, #0
	beq	.L38
	.loc 1 111 0 discriminator 2
	bl	LCDIF_StartLCDTransfer
.L38:
	.loc 1 113 0 is_stmt 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 114 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE9:
	.size	LCDIF_RestartQueue, .-LCDIF_RestartQueue
	.section	.text.LCDIF_AddCommandToQueue,"ax",%progbits
	.align	2
	.global	LCDIF_AddCommandToQueue
	.code	16
	.thumb_func
	.type	LCDIF_AddCommandToQueue, %function
LCDIF_AddCommandToQueue:
.LFB10:
	.loc 1 117 0
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
	.loc 1 118 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L40
	.loc 1 118 0 discriminator 1
	ldr	r3, .L43
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	subs	r3, r0, #0
	beq	.L40
	.loc 1 120 0
	bl	LCDIF_RestartQueue
	.loc 1 121 0
	nop
.L41:
	.loc 1 121 0 is_stmt 0 discriminator 1
	ldr	r3, .L43
	ldr	r3, [r3]
	movs	r0, r3
	bl	DL_GetItemsCount
	movs	r3, r0
	cmp	r3, #127
	bhi	.L41
	.loc 1 122 0 is_stmt 1
	movs	r3, #1
	b	.L42
.L40:
	.loc 1 124 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	free
	.loc 1 126 0
	movs	r3, #0
.L42:
	.loc 1 127 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L44:
	.align	2
.L43:
	.word	LCDIFQueue
	.cfi_endproc
.LFE10:
	.size	LCDIF_AddCommandToQueue, .-LCDIF_AddCommandToQueue
	.section	.rodata
	.align	2
.LC4:
	.ascii	"Unsolicited LCDIF interrupt code 0x%04X!\015\012\000"
	.section	.text.LCDIF_ISR,"ax",%progbits
	.align	2
	.global	LCDIF_ISR
	.code	16
	.thumb_func
	.type	LCDIF_ISR, %function
LCDIF_ISR:
.LFB11:
	.loc 1 130 0
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
	.loc 1 133 0
	ldr	r3, .L50
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 134 0
	ldr	r2, .L50+4
	adds	r3, r7, #6
	ldrh	r2, [r2]
	strh	r2, [r3]
	adds	r3, r7, #6
	ldrh	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	beq	.L46
	.loc 1 136 0
	bl	LCDIF_GetCommandFromQueue
	subs	r3, r0, #0
	beq	.L49
	.loc 1 136 0 is_stmt 0 discriminator 1
	ldr	r3, .L50
	ldr	r2, .L50+8
	strh	r2, [r3]
	.loc 1 139 0 is_stmt 1 discriminator 1
	b	.L49
.L46:
	.loc 1 138 0
	adds	r3, r7, #6
	ldrh	r2, [r3]
	ldr	r3, .L50+12
	movs	r1, r2
	movs	r0, r3
	bl	printf
	.loc 1 138 0
	ldr	r3, .L50+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 138 0
	movs	r0, r3
	bl	fflush
.L49:
	.loc 1 139 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L51:
	.align	2
.L50:
	.word	-1606090740
	.word	-1606090744
	.word	-32768
	.word	.LC4
	.word	_impure_ptr
	.cfi_endproc
.LFE11:
	.size	LCDIF_ISR, .-LCDIF_ISR
	.section	.text.LCDIF_RegisterISR,"ax",%progbits
	.align	2
	.global	LCDIF_RegisterISR
	.code	16
	.thumb_func
	.type	LCDIF_RegisterISR, %function
LCDIF_RegisterISR:
.LFB12:
	.loc 1 142 0
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
	.loc 1 143 0
	ldr	r1, .L54
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #1
	movs	r2, #1
	movs	r0, #28
	bl	NVIC_RegisterIRQ
	movs	r3, r0
	.loc 1 144 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L55:
	.align	2
.L54:
	.word	LCDIF_ISR
	.cfi_endproc
.LFE12:
	.size	LCDIF_RegisterISR, .-LCDIF_RegisterISR
	.section	.text.LCDIF_UnregisterISR,"ax",%progbits
	.align	2
	.global	LCDIF_UnregisterISR
	.code	16
	.thumb_func
	.type	LCDIF_UnregisterISR, %function
LCDIF_UnregisterISR:
.LFB13:
	.loc 1 147 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 148 0
	movs	r0, #28
	bl	NVIC_UnregisterIRQ
	movs	r3, r0
	.loc 1 149 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE13:
	.size	LCDIF_UnregisterISR, .-LCDIF_UnregisterISR
	.section	.text.LCDIF_DisableInterface,"ax",%progbits
	.align	2
	.global	LCDIF_DisableInterface
	.code	16
	.thumb_func
	.type	LCDIF_DisableInterface, %function
LCDIF_DisableInterface:
.LFB14:
	.loc 1 152 0
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
	.loc 1 153 0
	ldr	r3, .L63
	movs	r2, #0
	strb	r2, [r3, #20]
	.loc 1 155 0
	ldr	r3, .L63+4
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 156 0
	ldr	r3, .L63+8
	movs	r2, #1
	strh	r2, [r3]
	.loc 1 158 0
	bl	LCDIF_UnregisterISR
	.loc 1 160 0
	bl	ILI9341_SleepLCD
.LBB4:
	.loc 1 161 0
	movs	r3, #0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #46
	bgt	.L59
	.loc 1 161 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	asrs	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, .L63+12
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
	b	.L60
.L59:
	.loc 1 161 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bgt	.L60
	.loc 1 161 0 discriminator 3
	ldr	r2, .L63+16
	ldr	r3, [r7, #4]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L60:
.LBE4:
.LBB5:
	.loc 1 162 0 is_stmt 1
	movs	r3, #7
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #46
	bgt	.L61
	.loc 1 162 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]
	asrs	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, .L63+12
	mov	ip, r2
	add	r3, r3, ip
	movs	r1, r3
	ldr	r3, [r7]
	movs	r2, #15
	ands	r3, r2
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	b	.L62
.L61:
	.loc 1 162 0 discriminator 2
	ldr	r3, [r7]
	cmp	r3, #52
	bgt	.L62
	.loc 1 162 0 discriminator 3
	ldr	r2, .L63+16
	ldr	r3, [r7]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L62:
.LBE5:
	.loc 1 163 0 is_stmt 1
	ldr	r3, .L63+20
	ldr	r3, [r3]
	movs	r1, #1
	movs	r0, r3
	bl	DL_Delete
	movs	r2, r0
	ldr	r3, .L63+20
	str	r2, [r3]
	.loc 1 164 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L64:
	.align	2
.L63:
	.word	LCDScreen
	.word	-1606090748
	.word	-1606090740
	.word	-1610546416
	.word	-1603076084
	.word	LCDIFQueue
	.cfi_endproc
.LFE14:
	.size	LCDIF_DisableInterface, .-LCDIF_DisableInterface
	.section	.rodata
	.align	2
.LC12:
	.ascii	"Failed! (Insufficient memory)\015\000"
	.align	2
.LC15:
	.ascii	" Total used %uKiB\015\012\000"
	.align	2
.LC17:
	.ascii	"Failed! (Unable to register LCD ISR 0x%02X)\015\012"
	.ascii	"\000"
	.align	2
.LC19:
	.ascii	"Complete.\015\000"
	.align	2
.LC21:
	.ascii	"Failed! (Can't initialize LCD driver)\015\000"
	.section	.text.LCDIF_Initialize,"ax",%progbits
	.align	2
	.global	LCDIF_Initialize
	.code	16
	.thumb_func
	.type	LCDIF_Initialize, %function
LCDIF_Initialize:
.LFB15:
	.loc 1 167 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	add	r7, sp, #8
	.cfi_def_cfa 7, 32
	.loc 1 168 0
	ldr	r3, .L77
	movs	r2, #136
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 170 0
	movs	r3, #128
	lsls	r3, r3, #1
	movs	r1, r3
	movs	r0, #45
	bl	GPIO_Setup
	.loc 1 171 0
	movs	r3, #128
	lsls	r3, r3, #1
	movs	r1, r3
	movs	r0, #46
	bl	GPIO_Setup
	.loc 1 172 0
	movs	r3, #128
	lsls	r3, r3, #1
	movs	r1, r3
	movs	r0, #47
	bl	GPIO_Setup
	.loc 1 173 0
	movs	r3, #128
	lsls	r3, r3, #1
	movs	r1, r3
	movs	r0, #48
	bl	GPIO_Setup
	.loc 1 175 0
	movs	r0, #0
	bl	LCDIF_SetClock
.LBB6:
	.loc 1 176 0
	movs	r3, #7
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #46
	bgt	.L66
	.loc 1 176 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	asrs	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, .L77+4
	mov	ip, r2
	add	r3, r3, ip
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
	b	.L67
.L66:
	.loc 1 176 0 discriminator 2
	ldr	r3, [r7, #12]
	cmp	r3, #52
	bgt	.L67
	.loc 1 176 0 discriminator 3
	ldr	r2, .L77+8
	ldr	r3, [r7, #12]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L67:
.LBE6:
.LBB7:
	.loc 1 177 0 is_stmt 1
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #46
	bgt	.L68
	.loc 1 177 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	asrs	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, .L77+4
	mov	ip, r2
	add	r3, r3, ip
	movs	r1, r3
	ldr	r3, [r7, #8]
	movs	r2, #15
	ands	r3, r2
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	b	.L69
.L68:
	.loc 1 177 0 discriminator 2
	ldr	r3, [r7, #8]
	cmp	r3, #52
	bgt	.L69
	.loc 1 177 0 discriminator 3
	ldr	r2, .L77+8
	ldr	r3, [r7, #8]
	movs	r1, #15
	ands	r3, r1
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L69:
.LBE7:
	.loc 1 179 0 is_stmt 1
	ldr	r4, .L77
	movs	r0, r7
	movs	r3, #64
	adds	r3, r3, #255
	str	r3, [sp]
	movs	r3, #239
	movs	r2, #0
	movs	r1, #0
	bl	Rect
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 180 0
	ldr	r4, .L77
	movs	r1, #0
	movs	r0, #0
	bl	Point
	movs	r3, r0
	str	r3, [r4, #8]
	.loc 1 181 0
	ldr	r3, .L77
	movs	r2, #1
	str	r2, [r3, #12]
	.loc 1 182 0
	ldr	r3, .L77
	movs	r2, #0
	str	r2, [r3, #16]
	.loc 1 184 0
	ldr	r3, .L77
	movs	r2, #128
	lsls	r2, r2, #24
	str	r2, [r3, #40]
	.loc 1 185 0
	ldr	r3, .L77
	movs	r2, #128
	lsls	r2, r2, #23
	str	r2, [r3, #68]
	.loc 1 186 0
	ldr	r3, .L77
	movs	r2, #128
	lsls	r2, r2, #22
	str	r2, [r3, #96]
	.loc 1 187 0
	ldr	r3, .L77
	movs	r2, #128
	lsls	r2, r2, #21
	str	r2, [r3, #124]
	.loc 1 189 0
	ldr	r3, .L77+12
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 190 0
	ldr	r3, .L77+16
	movs	r2, #1
	strh	r2, [r3]
	.loc 1 191 0
	ldr	r3, .L77+16
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 193 0
	ldr	r3, .L77+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L70
	.loc 1 193 0 discriminator 1
	bl	DL_Create
	movs	r2, r0
	ldr	r3, .L77+20
	str	r2, [r3]
.L70:
	.loc 1 194 0
	ldr	r3, .L77+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L71
	.loc 1 194 0 discriminator 1
	bl	LCDIF_RegisterISR
	subs	r3, r0, #0
	bne	.L72
.L71:
	.loc 1 196 0
	ldr	r3, .L77+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L73
	.loc 1 198 0
	ldr	r3, .L77+24
	movs	r0, r3
	bl	puts
	.loc 1 198 0
	ldr	r3, .L77+28
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 198 0
	movs	r0, r3
	bl	fflush
	.loc 1 199 0
	bl	GetTotalUsedMemory
	movs	r3, r0
	lsrs	r2, r3, #10
	ldr	r3, .L77+32
	movs	r1, r2
	movs	r0, r3
	bl	printf
	.loc 1 199 0
	ldr	r3, .L77+28
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 199 0
	movs	r0, r3
	bl	fflush
	b	.L74
.L73:
	.loc 1 201 0
	ldr	r3, .L77+36
	movs	r1, #28
	movs	r0, r3
	bl	printf
	.loc 1 201 0
	ldr	r3, .L77+28
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 201 0
	movs	r0, r3
	bl	fflush
.L74:
	.loc 1 202 0
	bl	LCDIF_DisableInterface
	.loc 1 203 0
	movs	r3, #0
	b	.L75
.L72:
	.loc 1 206 0
	ldr	r3, .L77+40
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 207 0
	movs	r3, #250
	lsls	r3, r3, #2
	movs	r0, r3
	bl	USC_Pause_us
	.loc 1 208 0
	ldr	r3, .L77+40
	movs	r2, #1
	strh	r2, [r3]
	.loc 1 210 0
	ldr	r3, .L77+44
	movs	r2, #0
	str	r2, [r3]
	.loc 1 211 0
	ldr	r3, .L77+48
	ldr	r2, .L77+52
	str	r2, [r3]
	.loc 1 213 0
	ldr	r3, .L77+56
	movs	r2, #33
	str	r2, [r3]
	.loc 1 214 0
	ldr	r3, .L77+60
	movs	r2, #128
	str	r2, [r3]
	.loc 1 215 0
	ldr	r3, .L77+64
	movs	r2, #144
	str	r2, [r3]
	.loc 1 216 0
	ldr	r3, .L77+68
	movs	r2, #0
	str	r2, [r3]
	.loc 1 217 0
	ldr	r3, .L77+72
	ldr	r2, .L77+76
	str	r2, [r3]
	.loc 1 218 0
	ldr	r3, .L77+80
	movs	r2, #255
	lsls	r2, r2, #24
	str	r2, [r3]
	.loc 1 220 0
	bl	ILI9341_Initialize
	subs	r3, r0, #0
	beq	.L76
	.loc 1 222 0
	ldr	r3, .L77+12
	movs	r2, #1
	strh	r2, [r3]
	.loc 1 223 0
	ldr	r3, .L77
	movs	r2, #1
	strb	r2, [r3, #20]
	.loc 1 224 0
	ldr	r3, .L77+84
	movs	r0, r3
	bl	puts
	.loc 1 224 0
	ldr	r3, .L77+28
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 224 0
	movs	r0, r3
	bl	fflush
	.loc 1 225 0
	movs	r3, #1
	b	.L75
.L76:
	.loc 1 228 0
	bl	LCDIF_DisableInterface
	.loc 1 229 0
	ldr	r3, .L77+88
	movs	r0, r3
	bl	puts
	.loc 1 229 0
	ldr	r3, .L77+28
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 229 0
	movs	r0, r3
	bl	fflush
	.loc 1 230 0
	movs	r3, #0
.L75:
	.loc 1 231 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L78:
	.align	2
.L77:
	.word	LCDScreen
	.word	-1610546400
	.word	-1603076080
	.word	-1606090748
	.word	-1606090740
	.word	LCDIFQueue
	.word	.LC12
	.word	_impure_ptr
	.word	.LC15
	.word	.LC17
	.word	-1606090736
	.word	-1606090724
	.word	-1606090712
	.word	16777352
	.word	-1606090624
	.word	-1606090616
	.word	-1606090612
	.word	-1606090620
	.word	-1606090608
	.word	20971760
	.word	-1606090596
	.word	.LC19
	.word	.LC21
	.cfi_endproc
.LFE15:
	.size	LCDIF_Initialize, .-LCDIF_Initialize
	.section	.text.LCDIF_SetupLayer,"ax",%progbits
	.align	2
	.global	LCDIF_SetupLayer
	.code	16
	.thumb_func
	.type	LCDIF_SetupLayer, %function
LCDIF_SetupLayer:
.LFB16:
	.loc 1 235 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
	.cfi_def_cfa_offset 56
	add	r7, sp, #8
	.cfi_def_cfa 7, 48
	movs	r4, r0
	movs	r0, #16
	adds	r0, r7, r0
	str	r1, [r0]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	movs	r3, #23
	adds	r3, r7, r3
	adds	r2, r4, #0
	strb	r2, [r3]
	.loc 1 236 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bls	.L80
	.loc 1 236 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L81
.L80:
	.loc 1 238 0 is_stmt 1
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L86
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #24
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 239 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L86
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 240 0
	ldr	r2, .L86+4
	ldr	r3, .L86+4
	ldr	r0, [r3]
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r1, [r3]
	ldr	r4, .L86
	movs	r3, r1
	lsls	r3, r3, #3
	subs	r3, r3, r1
	lsls	r3, r3, #2
	adds	r3, r4, r3
	adds	r3, r3, #40
	ldr	r3, [r3]
	mvns	r3, r3
	ands	r3, r0
	str	r3, [r2]
	.loc 1 241 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L86
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #48
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L82
	.loc 1 243 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L86
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #48
	ldr	r3, [r3]
	movs	r0, r3
	bl	free
	.loc 1 244 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L86
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #48
	movs	r2, #0
	str	r2, [r3]
.L82:
	.loc 1 247 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.LCB1275
	b	.L83	@long jump
.LCB1275:
	.loc 1 247 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.LCB1278
	b	.L83	@long jump
.LCB1278:
	.loc 1 247 0 discriminator 2
	movs	r3, #48
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #6
	bls	.LCB1283
	b	.L83	@long jump
.LCB1283:
.LBB8:
	.loc 1 251 0 is_stmt 1
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r0, [r3]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r1, r3, #16
	asrs	r1, r1, #16
	ldr	r3, [r7, #8]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	ldr	r4, .L86
	movs	r5, #24
	movs	r3, r0
	lsls	r3, r3, #3
	subs	r3, r3, r0
	lsls	r3, r3, #2
	adds	r3, r4, r3
	adds	r4, r3, r5
	movs	r5, #2
	movs	r0, r7
	str	r2, [sp]
	movs	r3, r1
	movs	r2, #0
	movs	r1, #0
	bl	Rect
	movs	r2, r7
	adds	r3, r4, r5
	movs	r1, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
	.loc 1 252 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L86
	movs	r0, #32
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, r0
	movs	r2, #2
	movs	r1, #16
	adds	r1, r7, r1
	adds	r3, r3, r2
	movs	r2, #4
	movs	r0, r3
	bl	memcpy
	.loc 1 253 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L86
	movs	r0, #45
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, r0
	movs	r2, #48
	adds	r2, r7, r2
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 254 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, #48
	adds	r3, r7, r3
	ldrb	r3, [r3]
	ldr	r1, .L86+8
	ldrb	r4, [r1, r3]
	ldr	r1, .L86
	movs	r0, #44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, r0
	adds	r2, r4, #0
	strb	r2, [r3]
	.loc 1 256 0
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	movs	r1, r2
	muls	r1, r3
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r0, .L86
	movs	r4, #44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r0, r3
	adds	r3, r3, r4
	ldrb	r3, [r3]
	muls	r3, r1
	str	r3, [r7, #28]
	.loc 1 257 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.LCB1395
	b	.L83	@long jump
.LCB1395:
	.loc 1 259 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r4, [r3]
	ldr	r3, [r7, #28]
	movs	r0, r3
	bl	malloc
	movs	r3, r0
	movs	r1, r3
	ldr	r2, .L86
	movs	r3, r4
	lsls	r3, r3, #3
	subs	r3, r3, r4
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #48
	str	r1, [r3]
	.loc 1 260 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L86
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.LCB1424
	b	.L83	@long jump
.LCB1424:
	.loc 1 262 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L86+12
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	movs	r2, #48
	adds	r2, r7, r2
	ldrb	r2, [r2]
	lsls	r2, r2, #20
	movs	r1, r2
	movs	r2, #224
	lsls	r2, r2, #15
	ands	r2, r1
	str	r2, [r3]
	.loc 1 263 0
	movs	r3, #48
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #4
	beq	.L84
	.loc 1 263 0 is_stmt 0 discriminator 1
	movs	r3, #48
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #5
	beq	.L84
	.loc 1 263 0 discriminator 2
	movs	r3, #52
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #255
	beq	.L85
.L84:
	.loc 1 264 0 is_stmt 1
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L86+12
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	movs	r2, #23
	adds	r2, r7, r2
	ldrb	r1, [r2]
	ldr	r2, .L86+12
	lsls	r1, r1, #2
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	movs	r2, #52
	adds	r2, r7, r2
	ldrb	r2, [r2]
	orrs	r2, r1
	movs	r1, #128
	lsls	r1, r1, #1
	orrs	r2, r1
	str	r2, [r3]
.L85:
	.loc 1 266 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L86+12
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	movs	r2, #16
	adds	r2, r7, r2
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	lsls	r2, r2, #21
	lsrs	r1, r2, #21
	movs	r2, #16
	adds	r2, r7, r2
	movs	r0, #2
	ldrsh	r2, [r2, r0]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	lsls	r2, r2, #16
	ldr	r0, .L86+16
	ands	r2, r0
	orrs	r2, r1
	str	r2, [r3, #8]
	.loc 1 267 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L86+12
	lsls	r2, r2, #2
	ldr	r2, [r2, r3]
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r1, [r3]
	ldr	r0, .L86
	movs	r3, r1
	lsls	r3, r3, #3
	subs	r3, r3, r1
	lsls	r3, r3, #2
	adds	r3, r0, r3
	adds	r3, r3, #48
	ldr	r3, [r3]
	str	r3, [r2, #12]
	.loc 1 268 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L86+12
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #12]
	lsls	r2, r2, #21
	lsrs	r1, r2, #21
	ldr	r2, [r7, #8]
	lsls	r2, r2, #16
	ldr	r0, .L86+16
	ands	r2, r0
	orrs	r2, r1
	str	r2, [r3, #16]
	.loc 1 269 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L86+12
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	movs	r2, #0
	str	r2, [r3, #20]
	.loc 1 270 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L86+12
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	movs	r2, #0
	str	r2, [r3, #24]
	.loc 1 271 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L86+12
	lsls	r2, r2, #2
	ldr	r1, [r2, r3]
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r0, .L86
	movs	r4, #44
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r0, r3
	adds	r3, r3, r4
	ldrb	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ldr	r2, [r7, #12]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	muls	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1, #28]
	.loc 1 273 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L86
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	movs	r2, #1
	strb	r2, [r3]
.L83:
.LBE8:
	.loc 1 277 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L86
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	ldrb	r3, [r3]
.L81:
	.loc 1 278 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r7, pc}
.L87:
	.align	2
.L86:
	.word	LCDScreen
	.word	-1606090624
	.word	CFormatToBPP
	.word	LCDIF_LAYER
	.word	134152192
	.cfi_endproc
.LFE16:
	.size	LCDIF_SetupLayer, .-LCDIF_SetupLayer
	.section	.text.LCDIF_SetLayerEnabled,"ax",%progbits
	.align	2
	.global	LCDIF_SetLayerEnabled
	.code	16
	.thumb_func
	.type	LCDIF_SetLayerEnabled, %function
LCDIF_SetLayerEnabled:
.LFB17:
	.loc 1 281 0
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
	.loc 1 284 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #3
	bhi	.L89
	.loc 1 284 0 is_stmt 0 discriminator 2
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L96
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L90
.L89:
	.loc 1 284 0 discriminator 3
	movs	r3, #0
	b	.L95
.L90:
	.loc 1 286 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L96
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #24
	ldrb	r3, [r3]
	adds	r2, r7, #6
	ldrb	r2, [r2]
	cmp	r2, r3
	bne	.LCB1689
	b	.L92	@long jump
.LCB1689:
	.loc 1 288 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L93
	.loc 1 288 0 is_stmt 0 discriminator 1
	ldr	r2, .L96+4
	ldr	r3, .L96+4
	ldr	r0, [r3]
	adds	r3, r7, #7
	ldrb	r1, [r3]
	ldr	r4, .L96
	movs	r3, r1
	lsls	r3, r3, #3
	subs	r3, r3, r1
	lsls	r3, r3, #2
	adds	r3, r4, r3
	adds	r3, r3, #40
	ldr	r3, [r3]
	orrs	r3, r0
	str	r3, [r2]
	b	.L94
.L93:
	.loc 1 289 0 is_stmt 1
	ldr	r2, .L96+4
	ldr	r3, .L96+4
	ldr	r0, [r3]
	adds	r3, r7, #7
	ldrb	r1, [r3]
	ldr	r4, .L96
	movs	r3, r1
	lsls	r3, r3, #3
	subs	r3, r3, r1
	lsls	r3, r3, #2
	adds	r3, r4, r3
	adds	r3, r3, #40
	ldr	r3, [r3]
	mvns	r3, r3
	ands	r3, r0
	str	r3, [r2]
.L94:
	.loc 1 291 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L96
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #24
	adds	r2, r7, #6
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 293 0
	adds	r3, r7, #5
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.LCB1746
	b	.L92	@long jump
.LCB1746:
	.loc 1 295 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	movs	r3, #8
	adds	r4, r7, r3
	ldr	r1, .L96
	movs	r0, #24
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, r0
	movs	r2, #2
	movs	r0, r4
	adds	r3, r3, r2
	movs	r2, #8
	movs	r1, r3
	bl	memcpy
	.loc 1 296 0
	movs	r3, #8
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r1, r3, #16
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L96
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r0, r3
	adds	r3, r3, #34
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, .L96
	movs	r0, #8
	ldrsh	r3, [r3, r0]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r1, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #8
	adds	r2, r7, r2
	strh	r3, [r2]
	.loc 1 297 0
	movs	r3, #8
	adds	r3, r7, r3
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r1, r3, #16
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L96
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r0, r3
	adds	r3, r3, #34
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, .L96
	movs	r0, #8
	ldrsh	r3, [r3, r0]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r1, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #8
	adds	r2, r7, r2
	strh	r3, [r2, #4]
	.loc 1 298 0
	movs	r3, #8
	adds	r3, r7, r3
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r1, r3, #16
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L96
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r0, r3
	adds	r3, r3, #36
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, .L96
	movs	r0, #10
	ldrsh	r3, [r3, r0]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r1, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #8
	adds	r2, r7, r2
	strh	r3, [r2, #2]
	.loc 1 299 0
	movs	r3, #8
	adds	r3, r7, r3
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r1, r3, #16
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r0, .L96
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r0, r3
	adds	r3, r3, #36
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, .L96
	movs	r0, #10
	ldrsh	r3, [r3, r0]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r3, r1, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #8
	adds	r2, r7, r2
	strh	r3, [r2, #6]
	.loc 1 300 0
	ldr	r2, .L96
	movs	r3, #8
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L92
	.loc 1 301 0
	movs	r3, #8
	adds	r3, r7, r3
	ldr	r0, [r3]
	ldr	r1, [r3, #4]
	bl	LCDIF_UpdateRectangle
.L92:
	.loc 1 304 0
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L96
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #24
	ldrb	r3, [r3]
.L95:
	.loc 1 305 0 discriminator 1
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L97:
	.align	2
.L96:
	.word	LCDScreen
	.word	-1606090624
	.cfi_endproc
.LFE17:
	.size	LCDIF_SetLayerEnabled, .-LCDIF_SetLayerEnabled
	.section	.text.LCDIF_GetLayerPosition,"ax",%progbits
	.align	2
	.global	LCDIF_GetLayerPosition
	.code	16
	.thumb_func
	.type	LCDIF_GetLayerPosition, %function
LCDIF_GetLayerPosition:
.LFB18:
	.loc 1 308 0
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
	str	r1, [r7, #8]
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 309 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bhi	.L99
	.loc 1 309 0 is_stmt 0 discriminator 2
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L103
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L100
.L99:
	.loc 1 309 0 discriminator 3
	movs	r3, #0
	b	.L101
.L100:
	.loc 1 311 0 is_stmt 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L102
	.loc 1 312 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	movs	r2, r3
	ldr	r3, .L103
	adds	r3, r2, r3
	adds	r1, r3, #2
	.loc 1 313 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #32
	movs	r2, r3
	ldr	r3, .L103
	adds	r3, r2, r3
	adds	r2, r3, #2
	.loc 1 312 0
	ldr	r4, [r7, #8]
	movs	r3, r7
	movs	r0, r3
	bl	GDI_LocalToGlobalRct
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
.L102:
	.loc 1 314 0
	movs	r3, #1
.L101:
	.loc 1 315 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L104:
	.align	2
.L103:
	.word	LCDScreen
	.cfi_endproc
.LFE18:
	.size	LCDIF_GetLayerPosition, .-LCDIF_GetLayerPosition
	.section	.text.LCDIF_SetLayerPosition,"ax",%progbits
	.align	2
	.global	LCDIF_SetLayerPosition
	.code	16
	.thumb_func
	.type	LCDIF_SetLayerPosition, %function
LCDIF_SetLayerPosition:
.LFB19:
	.loc 1 318 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #84
	.cfi_def_cfa_offset 96
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	movs	r4, r0
	adds	r0, r7, #4
	str	r1, [r0]
	str	r2, [r0, #4]
	movs	r1, r3
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r4, #0
	strb	r2, [r3]
	movs	r3, #14
	adds	r3, r7, r3
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 319 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #3
	bls	.LCB2072
	b	.L106	@long jump
.LCB2072:
	.loc 1 319 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r1, .L120
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.LCB2085
	b	.L106	@long jump
.LCB2085:
	.loc 1 320 0 is_stmt 1 discriminator 2
	adds	r3, r7, #4
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	.loc 1 319 0 discriminator 2
	cmp	r3, #0
	bge	.LCB2089
	b	.L106	@long jump
.LCB2089:
	.loc 1 320 0
	adds	r3, r7, #4
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bge	.LCB2093
	b	.L106	@long jump
.LCB2093:
	.loc 1 321 0 discriminator 1
	adds	r3, r7, #4
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	.loc 1 320 0 discriminator 1
	cmp	r3, #0
	bge	.LCB2097
	b	.L106	@long jump
.LCB2097:
	.loc 1 321 0
	adds	r3, r7, #4
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bge	.LCB2101
	b	.L106	@long jump
.LCB2101:
.LBB9:
	.loc 1 323 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	movs	r2, r3
	ldr	r3, .L120
	adds	r3, r2, r3
	str	r3, [r7, #68]
	.loc 1 324 0
	ldr	r3, [r7, #68]
	adds	r1, r3, #2
	ldr	r3, [r7, #68]
	adds	r3, r3, #10
	movs	r2, r3
	movs	r3, #24
	adds	r3, r7, r3
	movs	r0, r3
	bl	GDI_LocalToGlobalRct
	.loc 1 326 0
	adds	r1, r7, #4
	movs	r3, #24
	adds	r3, r7, r3
	movs	r2, #8
	movs	r0, r3
	bl	memcmp
	subs	r3, r0, #0
	bne	.LCB2132
	b	.L107	@long jump
.LCB2132:
.LBB10:
	.loc 1 329 0
	ldr	r3, [r7, #68]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #68]
	movs	r1, #2
	ldrsh	r3, [r3, r1]
	subs	r2, r2, r3
	adds	r3, r7, #4
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	movs	r1, r3
	adds	r3, r7, #4
	movs	r0, #0
	ldrsh	r3, [r3, r0]
	subs	r3, r1, r3
	subs	r3, r2, r3
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #67
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 330 0
	ldr	r3, [r7, #68]
	movs	r2, #8
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #68]
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	subs	r2, r2, r3
	adds	r3, r7, #4
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	movs	r1, r3
	adds	r3, r7, #4
	movs	r0, #2
	ldrsh	r3, [r3, r0]
	subs	r3, r1, r3
	subs	r3, r2, r3
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #66
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 331 0
	movs	r3, #16
	adds	r3, r7, r3
	adds	r2, r7, #4
	adds	r1, r7, #4
	movs	r0, r3
	bl	GDI_GlobalToLocalRct
	.loc 1 332 0
	ldr	r3, [r7, #68]
	movs	r2, #6
	ldrsh	r3, [r3, r2]
	adds	r3, r3, #1
	ldr	r2, [r7, #68]
	movs	r1, #8
	ldrsh	r2, [r2, r1]
	adds	r2, r2, #1
	muls	r3, r2
	ldr	r2, [r7, #68]
	ldrb	r2, [r2, #20]
	muls	r3, r2
	str	r3, [r7, #60]
	.loc 1 333 0
	movs	r3, #16
	adds	r3, r7, r3
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	adds	r3, r3, #1
	movs	r2, #16
	adds	r2, r7, r2
	movs	r1, #6
	ldrsh	r2, [r2, r1]
	adds	r2, r2, #1
	muls	r3, r2
	ldr	r2, [r7, #68]
	ldrb	r2, [r2, #20]
	muls	r3, r2
	str	r3, [r7, #56]
	.loc 1 335 0
	nop
.L108:
	.loc 1 335 0 is_stmt 0 discriminator 3
	ldr	r3, .L120+4
	ldr	r3, [r3]
	movs	r0, r3
	bl	DL_GetItemsCount
	subs	r3, r0, #0
	bne	.L108
	.loc 1 335 0 discriminator 2
	bl	LCDIF_IsQueueRunning
	subs	r3, r0, #0
	bne	.L108
	.loc 1 337 0 is_stmt 1
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #52]
	.loc 1 339 0
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	beq	.L109
.LBB11:
	.loc 1 343 0
	movs	r3, #67
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L110
	.loc 1 343 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #56]
	movs	r0, r3
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #76]
	b	.L111
.L110:
	.loc 1 344 0 is_stmt 1
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #56]
	movs	r1, r2
	movs	r0, r3
	bl	realloc
	movs	r3, r0
	str	r3, [r7, #76]
.L111:
	.loc 1 346 0
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L112
	.loc 1 346 0 discriminator 1
	movs	r3, #0
	b	.L119
.L112:
	.loc 1 347 0
	movs	r3, #67
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L114
	.loc 1 347 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #24]
	movs	r0, r3
	bl	free
.L114:
	.loc 1 348 0 is_stmt 1
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #76]
	str	r2, [r3, #24]
.L109:
.LBE11:
	.loc 1 351 0
	ldr	r3, [r7, #68]
	movs	r2, #10
	adds	r1, r7, #4
	adds	r3, r3, r2
	movs	r2, #4
	movs	r0, r3
	bl	memcpy
	.loc 1 352 0
	ldr	r3, [r7, #68]
	movs	r2, #2
	movs	r1, #16
	adds	r1, r7, r1
	adds	r3, r3, r2
	movs	r2, #8
	movs	r0, r3
	bl	memcpy
	.loc 1 354 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L120+8
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #68]
	movs	r1, #10
	ldrsh	r2, [r2, r1]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	lsls	r2, r2, #21
	lsrs	r1, r2, #21
	.loc 1 355 0
	ldr	r2, [r7, #68]
	movs	r0, #12
	ldrsh	r2, [r2, r0]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	lsls	r2, r2, #16
	ldr	r0, .L120+12
	ands	r2, r0
	.loc 1 354 0
	orrs	r2, r1
	str	r2, [r3, #8]
	.loc 1 356 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L120+8
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #68]
	ldr	r2, [r2, #24]
	str	r2, [r3, #12]
	.loc 1 357 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L120+8
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #68]
	movs	r1, #6
	ldrsh	r2, [r2, r1]
	adds	r2, r2, #1
	lsls	r2, r2, #21
	lsrs	r1, r2, #21
	.loc 1 358 0
	ldr	r2, [r7, #68]
	movs	r0, #8
	ldrsh	r2, [r2, r0]
	adds	r2, r2, #1
	lsls	r2, r2, #16
	ldr	r0, .L120+12
	ands	r2, r0
	.loc 1 357 0
	orrs	r2, r1
	str	r2, [r3, #16]
	.loc 1 359 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r2, [r3]
	ldr	r3, .L120+8
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #68]
	ldrb	r2, [r2, #20]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	ldr	r1, [r7, #68]
	movs	r0, #6
	ldrsh	r1, [r1, r0]
	adds	r1, r1, #1
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	muls	r2, r1
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #28]
	.loc 1 361 0
	ldr	r3, [r7, #52]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 363 0
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L107
	.loc 1 363 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L107
.LBB12:
	.loc 1 365 0 is_stmt 1
	adds	r2, r7, #4
	movs	r3, #24
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	GDI_SUBRectangles
	movs	r3, r0
	str	r3, [r7, #48]
	.loc 1 367 0
	movs	r3, #67
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L116
	.loc 1 367 0 is_stmt 0 discriminator 1
	movs	r3, #66
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L116
	.loc 1 368 0 is_stmt 1
	movs	r3, #32
	adds	r3, r7, r3
	ldr	r2, .L120+16
	adds	r1, r7, #4
	movs	r0, r3
	bl	GDI_GlobalToLocalRct
	movs	r3, #32
	adds	r3, r7, r3
	ldr	r0, [r3]
	ldr	r1, [r3, #4]
	bl	LCDIF_UpdateRectangle
.L116:
	.loc 1 369 0
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L107
.LBB13:
	.loc 1 373 0
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L117
.L118:
	.loc 1 374 0 discriminator 3
	ldr	r3, [r7, #72]
	lsls	r3, r3, #3
	ldr	r2, [r7, #48]
	adds	r3, r2, r3
	adds	r1, r3, #4
	movs	r3, #40
	adds	r3, r7, r3
	ldr	r2, .L120+16
	movs	r0, r3
	bl	GDI_GlobalToLocalRct
	movs	r3, #40
	adds	r3, r7, r3
	ldr	r0, [r3]
	ldr	r1, [r3, #4]
	bl	LCDIF_UpdateRectangle
	.loc 1 373 0 discriminator 3
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L117:
	.loc 1 373 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #48]
	ldr	r2, [r3]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bhi	.L118
	.loc 1 377 0 is_stmt 1
	ldr	r3, [r7, #48]
	movs	r0, r3
	bl	GDI_DeleteRList
.L107:
.LBE13:
.LBE12:
.LBE10:
	.loc 1 381 0
	movs	r3, #1
	b	.L119
.L106:
.LBE9:
	.loc 1 383 0
	movs	r3, #0
.L119:
	.loc 1 384 0 discriminator 1
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r7, pc}
.L121:
	.align	2
.L120:
	.word	LCDScreen
	.word	LCDIFQueue
	.word	LCDIF_LAYER
	.word	134152192
	.word	LCDScreen+8
	.cfi_endproc
.LFE19:
	.size	LCDIF_SetLayerPosition, .-LCDIF_SetLayerPosition
	.section	.text.LCDIF_GetScreenPosition,"ax",%progbits
	.align	2
	.global	LCDIF_GetScreenPosition
	.code	16
	.thumb_func
	.type	LCDIF_GetScreenPosition, %function
LCDIF_GetScreenPosition:
.LFB20:
	.loc 1 387 0
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
	.loc 1 388 0
	ldr	r3, [r7, #4]
	ldr	r2, .L124
	ldr	r1, .L124+4
	movs	r0, r3
	bl	GDI_LocalToGlobalRct
	.loc 1 389 0
	ldr	r0, [r7, #4]
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L125:
	.align	2
.L124:
	.word	LCDScreen+8
	.word	LCDScreen
	.cfi_endproc
.LFE20:
	.size	LCDIF_GetScreenPosition, .-LCDIF_GetScreenPosition
	.section	.text.LCDIF_SetScreenPosition,"ax",%progbits
	.align	2
	.global	LCDIF_SetScreenPosition
	.code	16
	.thumb_func
	.type	LCDIF_SetScreenPosition, %function
LCDIF_SetScreenPosition:
.LFB21:
	.loc 1 392 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #44
	.cfi_def_cfa_offset 56
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	movs	r3, #16
	adds	r3, r7, r3
	str	r0, [r3]
	str	r1, [r3, #4]
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 393 0
	movs	r3, #28
	adds	r3, r7, r3
	ldr	r2, .L131
	ldr	r1, .L131+4
	movs	r0, r3
	bl	GDI_LocalToGlobalRct
	.loc 1 395 0
	ldr	r3, .L131+4
	ldrb	r3, [r3, #20]
	cmp	r3, #0
	bne	.L127
	.loc 1 395 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L130
.L127:
	.loc 1 397 0 is_stmt 1
	movs	r3, #16
	adds	r1, r7, r3
	movs	r3, #28
	adds	r3, r7, r3
	movs	r2, #8
	movs	r0, r3
	bl	memcmp
	subs	r3, r0, #0
	beq	.L129
.LBB14:
	.loc 1 399 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #36]
	.loc 1 401 0
	ldr	r3, .L131+4
	movs	r2, #16
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3, #8]
	.loc 1 402 0
	ldr	r4, .L131+4
	movs	r3, r7
	ldr	r2, .L131
	movs	r1, #16
	adds	r1, r7, r1
	movs	r0, r3
	bl	GDI_GlobalToLocalRct
	movs	r3, r7
	movs	r0, r4
	movs	r1, r3
	movs	r3, #8
	movs	r2, r3
	bl	memcpy
	.loc 1 404 0
	ldr	r3, .L131+8
	ldr	r2, .L131+4
	movs	r1, #8
	ldrsh	r2, [r2, r1]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	lsls	r2, r2, #22
	lsrs	r1, r2, #22
	.loc 1 405 0
	ldr	r2, .L131+4
	movs	r0, #10
	ldrsh	r2, [r2, r0]
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	lsls	r2, r2, #16
	ldr	r0, .L131+12
	ands	r2, r0
	.loc 1 404 0
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 406 0
	ldr	r3, .L131+16
	ldr	r2, .L131+4
	movs	r1, #4
	ldrsh	r2, [r2, r1]
	subs	r2, r2, #1
	lsls	r2, r2, #21
	lsrs	r1, r2, #21
	.loc 1 407 0
	ldr	r2, .L131+4
	movs	r0, #6
	ldrsh	r2, [r2, r0]
	subs	r2, r2, #1
	lsls	r2, r2, #16
	ldr	r0, .L131+20
	ands	r2, r0
	.loc 1 406 0
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 408 0
	ldr	r3, [r7, #36]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 410 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L129
	.loc 1 411 0
	ldr	r3, .L131+4
	ldr	r0, [r3]
	ldr	r1, [r3, #4]
	bl	LCDIF_UpdateRectangle
.L129:
.LBE14:
	.loc 1 413 0
	movs	r3, #1
.L130:
	.loc 1 414 0 discriminator 1
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r7, pc}
.L132:
	.align	2
.L131:
	.word	LCDScreen+8
	.word	LCDScreen
	.word	-1606090620
	.word	67043328
	.word	-1606090608
	.word	134152192
	.cfi_endproc
.LFE21:
	.size	LCDIF_SetScreenPosition, .-LCDIF_SetScreenPosition
	.section	.text.LCDIF_IsLayerInitialized,"ax",%progbits
	.align	2
	.global	LCDIF_IsLayerInitialized
	.code	16
	.thumb_func
	.type	LCDIF_IsLayerInitialized, %function
LCDIF_IsLayerInitialized:
.LFB22:
	.loc 1 417 0
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
	.loc 1 418 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #3
	bhi	.L134
	.loc 1 418 0 is_stmt 0 discriminator 1
	adds	r3, r7, #7
	ldrb	r2, [r3]
	ldr	r1, .L137
	movs	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #25
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L134
	.loc 1 418 0 discriminator 3
	movs	r3, #1
	b	.L135
.L134:
	.loc 1 418 0 discriminator 4
	movs	r3, #0
.L135:
	.loc 1 418 0 discriminator 6
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 419 0 is_stmt 1 discriminator 6
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L138:
	.align	2
.L137:
	.word	LCDScreen
	.cfi_endproc
.LFE22:
	.size	LCDIF_IsLayerInitialized, .-LCDIF_IsLayerInitialized
	.section	.text.LCDIF_UpdateRectangle,"ax",%progbits
	.align	2
	.global	LCDIF_UpdateRectangle
	.code	16
	.thumb_func
	.type	LCDIF_UpdateRectangle, %function
LCDIF_UpdateRectangle:
.LFB23:
	.loc 1 422 0
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
	movs	r3, r7
	str	r0, [r3]
	str	r1, [r3, #4]
	.loc 1 423 0
	ldr	r2, .L142
	movs	r3, r7
	movs	r1, r2
	movs	r0, r3
	bl	GDI_ANDRectangles
	subs	r3, r0, #0
	beq	.L141
.LBB15:
	.loc 1 425 0
	movs	r3, r7
	movs	r0, r3
	bl	ILI9341_SetOutputWindow
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 427 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L141
	.loc 1 428 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	LCDIF_AddCommandToQueue
.L141:
.LBE15:
	.loc 1 430 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L143:
	.align	2
.L142:
	.word	LCDScreen
	.cfi_endproc
.LFE23:
	.size	LCDIF_UpdateRectangle, .-LCDIF_UpdateRectangle
	.section	.text.LCDIF_UpdateRectangleBlocked,"ax",%progbits
	.align	2
	.global	LCDIF_UpdateRectangleBlocked
	.code	16
	.thumb_func
	.type	LCDIF_UpdateRectangleBlocked, %function
LCDIF_UpdateRectangleBlocked:
.LFB24:
	.loc 1 433 0
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
	.loc 1 434 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L148
	.loc 1 436 0
	ldr	r3, [r7, #4]
	ldrh	r2, [r3]
	ldrh	r1, [r3, #2]
	lsls	r1, r1, #16
	orrs	r2, r1
	movs	r1, #0
	movs	r1, r2
	ldrh	r2, [r3, #4]
	ldrh	r3, [r3, #6]
	lsls	r3, r3, #16
	orrs	r3, r2
	movs	r2, #0
	movs	r2, r3
	movs	r0, r1
	movs	r1, r2
	bl	LCDIF_UpdateRectangle
	.loc 1 437 0
	nop
.L147:
	.loc 1 437 0 is_stmt 0 discriminator 1
	bl	LCDIF_IsQueueRunning
	subs	r3, r0, #0
	bne	.L147
	b	.L144
.L148:
	.loc 1 434 0 is_stmt 1
	nop
.L144:
	.loc 1 438 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE24:
	.size	LCDIF_UpdateRectangleBlocked, .-LCDIF_UpdateRectangleBlocked
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\lock.h"
	.file 5 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_types.h"
	.file 6 "d:\\1.11\\share\\em_armgcc\\lib\\gcc\\arm-none-eabi\\5.4.1\\include\\stddef.h"
	.file 7 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\reent.h"
	.file 8 ".\\Source/systypes.h"
	.file 9 ".\\Source\\System/dlist.h"
	.file 10 ".\\Source\\Lib\\MT6261/drivers\\pll.h"
	.file 11 ".\\Source\\GUI/gditypes.h"
	.file 12 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 13 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1471
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF295
	.byte	0xc
	.4byte	.LASF296
	.4byte	.LASF297
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
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x72
	.4byte	0x62
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
	.4byte	0x89
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
	.4byte	0x74
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
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.byte	0x30
	.4byte	0x89
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x30
	.4byte	0x89
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0x30
	.4byte	0x89
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
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x38
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x7
	.byte	0x39
	.4byte	0x89
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3a
	.4byte	0x89
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x7
	.byte	0x3b
	.4byte	0x89
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x7
	.byte	0x3c
	.4byte	0x89
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x7
	.byte	0x3d
	.4byte	0x89
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x3e
	.4byte	0x89
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x3f
	.4byte	0x89
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
	.4byte	0x89
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
	.4byte	0x89
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
	.4byte	0x89
	.byte	0x4
	.uleb128 0xf
	.ascii	"_w\000"
	.byte	0x7
	.byte	0xb6
	.4byte	0x89
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0xb7
	.4byte	0x49
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x7
	.byte	0xb8
	.4byte	0x49
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
	.4byte	0x89
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
	.4byte	0x89
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
	.4byte	0x89
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
	.4byte	0x89
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.4byte	0x89
	.4byte	0x47e
	.uleb128 0x14
	.4byte	0x47e
	.uleb128 0x14
	.4byte	0x164
	.uleb128 0x14
	.4byte	0x166
	.uleb128 0x14
	.4byte	0x89
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
	.4byte	0x89
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
	.4byte	0x89
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
	.4byte	0x89
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
	.4byte	0x89
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
	.4byte	0x89
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
	.4byte	0x89
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
	.4byte	0x89
	.4byte	0x5da
	.uleb128 0x14
	.4byte	0x47e
	.uleb128 0x14
	.4byte	0x164
	.uleb128 0x14
	.4byte	0x5da
	.uleb128 0x14
	.4byte	0x89
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
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5eb
	.uleb128 0x13
	.4byte	0x89
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
	.4byte	0x89
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
	.4byte	0x5b
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x5b
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
	.4byte	0x89
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x25e
	.4byte	0x82
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
	.4byte	0x89
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
	.4byte	0x89
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
	.4byte	0x89
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
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x9
	.byte	0x17
	.4byte	0x8ef
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0xc
	.byte	0x9
	.byte	0x18
	.4byte	0x920
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x9
	.byte	0x1a
	.4byte	0x920
	.byte	0
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x9
	.byte	0x1b
	.4byte	0x920
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x9
	.byte	0x1c
	.4byte	0x164
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x9
	.byte	0x17
	.4byte	0x92b
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8ef
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0xc
	.byte	0x9
	.byte	0x1f
	.4byte	0x962
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x9
	.byte	0x21
	.4byte	0x920
	.byte	0
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x9
	.byte	0x22
	.4byte	0x920
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x9
	.byte	0x23
	.4byte	0xb8
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x9
	.byte	0x24
	.4byte	0x96d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x931
	.uleb128 0x20
	.4byte	.LASF147
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0x4a
	.4byte	0x9a8
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF144
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF145
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0xa
	.byte	0x52
	.4byte	0x973
	.uleb128 0x20
	.4byte	.LASF148
	.byte	0x4
	.4byte	0x90
	.byte	0xb
	.byte	0x16
	.4byte	0xaa5
	.uleb128 0x21
	.4byte	.LASF149
	.4byte	0xff000000
	.uleb128 0x21
	.4byte	.LASF150
	.4byte	0xff003366
	.uleb128 0x21
	.4byte	.LASF151
	.4byte	0xff000080
	.uleb128 0x21
	.4byte	.LASF152
	.4byte	0xff008000
	.uleb128 0x21
	.4byte	.LASF153
	.4byte	0xff008080
	.uleb128 0x21
	.4byte	.LASF154
	.4byte	0xff400000
	.uleb128 0x21
	.4byte	.LASF155
	.4byte	0xff404040
	.uleb128 0x21
	.4byte	.LASF156
	.4byte	0xff800000
	.uleb128 0x21
	.4byte	.LASF157
	.4byte	0xff800080
	.uleb128 0x21
	.4byte	.LASF158
	.4byte	0xff808000
	.uleb128 0x21
	.4byte	.LASF159
	.4byte	0xff808080
	.uleb128 0x21
	.4byte	.LASF160
	.4byte	0xffc0c0c0
	.uleb128 0x21
	.4byte	.LASF161
	.4byte	0xff0000ff
	.uleb128 0x21
	.4byte	.LASF162
	.4byte	0xff00c000
	.uleb128 0x21
	.4byte	.LASF163
	.4byte	0xff00ff00
	.uleb128 0x21
	.4byte	.LASF164
	.4byte	0xff00ffff
	.uleb128 0x21
	.4byte	.LASF165
	.4byte	0xffff0000
	.uleb128 0x21
	.4byte	.LASF166
	.4byte	0xffff00ff
	.uleb128 0x21
	.4byte	.LASF167
	.4byte	0xffffff00
	.uleb128 0x21
	.4byte	.LASF168
	.4byte	0xffffffff
	.uleb128 0x21
	.4byte	.LASF169
	.4byte	0xffc0dcc0
	.uleb128 0x21
	.4byte	.LASF170
	.4byte	0xfff0c8a4
	.uleb128 0x21
	.4byte	.LASF171
	.4byte	0xfff0f8fc
	.uleb128 0x21
	.4byte	.LASF172
	.4byte	0xffa4a0a0
	.uleb128 0x21
	.4byte	.LASF173
	.4byte	0xffc8d0d4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF174
	.byte	0x1
	.4byte	0x37
	.byte	0xb
	.byte	0x33
	.4byte	0xae6
	.uleb128 0x1f
	.4byte	.LASF175
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF176
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF177
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF178
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF179
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF181
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF182
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0xb
	.byte	0x3d
	.4byte	0xaa5
	.uleb128 0xe
	.4byte	.LASF184
	.byte	0x4
	.byte	0xb
	.byte	0x41
	.4byte	0xb12
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0xb
	.byte	0x43
	.4byte	0xa2
	.byte	0
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0xb
	.byte	0x44
	.4byte	0xa2
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0xb
	.byte	0x45
	.4byte	0xaf1
	.uleb128 0xa
	.byte	0x8
	.byte	0xb
	.byte	0x49
	.4byte	0xb3c
	.uleb128 0xf
	.ascii	"lt\000"
	.byte	0xb
	.byte	0x4b
	.4byte	0xb12
	.byte	0
	.uleb128 0xf
	.ascii	"rb\000"
	.byte	0xb
	.byte	0x4c
	.4byte	0xb12
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0xb
	.byte	0x4e
	.4byte	0xb6d
	.uleb128 0xf
	.ascii	"l\000"
	.byte	0xb
	.byte	0x50
	.4byte	0xa2
	.byte	0
	.uleb128 0xf
	.ascii	"t\000"
	.byte	0xb
	.byte	0x51
	.4byte	0xa2
	.byte	0x2
	.uleb128 0xf
	.ascii	"r\000"
	.byte	0xb
	.byte	0x52
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xf
	.ascii	"b\000"
	.byte	0xb
	.byte	0x53
	.4byte	0xa2
	.byte	0x6
	.byte	0
	.uleb128 0x22
	.4byte	.LASF298
	.byte	0x8
	.byte	0xb
	.byte	0x47
	.4byte	0xb84
	.uleb128 0x23
	.4byte	0xb1d
	.uleb128 0x23
	.4byte	0xb3c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0xb
	.byte	0x55
	.4byte	0xb6d
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0xb
	.byte	0x55
	.4byte	0xb9a
	.uleb128 0xd
	.byte	0x4
	.4byte	0xb6d
	.uleb128 0xe
	.4byte	.LASF188
	.byte	0x24
	.byte	0xb
	.byte	0x63
	.4byte	0xbc5
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xb
	.byte	0x65
	.4byte	0xb8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0xb
	.byte	0x66
	.4byte	0xbc5
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	0xb84
	.4byte	0xbd5
	.uleb128 0x9
	.4byte	0x126
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF190
	.byte	0xb
	.byte	0x67
	.4byte	0xbe0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xba0
	.uleb128 0xe
	.4byte	.LASF191
	.byte	0x20
	.byte	0xc
	.byte	0xb9
	.4byte	0xc53
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0xc
	.byte	0xbb
	.4byte	0xb8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0xc
	.byte	0xbc
	.4byte	0xb8
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF194
	.byte	0xc
	.byte	0xbd
	.4byte	0xb8
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0xc
	.byte	0xbe
	.4byte	0xb8
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0xc
	.byte	0xbf
	.4byte	0xb8
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0xc
	.byte	0xc0
	.4byte	0xb8
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0xc
	.byte	0xc1
	.4byte	0xb8
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF199
	.byte	0xc
	.byte	0xc2
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF200
	.byte	0xc
	.byte	0xc3
	.4byte	0xbe6
	.uleb128 0x3
	.4byte	.LASF201
	.byte	0xc
	.byte	0xc3
	.4byte	0xc69
	.uleb128 0xd
	.byte	0x4
	.4byte	0xbe6
	.uleb128 0x20
	.4byte	.LASF202
	.byte	0x1
	.4byte	0x37
	.byte	0xc
	.byte	0xf1
	.4byte	0xc9e
	.uleb128 0x1f
	.4byte	.LASF203
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF204
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF205
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF206
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF207
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF208
	.byte	0xc
	.byte	0xf8
	.4byte	0xc6f
	.uleb128 0x19
	.4byte	.LASF209
	.byte	0x1c
	.byte	0xc
	.2byte	0x119
	.4byte	0xd1f
	.uleb128 0x16
	.4byte	.LASF210
	.byte	0xc
	.2byte	0x11b
	.4byte	0x8d9
	.byte	0
	.uleb128 0x16
	.4byte	.LASF211
	.byte	0xc
	.2byte	0x11c
	.4byte	0x8d9
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF212
	.byte	0xc
	.2byte	0x11d
	.4byte	0xb84
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF213
	.byte	0xc
	.2byte	0x11e
	.4byte	0xb12
	.byte	0xa
	.uleb128 0x16
	.4byte	.LASF214
	.byte	0xc
	.2byte	0x11f
	.4byte	0xb8
	.byte	0x10
	.uleb128 0x24
	.ascii	"BPP\000"
	.byte	0xc
	.2byte	0x120
	.4byte	0x97
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF215
	.byte	0xc
	.2byte	0x121
	.4byte	0xae6
	.byte	0x15
	.uleb128 0x16
	.4byte	.LASF216
	.byte	0xc
	.2byte	0x122
	.4byte	0x164
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.4byte	.LASF217
	.byte	0xc
	.2byte	0x123
	.4byte	0xca9
	.uleb128 0x5
	.4byte	.LASF218
	.byte	0xc
	.2byte	0x123
	.4byte	0xd37
	.uleb128 0xd
	.byte	0x4
	.4byte	0xca9
	.uleb128 0x19
	.4byte	.LASF219
	.byte	0x88
	.byte	0xc
	.2byte	0x125
	.4byte	0xd99
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0xc
	.2byte	0x127
	.4byte	0xb84
	.byte	0
	.uleb128 0x16
	.4byte	.LASF221
	.byte	0xc
	.2byte	0x128
	.4byte	0xb12
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF222
	.byte	0xc
	.2byte	0x129
	.4byte	0xb8
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF223
	.byte	0xc
	.2byte	0x12a
	.4byte	0xb8
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF211
	.byte	0xc
	.2byte	0x12b
	.4byte	0x8d9
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF224
	.byte	0xc
	.2byte	0x12c
	.4byte	0xd99
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	0xd1f
	.4byte	0xda9
	.uleb128 0x9
	.4byte	0x126
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF225
	.byte	0xc
	.2byte	0x12d
	.4byte	0xd3d
	.uleb128 0x19
	.4byte	.LASF226
	.byte	0x18
	.byte	0xc
	.2byte	0x12f
	.4byte	0xdf7
	.uleb128 0x16
	.4byte	.LASF227
	.byte	0xc
	.2byte	0x131
	.4byte	0x8e4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF228
	.byte	0xc
	.2byte	0x132
	.4byte	0xb84
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF229
	.byte	0xc
	.2byte	0x133
	.4byte	0xb8
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF230
	.byte	0xc
	.2byte	0x134
	.4byte	0xdf7
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	0xb8
	.4byte	0xe06
	.uleb128 0x25
	.4byte	0x126
	.byte	0
	.uleb128 0x5
	.4byte	.LASF231
	.byte	0xc
	.2byte	0x135
	.4byte	0xe12
	.uleb128 0xd
	.byte	0x4
	.4byte	0xdb5
	.uleb128 0x20
	.4byte	.LASF232
	.byte	0x1
	.4byte	0x37
	.byte	0xd
	.byte	0x24
	.4byte	0xe5f
	.uleb128 0x1f
	.4byte	.LASF233
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF234
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF235
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF236
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF237
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF238
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF240
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF241
	.byte	0x7
	.byte	0
	.uleb128 0x26
	.4byte	.LASF242
	.byte	0x1
	.byte	0x23
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe83
	.uleb128 0x27
	.ascii	"Cmd\000"
	.byte	0x1
	.byte	0x23
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x26
	.4byte	.LASF243
	.byte	0x1
	.byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea7
	.uleb128 0x28
	.4byte	.LASF133
	.byte	0x1
	.byte	0x28
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x29
	.4byte	.LASF246
	.byte	0x1
	.byte	0x2d
	.4byte	0x97
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF244
	.byte	0x1
	.byte	0x32
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee0
	.uleb128 0x28
	.4byte	.LASF245
	.byte	0x1
	.byte	0x32
	.4byte	0x9a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0x37
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.4byte	.LASF247
	.byte	0x1
	.byte	0x3d
	.4byte	0x8d9
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF248
	.byte	0x1
	.byte	0x42
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2a
	.uleb128 0x2c
	.4byte	.LASF249
	.byte	0x1
	.byte	0x44
	.4byte	0x920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF252
	.byte	0x1
	.byte	0x4a
	.4byte	0x8d9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf80
	.uleb128 0x2c
	.4byte	.LASF249
	.byte	0x1
	.byte	0x4c
	.4byte	0x920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x2f
	.ascii	"CMD\000"
	.byte	0x1
	.byte	0x50
	.4byte	0xe06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x1
	.byte	0x5b
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF250
	.byte	0x1
	.byte	0x6b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa4
	.uleb128 0x2c
	.4byte	.LASF251
	.byte	0x1
	.byte	0x6d
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF253
	.byte	0x1
	.byte	0x74
	.4byte	0x8d9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfcc
	.uleb128 0x27
	.ascii	"CMD\000"
	.byte	0x1
	.byte	0x74
	.4byte	0xe06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF254
	.byte	0x1
	.byte	0x81
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff0
	.uleb128 0x2c
	.4byte	.LASF255
	.byte	0x1
	.byte	0x83
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x30
	.4byte	.LASF256
	.byte	0x1
	.byte	0x8d
	.4byte	0x8d9
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.4byte	.LASF257
	.byte	0x1
	.byte	0x92
	.4byte	0x8d9
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF258
	.byte	0x1
	.byte	0x97
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1062
	.uleb128 0x31
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x104a
	.uleb128 0x2f
	.ascii	"_x\000"
	.byte	0x1
	.byte	0xa1
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2f
	.ascii	"_x\000"
	.byte	0x1
	.byte	0xa2
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF259
	.byte	0x1
	.byte	0xa6
	.4byte	0x8d9
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ae
	.uleb128 0x31
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x1096
	.uleb128 0x2f
	.ascii	"_x\000"
	.byte	0x1
	.byte	0xb0
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x2f
	.ascii	"_x\000"
	.byte	0x1
	.byte	0xb1
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF260
	.byte	0x1
	.byte	0xe9
	.4byte	0x8d9
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1140
	.uleb128 0x28
	.4byte	.LASF261
	.byte	0x1
	.byte	0xe9
	.4byte	0xc9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x28
	.4byte	.LASF262
	.byte	0x1
	.byte	0xe9
	.4byte	0xb12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.4byte	.LASF263
	.byte	0x1
	.byte	0xe9
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.4byte	.LASF264
	.byte	0x1
	.byte	0xe9
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.4byte	.LASF265
	.byte	0x1
	.byte	0xea
	.4byte	0xae6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.4byte	.LASF266
	.byte	0x1
	.byte	0xea
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.4byte	.LASF267
	.byte	0x1
	.byte	0xea
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x2f
	.ascii	"n\000"
	.byte	0x1
	.byte	0xf9
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x118
	.4byte	0x8d9
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1197
	.uleb128 0x33
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x118
	.4byte	0xc9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x33
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x118
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x33
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x118
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x34
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x11a
	.4byte	0xb84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x133
	.4byte	0x8d9
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d0
	.uleb128 0x33
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x133
	.4byte	0xc9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x33
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x133
	.4byte	0xb8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x13d
	.4byte	0x8d9
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f4
	.uleb128 0x33
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x13d
	.4byte	0xc9e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x33
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x13d
	.4byte	0xb84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x33
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x13d
	.4byte	0x8d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x2e
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x34
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x143
	.4byte	0xd2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x144
	.4byte	0xb84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x34
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x148
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x149
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x34
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x14a
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x34
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x14b
	.4byte	0xb84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x14c
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x14d
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x12c1
	.uleb128 0x35
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x155
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x34
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x16d
	.4byte	0xbd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x35
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x173
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x182
	.4byte	0xb84
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x187
	.4byte	0x8d9
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x136b
	.uleb128 0x33
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x187
	.4byte	0xb84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x187
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x34
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x189
	.4byte	0xb84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x34
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x18f
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x8d9
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1395
	.uleb128 0x33
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xc9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x38
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x1a5
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13d4
	.uleb128 0x39
	.ascii	"Rct\000"
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xb84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x34
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xe06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x1b0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13fa
	.uleb128 0x39
	.ascii	"Rct\000"
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xb8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF290
	.byte	0x7
	.2byte	0x2fd
	.4byte	0x47e
	.uleb128 0x3b
	.4byte	.LASF291
	.byte	0x1
	.byte	0x20
	.4byte	0xda9
	.uleb128 0x5
	.byte	0x3
	.4byte	LCDScreen
	.uleb128 0x8
	.4byte	0x1427
	.4byte	0x1427
	.uleb128 0x9
	.4byte	0x126
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.4byte	0x97
	.uleb128 0x3b
	.4byte	.LASF292
	.byte	0x1
	.byte	0x18
	.4byte	0x143d
	.uleb128 0x5
	.byte	0x3
	.4byte	CFormatToBPP
	.uleb128 0x18
	.4byte	0x1417
	.uleb128 0x8
	.4byte	0xc5e
	.4byte	0x1452
	.uleb128 0x9
	.4byte	0x126
	.byte	0x3
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF293
	.byte	0x1
	.byte	0x1a
	.4byte	0x1442
	.uleb128 0x5
	.byte	0x3
	.4byte	LCDIF_LAYER
	.uleb128 0x3b
	.4byte	.LASF294
	.byte	0x1
	.byte	0x21
	.4byte	0x962
	.uleb128 0x5
	.byte	0x3
	.4byte	LCDIFQueue
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2117
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.4byte	0xd4
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF159:
	.ascii	"clGray\000"
.LASF234:
	.ascii	"USB_EP1IN\000"
.LASF258:
	.ascii	"LCDIF_DisableInterface\000"
.LASF24:
	.ascii	"sizetype\000"
.LASF270:
	.ascii	"LayerRect\000"
.LASF297:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF26:
	.ascii	"__value\000"
.LASF95:
	.ascii	"__sf\000"
.LASF192:
	.ascii	"LCDIF_LWINCON\000"
.LASF62:
	.ascii	"_read\000"
.LASF63:
	.ascii	"_write\000"
.LASF259:
	.ascii	"LCDIF_Initialize\000"
.LASF106:
	.ascii	"_asctime_buf\000"
.LASF89:
	.ascii	"_cvtlen\000"
.LASF188:
	.ascii	"tag_RLIST\000"
.LASF160:
	.ascii	"clSilver\000"
.LASF244:
	.ascii	"LCDIF_SetClock\000"
.LASF170:
	.ascii	"clSkyBlue\000"
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
.LASF114:
	.ascii	"_l64a_buf\000"
.LASF223:
	.ascii	"ScreenIndex\000"
.LASF183:
	.ascii	"TCFORMAT\000"
.LASF71:
	.ascii	"_lock\000"
.LASF102:
	.ascii	"_mult\000"
.LASF164:
	.ascii	"clYellow\000"
.LASF287:
	.ascii	"LCDIF_UpdateRectangle\000"
.LASF163:
	.ascii	"clLime\000"
.LASF200:
	.ascii	"TLAYER\000"
.LASF277:
	.ascii	"ChangedPitch\000"
.LASF190:
	.ascii	"pRLIST\000"
.LASF186:
	.ascii	"TRECT\000"
.LASF22:
	.ascii	"__wch\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF59:
	.ascii	"_file\000"
.LASF46:
	.ascii	"_on_exit_args\000"
.LASF269:
	.ascii	"UpdateScreen\000"
.LASF218:
	.ascii	"pLCONTEXT\000"
.LASF117:
	.ascii	"_mbrlen_state\000"
.LASF7:
	.ascii	"long int\000"
.LASF290:
	.ascii	"_impure_ptr\000"
.LASF86:
	.ascii	"_result_k\000"
.LASF56:
	.ascii	"_size\000"
.LASF210:
	.ascii	"Enabled\000"
.LASF107:
	.ascii	"_localtime_buf\000"
.LASF235:
	.ascii	"USB_EP2IN\000"
.LASF295:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF175:
	.ascii	"CF_8IDX\000"
.LASF191:
	.ascii	"tag_LAYER\000"
.LASF299:
	.ascii	"LCDIF_StartLCDTransfer\000"
.LASF41:
	.ascii	"__tm_mon\000"
.LASF232:
	.ascii	"tag_EP\000"
.LASF278:
	.ascii	"ChangedHeight\000"
.LASF253:
	.ascii	"LCDIF_AddCommandToQueue\000"
.LASF81:
	.ascii	"_current_category\000"
.LASF249:
	.ascii	"tmpItem\000"
.LASF104:
	.ascii	"_unused_rand\000"
.LASF0:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF128:
	.ascii	"boolean\000"
.LASF265:
	.ascii	"CFormat\000"
.LASF168:
	.ascii	"clWhite\000"
.LASF294:
	.ascii	"LCDIFQueue\000"
.LASF222:
	.ascii	"ScreenCount\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF243:
	.ascii	"LCDIF_WriteData\000"
.LASF241:
	.ascii	"USB_EPNUM\000"
.LASF74:
	.ascii	"_reent\000"
.LASF201:
	.ascii	"pLAYER\000"
.LASF195:
	.ascii	"LCDIF_LWINADD\000"
.LASF196:
	.ascii	"LCDIF_LWINSIZE\000"
.LASF29:
	.ascii	"char\000"
.LASF268:
	.ascii	"LCDIF_SetLayerEnabled\000"
.LASF53:
	.ascii	"_fns\000"
.LASF65:
	.ascii	"_close\000"
.LASF296:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\lcdif.c\000"
.LASF139:
	.ascii	"pDLIST\000"
.LASF289:
	.ascii	"LCDIF_UpdateRectangleBlocked\000"
.LASF267:
	.ascii	"ForeColor\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF281:
	.ascii	"NewFrameSize\000"
.LASF154:
	.ascii	"clDarkBlue\000"
.LASF76:
	.ascii	"_stdin\000"
.LASF251:
	.ascii	"flags\000"
.LASF173:
	.ascii	"clBtnFace\000"
.LASF193:
	.ascii	"LCDIF_LWINKEY\000"
.LASF226:
	.ascii	"tag_TLCDCMD\000"
.LASF149:
	.ascii	"clBlack\000"
.LASF180:
	.ascii	"CF_PARGB8888\000"
.LASF224:
	.ascii	"VLayer\000"
.LASF225:
	.ascii	"TSCREEN\000"
.LASF169:
	.ascii	"clMoneyGreen\000"
.LASF280:
	.ascii	"CurrentFrameSize\000"
.LASF252:
	.ascii	"LCDIF_GetCommandFromQueue\000"
.LASF126:
	.ascii	"false\000"
.LASF148:
	.ascii	"tag_COLOR\000"
.LASF178:
	.ascii	"CF_RGB888\000"
.LASF130:
	.ascii	"tag_ListItem\000"
.LASF219:
	.ascii	"tag_TSCREEN\000"
.LASF254:
	.ascii	"LCDIF_ISR\000"
.LASF61:
	.ascii	"_cookie\000"
.LASF239:
	.ascii	"USB_EP1OUT\000"
.LASF279:
	.ascii	"NewLayerRgn\000"
.LASF221:
	.ascii	"ScreenOffset\000"
.LASF34:
	.ascii	"_wds\000"
.LASF248:
	.ascii	"LCDIF_DeleteCommandFromQueue\000"
.LASF167:
	.ascii	"clAqua\000"
.LASF147:
	.ascii	"tag_TLCDSCLOCK\000"
.LASF93:
	.ascii	"_sig_func\000"
.LASF155:
	.ascii	"clDarkGray\000"
.LASF292:
	.ascii	"CFormatToBPP\000"
.LASF69:
	.ascii	"_offset\000"
.LASF90:
	.ascii	"_cvtbuf\000"
.LASF298:
	.ascii	"tag_RECT\000"
.LASF256:
	.ascii	"LCDIF_RegisterISR\000"
.LASF212:
	.ascii	"LayerRgn\000"
.LASF184:
	.ascii	"tag_POINT\000"
.LASF182:
	.ascii	"CF_NUM\000"
.LASF236:
	.ascii	"USB_EP3IN\000"
.LASF87:
	.ascii	"_p5s\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF245:
	.ascii	"Clock\000"
.LASF57:
	.ascii	"__sFILE\000"
.LASF83:
	.ascii	"__sdidinit\000"
.LASF73:
	.ascii	"_flags2\000"
.LASF214:
	.ascii	"LayerEnMask\000"
.LASF18:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF75:
	.ascii	"_errno\000"
.LASF288:
	.ascii	"Command\000"
.LASF115:
	.ascii	"_signal_buf\000"
.LASF152:
	.ascii	"clGreen\000"
.LASF233:
	.ascii	"USB_EP0\000"
.LASF35:
	.ascii	"_Bigint\000"
.LASF32:
	.ascii	"_maxwds\000"
.LASF84:
	.ascii	"__cleanup\000"
.LASF92:
	.ascii	"_atexit0\000"
.LASF266:
	.ascii	"GlobalAlpha\000"
.LASF247:
	.ascii	"LCDIF_IsQueueRunning\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF80:
	.ascii	"_emergency\000"
.LASF181:
	.ascii	"CF_xRGB8888\000"
.LASF231:
	.ascii	"pLCDCMD\000"
.LASF10:
	.ascii	"long long int\000"
.LASF209:
	.ascii	"tag_TLCONTEXT\000"
.LASF246:
	.ascii	"LCDIF_ReadData\000"
.LASF179:
	.ascii	"CF_ARGB8888\000"
.LASF98:
	.ascii	"_niobs\000"
.LASF138:
	.ascii	"Count\000"
.LASF94:
	.ascii	"__sglue\000"
.LASF124:
	.ascii	"_nmalloc\000"
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
.LASF33:
	.ascii	"_sign\000"
.LASF153:
	.ascii	"clOlive\000"
.LASF261:
	.ascii	"Layer\000"
.LASF242:
	.ascii	"LCDIF_WriteCommand\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF129:
	.ascii	"TDLITEM\000"
.LASF211:
	.ascii	"Initialized\000"
.LASF122:
	.ascii	"_h_errno\000"
.LASF216:
	.ascii	"FrameBuffer\000"
.LASF120:
	.ascii	"_wcrtomb_state\000"
.LASF257:
	.ascii	"LCDIF_UnregisterISR\000"
.LASF40:
	.ascii	"__tm_mday\000"
.LASF91:
	.ascii	"_new\000"
.LASF66:
	.ascii	"_ubuf\000"
.LASF230:
	.ascii	"CmdArray\000"
.LASF78:
	.ascii	"_stderr\000"
.LASF113:
	.ascii	"_wctomb_state\000"
.LASF72:
	.ascii	"_mbstate\000"
.LASF109:
	.ascii	"_rand_next\000"
.LASF58:
	.ascii	"_flags\000"
.LASF213:
	.ascii	"LayerOffset\000"
.LASF227:
	.ascii	"ListHeader\000"
.LASF237:
	.ascii	"USB_EP4IN\000"
.LASF134:
	.ascii	"pDLITEM\000"
.LASF51:
	.ascii	"_atexit\000"
.LASF229:
	.ascii	"CMDCount\000"
.LASF185:
	.ascii	"TPOINT\000"
.LASF25:
	.ascii	"__count\000"
.LASF238:
	.ascii	"USB_EPMAXINDEX\000"
.LASF255:
	.ascii	"IntID\000"
.LASF140:
	.ascii	"LCD_MUX_MPLL_DIV4\000"
.LASF141:
	.ascii	"LCD_MUX_MPLL_DIV5\000"
.LASF142:
	.ascii	"LCD_MUX_MPLL_DIV6\000"
.LASF143:
	.ascii	"LCD_MUX_MPLL_DIV7\000"
.LASF144:
	.ascii	"LCD_MUX_MPLL_DIV8\000"
.LASF43:
	.ascii	"__tm_wday\000"
.LASF17:
	.ascii	"long double\000"
.LASF44:
	.ascii	"__tm_yday\000"
.LASF174:
	.ascii	"tag_CFORMAT\000"
.LASF101:
	.ascii	"_seed\000"
.LASF151:
	.ascii	"clMaroon\000"
.LASF64:
	.ascii	"_seek\000"
.LASF177:
	.ascii	"CF_YUYV422\000"
.LASF262:
	.ascii	"Offset\000"
.LASF20:
	.ascii	"_fpos_t\000"
.LASF273:
	.ascii	"LCDIF_SetLayerPosition\000"
.LASF23:
	.ascii	"__wchb\000"
.LASF161:
	.ascii	"clRed\000"
.LASF112:
	.ascii	"_mbtowc_state\000"
.LASF189:
	.ascii	"Item\000"
.LASF176:
	.ascii	"CF_RGB565\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF145:
	.ascii	"LCD_MUX_13M\000"
.LASF263:
	.ascii	"SizeX\000"
.LASF264:
	.ascii	"SizeY\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF48:
	.ascii	"_dso_handle\000"
.LASF100:
	.ascii	"_rand48\000"
.LASF77:
	.ascii	"_stdout\000"
.LASF162:
	.ascii	"clMidGreen\000"
.LASF68:
	.ascii	"_blksize\000"
.LASF275:
	.ascii	"PrevLayerPosition\000"
.LASF55:
	.ascii	"_base\000"
.LASF135:
	.ascii	"tag_DList\000"
.LASF105:
	.ascii	"_strtok_last\000"
.LASF118:
	.ascii	"_mbrtowc_state\000"
.LASF202:
	.ascii	"tag_VLINDEX\000"
.LASF217:
	.ascii	"TLCONTEXT\000"
.LASF28:
	.ascii	"_flock_t\000"
.LASF96:
	.ascii	"__FILE\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF27:
	.ascii	"_mbstate_t\000"
.LASF172:
	.ascii	"clMedGray\000"
.LASF110:
	.ascii	"_r48\000"
.LASF21:
	.ascii	"wint_t\000"
.LASF271:
	.ascii	"LCDIF_GetLayerPosition\000"
.LASF31:
	.ascii	"_next\000"
.LASF70:
	.ascii	"_data\000"
.LASF203:
	.ascii	"LCDIF_LAYER0\000"
.LASF204:
	.ascii	"LCDIF_LAYER1\000"
.LASF205:
	.ascii	"LCDIF_LAYER2\000"
.LASF206:
	.ascii	"LCDIF_LAYER3\000"
.LASF250:
	.ascii	"LCDIF_RestartQueue\000"
.LASF187:
	.ascii	"pRECT\000"
.LASF198:
	.ascii	"LCDIF_LWINMOFS\000"
.LASF197:
	.ascii	"LCDIF_LWINSCRL\000"
.LASF285:
	.ascii	"PrevPosition\000"
.LASF156:
	.ascii	"clNavy\000"
.LASF293:
	.ascii	"LCDIF_LAYER\000"
.LASF132:
	.ascii	"Next\000"
.LASF260:
	.ascii	"LCDIF_SetupLayer\000"
.LASF133:
	.ascii	"Data\000"
.LASF111:
	.ascii	"_mblen_state\000"
.LASF4:
	.ascii	"short int\000"
.LASF283:
	.ascii	"LCDIF_GetScreenPosition\000"
.LASF131:
	.ascii	"Prev\000"
.LASF166:
	.ascii	"clFuchsia\000"
.LASF282:
	.ascii	"UpdateRects\000"
.LASF286:
	.ascii	"LCDIF_IsLayerInitialized\000"
.LASF137:
	.ascii	"Last\000"
.LASF14:
	.ascii	"int16_t\000"
.LASF157:
	.ascii	"clPurple\000"
.LASF150:
	.ascii	"clBrown\000"
.LASF49:
	.ascii	"_fntypes\000"
.LASF127:
	.ascii	"true\000"
.LASF42:
	.ascii	"__tm_year\000"
.LASF199:
	.ascii	"LCDIF_LWINPITCH\000"
.LASF291:
	.ascii	"LCDScreen\000"
.LASF60:
	.ascii	"_lbfsize\000"
.LASF79:
	.ascii	"_inc\000"
.LASF52:
	.ascii	"_ind\000"
.LASF240:
	.ascii	"USB_EP2OUT\000"
.LASF207:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF54:
	.ascii	"__sbuf\000"
.LASF50:
	.ascii	"_is_cxa\000"
.LASF123:
	.ascii	"_nextf\000"
.LASF136:
	.ascii	"First\000"
.LASF30:
	.ascii	"__ULong\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF208:
	.ascii	"TVLINDEX\000"
.LASF85:
	.ascii	"_result\000"
.LASF276:
	.ascii	"intflags\000"
.LASF165:
	.ascii	"clBlue\000"
.LASF215:
	.ascii	"ColorFormat\000"
.LASF272:
	.ascii	"Position\000"
.LASF19:
	.ascii	"_off_t\000"
.LASF103:
	.ascii	"_add\000"
.LASF228:
	.ascii	"UpdateRect\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF39:
	.ascii	"__tm_hour\000"
.LASF146:
	.ascii	"TLCDSCLOCK\000"
.LASF171:
	.ascii	"clCream\000"
.LASF158:
	.ascii	"clTeal\000"
.LASF220:
	.ascii	"ScreenRgn\000"
.LASF119:
	.ascii	"_mbsrtowcs_state\000"
.LASF274:
	.ascii	"ModLayer\000"
.LASF284:
	.ascii	"LCDIF_SetScreenPosition\000"
.LASF47:
	.ascii	"_fnargs\000"
.LASF45:
	.ascii	"__tm_isdst\000"
.LASF194:
	.ascii	"LCDIF_LWINOFFS\000"
.LASF38:
	.ascii	"__tm_min\000"
.LASF116:
	.ascii	"_getdate_err\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
