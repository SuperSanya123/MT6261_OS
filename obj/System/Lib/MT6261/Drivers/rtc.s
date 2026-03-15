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
	.file	"rtc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.DayInMonth,"a",%progbits
	.align	2
	.type	DayInMonth, %object
	.size	DayInMonth, 13
DayInMonth:
	.byte	0
	.byte	31
	.byte	28
	.byte	31
	.byte	30
	.byte	31
	.byte	30
	.byte	31
	.byte	31
	.byte	30
	.byte	31
	.byte	30
	.byte	31
	.section	.text.RTC_WaitCBUSY,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	RTC_WaitCBUSY, %function
RTC_WaitCBUSY:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\rtc.c"
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 28 0
	nop
.L2:
	.loc 1 28 0 is_stmt 0 discriminator 1
	ldr	r3, .L3
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #64
	ands	r3, r2
	bne	.L2
	.loc 1 29 0 is_stmt 1
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L4:
	.align	2
.L3:
	.word	-1603207168
	.cfi_endproc
.LFE1:
	.size	RTC_WaitCBUSY, .-RTC_WaitCBUSY
	.section	.text.RTC_UpdateContext,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	RTC_UpdateContext, %function
RTC_UpdateContext:
.LFB2:
	.loc 1 32 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 33 0
	ldr	r3, .L6
	movs	r2, #1
	strh	r2, [r3]
	.loc 1 34 0
	bl	RTC_WaitCBUSY
	.loc 1 35 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	-1603207052
	.cfi_endproc
.LFE2:
	.size	RTC_UpdateContext, .-RTC_UpdateContext
	.section	.text.RTC_Unprotect,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	RTC_Unprotect, %function
RTC_Unprotect:
.LFB3:
	.loc 1 38 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 39 0
	ldr	r3, .L9
	ldr	r2, .L9+4
	strh	r2, [r3]
	.loc 1 40 0
	bl	RTC_UpdateContext
	.loc 1 41 0
	ldr	r3, .L9
	ldr	r2, .L9+8
	strh	r2, [r3]
	.loc 1 42 0
	bl	RTC_UpdateContext
	.loc 1 43 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	-1603207064
	.word	22634
	.word	-28362
	.cfi_endproc
.LFE3:
	.size	RTC_Unprotect, .-RTC_Unprotect
	.section	.text.RTC_SetPowerkey,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	RTC_SetPowerkey, %function
RTC_SetPowerkey:
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
	ldr	r3, .L12
	ldr	r2, .L12+4
	strh	r2, [r3]
	.loc 1 48 0
	ldr	r3, .L12+8
	ldr	r2, .L12+12
	strh	r2, [r3]
	.loc 1 49 0
	bl	RTC_UpdateContext
	.loc 1 50 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	-1603207088
	.word	-23721
	.word	-1603207084
	.word	26578
	.cfi_endproc
.LFE4:
	.size	RTC_SetPowerkey, .-RTC_SetPowerkey
	.section	.text.RTC_SetOSC32CON,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	RTC_SetOSC32CON, %function
RTC_SetOSC32CON:
.LFB5:
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
	movs	r2, r0
	adds	r3, r7, #6
	strh	r2, [r3]
	.loc 1 54 0
	ldr	r3, .L15
	ldr	r2, .L15+4
	strh	r2, [r3]
	.loc 1 55 0
	bl	RTC_WaitCBUSY
	.loc 1 56 0
	ldr	r3, .L15
	ldr	r2, .L15+8
	strh	r2, [r3]
	.loc 1 57 0
	bl	RTC_WaitCBUSY
	.loc 1 58 0
	ldr	r2, .L15
	adds	r3, r7, #6
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 1 59 0
	bl	RTC_WaitCBUSY
	.loc 1 60 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	-1603207092
	.word	6743
	.word	11112
	.cfi_endproc
.LFE5:
	.size	RTC_SetOSC32CON, .-RTC_SetOSC32CON
	.global	__aeabi_idiv
	.global	__aeabi_uidiv
	.global	__aeabi_uidivmod
	.section	.text.RTC_DayOfWeek,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	RTC_DayOfWeek, %function
