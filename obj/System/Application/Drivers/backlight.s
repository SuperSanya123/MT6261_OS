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
	.file	"backlight.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	BLState,8,4
	.comm	BLReduceTimer,4,4
	.global	__aeabi_uidiv
	.section	.text.PMUBL_UpdateValues,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	PMUBL_UpdateValues, %function
PMUBL_UpdateValues:
.LFB1:
	.file 1 "Source\\Application\\Drivers\\backlight.c"
	.loc 1 28 0
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
.LBB2:
	.loc 1 29 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	movs	r3, #100
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	cmp	r3, r2
	bls	.L2
	movs	r3, r2
.L2:
.LBE2:
	str	r3, [r7, #4]
	.loc 1 31 0
	ldr	r3, .L12
	ldrb	r3, [r3, #5]
	cmp	r3, #0
	bne	.L3
	.loc 1 33 0
	ldr	r3, [r7, #4]
	cmp	r3, #19
	bhi	.L4
	.loc 1 33 0 is_stmt 0 discriminator 1
	adds	r3, r7, #3
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r1, #0
	movs	r0, #0
	bl	PMU_SetISINKParameters
	.loc 1 61 0 is_stmt 1 discriminator 1
	b	.L11
.L4:
	.loc 1 34 0
	ldr	r3, [r7, #4]
	cmp	r3, #39
	bhi	.L6
	.loc 1 34 0 is_stmt 0 discriminator 1
	adds	r3, r7, #3
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r1, #1
	movs	r0, #0
	bl	PMU_SetISINKParameters
	.loc 1 61 0 is_stmt 1 discriminator 1
	b	.L11
.L6:
	.loc 1 35 0
	ldr	r3, [r7, #4]
	cmp	r3, #59
	bhi	.L7
	.loc 1 35 0 is_stmt 0 discriminator 1
	adds	r3, r7, #3
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r1, #2
	movs	r0, #0
	bl	PMU_SetISINKParameters
	.loc 1 61 0 is_stmt 1 discriminator 1
	b	.L11
.L7:
	.loc 1 36 0
	ldr	r3, [r7, #4]
	cmp	r3, #79
	bhi	.L8
	.loc 1 36 0 is_stmt 0 discriminator 1
	adds	r3, r7, #3
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r1, #3
	movs	r0, #0
	bl	PMU_SetISINKParameters
	.loc 1 61 0 is_stmt 1 discriminator 1
	b	.L11
.L8:
	.loc 1 37 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r1, #4
	movs	r0, #0
	bl	PMU_SetISINKParameters
	.loc 1 61 0
	b	.L11
.L3:
	.loc 1 39 0
	ldr	r3, .L12
	ldrb	r3, [r3, #5]
	cmp	r3, #1
	bne	.L11
	.loc 1 48 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	movs	r2, r3
	movs	r1, #4
	movs	r0, #0
	bl	PMU_SetISINKParameters
	.loc 1 49 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L10
	.loc 1 51 0
	movs	r1, #1
	movs	r0, #2
	bl	PWM_SetPowerDown
	.loc 1 52 0
	movs	r0, #1
	bl	GUI_SetLockState
	.loc 1 61 0
	b	.L11
.L10:
	.loc 1 56 0
	ldr	r3, [r7, #4]
	movs	r2, #90
	muls	r3, r2
	movs	r1, #100
	movs	r0, r3
	bl	__aeabi_uidiv
	movs	r3, r0
	adds	r3, r3, #10
	str	r3, [r7, #4]
	.loc 1 57 0
	ldr	r3, [r7, #4]
	movs	r1, r3
	movs	r0, #2
	bl	PWM_SetDutyCycle
	.loc 1 58 0
	movs	r1, #0
	movs	r0, #2
	bl	PWM_SetPowerDown
.L11:
	.loc 1 61 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	BLState
	.cfi_endproc
.LFE1:
	.size	PMUBL_UpdateValues, .-PMUBL_UpdateValues
	.section	.text.PMUBL_HideTimerHandler,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	PMUBL_HideTimerHandler, %function
PMUBL_HideTimerHandler:
.LFB2:
	.loc 1 64 0
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
	.loc 1 65 0
	ldr	r3, .L18
	ldrb	r3, [r3, #4]
	cmp	r3, #1
	bne	.L15
	.loc 1 67 0
	ldr	r3, .L18
	movs	r2, #0
	strb	r2, [r3, #4]
	.loc 1 68 0
	ldr	r3, .L18
	ldr	r3, [r3]
	movs	r1, #0
	movs	r0, r3
	bl	PMUBL_UpdateValues
	.loc 1 69 0
	ldr	r3, .L18+4
	ldr	r3, [r3]
	movs	r0, r3
	bl	LRT_Stop
	.loc 1 77 0
	b	.L17
.L15:
	.loc 1 73 0
	ldr	r3, .L18
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 74 0
	ldr	r3, .L18
	ldr	r3, [r3]
	movs	r1, #3
	movs	r0, r3
	bl	__aeabi_uidiv
	movs	r3, r0
	movs	r1, #1
	movs	r0, r3
	bl	PMUBL_UpdateValues
	.loc 1 75 0
	ldr	r3, .L18+4
	ldr	r3, [r3]
	ldr	r2, .L18+8
	movs	r1, r2
	movs	r0, r3
	bl	LRT_SetInterval
.L17:
	.loc 1 77 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L19:
	.align	2
.L18:
	.word	BLState
	.word	BLReduceTimer
	.word	30000
	.cfi_endproc
.LFE2:
	.size	PMUBL_HideTimerHandler, .-PMUBL_HideTimerHandler
	.section	.text.PMUBL_Initialize,"ax",%progbits
	.align	2
	.global	PMUBL_Initialize
	.code	16
	.thumb_func
	.type	PMUBL_Initialize, %function
PMUBL_Initialize:
.LFB3:
	.loc 1 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 81 0
	ldr	r3, .L21
	ldr	r0, .L21+4
	movs	r2, #6
	movs	r1, r3
	bl	LRT_Create
	movs	r2, r0
	ldr	r3, .L21+8
	str	r2, [r3]
	.loc 1 82 0
	ldr	r3, .L21+12
	movs	r2, #8
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 84 0
	bl	PMU_DisableISINKs
	.loc 1 85 0
	movs	r3, #8
	movs	r2, #0
	movs	r1, #163
	movs	r0, #2
	bl	PWM_SetupChannel
	.loc 1 86 0
	movs	r0, #1
	bl	PMUBL_SetBacklightMode
	.loc 1 88 0
	movs	r0, #0
	bl	PMUBL_TurnOn
	.loc 1 89 0
	movs	r0, #100
	bl	PMUBL_SetupValue
	.loc 1 90 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L22:
	.align	2
.L21:
	.word	PMUBL_HideTimerHandler
	.word	10000
	.word	BLReduceTimer
	.word	BLState
	.cfi_endproc
.LFE3:
	.size	PMUBL_Initialize, .-PMUBL_Initialize
	.section	.text.PMUBL_SetBacklightMode,"ax",%progbits
	.align	2
	.global	PMUBL_SetBacklightMode
	.code	16
	.thumb_func
	.type	PMUBL_SetBacklightMode, %function
PMUBL_SetBacklightMode:
.LFB4:
	.loc 1 93 0
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
	.loc 1 94 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #1
	bhi	.L25
	.loc 1 96 0
	ldr	r3, .L26
	adds	r2, r7, #7
	ldrb	r2, [r2]
	strb	r2, [r3, #5]
	.loc 1 97 0
	ldr	r3, .L26
	ldrb	r3, [r3, #5]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r0, r3
	bl	PMU_SetISINKMode
.L25:
	.loc 1 99 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L27:
	.align	2
.L26:
	.word	BLState
	.cfi_endproc
.LFE4:
	.size	PMUBL_SetBacklightMode, .-PMUBL_SetBacklightMode
	.section	.text.PMUBL_SetupValue,"ax",%progbits
	.align	2
	.global	PMUBL_SetupValue
	.code	16
	.thumb_func
	.type	PMUBL_SetupValue, %function
PMUBL_SetupValue:
.LFB5:
	.loc 1 102 0
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
	.loc 1 103 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 105 0
	ldr	r3, .L32
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 1 107 0
	ldr	r3, .L32
	ldrb	r3, [r3, #4]
	cmp	r3, #2
	bne	.L29
	.loc 1 107 0 is_stmt 0 discriminator 1
	ldr	r3, .L32
	ldr	r3, [r3]
	movs	r1, #1
	movs	r0, r3
	bl	PMUBL_UpdateValues
	b	.L30
.L29:
	.loc 1 108 0 is_stmt 1
	ldr	r3, .L32
	ldrb	r3, [r3, #4]
	cmp	r3, #1
	bne	.L31
	.loc 1 108 0 is_stmt 0 discriminator 1
	ldr	r3, .L32
	ldr	r3, [r3]
	movs	r1, #3
	movs	r0, r3
	bl	__aeabi_uidiv
	movs	r3, r0
	movs	r1, #1
	movs	r0, r3
	bl	PMUBL_UpdateValues
	b	.L30
.L31:
	.loc 1 109 0 is_stmt 1
	ldr	r3, .L32
	ldr	r3, [r3]
	movs	r1, #0
	movs	r0, r3
	bl	PMUBL_UpdateValues
.L30:
	.loc 1 111 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 112 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L33:
	.align	2
.L32:
	.word	BLState
	.cfi_endproc
.LFE5:
	.size	PMUBL_SetupValue, .-PMUBL_SetupValue
	.section	.text.PMUBL_TurnOn,"ax",%progbits
	.align	2
	.global	PMUBL_TurnOn
	.code	16
	.thumb_func
	.type	PMUBL_TurnOn, %function
PMUBL_TurnOn:
.LFB6:
	.loc 1 115 0
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
	.loc 1 116 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L35
.LBB3:
	.loc 1 118 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 120 0
	ldr	r3, .L38
	ldr	r3, [r3]
	movs	r0, r3
	bl	LRT_Stop
	.loc 1 121 0
	ldr	r3, .L38+4
	ldr	r3, [r3]
	movs	r1, #0
	movs	r0, r3
	bl	PMUBL_UpdateValues
	.loc 1 122 0
	ldr	r3, .L38+4
	movs	r2, #0
	strb	r2, [r3, #4]
	.loc 1 123 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
.LBE3:
	.loc 1 126 0
	b	.L37
.L35:
	.loc 1 125 0
	movs	r0, #1
	bl	PMUBL_RestartBacklightTimer
.L37:
	.loc 1 126 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L39:
	.align	2
.L38:
	.word	BLReduceTimer
	.word	BLState
	.cfi_endproc
.LFE6:
	.size	PMUBL_TurnOn, .-PMUBL_TurnOn
	.section	.text.PMUBL_RestartBacklightTimer,"ax",%progbits
	.align	2
	.global	PMUBL_RestartBacklightTimer
	.code	16
	.thumb_func
	.type	PMUBL_RestartBacklightTimer, %function
PMUBL_RestartBacklightTimer:
.LFB7:
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
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 132 0
	ldr	r3, .L42
	movs	r2, #2
	strb	r2, [r3, #4]
	.loc 1 133 0
	ldr	r3, .L42+4
	ldr	r3, [r3]
	ldr	r2, .L42+8
	movs	r1, r2
	movs	r0, r3
	bl	LRT_SetInterval
	.loc 1 134 0
	ldr	r3, .L42+4
	ldr	r3, [r3]
	movs	r0, r3
	bl	LRT_Start
	.loc 1 135 0
	ldr	r3, .L42
	ldr	r3, [r3]
	movs	r1, #1
	movs	r0, r3
	bl	PMUBL_UpdateValues
	.loc 1 136 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L41
	.loc 1 136 0 is_stmt 0 discriminator 1
	movs	r0, #0
	bl	GUI_SetLockState
.L41:
	.loc 1 137 0 is_stmt 1
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 138 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L43:
	.align	2
.L42:
	.word	BLState
	.word	BLReduceTimer
	.word	10000
	.cfi_endproc
.LFE7:
	.size	PMUBL_RestartBacklightTimer, .-PMUBL_RestartBacklightTimer
	.section	.text.PMUBL_GetBacklightStage,"ax",%progbits
	.align	2
	.global	PMUBL_GetBacklightStage
	.code	16
	.thumb_func
	.type	PMUBL_GetBacklightStage, %function
PMUBL_GetBacklightStage:
.LFB8:
	.loc 1 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 142 0
	ldr	r3, .L46
	ldrb	r3, [r3, #4]
	.loc 1 143 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L47:
	.align	2
.L46:
	.word	BLState
	.cfi_endproc
.LFE8:
	.size	PMUBL_GetBacklightStage, .-PMUBL_GetBacklightStage
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\System/dlist.h"
	.file 6 ".\\Source\\Lib\\MT6261/drivers\\pmu.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 8 ".\\Source\\Lib\\MT6261/drivers\\pwm.h"
	.file 9 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 10 ".\\Source\\System/lrtimer.h"
	.file 11 ".\\Source\\Application\\Drivers/backlight.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x50f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xc
	.4byte	.LASF108
	.4byte	.LASF109
	.4byte	.Ldebug_ranges0+0
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
	.4byte	.LASF73
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
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.4byte	0x2c
	.byte	0x6
	.2byte	0x25c
	.4byte	0x12d
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.4byte	0x2c
	.byte	0x6
	.2byte	0x263
	.4byte	0x175
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x1
	.4byte	0x2c
	.byte	0x7
	.byte	0xf1
	.4byte	0x1a4
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x1
	.4byte	0x2c
	.byte	0x8
	.byte	0x19
	.4byte	0x1d3
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x1
	.4byte	0x2c
	.byte	0x8
	.byte	0x22
	.4byte	0x20e
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
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x1
	.4byte	0x2c
	.byte	0x9
	.byte	0x24
	.4byte	0x255
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x1
	.4byte	0x2c
	.byte	0xa
	.byte	0x16
	.4byte	0x27e
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xa
	.byte	0x1c
	.4byte	0x255
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xa
	.byte	0x1e
	.4byte	0x294
	.uleb128 0xa
	.byte	0x4
	.4byte	0x29a
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x1c
	.byte	0xa
	.byte	0x1f
	.4byte	0x2e3
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0xa
	.byte	0x21
	.4byte	0xbc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0xa
	.byte	0x22
	.4byte	0x27e
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xa
	.byte	0x23
	.4byte	0x76
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0xa
	.byte	0x24
	.4byte	0x76
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xa
	.byte	0x25
	.4byte	0x2ee
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	0x2ee
	.uleb128 0xe
	.4byte	0x289
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2e3
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0x16
	.4byte	0x317
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xb
	.byte	0x1b
	.4byte	0x2f4
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.byte	0x1d
	.4byte	0x345
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xb
	.byte	0x22
	.4byte	0x322
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x8
	.byte	0xb
	.byte	0x24
	.4byte	0x381
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0xb
	.byte	0x26
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0xb
	.byte	0x27
	.4byte	0x345
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0xb
	.byte	0x28
	.4byte	0x317
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0xb
	.byte	0x29
	.4byte	0x350
	.uleb128 0xf
	.4byte	.LASF96
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e2
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x1
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x1
	.byte	0x1b
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x11
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x12
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x406
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x1
	.byte	0x3f
	.4byte	0x289
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x1
	.byte	0x4f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x1
	.byte	0x5c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43b
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x1
	.byte	0x5c
	.4byte	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x1
	.byte	0x65
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46d
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x1
	.byte	0x65
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x1
	.byte	0x67
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x1
	.byte	0x72
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a9
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x1
	.byte	0x72
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x1
	.byte	0x76
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x1
	.byte	0x80
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4db
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x1
	.byte	0x80
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x1
	.byte	0x82
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x1
	.byte	0x8c
	.4byte	0x345
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x1
	.byte	0x18
	.4byte	0x381
	.uleb128 0x5
	.byte	0x3
	.4byte	BLState
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x1
	.byte	0x19
	.4byte	0x289
	.uleb128 0x5
	.byte	0x3
	.4byte	BLReduceTimer
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x16
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
	.uleb128 0x17
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
.LASF64:
	.ascii	"USB_EP2OUT\000"
.LASF110:
	.ascii	"PMUBL_Initialize\000"
.LASF104:
	.ascii	"UnlockGUI\000"
.LASF26:
	.ascii	"tag_ICVAL\000"
.LASF84:
	.ascii	"TBLMODE\000"
.LASF102:
	.ascii	"PMUBL_TurnOn\000"
.LASF100:
	.ascii	"PMUBL_SetupValue\000"
.LASF90:
	.ascii	"tag_BLSTATE\000"
.LASF2:
	.ascii	"short int\000"
.LASF36:
	.ascii	"tag_VLINDEX\000"
.LASF12:
	.ascii	"sizetype\000"
.LASF93:
	.ascii	"Mode\000"
.LASF111:
	.ascii	"PMUBL_GetBacklightStage\000"
.LASF106:
	.ascii	"BLReduceTimer\000"
.LASF108:
	.ascii	"Source\\Application\\Drivers\\backlight.c\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF60:
	.ascii	"USB_EP3IN\000"
.LASF44:
	.ascii	"PWM_CHANNEL2\000"
.LASF45:
	.ascii	"PWM_CHANNEL3\000"
.LASF46:
	.ascii	"PWM_CHANNEL4\000"
.LASF72:
	.ascii	"pTIMER\000"
.LASF31:
	.ascii	"IC_20mA\000"
.LASF35:
	.ascii	"IC_48mA\000"
.LASF69:
	.ascii	"TF_AUTOREPEAT\000"
.LASF65:
	.ascii	"USB_EPNUM\000"
.LASF33:
	.ascii	"IC_32mA\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF30:
	.ascii	"IC_16mA\000"
.LASF59:
	.ascii	"USB_EP2IN\000"
.LASF76:
	.ascii	"Flags\000"
.LASF47:
	.ascii	"PWM_CHANNELS\000"
.LASF41:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF6:
	.ascii	"long long int\000"
.LASF83:
	.ascii	"BM_MODES\000"
.LASF99:
	.ascii	"PMUBL_SetBacklightMode\000"
.LASF70:
	.ascii	"TF_DIRECT\000"
.LASF4:
	.ascii	"long int\000"
.LASF43:
	.ascii	"PWM_CHANNEL1\000"
.LASF94:
	.ascii	"TBLSTATE\000"
.LASF15:
	.ascii	"true\000"
.LASF62:
	.ascii	"USB_EPMAXINDEX\000"
.LASF103:
	.ascii	"PMUBL_RestartBacklightTimer\000"
.LASF55:
	.ascii	"PWF_ALW_HIGH\000"
.LASF58:
	.ascii	"USB_EP1IN\000"
.LASF97:
	.ascii	"PMUBL_HideTimerHandler\000"
.LASF23:
	.ascii	"ISINK_CH1\000"
.LASF71:
	.ascii	"TMRFLAGS\000"
.LASF20:
	.ascii	"Data\000"
.LASF28:
	.ascii	"IC_8mA\000"
.LASF81:
	.ascii	"BM_ISINK\000"
.LASF11:
	.ascii	"long double\000"
.LASF56:
	.ascii	"tag_EP\000"
.LASF91:
	.ascii	"Value\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF49:
	.ascii	"PWF_CLKDIV1\000"
.LASF50:
	.ascii	"PWF_CLKDIV2\000"
.LASF51:
	.ascii	"PWF_CLKDIV4\000"
.LASF98:
	.ascii	"Timer\000"
.LASF48:
	.ascii	"tag_PWM_FLAGS\000"
.LASF0:
	.ascii	"signed char\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF85:
	.ascii	"tag_BLSTAGE\000"
.LASF73:
	.ascii	"tag_ListItem\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF14:
	.ascii	"false\000"
.LASF74:
	.ascii	"tag_TIMER\000"
.LASF87:
	.ascii	"BS_REDUCED\000"
.LASF95:
	.ascii	"TurnOn\000"
.LASF105:
	.ascii	"BLState\000"
.LASF101:
	.ascii	"intflags\000"
.LASF13:
	.ascii	"char\000"
.LASF18:
	.ascii	"Prev\000"
.LASF96:
	.ascii	"PMUBL_UpdateValues\000"
.LASF63:
	.ascii	"USB_EP1OUT\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF88:
	.ascii	"BS_FULL\000"
.LASF80:
	.ascii	"tag_BLMODE\000"
.LASF19:
	.ascii	"Next\000"
.LASF17:
	.ascii	"TDLITEM\000"
.LASF52:
	.ascii	"PWF_CLKDIV8\000"
.LASF53:
	.ascii	"PWF_ENABLED\000"
.LASF66:
	.ascii	"tag_MRFLAGS\000"
.LASF29:
	.ascii	"IC_12mA\000"
.LASF109:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF34:
	.ascii	"IC_40mA\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF82:
	.ascii	"BM_PWM\000"
.LASF32:
	.ascii	"IC_24mA\000"
.LASF77:
	.ascii	"Interval\000"
.LASF54:
	.ascii	"PWF_FSEL_32K\000"
.LASF67:
	.ascii	"TF_NONE\000"
.LASF25:
	.ascii	"tag_ISINKCHNL\000"
.LASF42:
	.ascii	"tag_PWM\000"
.LASF24:
	.ascii	"ISINK_CHTOTAL\000"
.LASF79:
	.ascii	"Handler\000"
.LASF68:
	.ascii	"TF_ENABLED\000"
.LASF27:
	.ascii	"IC_4mA\000"
.LASF78:
	.ascii	"StartTicks\000"
.LASF86:
	.ascii	"BS_OFF\000"
.LASF92:
	.ascii	"Stage\000"
.LASF57:
	.ascii	"USB_EP0\000"
.LASF21:
	.ascii	"pDLITEM\000"
.LASF37:
	.ascii	"LCDIF_LAYER0\000"
.LASF75:
	.ascii	"ListHeader\000"
.LASF39:
	.ascii	"LCDIF_LAYER2\000"
.LASF40:
	.ascii	"LCDIF_LAYER3\000"
.LASF89:
	.ascii	"TBLSTAGE\000"
.LASF61:
	.ascii	"USB_EP4IN\000"
.LASF107:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF16:
	.ascii	"boolean\000"
.LASF38:
	.ascii	"LCDIF_LAYER1\000"
.LASF22:
	.ascii	"ISINK_CH0\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
