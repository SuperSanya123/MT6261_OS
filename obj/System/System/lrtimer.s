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
	.file	"lrtimer.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	TimersList,4,4
	.section	.text.LRT_GPTHandler,"ax",%progbits
	.align	2
	.global	LRT_GPTHandler
	.code	16
	.thumb_func
	.type	LRT_GPTHandler, %function
LRT_GPTHandler:
.LFB1:
	.file 1 "Source\\System\\lrtimer.c"
	.loc 1 29 0
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
	.loc 1 30 0
	ldr	r3, .L15
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.LCB15
	b	.L13	@long jump
.LCB15:
.LBB2:
	.loc 1 32 0
	ldr	r3, .L15
	ldr	r3, [r3]
	movs	r0, r3
	bl	DL_GetFirstItem
	movs	r3, r0
	str	r3, [r7, #28]
	.loc 1 34 0
	b	.L3
.L12:
.LBB3:
	.loc 1 36 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	str	r3, [r7, #4]
	.loc 1 38 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L4
	.loc 1 40 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	bne	.LCB40
	b	.L14	@long jump
.LCB40:
.LBB4:
	.loc 1 42 0
	bl	USC_GetCurrentTicks
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 43 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	.loc 1 45 0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L11
	.loc 1 47 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L7
	.loc 1 49 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]
	movs	r2, r3
	movs	r3, #4
	ands	r3, r2
	beq	.L8
	.loc 1 51 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #4]
	movs	r0, r2
	blx	r3
	.loc 1 53 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L7
.LBB5:
	.loc 1 55 0
	ldr	r3, [r7, #28]
	str	r3, [r7, #12]
	.loc 1 57 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #28]
	.loc 1 58 0
	ldr	r3, .L15
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	DL_DeleteItem
	.loc 1 59 0
	b	.L3
.L8:
.LBE5:
	.loc 1 62 0
	adds	r2, r7, #4
	movs	r3, #4
	movs	r1, #0
	movs	r0, #7
	bl	EM_PostEvent
.L7:
	.loc 1 64 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]
	movs	r2, r3
	movs	r3, #2
	ands	r3, r2
	beq	.L10
	.loc 1 64 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #20]
	b	.L11
.L10:
.LBB6:
	.loc 1 67 0 is_stmt 1
	ldr	r3, [r7, #28]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 69 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #12]
	movs	r1, #1
	bics	r2, r1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	strb	r2, [r3, #12]
	.loc 1 70 0
	ldr	r3, .L15
	ldr	r0, [r3]
	ldr	r3, .L15
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #28]
	movs	r1, r3
	bl	DL_MoveItemToIndex
	.loc 1 71 0
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	.loc 1 72 0
	b	.L3
.L4:
.LBE6:
.LBE4:
.LBB7:
	.loc 1 80 0
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	.loc 1 82 0
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #28]
	.loc 1 83 0
	ldr	r3, .L15
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	movs	r1, r2
	movs	r0, r3
	bl	DL_DeleteItem
	.loc 1 84 0
	b	.L3
.L11:
.LBE7:
	.loc 1 86 0 discriminator 2
	ldr	r3, [r7, #28]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #28]
.L3:
.LBE3:
	.loc 1 34 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.LCB174
	b	.L12	@long jump
.LCB174:
.LBE2:
	.loc 1 89 0
	b	.L13
.L14:
.LBB9:
.LBB8:
	.loc 1 76 0
	nop
.L13:
.LBE8:
.LBE9:
	.loc 1 89 0
	nop
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	TimersList
	.cfi_endproc
.LFE1:
	.size	LRT_GPTHandler, .-LRT_GPTHandler
	.section	.text.LRT_Initialize,"ax",%progbits
	.align	2
	.global	LRT_Initialize
	.code	16
	.thumb_func
	.type	LRT_Initialize, %function
LRT_Initialize:
.LFB2:
	.loc 1 92 0
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
	.loc 1 93 0
	bl	GPT_InitializeTimers
	.loc 1 95 0
	ldr	r3, .L22
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L18
	.loc 1 95 0 discriminator 1
	bl	DL_Create
	movs	r2, r0
	ldr	r3, .L22
	str	r2, [r3]
.L18:
	.loc 1 96 0
	ldr	r3, .L22
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L19
	.loc 1 98 0
	ldr	r2, .L22+4
	movs	r3, #1
	str	r3, [sp]
	movs	r3, r2
	movs	r2, #1
	movs	r1, #100
	movs	r0, #0
	bl	GPT_SetupTimer
	subs	r3, r0, #0
	beq	.L20
	.loc 1 99 0 discriminator 1
	movs	r0, #0
	bl	GPT_StartTimer
	subs	r3, r0, #0
	.loc 1 98 0 discriminator 1
	beq	.L20
	.loc 1 100 0
	movs	r3, #1
	b	.L21
.L20:
	.loc 1 101 0
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	movs	r0, #0
	bl	GPT_SetupTimer
.L19:
	.loc 1 103 0
	ldr	r3, .L22
	ldr	r3, [r3]
	movs	r1, #0
	movs	r0, r3
	bl	DL_Delete
	movs	r2, r0
	ldr	r3, .L22
	str	r2, [r3]
	.loc 1 105 0
	movs	r3, #0
.L21:
	.loc 1 106 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L23:
	.align	2
.L22:
	.word	TimersList
	.word	LRT_GPTHandler
	.cfi_endproc
.LFE2:
	.size	LRT_Initialize, .-LRT_Initialize
	.section	.text.LRT_Create,"ax",%progbits
	.align	2
	.global	LRT_Create
	.code	16
	.thumb_func
	.type	LRT_Create, %function
LRT_Create:
.LFB3:
	.loc 1 109 0
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 110 0
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 112 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L25
	.loc 1 112 0 is_stmt 0 discriminator 1
	ldr	r3, .L30
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L25
	.loc 1 114 0 is_stmt 1
	ldr	r3, [r7, #12]
	movs	r2, #250
	lsls	r2, r2, #2
	muls	r3, r2
	str	r3, [r7, #12]
	.loc 1 116 0
	ldr	r3, [r7, #12]
	ldr	r2, .L30+4
	cmp	r3, r2
	bhi	.L26
	.loc 1 116 0 is_stmt 0 discriminator 1
	ldr	r3, .L30+8
	str	r3, [r7, #12]
.L26:
	.loc 1 117 0 is_stmt 1
	movs	r0, #28
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 118 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L25
	.loc 1 120 0
	ldr	r3, [r7, #20]
	adds	r2, r7, #7
	ldrb	r2, [r2]
	strb	r2, [r3, #12]
	.loc 1 121 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
	.loc 1 122 0
	bl	USC_GetCurrentTicks
	movs	r2, r0
	ldr	r3, [r7, #20]
	str	r2, [r3, #20]
	.loc 1 123 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	str	r2, [r3, #24]
	.loc 1 124 0
	ldr	r3, .L30
	ldr	r0, [r3]
	adds	r3, r7, #7
	ldrb	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	bne	.L27
	.loc 1 124 0 is_stmt 0 discriminator 1
	ldr	r3, .L30
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	b	.L28
.L27:
	.loc 1 124 0 discriminator 2
	movs	r3, #0
.L28:
	.loc 1 125 0 is_stmt 1 discriminator 4
	ldr	r2, [r7, #20]
	.loc 1 124 0 discriminator 4
	movs	r1, r3
	bl	DL_AddItemAtIndexPtr
	subs	r3, r0, #0
	bne	.L25
	.loc 1 127 0
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	free
	.loc 1 128 0
	movs	r3, #0
	str	r3, [r7, #20]
.L25:
	.loc 1 132 0
	ldr	r3, [r7, #20]
	.loc 1 133 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L31:
	.align	2
.L30:
	.word	TimersList
	.word	9999
	.word	10000
	.cfi_endproc
.LFE3:
	.size	LRT_Create, .-LRT_Create
	.section	.text.LRT_Destroy,"ax",%progbits
	.align	2
	.global	LRT_Destroy
	.code	16
	.thumb_func
	.type	LRT_Destroy, %function
LRT_Destroy:
.LFB4:
	.loc 1 136 0
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
	.loc 1 137 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L33
	.loc 1 137 0 discriminator 1
	ldr	r3, .L37
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_GetItemIndex
	movs	r3, r0
	adds	r3, r3, #1
	beq	.L33
.LBB10:
	.loc 1 139 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 141 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	movs	r2, #16
	movs	r1, #0
	movs	r0, r3
	bl	__secure_memset
	.loc 1 143 0
	bl	__is_in_isr_mode
	subs	r3, r0, #0
	beq	.L34
	.loc 1 145 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 146 0
	ldr	r3, .L37
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, #0
	movs	r0, r3
	bl	DL_MoveItemToIndex
	b	.L35
.L34:
	.loc 1 148 0
	ldr	r3, .L37
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_DeleteItem
.L35:
	.loc 1 150 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 151 0
	movs	r3, #1
	b	.L36
.L33:
.LBE10:
	.loc 1 153 0
	movs	r3, #0
.L36:
	.loc 1 154 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L38:
	.align	2
.L37:
	.word	TimersList
	.cfi_endproc
.LFE4:
	.size	LRT_Destroy, .-LRT_Destroy
	.section	.text.LRT_Start,"ax",%progbits
	.align	2
	.global	LRT_Start
	.code	16
	.thumb_func
	.type	LRT_Start, %function
LRT_Start:
.LFB5:
	.loc 1 157 0
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
	.loc 1 158 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L40
.LBB11:
	.loc 1 160 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 162 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L41
	.loc 1 163 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]
	movs	r2, #1
	bics	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #4]
	strb	r2, [r3, #12]
.L41:
	.loc 1 165 0
	bl	USC_GetCurrentTicks
	movs	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	.loc 1 166 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]
	movs	r2, #1
	orrs	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #4]
	strb	r2, [r3, #12]
	.loc 1 167 0
	ldr	r3, .L43
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, #0
	movs	r0, r3
	bl	DL_MoveItemToIndex
	.loc 1 168 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 169 0
	movs	r3, #1
	b	.L42
.L40:
.LBE11:
	.loc 1 171 0
	movs	r3, #0
.L42:
	.loc 1 172 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L44:
	.align	2
.L43:
	.word	TimersList
	.cfi_endproc
.LFE5:
	.size	LRT_Start, .-LRT_Start
	.section	.text.LRT_Stop,"ax",%progbits
	.align	2
	.global	LRT_Stop
	.code	16
	.thumb_func
	.type	LRT_Stop, %function
LRT_Stop:
.LFB6:
	.loc 1 175 0
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
	.loc 1 176 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L46
	.loc 1 178 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L47
.LBB12:
	.loc 1 180 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 182 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]
	movs	r2, #1
	bics	r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #4]
	strb	r2, [r3, #12]
	.loc 1 183 0
	ldr	r3, .L49
	ldr	r0, [r3]
	ldr	r3, .L49
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	movs	r1, r3
	bl	DL_MoveItemToIndex
	.loc 1 184 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
.L47:
.LBE12:
	.loc 1 186 0
	movs	r3, #1
	b	.L48
.L46:
	.loc 1 188 0
	movs	r3, #0
.L48:
	.loc 1 189 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L50:
	.align	2
.L49:
	.word	TimersList
	.cfi_endproc
.LFE6:
	.size	LRT_Stop, .-LRT_Stop
	.section	.text.LRT_SetMode,"ax",%progbits
	.align	2
	.global	LRT_SetMode
	.code	16
	.thumb_func
	.type	LRT_SetMode, %function
LRT_SetMode:
.LFB7:
	.loc 1 192 0
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
	.loc 1 193 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L52
.LBB13:
	.loc 1 195 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 197 0
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #12]
	adds	r3, r7, #3
	ldrb	r3, [r3]
	eors	r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L53
	.loc 1 198 0
	ldr	r3, .L58
	ldr	r0, [r3]
	adds	r3, r7, #3
	ldrb	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	bne	.L54
	.loc 1 198 0 is_stmt 0 discriminator 1
	ldr	r3, .L58
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	b	.L55
.L54:
	.loc 1 198 0 discriminator 2
	movs	r3, #0
.L55:
	.loc 1 199 0 is_stmt 1 discriminator 4
	ldr	r2, [r7, #4]
	.loc 1 198 0 discriminator 4
	movs	r1, r3
	bl	DL_MoveItemToIndex
.L53:
	.loc 1 200 0
	ldr	r3, [r7, #4]
	adds	r2, r7, #3
	ldrb	r2, [r2]
	strb	r2, [r3, #12]
	.loc 1 201 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	beq	.L56
	.loc 1 201 0 is_stmt 0 discriminator 1
	bl	USC_GetCurrentTicks
	movs	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
.L56:
	.loc 1 202 0 is_stmt 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 204 0
	movs	r3, #1
	b	.L57
.L52:
.LBE13:
	.loc 1 206 0
	movs	r3, #0
.L57:
	.loc 1 207 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L59:
	.align	2
.L58:
	.word	TimersList
	.cfi_endproc
.LFE7:
	.size	LRT_SetMode, .-LRT_SetMode
	.section	.text.LRT_SetInterval,"ax",%progbits
	.align	2
	.global	LRT_SetInterval
	.code	16
	.thumb_func
	.type	LRT_SetInterval, %function
LRT_SetInterval:
.LFB8:
	.loc 1 210 0
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
	.loc 1 211 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L61
.LBB14:
	.loc 1 213 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 215 0
	ldr	r3, [r7]
	movs	r2, #250
	lsls	r2, r2, #2
	muls	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	.loc 1 216 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L62
	.loc 1 216 0 is_stmt 0 discriminator 1
	bl	USC_GetCurrentTicks
	movs	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
.L62:
	.loc 1 217 0 is_stmt 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 219 0
	movs	r3, #1
	b	.L63
.L61:
.LBE14:
	.loc 1 221 0
	movs	r3, #0
.L63:
	.loc 1 222 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE8:
	.size	LRT_SetInterval, .-LRT_SetInterval
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\System/dlist.h"
	.file 6 ".\\Source\\Lib\\MT6261/drivers\\gpt.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 8 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 9 ".\\Source\\System/evmngr.h"
	.file 10 ".\\Source\\System/lrtimer.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x549
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xc
	.4byte	.LASF86
	.4byte	.LASF87
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.4byte	.LASF9
	.byte	0x2
	.byte	0x41
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.4byte	0x48
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x1
	.4byte	0x2c
	.byte	0x4
	.byte	0x1d
	.4byte	0xb1
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x1d
	.4byte	0x98
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x17
	.4byte	0xc7
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0xc
	.byte	0x5
	.byte	0x18
	.4byte	0xf8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1a
	.4byte	0xf8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x1b
	.4byte	0xf8
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x1c
	.4byte	0x8f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x17
	.4byte	0x103
	.uleb128 0xa
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0xc
	.byte	0x5
	.byte	0x1f
	.4byte	0x13a
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x21
	.4byte	0xf8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x22
	.4byte	0xf8
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x23
	.4byte	0x76
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x24
	.4byte	0x145
	.uleb128 0xa
	.byte	0x4
	.4byte	0x109
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.4byte	0x2c
	.byte	0x6
	.byte	0x3f
	.4byte	0x16e
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.4byte	0x2c
	.byte	0x7
	.byte	0xf1
	.4byte	0x19d
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.4byte	0x2c
	.byte	0x8
	.byte	0x24
	.4byte	0x1e4
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.4byte	0x2c
	.byte	0x9
	.byte	0x16
	.4byte	0x225
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x1
	.4byte	0x2c
	.byte	0xa
	.byte	0x16
	.4byte	0x24e
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xa
	.byte	0x1c
	.4byte	0x225
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xa
	.byte	0x1e
	.4byte	0x264
	.uleb128 0xa
	.byte	0x4
	.4byte	0x26a
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x1c
	.byte	0xa
	.byte	0x1f
	.4byte	0x2b3
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xa
	.byte	0x21
	.4byte	0xbc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xa
	.byte	0x22
	.4byte	0x24e
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xa
	.byte	0x23
	.4byte	0x76
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0xa
	.byte	0x24
	.4byte	0x76
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xa
	.byte	0x25
	.4byte	0x2be
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	0x2be
	.uleb128 0xd
	.4byte	0x259
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2b3
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x378
	.uleb128 0xf
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x1
	.byte	0x20
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x1
	.byte	0x24
	.4byte	0x259
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x35d
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.byte	0x2a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x344
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x1
	.byte	0x37
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x1
	.byte	0x43
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x1
	.byte	0x50
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x1
	.byte	0x5b
	.4byte	0xb1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x1
	.byte	0x6c
	.4byte	0x259
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3df
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x1
	.byte	0x6c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.byte	0x6c
	.4byte	0x2be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x1
	.byte	0x6c
	.4byte	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x1
	.byte	0x6e
	.4byte	0x259
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x87
	.4byte	0xb1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41f
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x1
	.byte	0x87
	.4byte	0x259
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x1
	.byte	0x8b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x1
	.byte	0x9c
	.4byte	0xb1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45f
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x1
	.byte	0x9c
	.4byte	0x259
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x1
	.byte	0xa0
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x1
	.byte	0xae
	.4byte	0xb1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49f
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x1
	.byte	0xae
	.4byte	0x259
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x1
	.byte	0xb4
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x1
	.byte	0xbf
	.4byte	0xb1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ed
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x1
	.byte	0xbf
	.4byte	0x259
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x1
	.byte	0xbf
	.4byte	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x12
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x1
	.byte	0xc3
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x1
	.byte	0xd1
	.4byte	0xb1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53b
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x1
	.byte	0xd1
	.4byte	0x259
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x1
	.byte	0xd1
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x1
	.byte	0xd5
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.byte	0x1a
	.4byte	0x13a
	.uleb128 0x5
	.byte	0x3
	.4byte	TimersList
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x16
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
	.4byte	0x54
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB8
	.4byte	.LBE8
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF89:
	.ascii	"LRT_Initialize\000"
.LASF48:
	.ascii	"tag_EVTYPE\000"
.LASF43:
	.ascii	"USB_EP4IN\000"
.LASF70:
	.ascii	"tmrItem\000"
.LASF58:
	.ascii	"TF_NONE\000"
.LASF2:
	.ascii	"short int\000"
.LASF32:
	.ascii	"tag_VLINDEX\000"
.LASF49:
	.ascii	"ET_UNKNOWN\000"
.LASF12:
	.ascii	"sizetype\000"
.LASF86:
	.ascii	"Source\\System\\lrtimer.c\000"
.LASF27:
	.ascii	"pDLIST\000"
.LASF51:
	.ascii	"ET_PENRELEASE\000"
.LASF54:
	.ascii	"ET_GODESTROY\000"
.LASF56:
	.ascii	"ET_ONTIMER\000"
.LASF42:
	.ascii	"USB_EP3IN\000"
.LASF88:
	.ascii	"LRT_GPTHandler\000"
.LASF82:
	.ascii	"LRT_Stop\000"
.LASF63:
	.ascii	"pTIMER\000"
.LASF60:
	.ascii	"TF_AUTOREPEAT\000"
.LASF47:
	.ascii	"USB_EPNUM\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF41:
	.ascii	"USB_EP2IN\000"
.LASF73:
	.ascii	"DeltaTicks\000"
.LASF25:
	.ascii	"Last\000"
.LASF66:
	.ascii	"Flags\000"
.LASF37:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF6:
	.ascii	"long long int\000"
.LASF50:
	.ascii	"ET_PENPRESS\000"
.LASF61:
	.ascii	"TF_DIRECT\000"
.LASF4:
	.ascii	"long int\000"
.LASF74:
	.ascii	"tmpItem\000"
.LASF44:
	.ascii	"USB_EPMAXINDEX\000"
.LASF40:
	.ascii	"USB_EP1IN\000"
.LASF77:
	.ascii	"LRT_Destroy\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF76:
	.ascii	"LRT_Create\000"
.LASF24:
	.ascii	"First\000"
.LASF11:
	.ascii	"long double\000"
.LASF38:
	.ascii	"tag_EP\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF78:
	.ascii	"Timer\000"
.LASF0:
	.ascii	"signed char\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF22:
	.ascii	"tag_ListItem\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF14:
	.ascii	"false\000"
.LASF53:
	.ascii	"ET_ONPAINT\000"
.LASF64:
	.ascii	"tag_TIMER\000"
.LASF81:
	.ascii	"iflags\000"
.LASF26:
	.ascii	"Count\000"
.LASF20:
	.ascii	"Data\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF46:
	.ascii	"USB_EP2OUT\000"
.LASF79:
	.ascii	"intflags\000"
.LASF13:
	.ascii	"char\000"
.LASF83:
	.ascii	"LRT_SetMode\000"
.LASF18:
	.ascii	"Prev\000"
.LASF45:
	.ascii	"USB_EP1OUT\000"
.LASF39:
	.ascii	"USB_EP0\000"
.LASF15:
	.ascii	"true\000"
.LASF71:
	.ascii	"tmpLRT\000"
.LASF17:
	.ascii	"TDLITEM\000"
.LASF87:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF84:
	.ascii	"LRT_SetInterval\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF90:
	.ascii	"TimersList\000"
.LASF62:
	.ascii	"TMRFLAGS\000"
.LASF67:
	.ascii	"Interval\000"
.LASF28:
	.ascii	"GP_TIMER1\000"
.LASF29:
	.ascii	"GP_TIMER2\000"
.LASF30:
	.ascii	"GP_TIMER4\000"
.LASF80:
	.ascii	"LRT_Start\000"
.LASF55:
	.ascii	"ET_PWRKEY\000"
.LASF69:
	.ascii	"Handler\000"
.LASF59:
	.ascii	"TF_ENABLED\000"
.LASF57:
	.ascii	"tag_MRFLAGS\000"
.LASF68:
	.ascii	"StartTicks\000"
.LASF75:
	.ascii	"tmpTimer\000"
.LASF21:
	.ascii	"pDLITEM\000"
.LASF33:
	.ascii	"LCDIF_LAYER0\000"
.LASF65:
	.ascii	"ListHeader\000"
.LASF35:
	.ascii	"LCDIF_LAYER2\000"
.LASF36:
	.ascii	"LCDIF_LAYER3\000"
.LASF23:
	.ascii	"tag_DList\000"
.LASF72:
	.ascii	"CurrTicks\000"
.LASF34:
	.ascii	"LCDIF_LAYER1\000"
.LASF52:
	.ascii	"ET_PENMOVE\000"
.LASF85:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF19:
	.ascii	"Next\000"
.LASF16:
	.ascii	"boolean\000"
.LASF31:
	.ascii	"tag_GPT\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