RTC_DayOfWeek:
.LFB6:
	.loc 1 63 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 66 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]
	movs	r2, r3
	movs	r3, #14
	subs	r3, r3, r2
	movs	r1, #12
	movs	r0, r3
	bl	__aeabi_idiv
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 67 0
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]
	movs	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	.loc 1 68 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]
	movs	r1, r3
	ldr	r2, [r7, #20]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r1, r3
	subs	r3, r3, #2
	str	r3, [r7, #12]
	.loc 1 69 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	movs	r2, r3
	ldr	r3, [r7, #16]
	adds	r2, r2, r3
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #2
	adds	r4, r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #100
	movs	r0, r3
	bl	__aeabi_uidiv
	movs	r3, r0
	subs	r4, r4, r3
	ldr	r2, [r7, #16]
	movs	r3, #200
	lsls	r1, r3, #1
	movs	r0, r2
	bl	__aeabi_uidiv
	movs	r3, r0
	adds	r4, r4, r3
	ldr	r2, [r7, #12]
	movs	r3, r2
	lsls	r3, r3, #5
	subs	r3, r3, r2
	movs	r1, #12
	movs	r0, r3
	bl	__aeabi_uidiv
	movs	r3, r0
	adds	r3, r4, r3
	ldr	r2, .L21
	mov	ip, r2
	add	r3, r3, ip
	movs	r1, #7
	movs	r0, r3
	bl	__aeabi_uidivmod
	movs	r3, r1
	str	r3, [r7, #8]
	.loc 1 71 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L18
	.loc 1 71 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L19
.L18:
	.loc 1 71 0 discriminator 2
	movs	r3, #7
.L19:
	.loc 1 72 0 is_stmt 1 discriminator 4
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r7, pc}
.L22:
	.align	2
.L21:
	.word	7000
	.cfi_endproc
.LFE6:
	.size	RTC_DayOfWeek, .-RTC_DayOfWeek
	.section	.rodata
	.align	2
.LC0:
	.ascii	"settings invalid - \000"
	.align	2
.LC3:
	.ascii	"reconfigured!\015\000"
	.align	2
.LC5:
	.ascii	"Complete.\015\000"
	.section	.text.RTC_Initialize,"ax",%progbits
	.align	2
	.global	RTC_Initialize
	.code	16
	.thumb_func
	.type	RTC_Initialize, %function
RTC_Initialize:
.LFB7:
	.loc 1 75 0
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
	.loc 1 76 0
	ldr	r3, .L26
	movs	r0, r3
	bl	RTC_SetOSC32CON
	.loc 1 77 0
	bl	RTC_Unprotect
	.loc 1 79 0
	bl	RTC_IsValidState
	subs	r3, r0, #0
	bne	.L24
.LBB2:
	.loc 1 84 0
	ldr	r3, .L26+4
	movs	r0, r3
	bl	printf
	.loc 1 84 0
	ldr	r3, .L26+8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 84 0
	movs	r0, r3
	bl	fflush
	.loc 1 86 0
	bl	RTC_SetPowerkey
	.loc 1 88 0
	ldr	r3, .L26+12
	movs	r2, #134
	lsls	r2, r2, #7
	strh	r2, [r3]
	.loc 1 89 0
	bl	RTC_UpdateContext
	.loc 1 91 0
	ldr	r3, .L26+16
	ldr	r2, .L26+20
	strh	r2, [r3]
	.loc 1 92 0
	bl	RTC_UpdateContext
	.loc 1 93 0
	ldr	r3, .L26+16
	movs	r2, #10
	strh	r2, [r3]
	.loc 1 94 0
	bl	RTC_UpdateContext
	.loc 1 95 0
	ldr	r3, .L26+16
	movs	r2, #2
	strh	r2, [r3]
	.loc 1 96 0
	bl	RTC_UpdateContext
	.loc 1 98 0
	ldr	r3, .L26+24
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 99 0
	ldr	r3, .L26+28
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 100 0
	ldr	r3, .L26+32
	movs	r2, #127
	strh	r2, [r3]
	.loc 1 101 0
	bl	RTC_UpdateContext
	.loc 1 102 0
	ldr	r3, .L26+36
	ldrh	r3, [r3]
	.loc 1 104 0
	adds	r3, r7, #4
	movs	r2, #10
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 105 0
	adds	r3, r7, #4
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 106 0
	adds	r3, r7, #4
	movs	r2, #1
	strb	r2, [r3, #6]
	.loc 1 107 0
	adds	r3, r7, #4
	movs	r2, #250
	lsls	r2, r2, #3
	strh	r2, [r3, #8]
	.loc 1 108 0
	adds	r3, r7, #4
	adds	r3, r3, #4
	movs	r0, r3
	bl	RTC_DayOfWeek
	movs	r3, r0
	movs	r2, r3
	adds	r3, r7, #4
	strb	r2, [r3, #5]
	.loc 1 109 0
	adds	r3, r7, #4
	movs	r0, r3
	bl	RTC_SetDateTime
	.loc 1 110 0
	adds	r3, r7, #4
	movs	r1, #0
	movs	r0, r3
	bl	RTC_SetAlarmDateTime
	.loc 1 112 0
	ldr	r3, .L26+40
	movs	r0, r3
	bl	puts
	.loc 1 112 0
	ldr	r3, .L26+8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 112 0
	movs	r0, r3
	bl	fflush
	.loc 1 113 0
	movs	r3, #1
	b	.L25
.L24:
.LBE2:
	.loc 1 115 0
	ldr	r3, .L26+44
	movs	r0, r3
	bl	puts
	.loc 1 115 0
	ldr	r3, .L26+8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 115 0
	movs	r0, r3
	bl	fflush
	.loc 1 116 0
	movs	r3, #1
.L25:
	.loc 1 117 0 discriminator 1
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L27:
	.align	2
.L26:
	.word	1039
	.word	.LC0
	.word	_impure_ptr
	.word	-1603207168
	.word	-1603207048
	.word	-32766
	.word	-1603207156
	.word	-1603207160
	.word	-1603207152
	.word	-1603207164
	.word	.LC3
	.word	.LC5
	.cfi_endproc
.LFE7:
	.size	RTC_Initialize, .-RTC_Initialize
	.section	.text.RTC_LockBBPower,"ax",%progbits
	.align	2
	.global	RTC_LockBBPower
	.code	16
	.thumb_func
	.type	RTC_LockBBPower, %function
RTC_LockBBPower:
.LFB8:
	.loc 1 120 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 121 0
	ldr	r2, .L30
	ldr	r3, .L30
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #4
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #255
	ands	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ldr	r1, .L30+4
	orrs	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 122 0
	bl	RTC_UpdateContext
	.loc 1 123 0
	ldr	r3, .L30
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #4
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 124 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L31:
	.align	2
.L30:
	.word	-1603207168
	.word	17160
	.cfi_endproc
.LFE8:
	.size	RTC_LockBBPower, .-RTC_LockBBPower
	.section	.text.RTC_UnlockBBPower,"ax",%progbits
	.align	2
	.global	RTC_UnlockBBPower
	.code	16
	.thumb_func
	.type	RTC_UnlockBBPower, %function
RTC_UnlockBBPower:
.LFB9:
	.loc 1 127 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 128 0
	ldr	r1, .L34
	ldr	r3, .L34
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #251
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #134
	lsls	r2, r2, #7
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 129 0
	bl	RTC_UpdateContext
	.loc 1 130 0
	ldr	r3, .L34
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #4
	ands	r3, r2
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 131 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L35:
	.align	2
.L34:
	.word	-1603207168
	.cfi_endproc
.LFE9:
	.size	RTC_UnlockBBPower, .-RTC_UnlockBBPower
	.section	.text.RTC_EnablePowerUp,"ax",%progbits
	.align	2
	.global	RTC_EnablePowerUp
	.code	16
	.thumb_func
	.type	RTC_EnablePowerUp, %function
RTC_EnablePowerUp:
.LFB10:
	.loc 1 134 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 135 0
	ldr	r1, .L38
	ldr	r3, .L38
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #1
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #255
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #134
	lsls	r2, r2, #7
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 136 0
	bl	RTC_UpdateContext
	.loc 1 137 0
	ldr	r3, .L38
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 138 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L39:
	.align	2
.L38:
	.word	-1603207168
	.cfi_endproc
.LFE10:
	.size	RTC_EnablePowerUp, .-RTC_EnablePowerUp
	.section	.text.RTC_DisablePowerUp,"ax",%progbits
	.align	2
	.global	RTC_DisablePowerUp
	.code	16
	.thumb_func
	.type	RTC_DisablePowerUp, %function
RTC_DisablePowerUp:
.LFB11:
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
	ldr	r1, .L42
	ldr	r3, .L42
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #254
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #134
	lsls	r2, r2, #7
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 143 0
	bl	RTC_UpdateContext
	.loc 1 144 0
	ldr	r3, .L42
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 145 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L43:
	.align	2
.L42:
	.word	-1603207168
	.cfi_endproc
.LFE11:
	.size	RTC_DisablePowerUp, .-RTC_DisablePowerUp
	.section	.text.RTC_IsValidState,"ax",%progbits
	.align	2
	.global	RTC_IsValidState
	.code	16
	.thumb_func
	.type	RTC_IsValidState, %function
RTC_IsValidState:
.LFB12:
	.loc 1 148 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 149 0
	ldr	r3, .L48
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	.loc 1 151 0
	bne	.L45
	.loc 1 150 0
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 149 0
	ldr	r2, .L48+8
	cmp	r3, r2
	bne	.L45
	.loc 1 151 0 discriminator 3
	ldr	r3, .L48+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ldr	r2, .L48+16
	cmp	r3, r2
	bne	.L45
	.loc 1 151 0 is_stmt 0 discriminator 2
	movs	r3, #1
	b	.L46
.L45:
	.loc 1 151 0 discriminator 1
	movs	r3, #0
.L46:
	.loc 1 149 0 is_stmt 1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 152 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L49:
	.align	2
.L48:
	.word	-1603207048
	.word	-1603207088
	.word	41815
	.word	-1603207084
	.word	26578
	.cfi_endproc
.LFE12:
	.size	RTC_IsValidState, .-RTC_IsValidState
	.section	.text.RTC_IsAlarmActive,"ax",%progbits
	.align	2
	.global	RTC_IsAlarmActive
	.code	16
	.thumb_func
	.type	RTC_IsAlarmActive, %function
RTC_IsAlarmActive:
.LFB13:
	.loc 1 155 0
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
	.loc 1 158 0
	bl	RTC_IsValidState
	subs	r3, r0, #0
	bne	.L51
	.loc 1 158 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L52
.L51:
	.loc 1 160 0 is_stmt 1
	ldr	r3, .L55
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, .L55+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r1, r3, #16
	adds	r3, r7, #6
	ands	r2, r1
	strh	r2, [r3]
	.loc 1 162 0
	ldr	r3, .L55+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #1
	ands	r3, r2
	beq	.L53
	.loc 1 162 0 is_stmt 0 discriminator 1
	adds	r3, r7, #6
	ldrh	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	beq	.L53
	.loc 1 162 0 discriminator 3
	movs	r3, #1
	b	.L54
.L53:
	.loc 1 162 0 discriminator 4
	movs	r3, #0
.L54:
	.loc 1 162 0 discriminator 6
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
.L52:
	.loc 1 163 0 is_stmt 1
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L56:
	.align	2
.L55:
	.word	-1603207160
	.word	-1603207164
	.word	-1603207168
	.cfi_endproc
.LFE13:
	.size	RTC_IsAlarmActive, .-RTC_IsAlarmActive
	.section	.text.RTC_GetDateTime,"ax",%progbits
	.align	2
	.global	RTC_GetDateTime
	.code	16
	.thumb_func
	.type	RTC_GetDateTime, %function
RTC_GetDateTime:
.LFB14:
	.loc 1 166 0
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
	str	r0, [r7, #4]
	.loc 1 169 0
	ldr	r3, .L59
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #12
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 170 0
	ldr	r3, .L59+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #12
	adds	r3, r7, r3
	strb	r2, [r3, #1]
	.loc 1 171 0
	ldr	r3, .L59+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #12
	adds	r3, r7, r3
	strb	r2, [r3, #2]
	.loc 1 173 0
	ldr	r3, .L59+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #12
	adds	r3, r7, r3
	strb	r2, [r3, #4]
	.loc 1 174 0
	ldr	r3, .L59+16
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #12
	adds	r3, r7, r3
	strb	r2, [r3, #5]
	.loc 1 175 0
	ldr	r3, .L59+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #12
	adds	r3, r7, r3
	strb	r2, [r3, #6]
	.loc 1 176 0
	ldr	r3, .L59+24
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #250
	lsls	r2, r2, #3
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #12
	adds	r3, r7, r3
	strh	r2, [r3, #8]
	.loc 1 178 0
	ldr	r2, [r7, #4]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r0, r2
	movs	r1, r3
	movs	r3, #10
	movs	r2, r3
	bl	memcpy
	.loc 1 179 0
	ldr	r0, [r7, #4]
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L60:
	.align	2
.L59:
	.word	-1603207148
	.word	-1603207144
	.word	-1603207140
	.word	-1603207136
	.word	-1603207132
	.word	-1603207128
	.word	-1603207124
	.cfi_endproc
.LFE14:
	.size	RTC_GetDateTime, .-RTC_GetDateTime
	.section	.text.RTC_SetDateTime,"ax",%progbits
	.align	2
	.global	RTC_SetDateTime
	.code	16
	.thumb_func
	.type	RTC_SetDateTime, %function
RTC_SetDateTime:
.LFB15:
	.loc 1 182 0
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
	.loc 1 185 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L62
	.loc 1 185 0 discriminator 1
	movs	r3, #0
	b	.L63
.L62:
	.loc 1 186 0
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	ldr	r2, .L73
	cmp	r3, r2
	bls	.L64
	.loc 1 186 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L63
.L64:
	.loc 1 187 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]
	cmp	r3, #0
	beq	.L65
	.loc 1 187 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]
	cmp	r3, #12
	bls	.L66
.L65:
	.loc 1 187 0 discriminator 3
	movs	r3, #0
	b	.L63
.L66:
	.loc 1 188 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]
	cmp	r3, #23
	bhi	.L67
	.loc 1 189 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]
	.loc 1 188 0 discriminator 1
	cmp	r3, #59
	bhi	.L67
	.loc 1 189 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	cmp	r3, #59
	bls	.L68
.L67:
	.loc 1 189 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L63
.L68:
	.loc 1 191 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	movs	r2, #3
	ands	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 193 0
	bne	.L69
	.loc 1 192 0
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	movs	r1, #100
	movs	r0, r3
	bl	__aeabi_uidivmod
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 191 0
	bne	.L70
	.loc 1 192 0
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #8]
	movs	r3, #200
	lsls	r1, r3, #1
	movs	r0, r2
	bl	__aeabi_uidivmod
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	bne	.L69
.L70:
	.loc 1 193 0 discriminator 3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]
	cmp	r3, #2
	bne	.L69
	.loc 1 193 0 is_stmt 0 discriminator 2
	movs	r2, #1
	b	.L71
.L69:
	.loc 1 193 0 discriminator 1
	movs	r2, #0
.L71:
	.loc 1 191 0 is_stmt 1
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 195 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #0
	beq	.L72
	.loc 1 195 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]
	movs	r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]
	movs	r1, r3
	ldr	r3, .L73+4
	ldrb	r3, [r3, r1]
	movs	r1, r3
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	adds	r3, r1, r3
	cmp	r2, r3
	bgt	.L72
	.loc 1 197 0 is_stmt 1
	ldr	r2, .L73+8
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 198 0
	ldr	r2, .L73+12
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 199 0
	ldr	r2, .L73+16
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 200 0
	ldr	r2, .L73+20
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	ldr	r1, .L73+24
	mov	ip, r1
	add	r3, r3, ip
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 201 0
	ldr	r2, .L73+28
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 202 0
	ldr	r4, .L73+32
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	movs	r0, r3
	bl	RTC_DayOfWeek
	movs	r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4]
	.loc 1 203 0
	ldr	r2, .L73+36
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 205 0
	bl	RTC_UpdateContext
	.loc 1 206 0
	movs	r3, #1
	b	.L63
.L72:
	.loc 1 209 0
	movs	r3, #0
.L63:
	.loc 1 210 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L74:
	.align	2
.L73:
	.word	2127
	.word	DayInMonth
	.word	-1603207148
	.word	-1603207144
	.word	-1603207140
	.word	-1603207124
	.word	-2000
	.word	-1603207128
	.word	-1603207132
	.word	-1603207136
	.cfi_endproc
.LFE15:
	.size	RTC_SetDateTime, .-RTC_SetDateTime
	.section	.text.RTC_GetAlarmDateTime,"ax",%progbits
	.align	2
	.global	RTC_GetAlarmDateTime
	.code	16
	.thumb_func
	.type	RTC_GetAlarmDateTime, %function
RTC_GetAlarmDateTime:
.LFB16:
	.loc 1 213 0
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
	str	r0, [r7, #4]
	.loc 1 216 0
	ldr	r3, .L77
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #12
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 217 0
	ldr	r3, .L77+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #12
	adds	r3, r7, r3
	strb	r2, [r3, #1]
	.loc 1 218 0
	ldr	r3, .L77+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #12
	adds	r3, r7, r3
	strb	r2, [r3, #2]
	.loc 1 220 0
	ldr	r3, .L77+12
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #12
	adds	r3, r7, r3
	strb	r2, [r3, #4]
	.loc 1 221 0
	ldr	r3, .L77+16
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #12
	adds	r3, r7, r3
	strb	r2, [r3, #5]
	.loc 1 222 0
	ldr	r3, .L77+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #12
	adds	r3, r7, r3
	strb	r2, [r3, #6]
	.loc 1 223 0
	ldr	r3, .L77+24
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #250
	lsls	r2, r2, #3
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #12
	adds	r3, r7, r3
	strh	r2, [r3, #8]
	.loc 1 225 0
	ldr	r2, [r7, #4]
	movs	r3, #12
	adds	r3, r7, r3
	movs	r0, r2
	movs	r1, r3
	movs	r3, #10
	movs	r2, r3
	bl	memcpy
	.loc 1 226 0
	ldr	r0, [r7, #4]
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L78:
	.align	2
.L77:
	.word	-1603207120
	.word	-1603207116
	.word	-1603207112
	.word	-1603207108
	.word	-1603207104
	.word	-1603207100
	.word	-1603207096
	.cfi_endproc
.LFE16:
	.size	RTC_GetAlarmDateTime, .-RTC_GetAlarmDateTime
	.section	.text.RTC_SetAlarmDateTime,"ax",%progbits
	.align	2
	.global	RTC_SetAlarmDateTime
	.code	16
	.thumb_func
	.type	RTC_SetAlarmDateTime, %function
RTC_SetAlarmDateTime:
.LFB17:
	.loc 1 229 0
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
	movs	r2, r1
	adds	r3, r7, #3
	strb	r2, [r3]
	.loc 1 232 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L80
	.loc 1 232 0 discriminator 1
	movs	r3, #0
	b	.L81
.L80:
	.loc 1 234 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]
	cmp	r3, #23
	bls	.LCB1262
	b	.L82	@long jump
.LCB1262:
	.loc 1 235 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]
	.loc 1 234 0 discriminator 1
	cmp	r3, #59
	bls	.LCB1266
	b	.L82	@long jump
.LCB1266:
	.loc 1 236 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	.loc 1 235 0
	cmp	r3, #59
	bls	.LCB1270
	b	.L82	@long jump
.LCB1270:
	.loc 1 239 0
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	ldr	r2, .L91
	cmp	r3, r2
	bls	.L83
	.loc 1 239 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L81
.L83:
	.loc 1 240 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]
	cmp	r3, #0
	beq	.L84
	.loc 1 240 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]
	cmp	r3, #12
	bls	.L85
.L84:
	.loc 1 240 0 discriminator 3
	movs	r3, #0
	b	.L81
.L85:
	.loc 1 242 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	movs	r2, #3
	ands	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 244 0
	bne	.L86
	.loc 1 243 0
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	movs	r1, #100
	movs	r0, r3
	bl	__aeabi_uidivmod
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 242 0
	bne	.L87
	.loc 1 243 0
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #8]
	movs	r3, #200
	lsls	r1, r3, #1
	movs	r0, r2
	bl	__aeabi_uidivmod
	movs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	bne	.L86
.L87:
	.loc 1 244 0 discriminator 3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]
	cmp	r3, #2
	bne	.L86
	.loc 1 244 0 is_stmt 0 discriminator 2
	movs	r2, #1
	b	.L88
.L86:
	.loc 1 244 0 discriminator 1
	movs	r2, #0
.L88:
	.loc 1 242 0 is_stmt 1
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
	.loc 1 246 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #0
	beq	.L82
	.loc 1 246 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]
	movs	r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]
	movs	r1, r3
	ldr	r3, .L91+4
	ldrb	r3, [r3, r1]
	movs	r1, r3
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	adds	r3, r1, r3
	cmp	r2, r3
	bgt	.L82
.LBB3:
	.loc 1 250 0 is_stmt 1
	ldr	r2, .L91+8
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 251 0
	ldr	r2, .L91+12
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 252 0
	ldr	r2, .L91+16
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 254 0
	ldr	r2, .L91+20
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	ldr	r1, .L91+24
	mov	ip, r1
	add	r3, r3, ip
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 255 0
	ldr	r2, .L91+28
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 256 0
	ldr	r4, .L91+32
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	movs	r0, r3
	bl	RTC_DayOfWeek
	movs	r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4]
	.loc 1 257 0
	ldr	r2, .L91+36
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 259 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 261 0
	ldr	r2, .L91+40
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L89
	.loc 1 261 0 is_stmt 0 discriminator 1
	ldr	r3, .L91+40
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	b	.L90
.L89:
	.loc 1 261 0 discriminator 2
	ldr	r3, .L91+40
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L90:
	.loc 1 261 0 discriminator 4
	strh	r3, [r2]
	.loc 1 262 0 is_stmt 1 discriminator 4
	ldr	r3, .L91+44
	movs	r2, #16
	strh	r2, [r3]
	.loc 1 264 0 discriminator 4
	bl	RTC_UpdateContext
	.loc 1 265 0 discriminator 4
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 267 0 discriminator 4
	movs	r3, #1
	b	.L81
.L82:
.LBE3:
	.loc 1 270 0
	movs	r3, #0
.L81:
	.loc 1 271 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L92:
	.align	2
.L91:
	.word	2127
	.word	DayInMonth
	.word	-1603207112
	.word	-1603207116
	.word	-1603207120
	.word	-1603207096
	.word	-2000
	.word	-1603207100
	.word	-1603207104
	.word	-1603207108
	.word	-1603207160
	.word	-1603207152
	.cfi_endproc
.LFE17:
	.size	RTC_SetAlarmDateTime, .-RTC_SetAlarmDateTime
	.section	.text.RTC_SetCIIEnable,"ax",%progbits
	.align	2
	.global	RTC_SetCIIEnable
	.code	16
	.thumb_func
	.type	RTC_SetCIIEnable, %function
RTC_SetCIIEnable:
.LFB18:
	.loc 1 274 0
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
	adds	r3, r7, #6
	strh	r2, [r3]
	adds	r3, r7, #5
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 277 0
	adds	r3, r7, #6
	adds	r2, r7, #6
	ldrh	r2, [r2]
	lsls	r2, r2, #22
	lsrs	r2, r2, #22
	strh	r2, [r3]
	.loc 1 280 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 281 0
	ldr	r2, .L96
	adds	r3, r7, #6
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 1 282 0
	ldr	r2, .L96+4
	adds	r3, r7, #5
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L94
	.loc 1 282 0 is_stmt 0 discriminator 1
	ldr	r3, .L96+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #2
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	b	.L95
.L94:
	.loc 1 282 0 discriminator 2
	ldr	r3, .L96+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #2
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L95:
	.loc 1 282 0 discriminator 4
	strh	r3, [r2]
	.loc 1 283 0 is_stmt 1 discriminator 4
	bl	RTC_UpdateContext
	.loc 1 284 0 discriminator 4
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 285 0 discriminator 4
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L97:
	.align	2
.L96:
	.word	-1603207156
	.word	-1603207160
	.cfi_endproc
.LFE18:
	.size	RTC_SetCIIEnable, .-RTC_SetCIIEnable
	.section	.text.RTC_Sleep,"ax",%progbits
	.align	2
	.global	RTC_Sleep
	.code	16
	.thumb_func
	.type	RTC_Sleep, %function
RTC_Sleep:
.LFB19:
	.loc 1 288 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 289 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE19:
	.size	RTC_Sleep, .-RTC_Sleep
	.section	.text.RTC_Resume,"ax",%progbits
	.align	2
	.global	RTC_Resume
	.code	16
	.thumb_func
	.type	RTC_Resume, %function
RTC_Resume:
.LFB20:
	.loc 1 292 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 293 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE20:
	.size	RTC_Resume, .-RTC_Resume
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\lock.h"
	.file 5 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_types.h"
	.file 6 "d:\\1.11\\share\\em_armgcc\\lib\\gcc\\arm-none-eabi\\5.4.1\\include\\stddef.h"
	.file 7 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\reent.h"
	.file 8 ".\\Source/systypes.h"
	.file 9 ".\\Source\\Lib\\MT6261/drivers\\rtc.h"
	.file 10 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 11 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd1d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0xc
	.4byte	.LASF183
	.4byte	.LASF184
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
	.byte	0x3
	.byte	0x9
	.byte	0x68
	.4byte	0x8ff
	.uleb128 0xf
	.ascii	"Sec\000"
	.byte	0x9
	.byte	0x6a
	.4byte	0x8c
	.byte	0
	.uleb128 0xf
	.ascii	"Min\000"
	.byte	0x9
	.byte	0x6b
	.4byte	0x8c
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x9
	.byte	0x6c
	.4byte	0x8c
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x9
	.byte	0x6d
	.4byte	0x8ce
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0x6
	.byte	0x9
	.byte	0x6f
	.4byte	0x947
	.uleb128 0xf
	.ascii	"Day\000"
	.byte	0x9
	.byte	0x71
	.4byte	0x8c
	.byte	0
	.uleb128 0xf
	.ascii	"DoW\000"
	.byte	0x9
	.byte	0x72
	.4byte	0x8c
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x9
	.byte	0x73
	.4byte	0x8c
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x9
	.byte	0x74
	.4byte	0x97
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0x9
	.byte	0x75
	.4byte	0x90a
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x9
	.byte	0x75
	.4byte	0x95d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x90a
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0xa
	.byte	0x9
	.byte	0x77
	.4byte	0x988
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x9
	.byte	0x79
	.4byte	0x8ff
	.byte	0
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x9
	.byte	0x7a
	.4byte	0x947
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0x9
	.byte	0x7b
	.4byte	0x963
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x9
	.byte	0x7b
	.4byte	0x99e
	.uleb128 0xd
	.byte	0x4
	.4byte	0x963
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0xf1
	.4byte	0x9d3
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
	.byte	0
	.uleb128 0x20
	.4byte	.LASF146
	.byte	0x1
	.4byte	0x37
	.byte	0xb
	.byte	0x24
	.4byte	0xa1a
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF148
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF149
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF150
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF151
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0x7
	.byte	0
	.uleb128 0x21
	.4byte	.LASF156
	.byte	0x1
	.byte	0x1a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF157
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF158
	.byte	0x1
	.byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF159
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF185
	.byte	0x1
	.byte	0x34
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa82
	.uleb128 0x24
	.4byte	.LASF160
	.byte	0x1
	.byte	0x34
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x25
	.4byte	.LASF186
	.byte	0x1
	.byte	0x3e
	.4byte	0x8c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xadc
	.uleb128 0x24
	.4byte	.LASF137
	.byte	0x1
	.byte	0x3e
	.4byte	0x952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.ascii	"a\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii	"y\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii	"m\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.ascii	"dow\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.4byte	.LASF167
	.byte	0x1
	.byte	0x4a
	.4byte	0x8c3
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0e
	.uleb128 0x28
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x29
	.4byte	.LASF161
	.byte	0x1
	.byte	0x51
	.4byte	0x988
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF162
	.byte	0x1
	.byte	0x77
	.4byte	0x8c3
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF163
	.byte	0x1
	.byte	0x7e
	.4byte	0x8c3
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF164
	.byte	0x1
	.byte	0x85
	.4byte	0x8c3
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF165
	.byte	0x1
	.byte	0x8c
	.4byte	0x8c3
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF166
	.byte	0x1
	.byte	0x93
	.4byte	0x8c3
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF168
	.byte	0x1
	.byte	0x9a
	.4byte	0x8c3
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9f
	.uleb128 0x29
	.4byte	.LASF169
	.byte	0x1
	.byte	0x9c
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x27
	.4byte	.LASF170
	.byte	0x1
	.byte	0xa5
	.4byte	0x988
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc7
	.uleb128 0x29
	.4byte	.LASF161
	.byte	0x1
	.byte	0xa7
	.4byte	0x988
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF171
	.byte	0x1
	.byte	0xb5
	.4byte	0x8c3
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfd
	.uleb128 0x24
	.4byte	.LASF161
	.byte	0x1
	.byte	0xb5
	.4byte	0x993
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.4byte	.LASF172
	.byte	0x1
	.byte	0xb7
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x27
	.4byte	.LASF173
	.byte	0x1
	.byte	0xd4
	.4byte	0x988
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc25
	.uleb128 0x29
	.4byte	.LASF161
	.byte	0x1
	.byte	0xd6
	.4byte	0x988
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF174
	.byte	0x1
	.byte	0xe4
	.4byte	0x8c3
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc81
	.uleb128 0x24
	.4byte	.LASF161
	.byte	0x1
	.byte	0xe4
	.4byte	0x993
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.4byte	.LASF175
	.byte	0x1
	.byte	0xe4
	.4byte	0x8c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x29
	.4byte	.LASF172
	.byte	0x1
	.byte	0xe6
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x28
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x29
	.4byte	.LASF176
	.byte	0x1
	.byte	0xf8
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x111
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc5
	.uleb128 0x2d
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x111
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x111
	.4byte	0x8c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x2e
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x113
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x11f
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x123
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	0xcf9
	.4byte	0xcf9
	.uleb128 0x9
	.4byte	0x110
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	0x8c
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x18
	.4byte	0xd0f
	.uleb128 0x5
	.byte	0x3
	.4byte	DayInMonth
	.uleb128 0x18
	.4byte	0xce9
	.uleb128 0x30
	.4byte	.LASF188
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
	.uleb128 0x2116
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
	.uleb128 0x26
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0xb4
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF46:
	.ascii	"_dso_handle\000"
.LASF2:
	.ascii	"short int\000"
.LASF139:
	.ascii	"pDATETIME\000"
.LASF55:
	.ascii	"__sFILE\000"
.LASF45:
	.ascii	"_fnargs\000"
.LASF171:
	.ascii	"RTC_SetDateTime\000"
.LASF168:
	.ascii	"RTC_IsAlarmActive\000"
.LASF78:
	.ascii	"_emergency\000"
.LASF144:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF0:
	.ascii	"signed char\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF129:
	.ascii	"TTIME\000"
.LASF114:
	.ascii	"_getdate_err\000"
.LASF90:
	.ascii	"_atexit0\000"
.LASF118:
	.ascii	"_wcrtomb_state\000"
.LASF119:
	.ascii	"_wcsrtombs_state\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF58:
	.ascii	"_lbfsize\000"
.LASF128:
	.ascii	"Hour\000"
.LASF155:
	.ascii	"USB_EPNUM\000"
.LASF169:
	.ascii	"AlmSTA\000"
.LASF116:
	.ascii	"_mbrtowc_state\000"
.LASF177:
	.ascii	"Intervals\000"
.LASF111:
	.ascii	"_wctomb_state\000"
.LASF35:
	.ascii	"__tm_sec\000"
.LASF17:
	.ascii	"_off_t\000"
.LASF63:
	.ascii	"_close\000"
.LASF180:
	.ascii	"RTC_Resume\000"
.LASF176:
	.ascii	"intflags\000"
.LASF64:
	.ascii	"_ubuf\000"
.LASF53:
	.ascii	"_base\000"
.LASF37:
	.ascii	"__tm_hour\000"
.LASF93:
	.ascii	"__sf\000"
.LASF44:
	.ascii	"_on_exit_args\000"
.LASF152:
	.ascii	"USB_EPMAXINDEX\000"
.LASF174:
	.ascii	"RTC_SetAlarmDateTime\000"
.LASF59:
	.ascii	"_cookie\000"
.LASF92:
	.ascii	"__sglue\000"
.LASF6:
	.ascii	"long int\000"
.LASF124:
	.ascii	"false\000"
.LASF131:
	.ascii	"Month\000"
.LASF159:
	.ascii	"RTC_SetPowerkey\000"
.LASF48:
	.ascii	"_is_cxa\000"
.LASF74:
	.ascii	"_stdin\000"
.LASF175:
	.ascii	"UseInterrupt\000"
.LASF147:
	.ascii	"USB_EP0\000"
.LASF84:
	.ascii	"_result_k\000"
.LASF9:
	.ascii	"long long int\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF151:
	.ascii	"USB_EP4IN\000"
.LASF88:
	.ascii	"_cvtbuf\000"
.LASF67:
	.ascii	"_offset\000"
.LASF117:
	.ascii	"_mbsrtowcs_state\000"
.LASF115:
	.ascii	"_mbrlen_state\000"
.LASF126:
	.ascii	"boolean\000"
.LASF51:
	.ascii	"_fns\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF31:
	.ascii	"_sign\000"
.LASF183:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\rtc.c\000"
.LASF188:
	.ascii	"_impure_ptr\000"
.LASF76:
	.ascii	"_stderr\000"
.LASF33:
	.ascii	"_Bigint\000"
.LASF60:
	.ascii	"_read\000"
.LASF34:
	.ascii	"__tm\000"
.LASF184:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF21:
	.ascii	"__wchb\000"
.LASF75:
	.ascii	"_stdout\000"
.LASF87:
	.ascii	"_cvtlen\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF57:
	.ascii	"_file\000"
.LASF77:
	.ascii	"_inc\000"
.LASF68:
	.ascii	"_data\000"
.LASF96:
	.ascii	"_niobs\000"
.LASF107:
	.ascii	"_rand_next\000"
.LASF113:
	.ascii	"_signal_buf\000"
.LASF104:
	.ascii	"_asctime_buf\000"
.LASF187:
	.ascii	"RTC_SetCIIEnable\000"
.LASF20:
	.ascii	"__wch\000"
.LASF150:
	.ascii	"USB_EP3IN\000"
.LASF89:
	.ascii	"_new\000"
.LASF69:
	.ascii	"_lock\000"
.LASF100:
	.ascii	"_mult\000"
.LASF83:
	.ascii	"_result\000"
.LASF61:
	.ascii	"_write\000"
.LASF40:
	.ascii	"__tm_year\000"
.LASF122:
	.ascii	"_nmalloc\000"
.LASF22:
	.ascii	"sizetype\000"
.LASF173:
	.ascii	"RTC_GetAlarmDateTime\000"
.LASF156:
	.ascii	"RTC_WaitCBUSY\000"
.LASF138:
	.ascii	"TDATETIME\000"
.LASF121:
	.ascii	"_nextf\000"
.LASF135:
	.ascii	"tag_DATETIME\000"
.LASF39:
	.ascii	"__tm_mon\000"
.LASF163:
	.ascii	"RTC_UnlockBBPower\000"
.LASF49:
	.ascii	"_atexit\000"
.LASF81:
	.ascii	"__sdidinit\000"
.LASF106:
	.ascii	"_gamma_signgam\000"
.LASF182:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF19:
	.ascii	"wint_t\000"
.LASF145:
	.ascii	"tag_VLINDEX\000"
.LASF186:
	.ascii	"RTC_DayOfWeek\000"
.LASF149:
	.ascii	"USB_EP2IN\000"
.LASF178:
	.ascii	"Enable\000"
.LASF16:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF179:
	.ascii	"RTC_Sleep\000"
.LASF133:
	.ascii	"TDATE\000"
.LASF132:
	.ascii	"Year\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF97:
	.ascii	"_iobs\000"
.LASF120:
	.ascii	"_h_errno\000"
.LASF42:
	.ascii	"__tm_yday\000"
.LASF52:
	.ascii	"__sbuf\000"
.LASF71:
	.ascii	"_flags2\000"
.LASF86:
	.ascii	"_freelist\000"
.LASF94:
	.ascii	"__FILE\000"
.LASF25:
	.ascii	"_mbstate_t\000"
.LASF158:
	.ascii	"RTC_Unprotect\000"
.LASF70:
	.ascii	"_mbstate\000"
.LASF165:
	.ascii	"RTC_DisablePowerUp\000"
.LASF164:
	.ascii	"RTC_EnablePowerUp\000"
.LASF109:
	.ascii	"_mblen_state\000"
.LASF157:
	.ascii	"RTC_UpdateContext\000"
.LASF50:
	.ascii	"_ind\000"
.LASF80:
	.ascii	"_current_locale\000"
.LASF127:
	.ascii	"tag_TIME\000"
.LASF82:
	.ascii	"__cleanup\000"
.LASF30:
	.ascii	"_maxwds\000"
.LASF72:
	.ascii	"_reent\000"
.LASF98:
	.ascii	"_rand48\000"
.LASF99:
	.ascii	"_seed\000"
.LASF172:
	.ascii	"leap\000"
.LASF23:
	.ascii	"__count\000"
.LASF24:
	.ascii	"__value\000"
.LASF62:
	.ascii	"_seek\000"
.LASF41:
	.ascii	"__tm_wday\000"
.LASF18:
	.ascii	"_fpos_t\000"
.LASF170:
	.ascii	"RTC_GetDateTime\000"
.LASF15:
	.ascii	"long double\000"
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
.LASF4:
	.ascii	"__uint16_t\000"
.LASF148:
	.ascii	"USB_EP1IN\000"
.LASF166:
	.ascii	"RTC_IsValidState\000"
.LASF47:
	.ascii	"_fntypes\000"
.LASF134:
	.ascii	"pDATE\000"
.LASF146:
	.ascii	"tag_EP\000"
.LASF29:
	.ascii	"_next\000"
.LASF103:
	.ascii	"_strtok_last\000"
.LASF140:
	.ascii	"LCDIF_LAYER0\000"
.LASF141:
	.ascii	"LCDIF_LAYER1\000"
.LASF142:
	.ascii	"LCDIF_LAYER2\000"
.LASF143:
	.ascii	"LCDIF_LAYER3\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF101:
	.ascii	"_add\000"
.LASF130:
	.ascii	"tag_DATE\000"
.LASF28:
	.ascii	"__ULong\000"
.LASF161:
	.ascii	"DateTime\000"
.LASF154:
	.ascii	"USB_EP2OUT\000"
.LASF79:
	.ascii	"_current_category\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF181:
	.ascii	"DayInMonth\000"
.LASF102:
	.ascii	"_unused_rand\000"
.LASF167:
	.ascii	"RTC_Initialize\000"
.LASF136:
	.ascii	"Time\000"
.LASF32:
	.ascii	"_wds\000"
.LASF95:
	.ascii	"_glue\000"
.LASF56:
	.ascii	"_flags\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF112:
	.ascii	"_l64a_buf\000"
.LASF160:
	.ascii	"Data\000"
.LASF91:
	.ascii	"_sig_func\000"
.LASF137:
	.ascii	"Date\000"
.LASF26:
	.ascii	"_flock_t\000"
.LASF65:
	.ascii	"_nbuf\000"
.LASF123:
	.ascii	"_unused\000"
.LASF43:
	.ascii	"__tm_isdst\000"
.LASF105:
	.ascii	"_localtime_buf\000"
.LASF36:
	.ascii	"__tm_min\000"
.LASF108:
	.ascii	"_r48\000"
.LASF153:
	.ascii	"USB_EP1OUT\000"
.LASF110:
	.ascii	"_mbtowc_state\000"
.LASF85:
	.ascii	"_p5s\000"
.LASF185:
	.ascii	"RTC_SetOSC32CON\000"
.LASF162:
	.ascii	"RTC_LockBBPower\000"
.LASF38:
	.ascii	"__tm_mday\000"
.LASF125:
	.ascii	"true\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
