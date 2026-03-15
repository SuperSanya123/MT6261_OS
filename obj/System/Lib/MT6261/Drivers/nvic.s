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
	.file	"nvic.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.bss.IRQHandlers,"aw",%nobits
	.align	2
	.type	IRQHandlers, %object
	.size	IRQHandlers, 212
IRQHandlers:
	.space	212
	.section	.bss.EINTHandlers,"aw",%nobits
	.align	2
	.type	EINTHandlers, %object
	.size	EINTHandlers, 100
EINTHandlers:
	.space	100
	.section	.bss.AIRQHandlers,"aw",%nobits
	.align	2
	.type	AIRQHandlers, %object
	.size	AIRQHandlers, 16
AIRQHandlers:
	.space	16
	.section	.bss.AEINTHandlers,"aw",%nobits
	.align	2
	.type	AEINTHandlers, %object
	.size	AEINTHandlers, 56
AEINTHandlers:
	.space	56
	.section	.text.NVIC_GetIRQStatus2,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_GetIRQStatus2, %function
NVIC_GetIRQStatus2:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\nvic.c"
	.loc 1 31 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 32 0
	ldr	r3, .L3
	ldr	r3, [r3]
	.loc 1 33 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L4:
	.align	2
.L3:
	.word	-1610219104
	.cfi_endproc
.LFE1:
	.size	NVIC_GetIRQStatus2, .-NVIC_GetIRQStatus2
	.section	.text.NVIC_GetFIQStatus2,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_GetFIQStatus2, %function
NVIC_GetFIQStatus2:
.LFB2:
	.loc 1 36 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 37 0
	ldr	r3, .L7
	ldr	r3, [r3]
	.loc 1 38 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	-1610219100
	.cfi_endproc
.LFE2:
	.size	NVIC_GetFIQStatus2, .-NVIC_GetFIQStatus2
	.section	.text.NVIC_GetEINTStatus2,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_GetEINTStatus2, %function
NVIC_GetEINTStatus2:
.LFB3:
	.loc 1 41 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 42 0
	ldr	r3, .L11
	ldr	r3, [r3]
	movs	r0, r3
	bl	__ctz
	movs	r3, r0
	.loc 1 43 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	-1610218752
	.cfi_endproc
.LFE3:
	.size	NVIC_GetEINTStatus2, .-NVIC_GetEINTStatus2
	.section	.text.NVIC_GetAIRQStatus2,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_GetAIRQStatus2, %function
NVIC_GetAIRQStatus2:
.LFB4:
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
	ldr	r3, .L15
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 48 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	-1602879072
	.cfi_endproc
.LFE4:
	.size	NVIC_GetAIRQStatus2, .-NVIC_GetAIRQStatus2
	.section	.text.NVIC_GetAEINTStatus2,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_GetAEINTStatus2, %function
NVIC_GetAEINTStatus2:
.LFB5:
	.loc 1 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 52 0
	ldr	r3, .L19
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r0, r3
	bl	__ctz
	movs	r3, r0
	.loc 1 53 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L20:
	.align	2
.L19:
	.word	-1602878720
	.cfi_endproc
.LFE5:
	.size	NVIC_GetAEINTStatus2, .-NVIC_GetAEINTStatus2
	.section	.text.NVIC_SetIRQ_EOI,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_SetIRQ_EOI, %function
NVIC_SetIRQ_EOI:
.LFB6:
	.loc 1 56 0
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
	.loc 1 57 0
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bhi	.L23
	.loc 1 57 0 is_stmt 0 discriminator 1
	ldr	r3, .L24
	ldr	r2, [r7, #4]
	str	r2, [r3]
.L23:
	.loc 1 58 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L25:
	.align	2
.L24:
	.word	-1610219096
	.cfi_endproc
.LFE6:
	.size	NVIC_SetIRQ_EOI, .-NVIC_SetIRQ_EOI
	.section	.text.NVIC_SetAIRQ_EOI,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_SetAIRQ_EOI, %function
NVIC_SetAIRQ_EOI:
.LFB7:
	.loc 1 61 0
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
	.loc 1 62 0
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bhi	.L28
	.loc 1 62 0 is_stmt 0 discriminator 1
	ldr	r2, .L29
	ldr	r3, [r7, #4]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L28:
	.loc 1 63 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L30:
	.align	2
.L29:
	.word	-1602879064
	.cfi_endproc
.LFE7:
	.size	NVIC_SetAIRQ_EOI, .-NVIC_SetAIRQ_EOI
	.section	.text.NVIC_SetEINT_EOI,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_SetEINT_EOI, %function
NVIC_SetEINT_EOI:
.LFB8:
	.loc 1 66 0
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
	.loc 1 67 0
	ldr	r3, [r7, #4]
	cmp	r3, #24
	bhi	.L33
	.loc 1 67 0 is_stmt 0 discriminator 1
	ldr	r3, .L34
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L33:
	.loc 1 68 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L35:
	.align	2
.L34:
	.word	-1610218744
	.cfi_endproc
.LFE8:
	.size	NVIC_SetEINT_EOI, .-NVIC_SetEINT_EOI
	.section	.text.NVIC_SetAEINT_EOI,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_SetAEINT_EOI, %function
NVIC_SetAEINT_EOI:
.LFB9:
	.loc 1 71 0
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
	.loc 1 72 0
	ldr	r3, [r7, #4]
	cmp	r3, #13
	bhi	.L38
	.loc 1 72 0 is_stmt 0 discriminator 1
	ldr	r2, .L39
	movs	r1, #1
	ldr	r3, [r7, #4]
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L38:
	.loc 1 73 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L40:
	.align	2
.L39:
	.word	-1602878712
	.cfi_endproc
.LFE9:
	.size	NVIC_SetAEINT_EOI, .-NVIC_SetAEINT_EOI
	.section	.text.NVIC_UnmaskIRQ2,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_UnmaskIRQ2, %function
NVIC_UnmaskIRQ2:
.LFB10:
	.loc 1 77 0
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
	.loc 1 78 0
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bhi	.L42
	.loc 1 80 0
	ldr	r3, [r7, #4]
	cmp	r3, #31
	bhi	.L43
	.loc 1 82 0
	ldr	r3, .L45
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	.loc 1 83 0
	b	.L41
.L43:
	.loc 1 85 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #32
	str	r3, [r7, #4]
	.loc 1 86 0
	ldr	r3, .L45+4
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	.loc 1 87 0
	b	.L41
.L42:
	.loc 1 89 0
	ldr	r3, [r7, #4]
	cmp	r3, #63
	bls	.L41
	.loc 1 89 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #67
	bhi	.L41
	.loc 1 91 0 is_stmt 1
	ldr	r3, [r7, #4]
	subs	r3, r3, #64
	str	r3, [r7, #4]
	.loc 1 92 0
	ldr	r2, .L45+8
	movs	r1, #1
	ldr	r3, [r7, #4]
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L41:
	.loc 1 94 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L46:
	.align	2
.L45:
	.word	-1610219456
	.word	-1610219452
	.word	-1602879424
	.cfi_endproc
.LFE10:
	.size	NVIC_UnmaskIRQ2, .-NVIC_UnmaskIRQ2
	.section	.text.NVIC_MaskIRQ2,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_MaskIRQ2, %function
NVIC_MaskIRQ2:
.LFB11:
	.loc 1 97 0
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
	.loc 1 98 0
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bhi	.L48
	.loc 1 100 0
	ldr	r3, [r7, #4]
	cmp	r3, #31
	bhi	.L49
	.loc 1 102 0
	ldr	r3, .L51
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	.loc 1 103 0
	b	.L47
.L49:
	.loc 1 105 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #32
	str	r3, [r7, #4]
	.loc 1 106 0
	ldr	r3, .L51+4
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	.loc 1 107 0
	b	.L47
.L48:
	.loc 1 109 0
	ldr	r3, [r7, #4]
	cmp	r3, #63
	bls	.L47
	.loc 1 109 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #67
	bhi	.L47
	.loc 1 111 0 is_stmt 1
	ldr	r3, [r7, #4]
	subs	r3, r3, #64
	str	r3, [r7, #4]
	.loc 1 112 0
	ldr	r2, .L51+8
	movs	r1, #1
	ldr	r3, [r7, #4]
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L47:
	.loc 1 114 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L52:
	.align	2
.L51:
	.word	-1610219488
	.word	-1610219484
	.word	-1602879456
	.cfi_endproc
.LFE11:
	.size	NVIC_MaskIRQ2, .-NVIC_MaskIRQ2
	.section	.text.NVIC_SetIRQSenseEdge,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_SetIRQSenseEdge, %function
NVIC_SetIRQSenseEdge:
.LFB12:
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
	cmp	r3, #52
	bhi	.L54
	.loc 1 120 0
	ldr	r3, [r7, #4]
	cmp	r3, #31
	bhi	.L55
	.loc 1 122 0
	ldr	r3, .L57
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	.loc 1 123 0
	b	.L53
.L55:
	.loc 1 125 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #32
	str	r3, [r7, #4]
	.loc 1 126 0
	ldr	r3, .L57+4
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	.loc 1 127 0
	b	.L53
.L54:
	.loc 1 129 0
	ldr	r3, [r7, #4]
	cmp	r3, #63
	bls	.L53
	.loc 1 129 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #67
	bhi	.L53
	.loc 1 131 0 is_stmt 1
	ldr	r3, [r7, #4]
	subs	r3, r3, #64
	str	r3, [r7, #4]
	.loc 1 132 0
	ldr	r2, .L57+8
	movs	r1, #1
	ldr	r3, [r7, #4]
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L53:
	.loc 1 134 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L58:
	.align	2
.L57:
	.word	-1610219360
	.word	-1610219356
	.word	-1602879328
	.cfi_endproc
.LFE12:
	.size	NVIC_SetIRQSenseEdge, .-NVIC_SetIRQSenseEdge
	.section	.text.NVIC_SetIRQSenseLevel,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_SetIRQSenseLevel, %function
NVIC_SetIRQSenseLevel:
.LFB13:
	.loc 1 137 0
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
	.loc 1 138 0
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bhi	.L60
	.loc 1 140 0
	ldr	r3, [r7, #4]
	cmp	r3, #31
	bhi	.L61
	.loc 1 142 0
	ldr	r3, .L63
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	.loc 1 143 0
	b	.L59
.L61:
	.loc 1 145 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #32
	str	r3, [r7, #4]
	.loc 1 146 0
	ldr	r3, .L63+4
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	.loc 1 147 0
	b	.L59
.L60:
	.loc 1 149 0
	ldr	r3, [r7, #4]
	cmp	r3, #63
	bls	.L59
	.loc 1 149 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #67
	bhi	.L59
	.loc 1 151 0 is_stmt 1
	ldr	r3, [r7, #4]
	subs	r3, r3, #64
	str	r3, [r7, #4]
	.loc 1 152 0
	ldr	r2, .L63+8
	movs	r1, #1
	ldr	r3, [r7, #4]
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L59:
	.loc 1 154 0
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L64:
	.align	2
.L63:
	.word	-1610219392
	.word	-1610219388
	.word	-1602879360
	.cfi_endproc
.LFE13:
	.size	NVIC_SetIRQSenseLevel, .-NVIC_SetIRQSenseLevel
	.section	.text.NVIC_UnmaskEINT2,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_UnmaskEINT2, %function
NVIC_UnmaskEINT2:
.LFB14:
	.loc 1 158 0
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
	.loc 1 159 0
	ldr	r3, [r7, #4]
	cmp	r3, #24
	bhi	.L66
	.loc 1 159 0 is_stmt 0 discriminator 1
	ldr	r3, .L69
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	.loc 1 165 0 is_stmt 1 discriminator 1
	b	.L68
.L66:
	.loc 1 160 0
	ldr	r3, [r7, #4]
	cmp	r3, #38
	bhi	.L68
	.loc 1 162 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #25
	str	r3, [r7, #4]
	.loc 1 163 0
	ldr	r2, .L69+4
	movs	r1, #1
	ldr	r3, [r7, #4]
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L68:
	.loc 1 165 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L70:
	.align	2
.L69:
	.word	-1610218712
	.word	-1602878680
	.cfi_endproc
.LFE14:
	.size	NVIC_UnmaskEINT2, .-NVIC_UnmaskEINT2
	.section	.text.NVIC_MaskEINT2,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_MaskEINT2, %function
NVIC_MaskEINT2:
.LFB15:
	.loc 1 168 0
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
	.loc 1 169 0
	ldr	r3, [r7, #4]
	cmp	r3, #24
	bhi	.L72
	.loc 1 169 0 is_stmt 0 discriminator 1
	ldr	r3, .L75
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	.loc 1 175 0 is_stmt 1 discriminator 1
	b	.L74
.L72:
	.loc 1 170 0
	ldr	r3, [r7, #4]
	cmp	r3, #38
	bhi	.L74
	.loc 1 172 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #25
	str	r3, [r7, #4]
	.loc 1 173 0
	ldr	r2, .L75+4
	movs	r1, #1
	ldr	r3, [r7, #4]
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L74:
	.loc 1 175 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L76:
	.align	2
.L75:
	.word	-1610218720
	.word	-1602878688
	.cfi_endproc
.LFE15:
	.size	NVIC_MaskEINT2, .-NVIC_MaskEINT2
	.section	.text.NVIC_SetEINTSenseEdge,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_SetEINTSenseEdge, %function
NVIC_SetEINTSenseEdge:
.LFB16:
	.loc 1 178 0
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
	.loc 1 179 0
	ldr	r3, [r7, #4]
	cmp	r3, #24
	bhi	.L78
	.loc 1 179 0 is_stmt 0 discriminator 1
	ldr	r3, .L81
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	.loc 1 185 0 is_stmt 1 discriminator 1
	b	.L80
.L78:
	.loc 1 180 0
	ldr	r3, [r7, #4]
	cmp	r3, #38
	bhi	.L80
	.loc 1 182 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #25
	str	r3, [r7, #4]
	.loc 1 183 0
	ldr	r2, .L81+4
	movs	r1, #1
	ldr	r3, [r7, #4]
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L80:
	.loc 1 185 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L82:
	.align	2
.L81:
	.word	-1610218688
	.word	-1602878656
	.cfi_endproc
.LFE16:
	.size	NVIC_SetEINTSenseEdge, .-NVIC_SetEINTSenseEdge
	.section	.text.NVIC_SetEINTSenseLevel,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_SetEINTSenseLevel, %function
NVIC_SetEINTSenseLevel:
.LFB17:
	.loc 1 188 0
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
	.loc 1 189 0
	ldr	r3, [r7, #4]
	cmp	r3, #24
	bhi	.L84
	.loc 1 189 0 is_stmt 0 discriminator 1
	ldr	r3, .L87
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	.loc 1 195 0 is_stmt 1 discriminator 1
	b	.L86
.L84:
	.loc 1 190 0
	ldr	r3, [r7, #4]
	cmp	r3, #38
	bhi	.L86
	.loc 1 192 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #25
	str	r3, [r7, #4]
	.loc 1 193 0
	ldr	r2, .L87+4
	movs	r1, #1
	ldr	r3, [r7, #4]
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L86:
	.loc 1 195 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L88:
	.align	2
.L87:
	.word	-1610218696
	.word	-1602878664
	.cfi_endproc
.LFE17:
	.size	NVIC_SetEINTSenseLevel, .-NVIC_SetEINTSenseLevel
	.section	.text.NVIC_SetEINTPolarity,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_SetEINTPolarity, %function
NVIC_SetEINTPolarity:
.LFB18:
	.loc 1 198 0
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
	movs	r2, r1
	adds	r3, r7, #3
	strb	r2, [r3]
	.loc 1 199 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L90
	.loc 1 201 0
	ldr	r3, [r7, #4]
	cmp	r3, #24
	bhi	.L91
	.loc 1 201 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, .L96
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	ldr	r1, .L96
	mov	ip, r1
	add	r2, r2, ip
	lsls	r2, r2, #2
	ldr	r2, [r2]
	movs	r1, #128
	lsls	r1, r1, #4
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 217 0 is_stmt 1 discriminator 1
	b	.L95
.L91:
	.loc 1 202 0
	ldr	r3, [r7, #4]
	cmp	r3, #38
	bhi	.L95
	.loc 1 204 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #25
	str	r3, [r7, #4]
	.loc 1 205 0
	ldr	r3, [r7, #4]
	ldr	r2, .L96+4
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	movs	r1, r3
	ldr	r3, [r7, #4]
	ldr	r2, .L96+4
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #128
	lsls	r2, r2, #4
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 217 0
	b	.L95
.L90:
	.loc 1 210 0
	ldr	r3, [r7, #4]
	cmp	r3, #24
	bhi	.L94
	.loc 1 210 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, .L96
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	ldr	r1, .L96
	mov	ip, r1
	add	r2, r2, ip
	lsls	r2, r2, #2
	ldr	r2, [r2]
	ldr	r1, .L96+8
	ands	r2, r1
	str	r2, [r3]
	.loc 1 217 0 is_stmt 1 discriminator 1
	b	.L95
.L94:
	.loc 1 211 0
	ldr	r3, [r7, #4]
	cmp	r3, #38
	bhi	.L95
	.loc 1 213 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #25
	str	r3, [r7, #4]
	.loc 1 214 0
	ldr	r3, [r7, #4]
	ldr	r2, .L96+4
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	movs	r1, r3
	ldr	r3, [r7, #4]
	ldr	r2, .L96+4
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ldr	r2, .L96+8
	ands	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
.L95:
	.loc 1 217 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L97:
	.align	2
.L96:
	.word	671187168
	.word	673022176
	.word	-2049
	.cfi_endproc
.LFE18:
	.size	NVIC_SetEINTPolarity, .-NVIC_SetEINTPolarity
	.section	.text.NVIC_EnableEINT_D0Event2,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_EnableEINT_D0Event2, %function
NVIC_EnableEINT_D0Event2:
.LFB19:
	.loc 1 220 0
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
	.loc 1 221 0
	ldr	r3, [r7, #4]
	cmp	r3, #24
	bhi	.L99
	.loc 1 221 0 is_stmt 0 discriminator 1
	ldr	r3, .L102
	ldr	r2, .L102
	ldr	r2, [r2]
	movs	r0, #1
	ldr	r1, [r7, #4]
	lsls	r0, r0, r1
	movs	r1, r0
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 227 0 is_stmt 1 discriminator 1
	b	.L101
.L99:
	.loc 1 222 0
	ldr	r3, [r7, #4]
	cmp	r3, #38
	bhi	.L101
	.loc 1 224 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #25
	str	r3, [r7, #4]
	.loc 1 225 0
	ldr	r1, .L102+4
	ldr	r3, .L102+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	movs	r0, #1
	ldr	r3, [r7, #4]
	lsls	r0, r0, r3
	movs	r3, r0
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
.L101:
	.loc 1 227 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L103:
	.align	2
.L102:
	.word	-1610218656
	.word	-1602878624
	.cfi_endproc
.LFE19:
	.size	NVIC_EnableEINT_D0Event2, .-NVIC_EnableEINT_D0Event2
	.section	.text.NVIC_DisableEINT_D0Event2,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_DisableEINT_D0Event2, %function
NVIC_DisableEINT_D0Event2:
.LFB20:
	.loc 1 230 0
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
	.loc 1 231 0
	ldr	r3, [r7, #4]
	cmp	r3, #24
	bhi	.L105
	.loc 1 231 0 is_stmt 0 discriminator 1
	ldr	r3, .L108
	ldr	r2, .L108
	ldr	r2, [r2]
	movs	r0, #1
	ldr	r1, [r7, #4]
	lsls	r0, r0, r1
	movs	r1, r0
	mvns	r1, r1
	ands	r2, r1
	str	r2, [r3]
	.loc 1 237 0 is_stmt 1 discriminator 1
	b	.L107
.L105:
	.loc 1 232 0
	ldr	r3, [r7, #4]
	cmp	r3, #38
	bhi	.L107
	.loc 1 234 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #25
	str	r3, [r7, #4]
	.loc 1 235 0
	ldr	r1, .L108+4
	ldr	r3, .L108+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r0, #1
	ldr	r2, [r7, #4]
	lsls	r0, r0, r2
	movs	r2, r0
	lsls	r2, r2, #16
	asrs	r2, r2, #16
	mvns	r2, r2
	lsls	r2, r2, #16
	asrs	r2, r2, #16
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
.L107:
	.loc 1 237 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L109:
	.align	2
.L108:
	.word	-1610218656
	.word	-1602878624
	.cfi_endproc
.LFE20:
	.size	NVIC_DisableEINT_D0Event2, .-NVIC_DisableEINT_D0Event2
	.section	.text.NVIC_SetEINTDebounce,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	NVIC_SetEINTDebounce, %function
NVIC_SetEINTDebounce:
.LFB21:
	.loc 1 240 0
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
	movs	r2, r1
	adds	r3, r7, #2
	strh	r2, [r3]
	.loc 1 243 0
	ldr	r3, [r7, #4]
	cmp	r3, #24
	bhi	.L111
	.loc 1 245 0
	ldr	r3, .L117
	ldr	r3, [r3]
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 246 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L112
	.loc 1 246 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_MaskEINT2
.L112:
	.loc 1 247 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldr	r2, .L117+4
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	adds	r2, r7, #2
	ldrh	r2, [r2]
	ldr	r1, .L117+8
	ands	r2, r1
	str	r2, [r3]
	.loc 1 248 0
	movs	r0, #50
	bl	USC_Pause_us
	.loc 1 249 0
	ldr	r3, [r7, #4]
	ldr	r2, .L117+4
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	adds	r2, r7, #2
	ldrh	r2, [r2]
	str	r2, [r3]
	.loc 1 250 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_SetEINT_EOI
	.loc 1 251 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L116
	.loc 1 251 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_UnmaskEINT2
	.loc 1 268 0 is_stmt 1 discriminator 1
	b	.L116
.L111:
	.loc 1 253 0
	ldr	r3, [r7, #4]
	cmp	r3, #38
	bhi	.L116
	.loc 1 255 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #25
	str	r3, [r7, #4]
	.loc 1 257 0
	ldr	r3, .L117+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	ldr	r3, [r7, #4]
	asrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 258 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L115
	.loc 1 258 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #25
	movs	r0, r3
	bl	NVIC_MaskEINT2
.L115:
	.loc 1 259 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldr	r2, .L117+16
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	movs	r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, .L117+16
	mov	ip, r1
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #20
	lsrs	r3, r3, #20
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 260 0
	movs	r0, #50
	bl	USC_Pause_us
	.loc 1 261 0
	ldr	r3, [r7, #4]
	ldr	r2, .L117+16
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	movs	r2, r3
	adds	r3, r7, #2
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 1 262 0
	movs	r0, #50
	bl	USC_Pause_us
	.loc 1 263 0
	ldr	r1, .L117+20
	ldr	r3, .L117+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	movs	r0, #1
	ldr	r3, [r7, #4]
	lsls	r0, r0, r3
	movs	r3, r0
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 264 0
	movs	r0, #50
	bl	USC_Pause_us
	.loc 1 265 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_SetAEINT_EOI
	.loc 1 266 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L116
	.loc 1 266 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #25
	movs	r0, r3
	bl	NVIC_UnmaskEINT2
.L116:
	.loc 1 268 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L118:
	.align	2
.L117:
	.word	-1610218728
	.word	671187168
	.word	-32769
	.word	-1602878696
	.word	673022176
	.word	-1602878448
	.cfi_endproc
.LFE21:
	.size	NVIC_SetEINTDebounce, .-NVIC_SetEINTDebounce
	.section	.text.NVIC_ChangeInterruptMode,"ax",%progbits
	.align	2
	.global	NVIC_ChangeInterruptMode
	.code	16
	.thumb_func
	.type	NVIC_ChangeInterruptMode, %function
NVIC_ChangeInterruptMode:
.LFB22:
	.loc 1 271 0
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
	movs	r2, r1
	adds	r3, r7, #3
	strb	r2, [r3]
	.loc 1 272 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 276 0
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bhi	.L120
	.loc 1 278 0
	ldr	r3, [r7, #4]
	cmp	r3, #31
	bhi	.L121
	.loc 1 280 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L122
	.loc 1 280 0 is_stmt 0 discriminator 1
	ldr	r3, .L128
	ldr	r2, .L128
	ldr	r2, [r2]
	movs	r0, #1
	ldr	r1, [r7, #4]
	lsls	r0, r0, r1
	movs	r1, r0
	mvns	r1, r1
	ands	r2, r1
	str	r2, [r3]
	.loc 1 282 0 is_stmt 1 discriminator 1
	b	.L124
.L122:
	.loc 1 281 0
	ldr	r3, .L128
	ldr	r2, .L128
	ldr	r2, [r2]
	movs	r0, #1
	ldr	r1, [r7, #4]
	lsls	r0, r0, r1
	movs	r1, r0
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 282 0
	b	.L124
.L121:
	.loc 1 284 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #32
	str	r3, [r7, #4]
	.loc 1 285 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L125
	.loc 1 285 0 is_stmt 0 discriminator 1
	ldr	r3, .L128+4
	ldr	r2, .L128+4
	ldr	r2, [r2]
	movs	r0, #1
	ldr	r1, [r7, #4]
	lsls	r0, r0, r1
	movs	r1, r0
	mvns	r1, r1
	ands	r2, r1
	str	r2, [r3]
	.loc 1 287 0 is_stmt 1 discriminator 1
	b	.L124
.L125:
	.loc 1 286 0
	ldr	r3, .L128+4
	ldr	r2, .L128+4
	ldr	r2, [r2]
	movs	r0, #1
	ldr	r1, [r7, #4]
	lsls	r0, r0, r1
	movs	r1, r0
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 287 0
	b	.L124
.L120:
	.loc 1 289 0
	ldr	r3, [r7, #4]
	cmp	r3, #63
	bls	.L124
	.loc 1 289 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #67
	bhi	.L124
	.loc 1 291 0 is_stmt 1
	ldr	r3, [r7, #4]
	subs	r3, r3, #64
	str	r3, [r7, #4]
	.loc 1 292 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L127
	.loc 1 292 0 is_stmt 0 discriminator 1
	ldr	r1, .L128+8
	ldr	r3, .L128+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r0, #1
	ldr	r2, [r7, #4]
	lsls	r0, r0, r2
	movs	r2, r0
	lsls	r2, r2, #16
	asrs	r2, r2, #16
	mvns	r2, r2
	lsls	r2, r2, #16
	asrs	r2, r2, #16
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	b	.L124
.L127:
	.loc 1 293 0 is_stmt 1
	ldr	r1, .L128+8
	ldr	r3, .L128+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	movs	r0, #1
	ldr	r3, [r7, #4]
	lsls	r0, r0, r3
	movs	r3, r0
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
.L124:
	.loc 1 298 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 299 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L129:
	.align	2
.L128:
	.word	-1610219136
	.word	-1610219132
	.word	-1602879104
	.cfi_endproc
.LFE22:
	.size	NVIC_ChangeInterruptMode, .-NVIC_ChangeInterruptMode
	.section	.rodata
	.align	2
.LC1:
	.ascii	"\015\012Unhandled IRQ 0x%02X\000"
	.section	.text.NVIC_C_IRQ_Handler,"ax",%progbits
	.align	2
	.global	NVIC_C_IRQ_Handler
	.code	16
	.thumb_func
	.type	NVIC_C_IRQ_Handler, %function
NVIC_C_IRQ_Handler:
.LFB23:
	.loc 1 302 0
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
	.loc 1 305 0
	b	.L131
.L134:
	.loc 1 307 0
	ldr	r3, [r7, #4]
	movs	r2, #63
	ands	r3, r2
	str	r3, [r7, #4]
	.loc 1 308 0
	ldr	r3, .L135
	ldr	r2, [r7, #4]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L132
	.loc 1 309 0
	ldr	r3, .L135
	ldr	r2, [r7, #4]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	blx	r3
	b	.L133
.L132:
	.loc 1 312 0
	ldr	r2, [r7, #4]
	ldr	r3, .L135+4
	movs	r1, r2
	movs	r0, r3
	bl	printf
	.loc 1 312 0
	ldr	r3, .L135+8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 312 0
	movs	r0, r3
	bl	fflush
.L133:
	.loc 1 314 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_SetIRQ_EOI
.L131:
	.loc 1 305 0
	bl	NVIC_GetIRQStatus2
	movs	r3, r0
	str	r3, [r7, #4]
	ldr	r2, [r7, #4]
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r2, r3
	bne	.L134
	.loc 1 316 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L136:
	.align	2
.L135:
	.word	IRQHandlers
	.word	.LC1
	.word	_impure_ptr
	.cfi_endproc
.LFE23:
	.size	NVIC_C_IRQ_Handler, .-NVIC_C_IRQ_Handler
	.section	.rodata
	.align	2
.LC5:
	.ascii	"\015\012Unhandled FIQ 0x%02X\000"
	.section	.text.NVIC_C_FIQ_Handler,"ax",%progbits
	.align	2
	.global	NVIC_C_FIQ_Handler
	.code	16
	.thumb_func
	.type	NVIC_C_FIQ_Handler, %function
NVIC_C_FIQ_Handler:
.LFB24:
	.loc 1 319 0
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
	.loc 1 322 0
	b	.L138
.L141:
	.loc 1 324 0
	ldr	r3, [r7, #4]
	movs	r2, #63
	ands	r3, r2
	str	r3, [r7, #4]
	.loc 1 325 0
	ldr	r3, .L142
	ldr	r2, [r7, #4]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L139
	.loc 1 326 0
	ldr	r3, .L142
	ldr	r2, [r7, #4]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	blx	r3
	b	.L140
.L139:
	.loc 1 329 0
	ldr	r2, [r7, #4]
	ldr	r3, .L142+4
	movs	r1, r2
	movs	r0, r3
	bl	printf
	.loc 1 329 0
	ldr	r3, .L142+8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 329 0
	movs	r0, r3
	bl	fflush
.L140:
	.loc 1 331 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_SetIRQ_EOI
.L138:
	.loc 1 322 0
	bl	NVIC_GetFIQStatus2
	movs	r3, r0
	str	r3, [r7, #4]
	ldr	r2, [r7, #4]
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r2, r3
	bne	.L141
	.loc 1 333 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L143:
	.align	2
.L142:
	.word	IRQHandlers
	.word	.LC5
	.word	_impure_ptr
	.cfi_endproc
.LFE24:
	.size	NVIC_C_FIQ_Handler, .-NVIC_C_FIQ_Handler
	.section	.rodata
	.align	2
.LC9:
	.ascii	"\015\012Unhandled AIRQ 0x%02X\000"
	.section	.text.NVIC_ADIE_C_IRQ_Handler,"ax",%progbits
	.align	2
	.global	NVIC_ADIE_C_IRQ_Handler
	.code	16
	.thumb_func
	.type	NVIC_ADIE_C_IRQ_Handler, %function
NVIC_ADIE_C_IRQ_Handler:
.LFB25:
	.loc 1 336 0
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
	.loc 1 339 0
	b	.L145
.L148:
	.loc 1 341 0
	ldr	r3, [r7, #4]
	movs	r2, #3
	ands	r3, r2
	str	r3, [r7, #4]
	.loc 1 342 0
	ldr	r3, .L149
	ldr	r2, [r7, #4]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L146
	.loc 1 343 0
	ldr	r3, .L149
	ldr	r2, [r7, #4]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	blx	r3
	b	.L147
.L146:
	.loc 1 346 0
	ldr	r2, [r7, #4]
	ldr	r3, .L149+4
	movs	r1, r2
	movs	r0, r3
	bl	printf
	.loc 1 346 0
	ldr	r3, .L149+8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 346 0
	movs	r0, r3
	bl	fflush
.L147:
	.loc 1 348 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_SetAIRQ_EOI
.L145:
	.loc 1 339 0
	bl	NVIC_GetAIRQStatus2
	movs	r3, r0
	str	r3, [r7, #4]
	ldr	r2, [r7, #4]
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r2, r3
	bne	.L148
	.loc 1 350 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L150:
	.align	2
.L149:
	.word	AIRQHandlers
	.word	.LC9
	.word	_impure_ptr
	.cfi_endproc
.LFE25:
	.size	NVIC_ADIE_C_IRQ_Handler, .-NVIC_ADIE_C_IRQ_Handler
	.section	.rodata
	.align	2
.LC13:
	.ascii	"\015\012Unhandled EINT 0x%02X\000"
	.section	.text.NVIC_EINTCHandler,"ax",%progbits
	.align	2
	.global	NVIC_EINTCHandler
	.code	16
	.thumb_func
	.type	NVIC_EINTCHandler, %function
NVIC_EINTCHandler:
.LFB26:
	.loc 1 353 0
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
	.loc 1 354 0
	bl	NVIC_GetEINTStatus2
	movs	r3, r0
	str	r3, [r7, #4]
	.loc 1 356 0
	ldr	r3, [r7, #4]
	cmp	r3, #24
	bhi	.L152
	.loc 1 356 0 is_stmt 0 discriminator 1
	ldr	r3, .L154
	ldr	r2, [r7, #4]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L152
	.loc 1 357 0 is_stmt 1
	ldr	r3, .L154
	ldr	r2, [r7, #4]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	blx	r3
	b	.L153
.L152:
	.loc 1 360 0
	ldr	r2, [r7, #4]
	ldr	r3, .L154+4
	movs	r1, r2
	movs	r0, r3
	bl	printf
	.loc 1 360 0
	ldr	r3, .L154+8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 360 0
	movs	r0, r3
	bl	fflush
.L153:
	.loc 1 362 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_SetEINT_EOI
	.loc 1 363 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L155:
	.align	2
.L154:
	.word	EINTHandlers
	.word	.LC13
	.word	_impure_ptr
	.cfi_endproc
.LFE26:
	.size	NVIC_EINTCHandler, .-NVIC_EINTCHandler
	.section	.rodata
	.align	2
.LC17:
	.ascii	"\015\012Unhandled AEINT 0x%02X\000"
	.section	.text.NVIC_AEINTCHandler,"ax",%progbits
	.align	2
	.global	NVIC_AEINTCHandler
	.code	16
	.thumb_func
	.type	NVIC_AEINTCHandler, %function
NVIC_AEINTCHandler:
.LFB27:
	.loc 1 366 0
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
	.loc 1 367 0
	bl	NVIC_GetAEINTStatus2
	movs	r3, r0
	str	r3, [r7, #4]
	.loc 1 369 0
	ldr	r3, [r7, #4]
	cmp	r3, #13
	bhi	.L157
	.loc 1 369 0 is_stmt 0 discriminator 1
	ldr	r3, .L159
	ldr	r2, [r7, #4]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0
	beq	.L157
	.loc 1 370 0 is_stmt 1
	ldr	r3, .L159
	ldr	r2, [r7, #4]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	blx	r3
	b	.L158
.L157:
	.loc 1 373 0
	ldr	r2, [r7, #4]
	ldr	r3, .L159+4
	movs	r1, r2
	movs	r0, r3
	bl	printf
	.loc 1 373 0
	ldr	r3, .L159+8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 373 0
	movs	r0, r3
	bl	fflush
.L158:
	.loc 1 375 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_SetAEINT_EOI
	.loc 1 376 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L160:
	.align	2
.L159:
	.word	AEINTHandlers
	.word	.LC17
	.word	_impure_ptr
	.cfi_endproc
.LFE27:
	.size	NVIC_AEINTCHandler, .-NVIC_AEINTCHandler
	.section	.text.NVIC_Initialize,"ax",%progbits
	.align	2
	.global	NVIC_Initialize
	.code	16
	.thumb_func
	.type	NVIC_Initialize, %function
NVIC_Initialize:
.LFB28:
	.loc 1 379 0
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
	.loc 1 380 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 382 0
	ldr	r3, .L170
	movs	r2, #1
	rsbs	r2, r2, #0
	str	r2, [r3]
	.loc 1 383 0
	ldr	r3, .L170+4
	movs	r2, #1
	rsbs	r2, r2, #0
	str	r2, [r3]
	.loc 1 384 0
	ldr	r3, .L170+8
	movs	r2, #1
	rsbs	r2, r2, #0
	str	r2, [r3]
	.loc 1 385 0
	ldr	r3, .L170+12
	movs	r2, #0
	str	r2, [r3]
	.loc 1 387 0
	ldr	r3, .L170+16
	movs	r2, #1
	rsbs	r2, r2, #0
	strh	r2, [r3]
	.loc 1 388 0
	ldr	r3, .L170+20
	movs	r2, #1
	rsbs	r2, r2, #0
	strh	r2, [r3]
	.loc 1 389 0
	ldr	r3, .L170+24
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 391 0
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L162
.L163:
.LBB2:
	.loc 1 392 0 discriminator 3
	ldr	r3, [r7, #12]
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #2
	ldr	r2, .L170+28
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	lsrs	r2, r2, #2
	ldr	r1, .L170+28
	mov	ip, r1
	add	r2, r2, ip
	lsls	r2, r2, #2
	ldr	r2, [r2]
	ldr	r1, [r7, #4]
	movs	r0, #3
	ands	r1, r0
	lsls	r1, r1, #3
	movs	r0, #255
	lsls	r0, r0, r1
	movs	r1, r0
	mvns	r1, r1
	ands	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #2
	ldr	r2, .L170+28
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	lsrs	r2, r2, #2
	ldr	r1, .L170+28
	mov	ip, r1
	add	r2, r2, ip
	lsls	r2, r2, #2
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	movs	r0, #63
	ands	r0, r2
	ldr	r2, [r7, #4]
	movs	r4, #3
	ands	r2, r4
	lsls	r2, r2, #3
	lsls	r0, r0, r2
	movs	r2, r0
	orrs	r2, r1
	str	r2, [r3]
.LBE2:
	.loc 1 391 0 discriminator 3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L162:
	.loc 1 391 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #17
	bls	.L163
	.loc 1 394 0 is_stmt 1
	ldr	r3, .L170+32
	movs	r2, #212
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 395 0
	ldr	r3, .L170+36
	movs	r2, #100
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 397 0
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L164
.L165:
.LBB3:
	.loc 1 398 0 discriminator 3
	ldr	r3, [r7, #12]
	str	r3, [r7]
	ldr	r3, [r7]
	lsrs	r3, r3, #1
	ldr	r2, .L170+40
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	movs	r0, r3
	ldr	r3, [r7]
	lsrs	r3, r3, #1
	ldr	r2, .L170+40
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r2, [r7]
	movs	r1, #1
	ands	r2, r1
	lsls	r2, r2, #3
	movs	r1, #3
	lsls	r1, r1, r2
	movs	r2, r1
	lsls	r2, r2, #16
	asrs	r2, r2, #16
	mvns	r2, r2
	lsls	r2, r2, #16
	asrs	r2, r2, #16
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r0]
	ldr	r3, [r7]
	lsrs	r3, r3, #1
	ldr	r2, .L170+40
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	movs	r4, r3
	ldr	r3, [r7]
	lsrs	r3, r3, #1
	ldr	r2, .L170+40
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	movs	r1, #3
	ands	r1, r3
	ldr	r3, [r7]
	movs	r0, #1
	ands	r3, r0
	lsls	r3, r3, #3
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4]
.LBE3:
	.loc 1 397 0 discriminator 3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L164:
	.loc 1 397 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #3
	bls	.L165
	.loc 1 400 0 is_stmt 1
	ldr	r3, .L170+44
	movs	r2, #16
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 401 0
	ldr	r3, .L170+48
	movs	r2, #56
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 403 0
	b	.L166
.L167:
	.loc 1 403 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_SetIRQ_EOI
.L166:
	.loc 1 403 0 discriminator 1
	bl	NVIC_GetIRQStatus2
	movs	r3, r0
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r2, r3
	bne	.L167
	.loc 1 404 0 is_stmt 1
	b	.L168
.L169:
	.loc 1 404 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_SetAIRQ_EOI
.L168:
	.loc 1 404 0 discriminator 1
	bl	NVIC_GetAIRQStatus2
	movs	r3, r0
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r2, r3
	bne	.L169
	.loc 1 406 0 is_stmt 1
	ldr	r3, .L170+52
	movs	r2, #1
	rsbs	r2, r2, #0
	str	r2, [r3]
	.loc 1 407 0
	ldr	r3, .L170+56
	movs	r2, #1
	rsbs	r2, r2, #0
	strh	r2, [r3]
	.loc 1 408 0
	ldr	r1, .L170+60
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #1
	movs	r2, #0
	movs	r0, #24
	bl	NVIC_RegisterIRQ
	.loc 1 409 0
	ldr	r1, .L170+64
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #1
	movs	r2, #0
	movs	r0, #64
	bl	NVIC_RegisterIRQ
	.loc 1 410 0
	ldr	r1, .L170+68
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #1
	movs	r2, #1
	movs	r0, #10
	bl	NVIC_RegisterIRQ
	.loc 1 412 0
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 413 0
	nop
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L171:
	.align	2
.L170:
	.word	-1610219488
	.word	-1610219484
	.word	-1610218720
	.word	-1610218656
	.word	-1602879456
	.word	-1602878688
	.word	-1602878624
	.word	671187072
	.word	IRQHandlers
	.word	EINTHandlers
	.word	673022080
	.word	AIRQHandlers
	.word	AEINTHandlers
	.word	-1610218744
	.word	-1602878712
	.word	NVIC_EINTCHandler
	.word	NVIC_AEINTCHandler
	.word	NVIC_ADIE_C_IRQ_Handler
	.cfi_endproc
.LFE28:
	.size	NVIC_Initialize, .-NVIC_Initialize
	.section	.text.NVIC_RegisterIRQ,"ax",%progbits
	.align	2
	.global	NVIC_RegisterIRQ
	.code	16
	.thumb_func
	.type	NVIC_RegisterIRQ, %function
NVIC_RegisterIRQ:
.LFB29:
	.loc 1 417 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	movs	r1, r3
	adds	r3, r7, #7
	strb	r2, [r3]
	adds	r3, r7, #6
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 418 0
	ldr	r3, [r7, #12]
	cmp	r3, #52
	bhi	.L173
	.loc 1 420 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L174
	.loc 1 420 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_UnregisterIRQ
	b	.L175
.L174:
.LBB4:
	.loc 1 423 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 425 0
	ldr	r3, .L188
	ldr	r2, [r7, #12]
	lsls	r2, r2, #2
	ldr	r1, [r7, #8]
	str	r1, [r2, r3]
	.loc 1 426 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L176
	.loc 1 426 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_SetIRQSenseEdge
	b	.L177
.L176:
	.loc 1 427 0 is_stmt 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_SetIRQSenseLevel
.L177:
	.loc 1 428 0
	movs	r3, #32
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L178
	.loc 1 428 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_UnmaskIRQ2
	b	.L179
.L178:
	.loc 1 428 0 discriminator 2
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_MaskIRQ2
.L179:
	.loc 1 430 0 is_stmt 1
	adds	r3, r7, #6
	ldrb	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	NVIC_ChangeInterruptMode
	.loc 1 432 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	__restore_interrupts
.L175:
.LBE4:
	.loc 1 434 0
	movs	r3, #1
	b	.L180
.L173:
	.loc 1 436 0
	ldr	r3, [r7, #12]
	cmp	r3, #63
	bls	.L181
	.loc 1 436 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #67
	bhi	.L181
	.loc 1 438 0 is_stmt 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L182
	.loc 1 438 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_UnregisterIRQ
	b	.L183
.L182:
.LBB5:
	.loc 1 441 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 443 0
	ldr	r3, [r7, #12]
	subs	r3, r3, #64
	str	r3, [r7, #12]
	.loc 1 444 0
	ldr	r3, .L188+4
	ldr	r2, [r7, #12]
	lsls	r2, r2, #2
	ldr	r1, [r7, #8]
	str	r1, [r2, r3]
	.loc 1 446 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #64
	str	r3, [r7, #12]
	.loc 1 447 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L184
	.loc 1 447 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_SetIRQSenseEdge
	b	.L185
.L184:
	.loc 1 448 0 is_stmt 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_SetIRQSenseLevel
.L185:
	.loc 1 449 0
	movs	r3, #32
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L186
	.loc 1 449 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_UnmaskIRQ2
	b	.L187
.L186:
	.loc 1 449 0 discriminator 2
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_MaskIRQ2
.L187:
	.loc 1 451 0 is_stmt 1
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	__restore_interrupts
.L183:
.LBE5:
	.loc 1 453 0
	movs	r3, #1
	b	.L180
.L181:
	.loc 1 455 0
	movs	r3, #0
.L180:
	.loc 1 456 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L189:
	.align	2
.L188:
	.word	IRQHandlers
	.word	AIRQHandlers
	.cfi_endproc
.LFE29:
	.size	NVIC_RegisterIRQ, .-NVIC_RegisterIRQ
	.section	.text.NVIC_UnregisterIRQ,"ax",%progbits
	.align	2
	.global	NVIC_UnregisterIRQ
	.code	16
	.thumb_func
	.type	NVIC_UnregisterIRQ, %function
NVIC_UnregisterIRQ:
.LFB30:
	.loc 1 459 0
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
	.loc 1 462 0
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bhi	.L191
	.loc 1 464 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 465 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_MaskIRQ2
	.loc 1 466 0
	ldr	r3, .L194
	ldr	r2, [r7, #4]
	lsls	r2, r2, #2
	movs	r1, #0
	str	r1, [r2, r3]
	.loc 1 467 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 468 0
	movs	r3, #1
	b	.L192
.L191:
	.loc 1 470 0
	ldr	r3, [r7, #4]
	cmp	r3, #63
	bls	.L193
	.loc 1 470 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #67
	bhi	.L193
	.loc 1 472 0 is_stmt 1
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 473 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_MaskIRQ2
	.loc 1 474 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #64
	movs	r2, r3
	ldr	r3, .L194+4
	lsls	r2, r2, #2
	movs	r1, #0
	str	r1, [r2, r3]
	.loc 1 475 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 476 0
	movs	r3, #1
	b	.L192
.L193:
	.loc 1 478 0
	movs	r3, #0
.L192:
	.loc 1 479 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L195:
	.align	2
.L194:
	.word	IRQHandlers
	.word	AIRQHandlers
	.cfi_endproc
.LFE30:
	.size	NVIC_UnregisterIRQ, .-NVIC_UnregisterIRQ
	.section	.text.NVIC_RegisterEINT,"ax",%progbits
	.align	2
	.global	NVIC_RegisterEINT
	.code	16
	.thumb_func
	.type	NVIC_RegisterEINT, %function
NVIC_RegisterEINT:
.LFB31:
	.loc 1 483 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	movs	r1, r3
	adds	r3, r7, #7
	strb	r2, [r3]
	adds	r3, r7, #6
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 486 0
	ldr	r3, [r7, #12]
	cmp	r3, #24
	bhi	.L197
	.loc 1 488 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L198
	.loc 1 490 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_UnregisterEINT
	.loc 1 491 0
	movs	r3, #1
	b	.L199
.L198:
	.loc 1 494 0
	ldr	r3, .L216
	ldr	r2, [r7, #12]
	lsls	r2, r2, #2
	ldr	r2, [r2, r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L200
	.loc 1 494 0 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L199
.L200:
	.loc 1 496 0 is_stmt 1
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 497 0
	ldr	r3, .L216
	ldr	r2, [r7, #12]
	lsls	r2, r2, #2
	ldr	r1, [r7, #8]
	str	r1, [r2, r3]
	.loc 1 498 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L201
	.loc 1 498 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_SetEINTSenseEdge
	b	.L202
.L201:
	.loc 1 499 0 is_stmt 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_SetEINTSenseLevel
.L202:
	.loc 1 500 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	NVIC_SetEINTPolarity
	.loc 1 501 0
	movs	r3, #32
	adds	r3, r7, r3
	ldrh	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	NVIC_SetEINTDebounce
	.loc 1 503 0
	movs	r3, #36
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L203
	.loc 1 503 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_EnableEINT_D0Event2
	b	.L204
.L203:
	.loc 1 503 0 discriminator 2
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_DisableEINT_D0Event2
.L204:
	.loc 1 504 0 is_stmt 1
	movs	r3, #36
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L205
	.loc 1 504 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_UnmaskEINT2
	b	.L206
.L205:
	.loc 1 504 0 discriminator 2
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_MaskEINT2
.L206:
	.loc 1 506 0 is_stmt 1
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 507 0
	movs	r3, #1
	b	.L199
.L197:
	.loc 1 509 0
	ldr	r3, [r7, #12]
	cmp	r3, #38
	bhi	.L207
	.loc 1 511 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L208
	.loc 1 513 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_UnregisterEINT
	.loc 1 514 0
	movs	r3, #1
	b	.L199
.L208:
	.loc 1 517 0
	ldr	r3, [r7, #12]
	subs	r3, r3, #25
	movs	r2, r3
	ldr	r3, .L216+4
	lsls	r2, r2, #2
	ldr	r2, [r2, r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L209
	.loc 1 517 0 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L199
.L209:
	.loc 1 519 0 is_stmt 1
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 520 0
	ldr	r3, [r7, #12]
	subs	r3, r3, #25
	movs	r2, r3
	ldr	r3, .L216+4
	lsls	r2, r2, #2
	ldr	r1, [r7, #8]
	str	r1, [r2, r3]
	.loc 1 522 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L210
	.loc 1 522 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_SetEINTSenseEdge
	b	.L211
.L210:
	.loc 1 523 0 is_stmt 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_SetEINTSenseLevel
.L211:
	.loc 1 524 0
	movs	r3, #32
	adds	r3, r7, r3
	ldrh	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	NVIC_SetEINTDebounce
	.loc 1 525 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	NVIC_SetEINTPolarity
	.loc 1 526 0
	ldr	r2, .L216+8
	ldr	r3, [r7, #12]
	subs	r3, r3, #25
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 528 0
	movs	r3, #36
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L212
	.loc 1 528 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_EnableEINT_D0Event2
	b	.L213
.L212:
	.loc 1 528 0 discriminator 2
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_DisableEINT_D0Event2
.L213:
	.loc 1 529 0 is_stmt 1
	movs	r3, #36
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L214
	.loc 1 529 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_UnmaskEINT2
	b	.L215
.L214:
	.loc 1 529 0 discriminator 2
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	NVIC_MaskEINT2
.L215:
	.loc 1 531 0 is_stmt 1
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 532 0
	movs	r3, #1
	b	.L199
.L207:
	.loc 1 534 0
	movs	r3, #0
.L199:
	.loc 1 535 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L217:
	.align	2
.L216:
	.word	EINTHandlers
	.word	AEINTHandlers
	.word	-1602878448
	.cfi_endproc
.LFE31:
	.size	NVIC_RegisterEINT, .-NVIC_RegisterEINT
	.section	.text.NVIC_UnregisterEINT,"ax",%progbits
	.align	2
	.global	NVIC_UnregisterEINT
	.code	16
	.thumb_func
	.type	NVIC_UnregisterEINT, %function
NVIC_UnregisterEINT:
.LFB32:
	.loc 1 538 0
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
	.loc 1 541 0
	ldr	r3, [r7, #4]
	cmp	r3, #24
	bhi	.L219
	.loc 1 543 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 544 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_MaskEINT2
	.loc 1 545 0
	ldr	r3, .L222
	ldr	r2, [r7, #4]
	lsls	r2, r2, #2
	movs	r1, #0
	str	r1, [r2, r3]
	.loc 1 546 0
	ldr	r3, [r7, #4]
	movs	r1, #0
	movs	r0, r3
	bl	NVIC_SetEINTDebounce
	.loc 1 547 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 548 0
	movs	r3, #1
	b	.L220
.L219:
	.loc 1 550 0
	ldr	r3, [r7, #4]
	cmp	r3, #38
	bhi	.L221
	.loc 1 552 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 553 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_MaskEINT2
	.loc 1 554 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #25
	movs	r2, r3
	ldr	r3, .L222+4
	lsls	r2, r2, #2
	movs	r1, #0
	str	r1, [r2, r3]
	.loc 1 555 0
	ldr	r3, [r7, #4]
	movs	r1, #0
	movs	r0, r3
	bl	NVIC_SetEINTDebounce
	.loc 1 556 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 557 0
	movs	r3, #1
	b	.L220
.L221:
	.loc 1 559 0
	movs	r3, #0
.L220:
	.loc 1 560 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L223:
	.align	2
.L222:
	.word	EINTHandlers
	.word	AEINTHandlers
	.cfi_endproc
.LFE32:
	.size	NVIC_UnregisterEINT, .-NVIC_UnregisterEINT
	.section	.text.NVIC_EnableEINT,"ax",%progbits
	.align	2
	.global	NVIC_EnableEINT
	.code	16
	.thumb_func
	.type	NVIC_EnableEINT, %function
NVIC_EnableEINT:
.LFB33:
	.loc 1 563 0
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
	.loc 1 564 0
	ldr	r3, [r7, #4]
	cmp	r3, #38
	bhi	.L225
.LBB6:
	.loc 1 566 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 568 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_EnableEINT_D0Event2
	.loc 1 569 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_UnmaskEINT2
	.loc 1 571 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 572 0
	movs	r3, #1
	b	.L226
.L225:
.LBE6:
	.loc 1 574 0
	movs	r3, #0
.L226:
	.loc 1 575 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE33:
	.size	NVIC_EnableEINT, .-NVIC_EnableEINT
	.section	.text.NVIC_DisableEINT,"ax",%progbits
	.align	2
	.global	NVIC_DisableEINT
	.code	16
	.thumb_func
	.type	NVIC_DisableEINT, %function
NVIC_DisableEINT:
.LFB34:
	.loc 1 578 0
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
	.loc 1 579 0
	ldr	r3, [r7, #4]
	cmp	r3, #38
	bhi	.L228
.LBB7:
	.loc 1 581 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 583 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_DisableEINT_D0Event2
	.loc 1 584 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_MaskEINT2
	.loc 1 586 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 587 0
	movs	r3, #1
	b	.L229
.L228:
.LBE7:
	.loc 1 589 0
	movs	r3, #0
.L229:
	.loc 1 590 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE34:
	.size	NVIC_DisableEINT, .-NVIC_DisableEINT
	.section	.text.NVIC_EnableIRQ,"ax",%progbits
	.align	2
	.global	NVIC_EnableIRQ
	.code	16
	.thumb_func
	.type	NVIC_EnableIRQ, %function
NVIC_EnableIRQ:
.LFB35:
	.loc 1 593 0
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
	.loc 1 594 0
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bls	.L231
	.loc 1 594 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #63
	bls	.L232
	.loc 1 594 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #67
	bhi	.L232
.L231:
.LBB8:
	.loc 1 596 0 is_stmt 1
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 598 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_UnmaskIRQ2
	.loc 1 600 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 601 0
	movs	r3, #1
	b	.L233
.L232:
.LBE8:
	.loc 1 603 0
	movs	r3, #0
.L233:
	.loc 1 604 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE35:
	.size	NVIC_EnableIRQ, .-NVIC_EnableIRQ
	.section	.text.NVIC_DisableIRQ,"ax",%progbits
	.align	2
	.global	NVIC_DisableIRQ
	.code	16
	.thumb_func
	.type	NVIC_DisableIRQ, %function
NVIC_DisableIRQ:
.LFB36:
	.loc 1 607 0
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
	.loc 1 608 0
	ldr	r3, [r7, #4]
	cmp	r3, #52
	bls	.L235
	.loc 1 608 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #63
	bls	.L236
	.loc 1 608 0 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #67
	bhi	.L236
.L235:
.LBB9:
	.loc 1 610 0 is_stmt 1
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 612 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	NVIC_MaskIRQ2
	.loc 1 614 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 615 0
	movs	r3, #1
	b	.L237
.L236:
.LBE9:
	.loc 1 617 0
	movs	r3, #0
.L237:
	.loc 1 618 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE36:
	.size	NVIC_DisableIRQ, .-NVIC_DisableIRQ
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\lock.h"
	.file 5 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_types.h"
	.file 6 "d:\\1.11\\share\\em_armgcc\\lib\\gcc\\arm-none-eabi\\5.4.1\\include\\stddef.h"
	.file 7 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\reent.h"
	.file 8 ".\\Source/systypes.h"
	.file 9 ".\\Source\\Lib\\MT6261/drivers\\nvic.h"
	.file 10 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 11 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x10f3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF201
	.byte	0xc
	.4byte	.LASF202
	.4byte	.LASF203
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
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x7
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x72
	.4byte	0x57
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x165
	.4byte	0x85
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.4byte	0x100
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa8
	.4byte	0xd5
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa9
	.4byte	0x100
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x110
	.uleb128 0x9
	.4byte	0x110
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.4byte	0x138
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0xa5
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0xaa
	.4byte	0xe1
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0xab
	.4byte	0x117
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0xaf
	.4byte	0xb4
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x156
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF27
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x16
	.4byte	0x69
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x18
	.byte	0x7
	.byte	0x2d
	.4byte	0x1bb
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x7
	.byte	0x2f
	.4byte	0x1bb
	.byte	0
	.uleb128 0xf
	.ascii	"_k\000"
	.byte	0x7
	.byte	0x30
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x7
	.byte	0x30
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x7
	.byte	0x30
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.byte	0x30
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xf
	.ascii	"_x\000"
	.byte	0x7
	.byte	0x31
	.4byte	0x1c1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x168
	.uleb128 0x8
	.4byte	0x15d
	.4byte	0x1d1
	.uleb128 0x9
	.4byte	0x110
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x24
	.byte	0x7
	.byte	0x35
	.4byte	0x24a
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0x37
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x7
	.byte	0x38
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x7
	.byte	0x39
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3a
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3b
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3c
	.4byte	0x7e
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x7
	.byte	0x3d
	.4byte	0x7e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x7
	.byte	0x3e
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x7
	.byte	0x3f
	.4byte	0x7e
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF44
	.2byte	0x108
	.byte	0x7
	.byte	0x48
	.4byte	0x28a
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x49
	.4byte	0x28a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x7
	.byte	0x4a
	.4byte	0x28a
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x7
	.byte	0x4c
	.4byte	0x15d
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x7
	.byte	0x4f
	.4byte	0x15d
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x14e
	.4byte	0x29a
	.uleb128 0x9
	.4byte	0x110
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF49
	.2byte	0x190
	.byte	0x7
	.byte	0x5b
	.4byte	0x2d8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x7
	.byte	0x5c
	.4byte	0x2d8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x7
	.byte	0x5d
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x5f
	.4byte	0x2de
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x60
	.4byte	0x24a
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x29a
	.uleb128 0x8
	.4byte	0x2ee
	.4byte	0x2ee
	.uleb128 0x9
	.4byte	0x110
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2f4
	.uleb128 0x12
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x8
	.byte	0x7
	.byte	0x73
	.4byte	0x31a
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x7
	.byte	0x74
	.4byte	0x31a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x7
	.byte	0x75
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x37
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x68
	.byte	0x7
	.byte	0xb3
	.4byte	0x44a
	.uleb128 0xf
	.ascii	"_p\000"
	.byte	0x7
	.byte	0xb4
	.4byte	0x31a
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
	.4byte	.LASF56
	.byte	0x7
	.byte	0xb7
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0xb8
	.4byte	0x3e
	.byte	0xe
	.uleb128 0xf
	.ascii	"_bf\000"
	.byte	0x7
	.byte	0xb9
	.4byte	0x2f5
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0xba
	.4byte	0x7e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x7
	.byte	0xc1
	.4byte	0x14e
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x7
	.byte	0xc3
	.4byte	0x5a0
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x7
	.byte	0xc5
	.4byte	0x5cf
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x7
	.byte	0xc8
	.4byte	0x5f3
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x7
	.byte	0xc9
	.4byte	0x60d
	.byte	0x2c
	.uleb128 0xf
	.ascii	"_ub\000"
	.byte	0x7
	.byte	0xcc
	.4byte	0x2f5
	.byte	0x30
	.uleb128 0xf
	.ascii	"_up\000"
	.byte	0x7
	.byte	0xcd
	.4byte	0x31a
	.byte	0x38
	.uleb128 0xf
	.ascii	"_ur\000"
	.byte	0x7
	.byte	0xce
	.4byte	0x7e
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7
	.byte	0xd1
	.4byte	0x613
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x7
	.byte	0xd2
	.4byte	0x623
	.byte	0x43
	.uleb128 0xf
	.ascii	"_lb\000"
	.byte	0x7
	.byte	0xd5
	.4byte	0x2f5
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x7
	.byte	0xd8
	.4byte	0x7e
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x7
	.byte	0xd9
	.4byte	0xbf
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x7
	.byte	0xdc
	.4byte	0x468
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x7
	.byte	0xe0
	.4byte	0x143
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x7
	.byte	0xe2
	.4byte	0x138
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x7
	.byte	0xe3
	.4byte	0x7e
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x468
	.uleb128 0x14
	.4byte	0x468
	.uleb128 0x14
	.4byte	0x14e
	.uleb128 0x14
	.4byte	0x150
	.uleb128 0x14
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x46e
	.uleb128 0x15
	.4byte	.LASF72
	.2byte	0x428
	.byte	0x7
	.2byte	0x238
	.4byte	0x5a0
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x23a
	.4byte	0x7e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x23f
	.4byte	0x67a
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x23f
	.4byte	0x67a
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x23f
	.4byte	0x67a
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x241
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x242
	.4byte	0x85c
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x244
	.4byte	0x7e
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x245
	.4byte	0x5c4
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x247
	.4byte	0x7e
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x249
	.4byte	0x877
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x24c
	.4byte	0x1bb
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x24d
	.4byte	0x7e
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x24e
	.4byte	0x1bb
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x24f
	.4byte	0x87d
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x252
	.4byte	0x7e
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x253
	.4byte	0x150
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x276
	.4byte	0x83a
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x27a
	.4byte	0x2d8
	.2byte	0x148
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x27b
	.4byte	0x29a
	.2byte	0x14c
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x27f
	.4byte	0x88e
	.2byte	0x2dc
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x284
	.4byte	0x63f
	.2byte	0x2e0
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x285
	.4byte	0x89a
	.2byte	0x2ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x44a
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x5c4
	.uleb128 0x14
	.4byte	0x468
	.uleb128 0x14
	.4byte	0x14e
	.uleb128 0x14
	.4byte	0x5c4
	.uleb128 0x14
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5ca
	.uleb128 0x18
	.4byte	0x156
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5a6
	.uleb128 0x13
	.4byte	0xca
	.4byte	0x5f3
	.uleb128 0x14
	.4byte	0x468
	.uleb128 0x14
	.4byte	0x14e
	.uleb128 0x14
	.4byte	0xca
	.uleb128 0x14
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5d5
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0x60d
	.uleb128 0x14
	.4byte	0x468
	.uleb128 0x14
	.4byte	0x14e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5f9
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x623
	.uleb128 0x9
	.4byte	0x110
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x633
	.uleb128 0x9
	.4byte	0x110
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x11d
	.4byte	0x320
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0xc
	.byte	0x7
	.2byte	0x121
	.4byte	0x674
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x7
	.2byte	0x123
	.4byte	0x674
	.byte	0
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x124
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x125
	.4byte	0x67a
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x63f
	.uleb128 0xd
	.byte	0x4
	.4byte	0x633
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0xe
	.byte	0x7
	.2byte	0x13d
	.4byte	0x6b5
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x13e
	.4byte	0x6b5
	.byte	0
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x13f
	.4byte	0x6b5
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x140
	.4byte	0x50
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x50
	.4byte	0x6c5
	.uleb128 0x9
	.4byte	0x110
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd0
	.byte	0x7
	.2byte	0x257
	.4byte	0x7c6
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x259
	.4byte	0x85
	.byte	0
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x25a
	.4byte	0x150
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x25b
	.4byte	0x7c6
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x25c
	.4byte	0x1d1
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x25d
	.4byte	0x7e
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x25e
	.4byte	0x77
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x25f
	.4byte	0x680
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x260
	.4byte	0x138
	.byte	0x68
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x261
	.4byte	0x138
	.byte	0x70
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x262
	.4byte	0x138
	.byte	0x78
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x263
	.4byte	0x7d6
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x264
	.4byte	0x7e6
	.byte	0x88
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x265
	.4byte	0x7e
	.byte	0xa0
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x266
	.4byte	0x138
	.byte	0xa4
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x267
	.4byte	0x138
	.byte	0xac
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x268
	.4byte	0x138
	.byte	0xb4
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x269
	.4byte	0x138
	.byte	0xbc
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x26a
	.4byte	0x138
	.byte	0xc4
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x26b
	.4byte	0x7e
	.byte	0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0x156
	.4byte	0x7d6
	.uleb128 0x9
	.4byte	0x110
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x156
	.4byte	0x7e6
	.uleb128 0x9
	.4byte	0x110
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x156
	.4byte	0x7f6
	.uleb128 0x9
	.4byte	0x110
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0x7
	.2byte	0x270
	.4byte	0x81a
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x273
	.4byte	0x81a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x274
	.4byte	0x82a
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x31a
	.4byte	0x82a
	.uleb128 0x9
	.4byte	0x110
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x85
	.4byte	0x83a
	.uleb128 0x9
	.4byte	0x110
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x7
	.2byte	0x255
	.4byte	0x85c
	.uleb128 0x1c
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x26c
	.4byte	0x6c5
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x275
	.4byte	0x7f6
	.byte	0
	.uleb128 0x8
	.4byte	0x156
	.4byte	0x86c
	.uleb128 0x9
	.4byte	0x110
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.4byte	0x877
	.uleb128 0x14
	.4byte	0x468
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x86c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1bb
	.uleb128 0x1d
	.4byte	0x88e
	.uleb128 0x14
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x894
	.uleb128 0xd
	.byte	0x4
	.4byte	0x883
	.uleb128 0x8
	.4byte	0x633
	.4byte	0x8aa
	.uleb128 0x9
	.4byte	0x110
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x37
	.byte	0x8
	.byte	0x1d
	.4byte	0x8c3
	.uleb128 0x1f
	.4byte	.LASF124
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x8
	.byte	0x1d
	.4byte	0x8aa
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x4
	.byte	0x9
	.byte	0xef
	.4byte	0x8e7
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x9
	.byte	0xf1
	.4byte	0x2ee
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x9
	.byte	0xf2
	.4byte	0x8ce
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0x4
	.byte	0x9
	.byte	0xf4
	.4byte	0x90b
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x9
	.byte	0xf6
	.4byte	0x2ee
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x9
	.byte	0xf7
	.4byte	0x8f2
	.uleb128 0x20
	.4byte	.LASF137
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0xf1
	.4byte	0x945
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF135
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0x4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF138
	.byte	0x1
	.4byte	0x37
	.byte	0xb
	.byte	0x24
	.4byte	0x98c
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF144
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x7
	.byte	0
	.uleb128 0x21
	.4byte	.LASF148
	.byte	0x1
	.byte	0x1e
	.4byte	0xa2
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF149
	.byte	0x1
	.byte	0x23
	.4byte	0xa2
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF150
	.byte	0x1
	.byte	0x28
	.4byte	0xa2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF151
	.byte	0x1
	.byte	0x2d
	.4byte	0xa2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF152
	.byte	0x1
	.byte	0x32
	.4byte	0xa2
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF153
	.byte	0x1
	.byte	0x37
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa19
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x37
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF154
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3d
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x3c
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF156
	.byte	0x1
	.byte	0x41
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa61
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x41
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF157
	.byte	0x1
	.byte	0x46
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa85
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x46
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF158
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa9
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x4c
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF159
	.byte	0x1
	.byte	0x60
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacd
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x60
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF160
	.byte	0x1
	.byte	0x74
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf1
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x74
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF161
	.byte	0x1
	.byte	0x88
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb15
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x88
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF162
	.byte	0x1
	.byte	0x9d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb39
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x9d
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF163
	.byte	0x1
	.byte	0xa7
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5d
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0xa7
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF164
	.byte	0x1
	.byte	0xb1
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb81
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0xb1
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF165
	.byte	0x1
	.byte	0xbb
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba5
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0xbb
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF166
	.byte	0x1
	.byte	0xc5
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd7
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0xc5
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.4byte	.LASF167
	.byte	0x1
	.byte	0xc5
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x23
	.4byte	.LASF168
	.byte	0x1
	.byte	0xdb
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfb
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0xdb
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF169
	.byte	0x1
	.byte	0xe5
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1f
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0xe5
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x25
	.4byte	.LASF170
	.byte	0x1
	.byte	0xef
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc5f
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0xef
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.4byte	.LASF171
	.byte	0x1
	.byte	0xef
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x26
	.4byte	.LASF173
	.byte	0x1
	.byte	0xf1
	.4byte	0x8c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x27
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x10e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca3
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x10e
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x10e
	.4byte	0x8c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x110
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x12d
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc9
	.uleb128 0x29
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x12f
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x13e
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcef
	.uleb128 0x29
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x140
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x14f
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd15
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x151
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x160
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd3b
	.uleb128 0x29
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x162
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x16d
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd61
	.uleb128 0x29
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x16f
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x17a
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc8
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x17c
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x17c
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xdaf
	.uleb128 0x2a
	.ascii	"_x\000"
	.byte	0x1
	.2byte	0x188
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x2a
	.ascii	"_x\000"
	.byte	0x1
	.2byte	0x18e
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x19f
	.4byte	0x8c3
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe64
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x19f
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x19f
	.4byte	0x2ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x28
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x8c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x28
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x8c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xe4a
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x1a7
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x8c3
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe9d
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x1ca
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x1cc
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x8c3
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf21
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x1e1
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x2ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x28
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x28
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x8c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x1e4
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x219
	.4byte	0x8c3
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf5a
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x219
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x21b
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x232
	.4byte	0x8c3
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf9d
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x232
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x236
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x241
	.4byte	0x8c3
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe0
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x241
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x245
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x250
	.4byte	0x8c3
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1023
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x250
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x254
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x25e
	.4byte	0x8c3
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1066
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x25e
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x262
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8e7
	.4byte	0x1076
	.uleb128 0x9
	.4byte	0x110
	.byte	0x34
	.byte	0
	.uleb128 0x26
	.4byte	.LASF197
	.byte	0x1
	.byte	0x18
	.4byte	0x1066
	.uleb128 0x5
	.byte	0x3
	.4byte	IRQHandlers
	.uleb128 0x8
	.4byte	0x90b
	.4byte	0x1097
	.uleb128 0x9
	.4byte	0x110
	.byte	0x18
	.byte	0
	.uleb128 0x26
	.4byte	.LASF198
	.byte	0x1
	.byte	0x19
	.4byte	0x1087
	.uleb128 0x5
	.byte	0x3
	.4byte	EINTHandlers
	.uleb128 0x8
	.4byte	0x8e7
	.4byte	0x10b8
	.uleb128 0x9
	.4byte	0x110
	.byte	0x3
	.byte	0
	.uleb128 0x26
	.4byte	.LASF199
	.byte	0x1
	.byte	0x1b
	.4byte	0x10a8
	.uleb128 0x5
	.byte	0x3
	.4byte	AIRQHandlers
	.uleb128 0x8
	.4byte	0x90b
	.4byte	0x10d9
	.uleb128 0x9
	.4byte	0x110
	.byte	0xd
	.byte	0
	.uleb128 0x26
	.4byte	.LASF200
	.byte	0x1
	.byte	0x1c
	.4byte	0x10c9
	.uleb128 0x5
	.byte	0x3
	.4byte	AEINTHandlers
	.uleb128 0x2e
	.4byte	.LASF204
	.byte	0x7
	.2byte	0x2fd
	.4byte	0x468
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x2e
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
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x134
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
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
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF46:
	.ascii	"_dso_handle\000"
.LASF2:
	.ascii	"short int\000"
.LASF199:
	.ascii	"AIRQHandlers\000"
.LASF110:
	.ascii	"_mbtowc_state\000"
.LASF55:
	.ascii	"__sFILE\000"
.LASF148:
	.ascii	"NVIC_GetIRQStatus2\000"
.LASF190:
	.ascii	"NVIC_UnregisterIRQ\000"
.LASF98:
	.ascii	"_rand48\000"
.LASF162:
	.ascii	"NVIC_UnmaskEINT2\000"
.LASF136:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF131:
	.ascii	"TEINTHANDLER\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF90:
	.ascii	"_atexit0\000"
.LASF170:
	.ascii	"NVIC_SetEINTDebounce\000"
.LASF158:
	.ascii	"NVIC_UnmaskIRQ2\000"
.LASF118:
	.ascii	"_wcrtomb_state\000"
.LASF119:
	.ascii	"_wcsrtombs_state\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF192:
	.ascii	"NVIC_UnregisterEINT\000"
.LASF165:
	.ascii	"NVIC_SetEINTSenseLevel\000"
.LASF160:
	.ascii	"NVIC_SetIRQSenseEdge\000"
.LASF179:
	.ascii	"FIQSrcIdx\000"
.LASF147:
	.ascii	"USB_EPNUM\000"
.LASF116:
	.ascii	"_mbrtowc_state\000"
.LASF159:
	.ascii	"NVIC_MaskIRQ2\000"
.LASF171:
	.ascii	"Debounce\000"
.LASF35:
	.ascii	"__tm_sec\000"
.LASF177:
	.ascii	"IRQSrcIdx\000"
.LASF63:
	.ascii	"_close\000"
.LASF0:
	.ascii	"signed char\000"
.LASF174:
	.ascii	"intflags\000"
.LASF64:
	.ascii	"_ubuf\000"
.LASF53:
	.ascii	"_base\000"
.LASF37:
	.ascii	"__tm_hour\000"
.LASF111:
	.ascii	"_wctomb_state\000"
.LASF93:
	.ascii	"__sf\000"
.LASF44:
	.ascii	"_on_exit_args\000"
.LASF59:
	.ascii	"_cookie\000"
.LASF92:
	.ascii	"__sglue\000"
.LASF6:
	.ascii	"long int\000"
.LASF56:
	.ascii	"_flags\000"
.LASF48:
	.ascii	"_is_cxa\000"
.LASF74:
	.ascii	"_stdin\000"
.LASF139:
	.ascii	"USB_EP0\000"
.LASF84:
	.ascii	"_result_k\000"
.LASF9:
	.ascii	"long long int\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF143:
	.ascii	"USB_EP4IN\000"
.LASF88:
	.ascii	"_cvtbuf\000"
.LASF67:
	.ascii	"_offset\000"
.LASF173:
	.ascii	"Masked\000"
.LASF117:
	.ascii	"_mbsrtowcs_state\000"
.LASF115:
	.ascii	"_mbrlen_state\000"
.LASF126:
	.ascii	"boolean\000"
.LASF129:
	.ascii	"TIRQHANDLER\000"
.LASF166:
	.ascii	"NVIC_SetEINTPolarity\000"
.LASF153:
	.ascii	"NVIC_SetIRQ_EOI\000"
.LASF51:
	.ascii	"_fns\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF31:
	.ascii	"_sign\000"
.LASF204:
	.ascii	"_impure_ptr\000"
.LASF76:
	.ascii	"_stderr\000"
.LASF33:
	.ascii	"_Bigint\000"
.LASF184:
	.ascii	"NVIC_AEINTCHandler\000"
.LASF60:
	.ascii	"_read\000"
.LASF34:
	.ascii	"__tm\000"
.LASF203:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF21:
	.ascii	"__wchb\000"
.LASF130:
	.ascii	"tag_EINTHHANDLER\000"
.LASF75:
	.ascii	"_stdout\000"
.LASF87:
	.ascii	"_cvtlen\000"
.LASF176:
	.ascii	"NVIC_C_IRQ_Handler\000"
.LASF57:
	.ascii	"_file\000"
.LASF155:
	.ascii	"SourceIdx\000"
.LASF193:
	.ascii	"NVIC_EnableEINT\000"
.LASF68:
	.ascii	"_data\000"
.LASF161:
	.ascii	"NVIC_SetIRQSenseLevel\000"
.LASF96:
	.ascii	"_niobs\000"
.LASF164:
	.ascii	"NVIC_SetEINTSenseEdge\000"
.LASF167:
	.ascii	"Polarity\000"
.LASF128:
	.ascii	"Handler\000"
.LASF186:
	.ascii	"NVIC_Initialize\000"
.LASF113:
	.ascii	"_signal_buf\000"
.LASF104:
	.ascii	"_asctime_buf\000"
.LASF70:
	.ascii	"_mbstate\000"
.LASF83:
	.ascii	"_result\000"
.LASF20:
	.ascii	"__wch\000"
.LASF142:
	.ascii	"USB_EP3IN\000"
.LASF89:
	.ascii	"_new\000"
.LASF69:
	.ascii	"_lock\000"
.LASF100:
	.ascii	"_mult\000"
.LASF181:
	.ascii	"AIRQSrcIdx\000"
.LASF61:
	.ascii	"_write\000"
.LASF40:
	.ascii	"__tm_year\000"
.LASF122:
	.ascii	"_nmalloc\000"
.LASF43:
	.ascii	"__tm_isdst\000"
.LASF17:
	.ascii	"_off_t\000"
.LASF22:
	.ascii	"sizetype\000"
.LASF152:
	.ascii	"NVIC_GetAEINTStatus2\000"
.LASF15:
	.ascii	"long double\000"
.LASF182:
	.ascii	"NVIC_EINTCHandler\000"
.LASF197:
	.ascii	"IRQHandlers\000"
.LASF121:
	.ascii	"_nextf\000"
.LASF172:
	.ascii	"ModeIRQ\000"
.LASF39:
	.ascii	"__tm_mon\000"
.LASF49:
	.ascii	"_atexit\000"
.LASF81:
	.ascii	"__sdidinit\000"
.LASF106:
	.ascii	"_gamma_signgam\000"
.LASF201:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF200:
	.ascii	"AEINTHandlers\000"
.LASF19:
	.ascii	"wint_t\000"
.LASF137:
	.ascii	"tag_VLINDEX\000"
.LASF194:
	.ascii	"NVIC_DisableEINT\000"
.LASF141:
	.ascii	"USB_EP2IN\000"
.LASF198:
	.ascii	"EINTHandlers\000"
.LASF188:
	.ascii	"Enable\000"
.LASF25:
	.ascii	"_mbstate_t\000"
.LASF16:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF175:
	.ascii	"NVIC_ChangeInterruptMode\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF97:
	.ascii	"_iobs\000"
.LASF191:
	.ascii	"NVIC_RegisterEINT\000"
.LASF189:
	.ascii	"NVIC_RegisterIRQ\000"
.LASF120:
	.ascii	"_h_errno\000"
.LASF26:
	.ascii	"_flock_t\000"
.LASF42:
	.ascii	"__tm_yday\000"
.LASF149:
	.ascii	"NVIC_GetFIQStatus2\000"
.LASF71:
	.ascii	"_flags2\000"
.LASF86:
	.ascii	"_freelist\000"
.LASF94:
	.ascii	"__FILE\000"
.LASF124:
	.ascii	"false\000"
.LASF195:
	.ascii	"NVIC_EnableIRQ\000"
.LASF107:
	.ascii	"_rand_next\000"
.LASF157:
	.ascii	"NVIC_SetAEINT_EOI\000"
.LASF109:
	.ascii	"_mblen_state\000"
.LASF77:
	.ascii	"_inc\000"
.LASF50:
	.ascii	"_ind\000"
.LASF80:
	.ascii	"_current_locale\000"
.LASF82:
	.ascii	"__cleanup\000"
.LASF30:
	.ascii	"_maxwds\000"
.LASF72:
	.ascii	"_reent\000"
.LASF99:
	.ascii	"_seed\000"
.LASF144:
	.ascii	"USB_EPMAXINDEX\000"
.LASF23:
	.ascii	"__count\000"
.LASF24:
	.ascii	"__value\000"
.LASF62:
	.ascii	"_seek\000"
.LASF41:
	.ascii	"__tm_wday\000"
.LASF150:
	.ascii	"NVIC_GetEINTStatus2\000"
.LASF18:
	.ascii	"_fpos_t\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF73:
	.ascii	"_errno\000"
.LASF27:
	.ascii	"char\000"
.LASF66:
	.ascii	"_blksize\000"
.LASF54:
	.ascii	"_size\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF154:
	.ascii	"NVIC_SetAIRQ_EOI\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF140:
	.ascii	"USB_EP1IN\000"
.LASF47:
	.ascii	"_fntypes\000"
.LASF45:
	.ascii	"_fnargs\000"
.LASF78:
	.ascii	"_emergency\000"
.LASF138:
	.ascii	"tag_EP\000"
.LASF29:
	.ascii	"_next\000"
.LASF103:
	.ascii	"_strtok_last\000"
.LASF127:
	.ascii	"tag_IRQHANDLER\000"
.LASF132:
	.ascii	"LCDIF_LAYER0\000"
.LASF133:
	.ascii	"LCDIF_LAYER1\000"
.LASF134:
	.ascii	"LCDIF_LAYER2\000"
.LASF135:
	.ascii	"LCDIF_LAYER3\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF101:
	.ascii	"_add\000"
.LASF196:
	.ascii	"NVIC_DisableIRQ\000"
.LASF28:
	.ascii	"__ULong\000"
.LASF114:
	.ascii	"_getdate_err\000"
.LASF146:
	.ascii	"USB_EP2OUT\000"
.LASF151:
	.ascii	"NVIC_GetAIRQStatus2\000"
.LASF79:
	.ascii	"_current_category\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF102:
	.ascii	"_unused_rand\000"
.LASF169:
	.ascii	"NVIC_DisableEINT_D0Event2\000"
.LASF32:
	.ascii	"_wds\000"
.LASF95:
	.ascii	"_glue\000"
.LASF185:
	.ascii	"AEINTSrcIdx\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF112:
	.ascii	"_l64a_buf\000"
.LASF91:
	.ascii	"_sig_func\000"
.LASF65:
	.ascii	"_nbuf\000"
.LASF123:
	.ascii	"_unused\000"
.LASF183:
	.ascii	"EINTSrcIdx\000"
.LASF187:
	.ascii	"Sense\000"
.LASF105:
	.ascii	"_localtime_buf\000"
.LASF36:
	.ascii	"__tm_min\000"
.LASF163:
	.ascii	"NVIC_MaskEINT2\000"
.LASF108:
	.ascii	"_r48\000"
.LASF145:
	.ascii	"USB_EP1OUT\000"
.LASF156:
	.ascii	"NVIC_SetEINT_EOI\000"
.LASF85:
	.ascii	"_p5s\000"
.LASF168:
	.ascii	"NVIC_EnableEINT_D0Event2\000"
.LASF178:
	.ascii	"NVIC_C_FIQ_Handler\000"
.LASF58:
	.ascii	"_lbfsize\000"
.LASF202:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\nvic.c\000"
.LASF52:
	.ascii	"__sbuf\000"
.LASF38:
	.ascii	"__tm_mday\000"
.LASF125:
	.ascii	"true\000"
.LASF180:
	.ascii	"NVIC_ADIE_C_IRQ_Handler\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
