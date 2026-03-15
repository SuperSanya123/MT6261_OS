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
	.file	"pmu.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	BatCurrentLimits
	.section	.rodata.BatCurrentLimits,"a",%progbits
	.align	2
	.type	BatCurrentLimits, %object
	.size	BatCurrentLimits, 64
BatCurrentLimits:
	.short	70
	.byte	15
	.byte	18
	.short	200
	.byte	14
	.byte	24
	.short	300
	.byte	13
	.byte	40
	.short	450
	.byte	12
	.byte	89
	.short	550
	.byte	11
	.byte	89
	.short	650
	.byte	10
	.byte	89
	.short	700
	.byte	9
	.byte	89
	.short	800
	.byte	8
	.byte	89
	.short	900
	.byte	7
	.byte	89
	.short	1000
	.byte	6
	.byte	89
	.short	1100
	.byte	5
	.byte	89
	.short	1200
	.byte	4
	.byte	89
	.short	1300
	.byte	3
	.byte	89
	.short	1400
	.byte	2
	.byte	89
	.short	1500
	.byte	1
	.byte	89
	.short	1600
	.byte	0
	.byte	89
	.section	.bss.PrevChargerState,"aw",%nobits
	.type	PrevChargerState, %object
	.size	PrevChargerState, 1
PrevChargerState:
	.space	1
	.section	.bss.BatteryCharging,"aw",%nobits
	.type	BatteryCharging, %object
	.size	BatteryCharging, 1
BatteryCharging:
	.space	1
	.section	.bss.ChargerTimer,"aw",%nobits
	.align	2
	.type	ChargerTimer, %object
	.size	ChargerTimer, 4
ChargerTimer:
	.space	4
	.section	.bss.VBat,"aw",%nobits
	.align	1
	.type	VBat, %object
	.size	VBat, 2
VBat:
	.space	2
	.section	.bss.ISense,"aw",%nobits
	.align	1
	.type	ISense, %object
	.size	ISense, 2
ISense:
	.space	2
	.section	.bss.ChargeOnDebounce,"aw",%nobits
	.align	2
	.type	ChargeOnDebounce, %object
	.size	ChargeOnDebounce, 4
ChargeOnDebounce:
	.space	4
	.section	.bss.RechargeTimeout,"aw",%nobits
	.align	2
	.type	RechargeTimeout, %object
	.size	RechargeTimeout, 4
RechargeTimeout:
	.space	4
	.section	.bss.PWRKEYAppHandler,"aw",%nobits
	.align	2
	.type	PWRKEYAppHandler, %object
	.size	PWRKEYAppHandler, 4
PWRKEYAppHandler:
	.space	4
	.section	.bss.ChargeLevel,"aw",%nobits
	.align	1
	.type	ChargeLevel, %object
	.size	ChargeLevel, 2
ChargeLevel:
	.space	2
	.section	.bss.FirstMeasurememnt,"aw",%nobits
	.type	FirstMeasurememnt, %object
	.size	FirstMeasurememnt, 1
FirstMeasurememnt:
	.space	1
	.section	.bss.MathVBatArray,"aw",%nobits
	.align	2
	.type	MathVBatArray, %object
	.size	MathVBatArray, 256
MathVBatArray:
	.space	256
	.section	.bss.MathISenseArray,"aw",%nobits
	.align	2
	.type	MathISenseArray, %object
	.size	MathISenseArray, 256
MathISenseArray:
	.space	256
	.section	.text.PMU_GetChargingParams,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	PMU_GetChargingParams, %function
PMU_GetChargingParams:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\pmu.c"
	.loc 1 81 0
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
	.loc 1 82 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #15
	strb	r2, [r3]
	.loc 1 84 0
	b	.L2
.L5:
	.loc 1 85 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, .L6
	lsls	r2, r2, #2
	ldrh	r3, [r2, r3]
	adds	r2, r7, #6
	ldrh	r2, [r2]
	cmp	r2, r3
	bcc	.L3
	.loc 1 86 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	b	.L4
.L3:
	.loc 1 84 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	subs	r3, r3, #1
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #15
	adds	r3, r7, r3
	strb	r2, [r3]
.L2:
	.loc 1 84 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #127
	bls	.L5
	.loc 1 88 0 is_stmt 1
	movs	r3, #1
	rsbs	r3, r3, #0
.L4:
	.loc 1 89 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	BatCurrentLimits
	.cfi_endproc
.LFE1:
	.size	PMU_GetChargingParams, .-PMU_GetChargingParams
	.section	.text.PMU_IsChargerEnabled,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	PMU_IsChargerEnabled, %function
PMU_IsChargerEnabled:
.LFB2:
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
	ldr	r3, .L10
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #16
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 94 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L11:
	.align	2
.L10:
	.word	-1603270144
	.cfi_endproc
.LFE2:
	.size	PMU_IsChargerEnabled, .-PMU_IsChargerEnabled
	.section	.text.PMU_ChargerEnable,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	PMU_ChargerEnable, %function
PMU_ChargerEnable:
.LFB3:
	.loc 1 97 0
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
	.loc 1 98 0
	movs	r3, #15
	adds	r4, r7, r3
	movs	r0, #200
	bl	PMU_GetChargingParams
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 100 0
	ldr	r1, .L17
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	adds	r3, r3, #1
	beq	.L13
	.loc 1 100 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldr	r2, .L17+4
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #3
	ldrb	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	b	.L14
.L13:
	.loc 1 100 0 discriminator 2
	movs	r3, #0
.L14:
	.loc 1 100 0 discriminator 4
	strh	r3, [r1]
	.loc 1 101 0 is_stmt 1 discriminator 4
	ldr	r3, .L17+8
	ldr	r2, .L17+12
	strh	r2, [r3]
	.loc 1 102 0 discriminator 4
	ldr	r3, .L17+16
	movs	r2, #128
	lsls	r2, r2, #5
	strh	r2, [r3]
	.loc 1 103 0 discriminator 4
	ldr	r2, .L17+20
	ldr	r3, .L17+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #115
	bics	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r1, #19
	orrs	r3, r1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 104 0 discriminator 4
	ldr	r3, .L17+24
	movs	r2, #16
	strh	r2, [r3]
	.loc 1 105 0 discriminator 4
	ldr	r3, .L17+28
	ldr	r2, .L17+32
	strh	r2, [r3]
	.loc 1 107 0 discriminator 4
	ldr	r3, .L17+36
	movs	r2, #128
	lsls	r2, r2, #4
	strh	r2, [r3]
	.loc 1 109 0 discriminator 4
	movs	r0, #0
	bl	PMU_SetChargerWDTEnabled
	.loc 1 111 0 discriminator 4
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L15
	.loc 1 111 0 is_stmt 0 discriminator 1
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	adds	r3, r3, #1
	beq	.L15
	.loc 1 111 0 discriminator 2
	bl	PMU_IsChargerConnected
	subs	r3, r0, #0
	beq	.L15
	.loc 1 113 0 is_stmt 1
	ldr	r2, .L17+16
	ldr	r3, .L17+16
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #3
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 114 0
	ldr	r1, .L17+40
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldr	r2, .L17+4
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #2
	ldrb	r3, [r3]
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #15
	ands	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #128
	lsls	r2, r2, #1
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 115 0
	ldr	r3, .L17+44
	movs	r2, #192
	lsls	r2, r2, #6
	strh	r2, [r3]
	.loc 1 117 0
	ldr	r2, .L17+24
	ldr	r3, .L17+24
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #96
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 118 0
	ldr	r2, .L17+8
	ldr	r3, .L17+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #24
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	b	.L16
.L15:
	.loc 1 122 0
	ldr	r2, .L17+8
	ldr	r3, .L17+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #24
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 123 0
	ldr	r2, .L17+16
	ldr	r3, .L17+16
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #3
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 124 0
	ldr	r1, .L17+40
	ldr	r3, .L17+40
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #128
	lsls	r3, r3, #1
	ands	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 125 0
	ldr	r2, .L17+24
	ldr	r3, .L17+24
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #96
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L16:
	.loc 1 127 0
	nop
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L18:
	.align	2
.L17:
	.word	-1603270084
	.word	BatCurrentLimits
	.word	-1603270144
	.word	-28160
	.word	-1603270140
	.word	-1603270124
	.word	-1603270104
	.word	-1603270096
	.word	1220
	.word	-1603270100
	.word	-1603270136
	.word	-1603270128
	.cfi_endproc
.LFE3:
	.size	PMU_ChargerEnable, .-PMU_ChargerEnable
	.global	__aeabi_idiv
	.section	.text.PMU_FilterADCMeasures,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	PMU_FilterADCMeasures, %function
PMU_FilterADCMeasures:
.LFB4:
	.loc 1 130 0
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
	movs	r0, r1
	movs	r1, r2
	adds	r3, r7, #2
	adds	r2, r0, #0
	strh	r2, [r3]
	movs	r3, r7
	adds	r2, r1, #0
	strh	r2, [r3]
	.loc 1 131 0
	movs	r3, #22
	adds	r3, r7, r3
	movs	r2, #1
	strh	r2, [r3]
	.loc 1 132 0
	movs	r3, #18
	adds	r3, r7, r3
	adds	r2, r7, #2
	ldrh	r2, [r2]
	strh	r2, [r3]
	movs	r3, #16
	adds	r3, r7, r3
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 135 0
	b	.L20
.L25:
	.loc 1 137 0
	movs	r3, #18
	adds	r3, r7, r3
	movs	r2, #18
	adds	r2, r7, r2
	ldrh	r2, [r2]
	subs	r2, r2, #1
	strh	r2, [r3]
	movs	r3, #20
	adds	r3, r7, r3
	movs	r2, #18
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 138 0
	b	.L21
.L24:
	.loc 1 140 0
	movs	r3, #16
	adds	r3, r7, r3
	ldrh	r3, [r3]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, #16
	adds	r3, r7, r3
	ldrh	r3, [r3]
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r1, [r7, #4]
	adds	r3, r1, r3
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r2, r3
	ble	.L22
.LBB2:
	.loc 1 142 0
	movs	r3, #16
	adds	r3, r7, r3
	ldrh	r3, [r3]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	adds	r2, r2, r3
	movs	r3, #10
	adds	r3, r7, r3
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 144 0
	movs	r3, #16
	adds	r3, r7, r3
	ldrh	r3, [r3]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	movs	r2, #16
	adds	r2, r7, r2
	ldrh	r2, [r2]
	adds	r2, r2, #1
	lsls	r2, r2, #1
	ldr	r1, [r7, #4]
	adds	r2, r1, r2
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	strh	r2, [r3]
	.loc 1 145 0
	movs	r3, #16
	adds	r3, r7, r3
	ldrh	r3, [r3]
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	movs	r2, #10
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3]
.L22:
.LBE2:
	.loc 1 147 0
	movs	r3, #20
	adds	r3, r7, r3
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L23
	.loc 1 147 0 is_stmt 0 discriminator 1
	movs	r3, #22
	adds	r3, r7, r3
	ldrh	r3, [r3]
	rsbs	r3, r3, #0
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #22
	adds	r3, r7, r3
	strh	r2, [r3]
.L23:
	.loc 1 148 0 is_stmt 1
	movs	r3, #22
	adds	r3, r7, r3
	ldrh	r1, [r3]
	movs	r3, #16
	adds	r3, r7, r3
	movs	r2, #16
	adds	r2, r7, r2
	ldrh	r2, [r2]
	adds	r2, r1, r2
	strh	r2, [r3]
.L21:
	.loc 1 138 0
	movs	r3, #20
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r2, #20
	adds	r2, r7, r2
	subs	r1, r3, #1
	strh	r1, [r2]
	cmp	r3, #0
	bne	.L24
.L20:
	.loc 1 135 0
	movs	r3, #18
	adds	r2, r7, r3
	movs	r3, r7
	ldrh	r2, [r2]
	ldrh	r3, [r3]
	cmp	r2, r3
	bhi	.L25
	.loc 1 152 0
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 153 0
	b	.L26
.L27:
	.loc 1 153 0 is_stmt 0 discriminator 2
	movs	r3, #16
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r2, #16
	adds	r2, r7, r2
	adds	r1, r3, #1
	strh	r1, [r2]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	movs	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, r2
	str	r3, [r7, #12]
.L26:
	.loc 1 153 0 discriminator 1
	movs	r3, #18
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r2, #18
	adds	r2, r7, r2
	subs	r1, r3, #1
	strh	r1, [r2]
	cmp	r3, #0
	bne	.L27
	.loc 1 154 0 is_stmt 1
	movs	r3, r7
	ldrh	r3, [r3]
	lsrs	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	ldr	r3, [r7, #12]
	adds	r2, r2, r3
	movs	r3, r7
	ldrh	r3, [r3]
	movs	r1, r3
	movs	r0, r2
	bl	__aeabi_idiv
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 156 0
	ldr	r3, [r7, #12]
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	.loc 1 157 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	PMU_FilterADCMeasures, .-PMU_FilterADCMeasures
	.section	.text.PMU_MeasureChargeParams,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	PMU_MeasureChargeParams, %function
PMU_MeasureChargeParams:
.LFB5:
	.loc 1 160 0
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
	.loc 1 164 0
	movs	r3, #14
	adds	r3, r7, r3
	movs	r2, #0
	strh	r2, [r3]
	b	.L30
.L31:
	.loc 1 166 0 discriminator 3
	movs	r3, r7
	movs	r1, #3
	movs	r0, r3
	bl	AUXADC_MeasureMultiple
	.loc 1 167 0 discriminator 3
	movs	r3, #14
	adds	r3, r7, r3
	ldrh	r2, [r3]
	movs	r3, r7
	ldrh	r1, [r3]
	ldr	r3, .L44
	lsls	r2, r2, #1
	strh	r1, [r2, r3]
	.loc 1 168 0 discriminator 3
	movs	r3, #14
	adds	r3, r7, r3
	ldrh	r2, [r3]
	movs	r3, r7
	ldrh	r1, [r3, #2]
	ldr	r3, .L44+4
	lsls	r2, r2, #1
	strh	r1, [r2, r3]
	.loc 1 164 0 discriminator 3
	movs	r3, #14
	adds	r3, r7, r3
	ldrh	r2, [r3]
	movs	r3, #14
	adds	r3, r7, r3
	adds	r2, r2, #1
	strh	r2, [r3]
.L30:
	.loc 1 164 0 is_stmt 0 discriminator 1
	movs	r3, #14
	adds	r3, r7, r3
	ldrh	r3, [r3]
	cmp	r3, #127
	bls	.L31
	.loc 1 171 0 is_stmt 1
	ldr	r3, .L44
	movs	r2, #4
	movs	r1, #128
	movs	r0, r3
	bl	PMU_FilterADCMeasures
	movs	r3, r0
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, r7
	strh	r2, [r3]
	.loc 1 172 0
	ldr	r3, .L44+4
	movs	r2, #4
	movs	r1, #128
	movs	r0, r3
	bl	PMU_FilterADCMeasures
	movs	r3, r0
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, r7
	strh	r2, [r3, #2]
	.loc 1 174 0
	movs	r3, r7
	ldrh	r3, [r3]
	movs	r2, r3
	movs	r3, #175
	lsls	r3, r3, #5
	muls	r3, r2
	ldr	r1, .L44+8
	movs	r0, r3
	bl	__aeabi_idiv
	movs	r3, r0
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, .L44+12
	strh	r2, [r3]
	.loc 1 175 0
	movs	r3, r7
	ldrh	r3, [r3, #2]
	movs	r2, r3
	movs	r3, #175
	lsls	r3, r3, #5
	muls	r3, r2
	ldr	r1, .L44+8
	movs	r0, r3
	bl	__aeabi_idiv
	movs	r3, r0
	movs	r2, r3
	movs	r3, #12
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 176 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L44+12
	ldrh	r2, [r2]
	cmp	r3, r2
	blt	.L32
	.loc 1 176 0 is_stmt 0 discriminator 1
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L44+12
	ldrh	r2, [r2]
	subs	r3, r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r2, r3, #0
	lsls	r2, r2, #2
	adds	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	b	.L33
.L32:
	.loc 1 176 0 discriminator 2
	movs	r2, #0
.L33:
	.loc 1 176 0 discriminator 4
	ldr	r3, .L44+16
	strh	r2, [r3]
	.loc 1 178 0 is_stmt 1 discriminator 4
	ldr	r3, .L44+12
	ldrh	r3, [r3]
	ldr	r2, .L44+20
	cmp	r3, r2
	bls	.L34
	.loc 1 178 0 is_stmt 0 discriminator 1
	ldr	r3, .L44+12
	ldrh	r3, [r3]
	ldr	r2, .L44+24
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	b	.L35
.L34:
	.loc 1 178 0 discriminator 2
	movs	r3, #0
.L35:
	.loc 1 178 0 discriminator 4
	movs	r2, #12
	adds	r2, r7, r2
	strh	r3, [r2]
.LBB3:
	.loc 1 179 0 is_stmt 1 discriminator 4
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	movs	r2, #250
	lsls	r2, r2, #2
	muls	r2, r3
	movs	r3, #225
	lsls	r1, r3, #2
	movs	r0, r2
	bl	__aeabi_idiv
	movs	r3, r0
	str	r3, [r7, #8]
	movs	r3, #250
	lsls	r3, r3, #2
	str	r3, [r7, #4]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r3, r2
	ble	.L36
	movs	r3, r2
.L36:
.LBE3:
	movs	r2, #12
	adds	r2, r7, r2
	strh	r3, [r2]
	.loc 1 181 0 discriminator 4
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L44+28
	ldrh	r2, [r2]
	cmp	r3, r2
	beq	.L43
	.loc 1 183 0
	ldr	r3, .L44+32
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L38
	.loc 1 185 0
	movs	r3, #12
	adds	r3, r7, r3
	ldrh	r2, [r3]
	ldr	r3, .L44+28
	strh	r2, [r3]
	.loc 1 186 0
	ldr	r3, .L44+32
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 194 0
	b	.L43
.L38:
	.loc 1 190 0
	movs	r3, #12
	adds	r3, r7, r3
	ldrh	r2, [r3]
	ldr	r3, .L44+28
	ldrh	r3, [r3]
	subs	r3, r2, r3
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #12
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 191 0
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bge	.L39
	.loc 1 191 0 is_stmt 0 discriminator 1
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	subs	r3, r3, #7
	cmp	r3, #0
	bge	.L40
	adds	r3, r3, #7
.L40:
	asrs	r3, r3, #3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	b	.L41
.L39:
	.loc 1 191 0 discriminator 2
	movs	r3, #12
	adds	r3, r7, r3
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	adds	r3, r3, #7
	cmp	r3, #0
	bge	.L42
	adds	r3, r3, #7
.L42:
	asrs	r3, r3, #3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L41:
	.loc 1 191 0 discriminator 4
	ldr	r2, .L44+28
	ldrh	r2, [r2]
	adds	r3, r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, .L44+28
	strh	r2, [r3]
.L43:
	.loc 1 194 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	MathVBatArray
	.word	MathISenseArray
	.word	1023
	.word	VBat
	.word	ISense
	.word	3099
	.word	-3100
	.word	ChargeLevel
	.word	FirstMeasurememnt
	.cfi_endproc
.LFE5:
	.size	PMU_MeasureChargeParams, .-PMU_MeasureChargeParams
	.section	.rodata
	.align	2
.LC9:
	.ascii	"connected\000"
	.align	2
.LC11:
	.ascii	"disconnected\000"
	.align	2
.LC13:
	.ascii	"PMU charger %s!\015\012\000"
	.align	2
.LC19:
	.ascii	"PMU charging complete!\015\000"
	.align	2
.LC23:
	.ascii	"PMU restart charging!\015\000"
	.align	2
.LC25:
	.ascii	"PMU charging started!\015\000"
	.section	.text.PMU_ChargerTimerHandler,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	PMU_ChargerTimerHandler, %function
PMU_ChargerTimerHandler:
.LFB6:
	.loc 1 197 0
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
	.loc 1 198 0
	movs	r3, #15
	adds	r4, r7, r3
	bl	PMU_IsChargerConnected
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 200 0
	ldr	r3, .L66
	ldrb	r3, [r3]
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	cmp	r2, r3
	beq	.L47
	.loc 1 202 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L48
	.loc 1 202 0 is_stmt 0 discriminator 1
	ldr	r3, .L66+4
	b	.L49
.L48:
	.loc 1 202 0 discriminator 2
	ldr	r3, .L66+8
.L49:
	.loc 1 202 0 discriminator 4
	ldr	r2, .L66+12
	movs	r1, r3
	movs	r0, r2
	bl	printf
	.loc 1 202 0 is_stmt 1 discriminator 4
	ldr	r3, .L66+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 202 0 discriminator 4
	movs	r0, r3
	bl	fflush
	.loc 1 203 0 discriminator 4
	ldr	r3, .L66
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 204 0 discriminator 4
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r0, r3
	bl	PMU_ChargerEnable
.L47:
	.loc 1 206 0
	bl	PMU_MeasureChargeParams
	.loc 1 208 0
	movs	r3, #15
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.LCB924
	b	.L50	@long jump
.LCB924:
	.loc 1 210 0
	ldr	r3, .L66+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #4
	ands	r3, r2
	beq	.L51
	.loc 1 212 0
	ldr	r3, .L66+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #2
	ands	r3, r2
	beq	.L51
	.loc 1 213 0
	ldr	r2, .L66+20
	ldr	r3, .L66+20
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #2
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L51:
	.loc 1 215 0
	ldr	r3, .L66+24
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L52
	.loc 1 217 0
	ldr	r3, .L66+24
	ldrh	r3, [r3]
	cmp	r3, #25
	bhi	.L53
	.loc 1 219 0
	ldr	r3, .L66+28
	movs	r2, #0
	str	r2, [r3]
	.loc 1 220 0
	movs	r0, #0
	bl	PMU_ChargerEnable
	.loc 1 221 0
	ldr	r3, .L66+32
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L62
	.loc 1 222 0
	ldr	r3, .L66+36
	movs	r0, r3
	bl	puts
	.loc 1 222 0
	ldr	r3, .L66+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 222 0
	movs	r0, r3
	bl	fflush
	b	.L62
.L53:
	.loc 1 224 0
	ldr	r3, .L66+28
	ldr	r3, [r3]
	cmp	r3, #5
	bhi	.L62
	.loc 1 224 0 is_stmt 0 discriminator 1
	ldr	r3, .L66+28
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, .L66+28
	str	r2, [r3]
	b	.L62
.L52:
	.loc 1 228 0 is_stmt 1
	ldr	r3, .L66+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L57
	.loc 1 228 0 is_stmt 0 discriminator 1
	ldr	r3, .L66+28
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, .L66+28
	str	r2, [r3]
.L57:
	.loc 1 229 0 is_stmt 1
	ldr	r3, .L66+40
	ldrh	r3, [r3]
	ldr	r2, .L66+44
	cmp	r3, r2
	bhi	.L58
	.loc 1 231 0
	ldr	r3, .L66+48
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L59
	.loc 1 231 0 is_stmt 0 discriminator 1
	ldr	r3, .L66+48
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, .L66+48
	str	r2, [r3]
	b	.L62
.L59:
	.loc 1 234 0 is_stmt 1
	ldr	r3, .L66+52
	movs	r0, r3
	bl	puts
	.loc 1 234 0
	ldr	r3, .L66+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 234 0
	movs	r0, r3
	bl	fflush
	.loc 1 235 0
	bl	PMU_IsChargerEnabled
	subs	r3, r0, #0
	beq	.L61
	.loc 1 235 0 is_stmt 0 discriminator 1
	movs	r0, #0
	bl	PMU_ChargerEnable
.L61:
	.loc 1 236 0 is_stmt 1
	movs	r0, #1
	bl	PMU_ChargerEnable
	.loc 1 237 0
	ldr	r3, .L66+48
	movs	r2, #20
	str	r2, [r3]
	b	.L62
.L58:
	.loc 1 240 0
	ldr	r3, .L66+48
	movs	r2, #0
	str	r2, [r3]
	b	.L62
.L50:
	.loc 1 243 0
	ldr	r3, .L66+48
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L66+48
	ldr	r2, [r3]
	ldr	r3, .L66+28
	str	r2, [r3]
.L62:
	.loc 1 245 0
	ldr	r3, .L66+32
	ldrb	r3, [r3]
	movs	r2, r3
	ldr	r3, .L66+28
	ldr	r3, [r3]
	subs	r3, r3, #6
	rsbs	r1, r3, #0
	adcs	r3, r3, r1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r2, r3
	beq	.L65
	.loc 1 247 0
	ldr	r3, .L66+32
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L64
	.loc 1 247 0 is_stmt 0 discriminator 1
	ldr	r3, .L66+28
	ldr	r3, [r3]
	cmp	r3, #6
	bne	.L64
	.loc 1 249 0 is_stmt 1
	ldr	r3, .L66+32
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 250 0
	ldr	r3, .L66+56
	movs	r0, r3
	bl	puts
	.loc 1 250 0
	ldr	r3, .L66+16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 250 0
	movs	r0, r3
	bl	fflush
	.loc 1 254 0
	b	.L65
.L64:
	.loc 1 252 0
	ldr	r3, .L66+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L65
	.loc 1 252 0 is_stmt 0 discriminator 1
	ldr	r3, .L66+32
	movs	r2, #0
	strb	r2, [r3]
.L65:
	.loc 1 254 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L67:
	.align	2
.L66:
	.word	PrevChargerState
	.word	.LC9
	.word	.LC11
	.word	.LC13
	.word	_impure_ptr
	.word	-1603270140
	.word	ISense
	.word	ChargeOnDebounce
	.word	BatteryCharging
	.word	.LC19
	.word	VBat
	.word	3799
	.word	RechargeTimeout
	.word	.LC23
	.word	.LC25
	.cfi_endproc
.LFE6:
	.size	PMU_ChargerTimerHandler, .-PMU_ChargerTimerHandler
	.section	.text.PMU_InterruptHandler,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	PMU_InterruptHandler, %function
PMU_InterruptHandler:
.LFB7:
	.loc 1 257 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 258 0
	ldr	r3, .L69
	movs	r2, #0
	str	r2, [r3]
	.loc 1 259 0
	ldr	r3, .L69+4
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 260 0
	bl	USB_OnCableDisconnect
	.loc 1 261 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L70:
	.align	2
.L69:
	.word	ChargeOnDebounce
	.word	BatteryCharging
	.cfi_endproc
.LFE7:
	.size	PMU_InterruptHandler, .-PMU_InterruptHandler
	.section	.text.PMU_PWRKeyInterruptHandler,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	PMU_PWRKeyInterruptHandler, %function
PMU_PWRKeyInterruptHandler:
.LFB8:
	.loc 1 264 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 266 0
	ldr	r3, .L74
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L73
	.loc 1 267 0
	ldr	r3, .L74
	ldr	r4, [r3]
	bl	PMU_IsPowerKeyPressed
	movs	r3, r0
	movs	r0, r3
	blx	r4
.L73:
	.loc 1 269 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L75:
	.align	2
.L74:
	.word	PWRKEYAppHandler
	.cfi_endproc
.LFE8:
	.size	PMU_PWRKeyInterruptHandler, .-PMU_PWRKeyInterruptHandler
	.section	.text.PMU_IsPowerKeyPressed,"ax",%progbits
	.align	2
	.global	PMU_IsPowerKeyPressed
	.code	16
	.thumb_func
	.type	PMU_IsPowerKeyPressed, %function
PMU_IsPowerKeyPressed:
.LFB9:
	.loc 1 272 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 273 0
	ldr	r3, .L78
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	mvns	r3, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsrs	r3, r3, #15
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 274 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L79:
	.align	2
.L78:
	.word	-1603270016
	.cfi_endproc
.LFE9:
	.size	PMU_IsPowerKeyPressed, .-PMU_IsPowerKeyPressed
	.section	.text.PMU_SetPWRKEYHandler,"ax",%progbits
	.align	2
	.global	PMU_SetPWRKEYHandler
	.code	16
	.thumb_func
	.type	PMU_SetPWRKEYHandler, %function
PMU_SetPWRKEYHandler:
.LFB10:
	.loc 1 277 0
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
	.loc 1 279 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 281 0
	ldr	r3, .L81
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 1 282 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 284 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L82:
	.align	2
.L81:
	.word	PWRKEYAppHandler
	.cfi_endproc
.LFE10:
	.size	PMU_SetPWRKEYHandler, .-PMU_SetPWRKEYHandler
	.section	.rodata
	.align	2
.LC31:
	.ascii	"PWRKEY long press function set to \000"
	.align	2
.LC34:
	.ascii	"LPF_REBOOT\000"
	.align	2
.LC36:
	.ascii	"LPF_SHUTDOWN\000"
	.align	2
.LC38:
	.ascii	"%s\015\012\000"
	.section	.text.PMU_SetPWRKEYLongPressFunction,"ax",%progbits
	.align	2
	.global	PMU_SetPWRKEYLongPressFunction
	.code	16
	.thumb_func
	.type	PMU_SetPWRKEYLongPressFunction, %function
PMU_SetPWRKEYLongPressFunction:
.LFB11:
	.loc 1 287 0
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
	.loc 1 288 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 290 0
	ldr	r3, .L91
	movs	r0, r3
	bl	printf
	.loc 1 290 0
	ldr	r3, .L91+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 290 0
	movs	r0, r3
	bl	fflush
	.loc 1 292 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L84
	.loc 1 292 0 is_stmt 0 discriminator 1
	ldr	r2, .L91+8
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #64
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	b	.L85
.L84:
	.loc 1 293 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L90
	.loc 1 293 0 is_stmt 0 discriminator 1
	ldr	r2, .L91+8
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #64
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L85:
	.loc 1 296 0 is_stmt 1
	ldr	r1, .L91+8
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #1
	bics	r2, r3
	adds	r3, r7, #6
	ldrb	r3, [r3]
	orrs	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 298 0
	ldr	r2, .L91+8
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #16
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 299 0
	ldr	r2, .L91+8
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #16
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 300 0
	ldr	r2, .L91+8
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #16
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 302 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L88
	.loc 1 302 0 is_stmt 0 discriminator 1
	ldr	r3, .L91+12
	b	.L89
.L88:
	.loc 1 302 0 discriminator 2
	ldr	r3, .L91+16
.L89:
	.loc 1 302 0 discriminator 4
	ldr	r2, .L91+20
	movs	r1, r3
	movs	r0, r2
	bl	printf
	.loc 1 302 0 is_stmt 1 discriminator 4
	ldr	r3, .L91+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 302 0 discriminator 4
	movs	r0, r3
	bl	fflush
	.loc 1 304 0 discriminator 4
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	b	.L83
.L90:
	.loc 1 294 0
	nop
.L83:
	.loc 1 305 0
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L92:
	.align	2
.L91:
	.word	.LC31
	.word	_impure_ptr
	.word	-1603268864
	.word	.LC34
	.word	.LC36
	.word	.LC38
	.cfi_endproc
.LFE11:
	.size	PMU_SetPWRKEYLongPressFunction, .-PMU_SetPWRKEYLongPressFunction
	.section	.text.PMU_SetChargerWDTEnabled,"ax",%progbits
	.align	2
	.global	PMU_SetChargerWDTEnabled
	.code	16
	.thumb_func
	.type	PMU_SetChargerWDTEnabled, %function
PMU_SetChargerWDTEnabled:
.LFB12:
	.loc 1 308 0
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
	.loc 1 309 0
	ldr	r2, .L98
	ldr	r3, .L98
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #32
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 310 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L94
	.loc 1 310 0 is_stmt 0 discriminator 1
	ldr	r2, .L98
	ldr	r3, .L98
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #16
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	b	.L97
.L94:
	.loc 1 311 0 is_stmt 1
	ldr	r2, .L98
	ldr	r3, .L98
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #16
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L97:
	.loc 1 313 0
	nop
.L96:
	.loc 1 313 0 is_stmt 0 discriminator 1
	ldr	r3, .L98
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L96
	.loc 1 315 0 is_stmt 1
	ldr	r1, .L98
	ldr	r3, .L98
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #128
	lsls	r2, r2, #2
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 316 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L99:
	.align	2
.L98:
	.word	-1603270108
	.cfi_endproc
.LFE12:
	.size	PMU_SetChargerWDTEnabled, .-PMU_SetChargerWDTEnabled
	.section	.text.PMU_SetChargerWDTInterval,"ax",%progbits
	.align	2
	.global	PMU_SetChargerWDTInterval
	.code	16
	.thumb_func
	.type	PMU_SetChargerWDTInterval, %function
PMU_SetChargerWDTInterval:
.LFB13:
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
	movs	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 320 0
	ldr	r1, .L102
	ldr	r3, .L102
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #15
	bics	r3, r2
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	adds	r3, r7, #7
	ldrb	r3, [r3]
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r0, #15
	ands	r3, r0
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #32
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 322 0
	nop
.L101:
	.loc 1 322 0 is_stmt 0 discriminator 1
	ldr	r3, .L102
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	bmi	.L101
	.loc 1 324 0 is_stmt 1
	ldr	r1, .L102
	ldr	r3, .L102
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #128
	lsls	r2, r2, #2
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 325 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L103:
	.align	2
.L102:
	.word	-1603270108
	.cfi_endproc
.LFE13:
	.size	PMU_SetChargerWDTInterval, .-PMU_SetChargerWDTInterval
	.section	.text.PMU_IsChargerConnected,"ax",%progbits
	.align	2
	.global	PMU_IsChargerConnected
	.code	16
	.thumb_func
	.type	PMU_IsChargerConnected, %function
PMU_IsChargerConnected:
.LFB14:
	.loc 1 328 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 329 0
	ldr	r3, .L106
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #32
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 330 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L107:
	.align	2
.L106:
	.word	-1603270144
	.cfi_endproc
.LFE14:
	.size	PMU_IsChargerConnected, .-PMU_IsChargerConnected
	.section	.text.PMU_IsBatteryCharging,"ax",%progbits
	.align	2
	.global	PMU_IsBatteryCharging
	.code	16
	.thumb_func
	.type	PMU_IsBatteryCharging, %function
PMU_IsBatteryCharging:
.LFB15:
	.loc 1 333 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 335 0
	ldr	r3, .L110
	ldrb	r3, [r3]
	.loc 1 339 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L111:
	.align	2
.L110:
	.word	BatteryCharging
	.cfi_endproc
.LFE15:
	.size	PMU_IsBatteryCharging, .-PMU_IsBatteryCharging
	.section	.text.PMU_GetBatteryVoltageMV,"ax",%progbits
	.align	2
	.global	PMU_GetBatteryVoltageMV
	.code	16
	.thumb_func
	.type	PMU_GetBatteryVoltageMV, %function
PMU_GetBatteryVoltageMV:
.LFB16:
	.loc 1 342 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 344 0
	bl	PMU_MeasureChargeParams
	.loc 1 345 0
	ldr	r3, .L114
	ldrh	r3, [r3]
	.loc 1 349 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L115:
	.align	2
.L114:
	.word	VBat
	.cfi_endproc
.LFE16:
	.size	PMU_GetBatteryVoltageMV, .-PMU_GetBatteryVoltageMV
	.section	.text.PMU_GetBatteryChargeLevel,"ax",%progbits
	.align	2
	.global	PMU_GetBatteryChargeLevel
	.code	16
	.thumb_func
	.type	PMU_GetBatteryChargeLevel, %function
PMU_GetBatteryChargeLevel:
.LFB17:
	.loc 1 352 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 354 0
	ldr	r3, .L118
	ldrh	r3, [r3]
	.loc 1 358 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L119:
	.align	2
.L118:
	.word	ChargeLevel
	.cfi_endproc
.LFE17:
	.size	PMU_GetBatteryChargeLevel, .-PMU_GetBatteryChargeLevel
	.section	.text.PMU_EnableUSBDLMode,"ax",%progbits
	.align	2
	.global	PMU_EnableUSBDLMode
	.code	16
	.thumb_func
	.type	PMU_EnableUSBDLMode, %function
PMU_EnableUSBDLMode:
.LFB18:
	.loc 1 361 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 362 0
	ldr	r2, .L121
	ldr	r3, .L121
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #18
	lsrs	r3, r3, #18
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 363 0
	ldr	r2, .L121+4
	ldr	r3, .L121+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #16
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 364 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L122:
	.align	2
.L121:
	.word	-1603270104
	.word	-1603270016
	.cfi_endproc
.LFE18:
	.size	PMU_EnableUSBDLMode, .-PMU_EnableUSBDLMode
	.section	.text.PMU_DisableUSBDLMode,"ax",%progbits
	.align	2
	.global	PMU_DisableUSBDLMode
	.code	16
	.thumb_func
	.type	PMU_DisableUSBDLMode, %function
PMU_DisableUSBDLMode:
.LFB19:
	.loc 1 367 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 368 0
	ldr	r2, .L124
	ldr	r3, .L124
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #16
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 370 0
	ldr	r1, .L124+4
	ldr	r3, .L124+4
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #18
	lsrs	r3, r3, #18
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #128
	lsls	r2, r2, #7
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 374 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L125:
	.align	2
.L124:
	.word	-1603270016
	.word	-1603270104
	.cfi_endproc
.LFE19:
	.size	PMU_DisableUSBDLMode, .-PMU_DisableUSBDLMode
	.section	.text.PMU_SetVibrationOutput,"ax",%progbits
	.align	2
	.global	PMU_SetVibrationOutput
	.code	16
	.thumb_func
	.type	PMU_SetVibrationOutput, %function
PMU_SetVibrationOutput:
.LFB20:
	.loc 1 377 0
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
	.loc 1 379 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #14
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 382 0
	ldr	r2, .L127
	movs	r3, #14
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r1, #2
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 389 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L128:
	.align	2
.L127:
	.word	-1603272272
	.cfi_endproc
.LFE20:
	.size	PMU_SetVibrationOutput, .-PMU_SetVibrationOutput
	.section	.text.PMU_DisableISINKs,"ax",%progbits
	.align	2
	.global	PMU_DisableISINKs
	.code	16
	.thumb_func
	.type	PMU_DisableISINKs, %function
PMU_DisableISINKs:
.LFB21:
	.loc 1 392 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 393 0
	movs	r1, #0
	movs	r0, #0
	bl	PMU_SetISINKOutput
	.loc 1 394 0
	movs	r1, #0
	movs	r0, #1
	bl	PMU_SetISINKOutput
	.loc 1 395 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE21:
	.size	PMU_DisableISINKs, .-PMU_DisableISINKs
	.section	.text.PMU_SetISINKMode,"ax",%progbits
	.align	2
	.global	PMU_SetISINKMode
	.code	16
	.thumb_func
	.type	PMU_SetISINKMode, %function
PMU_SetISINKMode:
.LFB22:
	.loc 1 398 0
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
	.loc 1 399 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L131
	.loc 1 399 0 is_stmt 0 discriminator 1
	ldr	r3, .L134
	movs	r2, #0
	strh	r2, [r3]
	.loc 1 401 0 is_stmt 1 discriminator 1
	b	.L133
.L131:
	.loc 1 400 0
	ldr	r3, .L134
	movs	r2, #1
	strh	r2, [r3]
.L133:
	.loc 1 401 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L135:
	.align	2
.L134:
	.word	-1603269632
	.cfi_endproc
.LFE22:
	.size	PMU_SetISINKMode, .-PMU_SetISINKMode
	.section	.text.PMU_SetISINKOutput,"ax",%progbits
	.align	2
	.global	PMU_SetISINKOutput
	.code	16
	.thumb_func
	.type	PMU_SetISINKOutput, %function
PMU_SetISINKOutput:
.LFB23:
	.loc 1 404 0
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
	.loc 1 407 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L137
	.loc 1 407 0 is_stmt 0 discriminator 1
	ldr	r3, .L144
	str	r3, [r7, #12]
	b	.L138
.L137:
	.loc 1 408 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L143
	.loc 1 408 0 is_stmt 0 discriminator 1
	ldr	r3, .L144+4
	str	r3, [r7, #12]
.L138:
	.loc 1 411 0 is_stmt 1
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L141
	.loc 1 411 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #1
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
	b	.L142
.L141:
	.loc 1 412 0 is_stmt 1
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #1
	bics	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
.L142:
	.loc 1 414 0
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #1
	bics	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
	b	.L136
.L143:
	.loc 1 409 0
	nop
.L136:
	.loc 1 415 0
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L145:
	.align	2
.L144:
	.word	-1603269616
	.word	-1603269600
	.cfi_endproc
.LFE23:
	.size	PMU_SetISINKOutput, .-PMU_SetISINKOutput
	.section	.text.PMU_SetISINKParameters,"ax",%progbits
	.align	2
	.global	PMU_SetISINKParameters
	.code	16
	.thumb_func
	.type	PMU_SetISINKParameters, %function
PMU_SetISINKParameters:
.LFB24:
	.loc 1 418 0
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
	.loc 1 422 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L147
	.loc 1 422 0 is_stmt 0 discriminator 1
	ldr	r3, .L162
	str	r3, [r7, #12]
	b	.L148
.L147:
	.loc 1 423 0 is_stmt 1
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.LCB2106
	b	.L161	@long jump
.LCB2106:
	.loc 1 423 0 is_stmt 0 discriminator 1
	ldr	r3, .L162+4
	str	r3, [r7, #12]
.L148:
	.loc 1 426 0 is_stmt 1
	adds	r3, r7, #5
	ldrb	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #10
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 428 0
	adds	r3, r7, #6
	ldrb	r3, [r3]
	cmp	r3, #8
	bhi	.L146
	lsls	r2, r3, #2
	ldr	r3, .L162+8
	adds	r3, r2, r3
	ldr	r3, [r3]
	mov	pc, r3
	.section	.rodata.PMU_SetISINKParameters,"a",%progbits
	.align	2
.L152:
	.word	.L151
	.word	.L153
	.word	.L154
	.word	.L155
	.word	.L156
	.word	.L157
	.word	.L158
	.word	.L159
	.word	.L160
	.section	.text.PMU_SetISINKParameters
.L151:
	.loc 1 431 0
	ldr	r3, [r7, #12]
	movs	r2, #10
	adds	r2, r7, r2
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 432 0
	b	.L146
.L153:
	.loc 1 434 0
	movs	r3, #10
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r2, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
	.loc 1 435 0
	b	.L146
.L154:
	.loc 1 437 0
	movs	r3, #10
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r2, #32
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
	.loc 1 438 0
	b	.L146
.L155:
	.loc 1 440 0
	movs	r3, #10
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r2, #48
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
	.loc 1 441 0
	b	.L146
.L156:
	.loc 1 443 0
	movs	r3, #10
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r2, #96
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
	.loc 1 444 0
	b	.L146
.L157:
	.loc 1 446 0
	movs	r3, #10
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r2, #112
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
	.loc 1 447 0
	b	.L146
.L158:
	.loc 1 449 0
	movs	r3, #10
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r2, #152
	lsls	r2, r2, #1
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
	.loc 1 450 0
	b	.L146
.L159:
	.loc 1 452 0
	movs	r3, #10
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r2, #176
	lsls	r2, r2, #1
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
	.loc 1 453 0
	b	.L146
.L160:
	.loc 1 455 0
	movs	r3, #10
	adds	r3, r7, r3
	ldrh	r3, [r3]
	movs	r2, #184
	lsls	r2, r2, #1
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #12]
	strh	r2, [r3]
	.loc 1 456 0
	nop
	b	.L146
.L161:
	.loc 1 424 0
	nop
.L146:
	.loc 1 458 0
	mov	sp, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r7, pc}
.L163:
	.align	2
.L162:
	.word	-1603269616
	.word	-1603269600
	.word	.L152
	.cfi_endproc
.LFE24:
	.size	PMU_SetISINKParameters, .-PMU_SetISINKParameters
	.section	.text.PMU_TurnOnVUSB,"ax",%progbits
	.align	2
	.global	PMU_TurnOnVUSB
	.code	16
	.thumb_func
	.type	PMU_TurnOnVUSB, %function
PMU_TurnOnVUSB:
.LFB25:
	.loc 1 461 0
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
	.loc 1 462 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L165
	.loc 1 462 0 is_stmt 0 discriminator 1
	ldr	r2, .L168
	ldr	r3, .L168
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	orrs	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
	.loc 1 464 0 is_stmt 1 discriminator 1
	b	.L167
.L165:
	.loc 1 463 0
	ldr	r2, .L168
	ldr	r3, .L168
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r1, #1
	bics	r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L167:
	.loc 1 464 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L169:
	.align	2
.L168:
	.word	-1603272352
	.cfi_endproc
.LFE25:
	.size	PMU_TurnOnVUSB, .-PMU_TurnOnVUSB
	.section	.text.PMU_TurnOnVMC,"ax",%progbits
	.align	2
	.global	PMU_TurnOnVMC
	.code	16
	.thumb_func
	.type	PMU_TurnOnVMC, %function
PMU_TurnOnVMC:
.LFB26:
	.loc 1 467 0
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
	.loc 1 468 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #14
	adds	r3, r7, r3
	strh	r2, [r3]
	.loc 1 470 0
	ldr	r1, .L171
	ldr	r3, .L171
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #3
	bics	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	movs	r3, #14
	adds	r3, r7, r3
	ldrh	r3, [r3]
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, #2
	orrs	r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 475 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L172:
	.align	2
.L171:
	.word	-1603272256
	.cfi_endproc
.LFE26:
	.size	PMU_TurnOnVMC, .-PMU_TurnOnVMC
	.section	.text.PMU_SetVoltageVMC,"ax",%progbits
	.align	2
	.global	PMU_SetVoltageVMC
	.code	16
	.thumb_func
	.type	PMU_SetVoltageVMC, %function
PMU_SetVoltageVMC:
.LFB27:
	.loc 1 478 0
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
	.loc 1 479 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L175
	blt	.L174
	subs	r3, r3, #2
	cmp	r3, #2
	bhi	.L174
.L175:
	.loc 1 485 0
	ldr	r1, .L177
	ldr	r3, .L177
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #112
	bics	r3, r2
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	adds	r3, r7, #7
	ldrb	r3, [r3]
	lsls	r3, r3, #4
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r0, #112
	ands	r3, r0
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]
	.loc 1 487 0
	movs	r3, #1
	b	.L176
.L174:
	.loc 1 489 0
	movs	r3, #0
.L176:
	.loc 1 491 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L178:
	.align	2
.L177:
	.word	-1603272256
	.cfi_endproc
.LFE27:
	.size	PMU_SetVoltageVMC, .-PMU_SetVoltageVMC
	.section	.text.PMU_GetSelectedVoltageVMC,"ax",%progbits
	.align	2
	.global	PMU_GetSelectedVoltageVMC
	.code	16
	.thumb_func
	.type	PMU_GetSelectedVoltageVMC, %function
PMU_GetSelectedVoltageVMC:
.LFB28:
	.loc 1 494 0
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
	.loc 1 495 0
	ldr	r3, .L181
	ldrh	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	movs	r2, r3
	movs	r3, #112
	ands	r3, r2
	asrs	r2, r3, #4
	adds	r3, r7, #7
	strb	r2, [r3]
	.loc 1 497 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	.loc 1 498 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L182:
	.align	2
.L181:
	.word	-1603272256
	.cfi_endproc
.LFE28:
	.size	PMU_GetSelectedVoltageVMC, .-PMU_GetSelectedVoltageVMC
	.section	.rodata
	.align	2
.LC44:
	.ascii	":\015\000"
	.align	2
.LC49:
	.ascii	" Battery charger...\000"
	.align	2
.LC51:
	.ascii	"Failed! Can not enable AUXADC.\015\000"
	.align	2
.LC55:
	.ascii	"Failed! Can not create timer.\015\000"
	.align	2
.LC58:
	.ascii	"Failed! Can not register interrupt.\015\000"
	.align	2
.LC60:
	.ascii	"Complete.\015\000"
	.align	2
.LC62:
	.ascii	" Registering powerkey handler...\000"
	.align	2
.LC65:
	.ascii	"Failed!\015\000"
	.align	2
.LC67:
	.ascii	"PMU initialization Failed!\015\000"
	.section	.text.PMU_Initialize,"ax",%progbits
	.align	2
	.global	PMU_Initialize
	.code	16
	.thumb_func
	.type	PMU_Initialize, %function
PMU_Initialize:
.LFB29:
	.loc 1 501 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #8
	.cfi_def_cfa 7, 16
	.loc 1 502 0
	adds	r3, r7, #7
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 504 0
	bl	PMU_DisableUSBDLMode
	.loc 1 509 0
	ldr	r3, .L194
	movs	r0, r3
	bl	puts
	.loc 1 509 0
	ldr	r3, .L194+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 509 0
	movs	r0, r3
	bl	fflush
	.loc 1 513 0
	ldr	r3, .L194+8
	movs	r2, #250
	lsls	r2, r2, #2
	strh	r2, [r3]
	.loc 1 514 0
	ldr	r3, .L194+12
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 518 0
	ldr	r3, .L194+16
	movs	r0, r3
	bl	printf
	.loc 1 518 0
	ldr	r3, .L194+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 518 0
	movs	r0, r3
	bl	fflush
	.loc 1 520 0
	bl	AUXADC_Enable
	subs	r3, r0, #0
	bne	.L184
	.loc 1 522 0
	ldr	r3, .L194+20
	movs	r0, r3
	bl	puts
	.loc 1 522 0
	ldr	r3, .L194+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 522 0
	movs	r0, r3
	bl	fflush
	.loc 1 523 0
	adds	r3, r7, #7
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 524 0
	b	.L185
.L184:
	.loc 1 526 0
	ldr	r3, .L194+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L186
	.loc 1 528 0
	ldr	r1, .L194+28
	movs	r3, #250
	lsls	r3, r3, #1
	movs	r2, #3
	movs	r0, r3
	bl	LRT_Create
	movs	r2, r0
	ldr	r3, .L194+24
	str	r2, [r3]
	.loc 1 529 0
	ldr	r3, .L194+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L186
	.loc 1 531 0
	ldr	r3, .L194+32
	movs	r0, r3
	bl	puts
	.loc 1 531 0
	ldr	r3, .L194+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 531 0
	movs	r0, r3
	bl	fflush
	.loc 1 532 0
	adds	r3, r7, #7
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 533 0
	b	.L185
.L186:
	.loc 1 536 0
	ldr	r1, .L194+36
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #1
	movs	r2, #0
	movs	r0, #26
	bl	NVIC_RegisterEINT
	subs	r3, r0, #0
	beq	.L187
	.loc 1 538 0
	movs	r0, #26
	bl	NVIC_EnableEINT
	subs	r3, r0, #0
	.loc 1 537 0
	bne	.L185
.L187:
	.loc 1 540 0
	ldr	r3, .L194+40
	movs	r0, r3
	bl	puts
	.loc 1 540 0
	ldr	r3, .L194+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 540 0
	movs	r0, r3
	bl	fflush
	.loc 1 541 0
	adds	r3, r7, #7
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 542 0
	nop
.L185:
	.loc 1 547 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L188
	.loc 1 547 0 is_stmt 0 discriminator 1
	ldr	r3, .L194+44
	movs	r0, r3
	bl	puts
	.loc 1 547 0 is_stmt 1 discriminator 1
	ldr	r3, .L194+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 547 0 discriminator 1
	movs	r0, r3
	bl	fflush
	b	.L189
.L188:
	.loc 1 550 0
	movs	r0, #26
	bl	NVIC_UnregisterEINT
	.loc 1 551 0
	bl	AUXADC_Disable
	.loc 1 552 0
	ldr	r3, .L194+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L189
	.loc 1 554 0
	ldr	r3, .L194+24
	ldr	r3, [r3]
	movs	r0, r3
	bl	LRT_Destroy
	.loc 1 555 0
	ldr	r3, .L194+24
	movs	r2, #0
	str	r2, [r3]
.L189:
	.loc 1 564 0
	ldr	r3, .L194+48
	movs	r0, r3
	bl	printf
	.loc 1 564 0
	ldr	r3, .L194+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 564 0
	movs	r0, r3
	bl	fflush
	.loc 1 565 0
	ldr	r1, .L194+52
	movs	r3, #1
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	movs	r0, #25
	bl	NVIC_RegisterEINT
	subs	r3, r0, #0
	beq	.L190
	.loc 1 567 0
	ldr	r3, .L194+44
	movs	r0, r3
	bl	puts
	.loc 1 567 0
	ldr	r3, .L194+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 567 0
	movs	r0, r3
	bl	fflush
	b	.L191
.L190:
	.loc 1 570 0
	ldr	r3, .L194+56
	movs	r0, r3
	bl	puts
	.loc 1 570 0
	ldr	r3, .L194+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 570 0
	movs	r0, r3
	bl	fflush
	.loc 1 571 0
	adds	r3, r7, #7
	movs	r2, #0
	strb	r2, [r3]
.L191:
	.loc 1 575 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L192
	.loc 1 575 0 is_stmt 0 discriminator 1
	ldr	r3, .L194+60
	movs	r0, r3
	bl	puts
	.loc 1 575 0 is_stmt 1 discriminator 1
	ldr	r3, .L194+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 575 0 discriminator 1
	movs	r0, r3
	bl	fflush
.L192:
	.loc 1 577 0
	adds	r3, r7, #7
	ldrb	r3, [r3]
	.loc 1 578 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L195:
	.align	2
.L194:
	.word	.LC44
	.word	_impure_ptr
	.word	ChargeLevel
	.word	FirstMeasurememnt
	.word	.LC49
	.word	.LC51
	.word	ChargerTimer
	.word	PMU_ChargerTimerHandler
	.word	.LC55
	.word	PMU_InterruptHandler
	.word	.LC58
	.word	.LC60
	.word	.LC62
	.word	PMU_PWRKeyInterruptHandler
	.word	.LC65
	.word	.LC67
	.cfi_endproc
.LFE29:
	.size	PMU_Initialize, .-PMU_Initialize
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
	.file 10 ".\\Source\\Lib\\MT6261/drivers\\pmu.h"
	.file 11 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 12 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 13 ".\\Source\\System/lrtimer.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x11df
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF261
	.byte	0xc
	.4byte	.LASF262
	.4byte	.LASF263
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1b
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1d
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x29
	.4byte	0x54
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.4byte	0x66
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x3f
	.4byte	0x78
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0x41
	.4byte	0x8a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x18
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x20
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x24
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2c
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x3
	.byte	0x30
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF21
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x4
	.byte	0x7
	.4byte	0x9f
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x2c
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x5
	.byte	0x72
	.4byte	0x78
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x165
	.4byte	0xa6
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.4byte	0x142
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.byte	0xa8
	.4byte	0x117
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x5
	.byte	0xa9
	.4byte	0x142
	.byte	0
	.uleb128 0x8
	.4byte	0x42
	.4byte	0x152
	.uleb128 0x9
	.4byte	0x152
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.4byte	0x17a
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0xa5
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0xaa
	.4byte	0x123
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x5
	.byte	0xab
	.4byte	0x159
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x5
	.byte	0xaf
	.4byte	0xf6
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x198
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF33
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x7
	.byte	0x16
	.4byte	0x8a
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x18
	.byte	0x7
	.byte	0x2d
	.4byte	0x1fd
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0x2f
	.4byte	0x1fd
	.byte	0
	.uleb128 0xf
	.ascii	"_k\000"
	.byte	0x7
	.byte	0x30
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x7
	.byte	0x30
	.4byte	0x9f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x7
	.byte	0x30
	.4byte	0x9f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x30
	.4byte	0x9f
	.byte	0x10
	.uleb128 0xf
	.ascii	"_x\000"
	.byte	0x7
	.byte	0x31
	.4byte	0x203
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1aa
	.uleb128 0x8
	.4byte	0x19f
	.4byte	0x213
	.uleb128 0x9
	.4byte	0x152
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x24
	.byte	0x7
	.byte	0x35
	.4byte	0x28c
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x7
	.byte	0x37
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x7
	.byte	0x38
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x7
	.byte	0x39
	.4byte	0x9f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x3a
	.4byte	0x9f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x3b
	.4byte	0x9f
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x7
	.byte	0x3c
	.4byte	0x9f
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x7
	.byte	0x3d
	.4byte	0x9f
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x7
	.byte	0x3e
	.4byte	0x9f
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x7
	.byte	0x3f
	.4byte	0x9f
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF50
	.2byte	0x108
	.byte	0x7
	.byte	0x48
	.4byte	0x2cc
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x49
	.4byte	0x2cc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x7
	.byte	0x4a
	.4byte	0x2cc
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x7
	.byte	0x4c
	.4byte	0x19f
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x7
	.byte	0x4f
	.4byte	0x19f
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x190
	.4byte	0x2dc
	.uleb128 0x9
	.4byte	0x152
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF55
	.2byte	0x190
	.byte	0x7
	.byte	0x5b
	.4byte	0x31a
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0x5c
	.4byte	0x31a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x5d
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0x5f
	.4byte	0x320
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x7
	.byte	0x60
	.4byte	0x28c
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2dc
	.uleb128 0x8
	.4byte	0x330
	.4byte	0x330
	.uleb128 0x9
	.4byte	0x152
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x336
	.uleb128 0x12
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x8
	.byte	0x7
	.byte	0x73
	.4byte	0x35c
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x7
	.byte	0x74
	.4byte	0x35c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x7
	.byte	0x75
	.4byte	0x9f
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x42
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x68
	.byte	0x7
	.byte	0xb3
	.4byte	0x48c
	.uleb128 0xf
	.ascii	"_p\000"
	.byte	0x7
	.byte	0xb4
	.4byte	0x35c
	.byte	0
	.uleb128 0xf
	.ascii	"_r\000"
	.byte	0x7
	.byte	0xb5
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xf
	.ascii	"_w\000"
	.byte	0x7
	.byte	0xb6
	.4byte	0x9f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x7
	.byte	0xb7
	.4byte	0x54
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x7
	.byte	0xb8
	.4byte	0x54
	.byte	0xe
	.uleb128 0xf
	.ascii	"_bf\000"
	.byte	0x7
	.byte	0xb9
	.4byte	0x337
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7
	.byte	0xba
	.4byte	0x9f
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x7
	.byte	0xc1
	.4byte	0x190
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x7
	.byte	0xc3
	.4byte	0x5e2
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x7
	.byte	0xc5
	.4byte	0x611
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x7
	.byte	0xc8
	.4byte	0x635
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x7
	.byte	0xc9
	.4byte	0x64f
	.byte	0x2c
	.uleb128 0xf
	.ascii	"_ub\000"
	.byte	0x7
	.byte	0xcc
	.4byte	0x337
	.byte	0x30
	.uleb128 0xf
	.ascii	"_up\000"
	.byte	0x7
	.byte	0xcd
	.4byte	0x35c
	.byte	0x38
	.uleb128 0xf
	.ascii	"_ur\000"
	.byte	0x7
	.byte	0xce
	.4byte	0x9f
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x7
	.byte	0xd1
	.4byte	0x655
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x7
	.byte	0xd2
	.4byte	0x665
	.byte	0x43
	.uleb128 0xf
	.ascii	"_lb\000"
	.byte	0x7
	.byte	0xd5
	.4byte	0x337
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x7
	.byte	0xd8
	.4byte	0x9f
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x7
	.byte	0xd9
	.4byte	0x101
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x7
	.byte	0xdc
	.4byte	0x4aa
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x7
	.byte	0xe0
	.4byte	0x185
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x7
	.byte	0xe2
	.4byte	0x17a
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x7
	.byte	0xe3
	.4byte	0x9f
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.4byte	0x9f
	.4byte	0x4aa
	.uleb128 0x14
	.4byte	0x4aa
	.uleb128 0x14
	.4byte	0x190
	.uleb128 0x14
	.4byte	0x192
	.uleb128 0x14
	.4byte	0x9f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x4b0
	.uleb128 0x15
	.4byte	.LASF78
	.2byte	0x428
	.byte	0x7
	.2byte	0x238
	.4byte	0x5e2
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x23a
	.4byte	0x9f
	.byte	0
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x23f
	.4byte	0x6bc
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x23f
	.4byte	0x6bc
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x23f
	.4byte	0x6bc
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x241
	.4byte	0x9f
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x242
	.4byte	0x89e
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x244
	.4byte	0x9f
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x245
	.4byte	0x606
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x247
	.4byte	0x9f
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x249
	.4byte	0x8b9
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x24c
	.4byte	0x1fd
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x24d
	.4byte	0x9f
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x24e
	.4byte	0x1fd
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x24f
	.4byte	0x8bf
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x252
	.4byte	0x9f
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x253
	.4byte	0x192
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x276
	.4byte	0x87c
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x7
	.2byte	0x27a
	.4byte	0x31a
	.2byte	0x148
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x27b
	.4byte	0x2dc
	.2byte	0x14c
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x27f
	.4byte	0x8d0
	.2byte	0x2dc
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x284
	.4byte	0x681
	.2byte	0x2e0
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x285
	.4byte	0x8dc
	.2byte	0x2ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x48c
	.uleb128 0x13
	.4byte	0x9f
	.4byte	0x606
	.uleb128 0x14
	.4byte	0x4aa
	.uleb128 0x14
	.4byte	0x190
	.uleb128 0x14
	.4byte	0x606
	.uleb128 0x14
	.4byte	0x9f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x60c
	.uleb128 0x18
	.4byte	0x198
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e8
	.uleb128 0x13
	.4byte	0x10c
	.4byte	0x635
	.uleb128 0x14
	.4byte	0x4aa
	.uleb128 0x14
	.4byte	0x190
	.uleb128 0x14
	.4byte	0x10c
	.uleb128 0x14
	.4byte	0x9f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x617
	.uleb128 0x13
	.4byte	0x9f
	.4byte	0x64f
	.uleb128 0x14
	.4byte	0x4aa
	.uleb128 0x14
	.4byte	0x190
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x63b
	.uleb128 0x8
	.4byte	0x42
	.4byte	0x665
	.uleb128 0x9
	.4byte	0x152
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x42
	.4byte	0x675
	.uleb128 0x9
	.4byte	0x152
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x11d
	.4byte	0x362
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0xc
	.byte	0x7
	.2byte	0x121
	.4byte	0x6b6
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x7
	.2byte	0x123
	.4byte	0x6b6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x124
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x125
	.4byte	0x6bc
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x681
	.uleb128 0xd
	.byte	0x4
	.4byte	0x675
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0xe
	.byte	0x7
	.2byte	0x13d
	.4byte	0x6f7
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x13e
	.4byte	0x6f7
	.byte	0
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x13f
	.4byte	0x6f7
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x140
	.4byte	0x66
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x66
	.4byte	0x707
	.uleb128 0x9
	.4byte	0x152
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd0
	.byte	0x7
	.2byte	0x257
	.4byte	0x808
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x259
	.4byte	0xa6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x25a
	.4byte	0x192
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x25b
	.4byte	0x808
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x25c
	.4byte	0x213
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x25d
	.4byte	0x9f
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x25e
	.4byte	0x98
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x25f
	.4byte	0x6c2
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x260
	.4byte	0x17a
	.byte	0x68
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x261
	.4byte	0x17a
	.byte	0x70
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x262
	.4byte	0x17a
	.byte	0x78
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x263
	.4byte	0x818
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x264
	.4byte	0x828
	.byte	0x88
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x265
	.4byte	0x9f
	.byte	0xa0
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x266
	.4byte	0x17a
	.byte	0xa4
	.uleb128 0x16
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x267
	.4byte	0x17a
	.byte	0xac
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x268
	.4byte	0x17a
	.byte	0xb4
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x269
	.4byte	0x17a
	.byte	0xbc
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x26a
	.4byte	0x17a
	.byte	0xc4
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x26b
	.4byte	0x9f
	.byte	0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0x198
	.4byte	0x818
	.uleb128 0x9
	.4byte	0x152
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x198
	.4byte	0x828
	.uleb128 0x9
	.4byte	0x152
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x198
	.4byte	0x838
	.uleb128 0x9
	.4byte	0x152
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0x7
	.2byte	0x270
	.4byte	0x85c
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x273
	.4byte	0x85c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x274
	.4byte	0x86c
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x35c
	.4byte	0x86c
	.uleb128 0x9
	.4byte	0x152
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0xa6
	.4byte	0x87c
	.uleb128 0x9
	.4byte	0x152
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x7
	.2byte	0x255
	.4byte	0x89e
	.uleb128 0x1c
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x26c
	.4byte	0x707
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x275
	.4byte	0x838
	.byte	0
	.uleb128 0x8
	.4byte	0x198
	.4byte	0x8ae
	.uleb128 0x9
	.4byte	0x152
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.4byte	0x8b9
	.uleb128 0x14
	.4byte	0x4aa
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8ae
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1fd
	.uleb128 0x1d
	.4byte	0x8d0
	.uleb128 0x14
	.4byte	0x9f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8d6
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8c5
	.uleb128 0x8
	.4byte	0x675
	.4byte	0x8ec
	.uleb128 0x9
	.4byte	0x152
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x42
	.byte	0x8
	.byte	0x1d
	.4byte	0x905
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0x8
	.byte	0x1d
	.4byte	0x8ec
	.uleb128 0x20
	.4byte	0xce
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x9
	.byte	0x17
	.4byte	0x920
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0xc
	.byte	0x9
	.byte	0x18
	.4byte	0x951
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x9
	.byte	0x1a
	.4byte	0x951
	.byte	0
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x9
	.byte	0x1b
	.4byte	0x951
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x9
	.byte	0x1c
	.4byte	0x190
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x9
	.byte	0x17
	.4byte	0x95c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x920
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0x1
	.4byte	0x42
	.byte	0xa
	.byte	0xb5
	.4byte	0x98b
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0xa
	.byte	0xbb
	.4byte	0x962
	.uleb128 0x22
	.4byte	.LASF145
	.byte	0x1
	.4byte	0x42
	.byte	0xa
	.2byte	0x25c
	.4byte	0x9ba
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF148
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x261
	.4byte	0x996
	.uleb128 0x22
	.4byte	.LASF150
	.byte	0x1
	.4byte	0x42
	.byte	0xa
	.2byte	0x263
	.4byte	0xa0e
	.uleb128 0x1f
	.4byte	.LASF151
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF153
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF157
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF158
	.byte	0x7
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x26e
	.4byte	0x9c6
	.uleb128 0x22
	.4byte	.LASF161
	.byte	0x1
	.4byte	0x42
	.byte	0xa
	.2byte	0x315
	.4byte	0xa38
	.uleb128 0x1f
	.4byte	.LASF162
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF163
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF164
	.byte	0xa
	.2byte	0x319
	.4byte	0xa1a
	.uleb128 0x21
	.4byte	.LASF165
	.byte	0x1
	.4byte	0x42
	.byte	0xb
	.byte	0xf1
	.4byte	0xa73
	.uleb128 0x1f
	.4byte	.LASF166
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF167
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF168
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF169
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF170
	.byte	0x4
	.byte	0
	.uleb128 0x21
	.4byte	.LASF171
	.byte	0x1
	.4byte	0x42
	.byte	0xc
	.byte	0x24
	.4byte	0xaba
	.uleb128 0x1f
	.4byte	.LASF172
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF173
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF174
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF175
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF176
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF177
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF179
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF180
	.byte	0x7
	.byte	0
	.uleb128 0x21
	.4byte	.LASF181
	.byte	0x1
	.4byte	0x42
	.byte	0xd
	.byte	0x16
	.4byte	0xae3
	.uleb128 0x1f
	.4byte	.LASF182
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF183
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF184
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF185
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF186
	.byte	0xd
	.byte	0x1c
	.4byte	0xaba
	.uleb128 0x2
	.4byte	.LASF187
	.byte	0xd
	.byte	0x1e
	.4byte	0xaf9
	.uleb128 0xd
	.byte	0x4
	.4byte	0xaff
	.uleb128 0xe
	.4byte	.LASF188
	.byte	0x1c
	.byte	0xd
	.byte	0x1f
	.4byte	0xb48
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0xd
	.byte	0x21
	.4byte	0x915
	.byte	0
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0xd
	.byte	0x22
	.4byte	0xae3
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0xd
	.byte	0x23
	.4byte	0xe4
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0xd
	.byte	0x24
	.4byte	0xe4
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0xd
	.byte	0x25
	.4byte	0xb53
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.4byte	0xb53
	.uleb128 0x14
	.4byte	0xaee
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xb48
	.uleb128 0xa
	.byte	0x4
	.byte	0x1
	.byte	0x2a
	.4byte	0xb86
	.uleb128 0xb
	.4byte	.LASF194
	.byte	0x1
	.byte	0x2c
	.4byte	0xce
	.byte	0
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0x1
	.byte	0x2d
	.4byte	0xb8
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0x1
	.byte	0x2e
	.4byte	0xb8
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0x1
	.byte	0x2f
	.4byte	0xb59
	.uleb128 0x23
	.4byte	.LASF201
	.byte	0x1
	.byte	0x50
	.4byte	0xad
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc5
	.uleb128 0x24
	.4byte	.LASF198
	.byte	0x1
	.byte	0x50
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0x52
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x26
	.4byte	.LASF264
	.byte	0x1
	.byte	0x5b
	.4byte	0x905
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF208
	.byte	0x1
	.byte	0x60
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0c
	.uleb128 0x24
	.4byte	.LASF199
	.byte	0x1
	.byte	0x60
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x28
	.4byte	.LASF200
	.byte	0x1
	.byte	0x62
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x29
	.4byte	.LASF202
	.byte	0x1
	.byte	0x81
	.4byte	0xc3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcaa
	.uleb128 0x24
	.4byte	.LASF137
	.byte	0x1
	.byte	0x81
	.4byte	0xcaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.4byte	.LASF203
	.byte	0x1
	.byte	0x81
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x24
	.4byte	.LASF204
	.byte	0x1
	.byte	0x81
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.4byte	.LASF205
	.byte	0x1
	.byte	0x83
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0x84
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.ascii	"j\000"
	.byte	0x1
	.byte	0x84
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x28
	.4byte	.LASF206
	.byte	0x1
	.byte	0x84
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.ascii	"Sum\000"
	.byte	0x1
	.byte	0x85
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x28
	.4byte	.LASF207
	.byte	0x1
	.byte	0x8e
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x27
	.4byte	.LASF209
	.byte	0x1
	.byte	0x9f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd12
	.uleb128 0x28
	.4byte	.LASF210
	.byte	0x1
	.byte	0xa1
	.4byte	0xd12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0xa1
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x28
	.4byte	.LASF211
	.byte	0x1
	.byte	0xa2
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x25
	.ascii	"_a\000"
	.byte	0x1
	.byte	0xb3
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.ascii	"_b\000"
	.byte	0x1
	.byte	0xb3
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xce
	.4byte	0xd22
	.uleb128 0x9
	.4byte	0x152
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.4byte	.LASF212
	.byte	0x1
	.byte	0xc4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd54
	.uleb128 0x24
	.4byte	.LASF213
	.byte	0x1
	.byte	0xc4
	.4byte	0xaee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.4byte	.LASF214
	.byte	0x1
	.byte	0xc6
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x100
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x107
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x10f
	.4byte	0x905
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x114
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc3
	.uleb128 0x2e
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x114
	.4byte	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x117
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1d
	.4byte	0xdce
	.uleb128 0x14
	.4byte	0x905
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xdc3
	.uleb128 0x2d
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x11e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe18
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x11e
	.4byte	0xa38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2e
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x11e
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2f
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x120
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x30
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x133
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3e
	.uleb128 0x2e
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x133
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x30
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x13e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe64
	.uleb128 0x2e
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x13e
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x147
	.4byte	0x905
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x14c
	.4byte	0x905
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x155
	.4byte	0xce
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x15f
	.4byte	0xce
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x168
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x16e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x178
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf14
	.uleb128 0x2e
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x178
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x33
	.ascii	"En\000"
	.byte	0x1
	.2byte	0x17b
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x34
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x187
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x18d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf4c
	.uleb128 0x2e
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x18d
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x30
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x193
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf90
	.uleb128 0x2e
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x193
	.4byte	0x9ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2e
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x193
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2f
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x195
	.4byte	0xf90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x910
	.uleb128 0x30
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x1a1
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff7
	.uleb128 0x2e
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x9ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2e
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x1a1
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x2e
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x2f
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x1a3
	.4byte	0xf90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.ascii	"En\000"
	.byte	0x1
	.2byte	0x1a4
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x30
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x1cc
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x101d
	.uleb128 0x2e
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x30
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x1d2
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1051
	.uleb128 0x2e
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x33
	.ascii	"En\000"
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x35
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x905
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x107b
	.uleb128 0x2e
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x98b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x35
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x98b
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a5
	.uleb128 0x33
	.ascii	"VMC\000"
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x98b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x36
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x905
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10cf
	.uleb128 0x2f
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x28
	.4byte	.LASF247
	.byte	0x1
	.byte	0x45
	.4byte	0x905
	.uleb128 0x5
	.byte	0x3
	.4byte	PrevChargerState
	.uleb128 0x28
	.4byte	.LASF248
	.byte	0x1
	.byte	0x45
	.4byte	0x905
	.uleb128 0x5
	.byte	0x3
	.4byte	BatteryCharging
	.uleb128 0x28
	.4byte	.LASF249
	.byte	0x1
	.byte	0x46
	.4byte	0xaee
	.uleb128 0x5
	.byte	0x3
	.4byte	ChargerTimer
	.uleb128 0x28
	.4byte	.LASF250
	.byte	0x1
	.byte	0x47
	.4byte	0xce
	.uleb128 0x5
	.byte	0x3
	.4byte	VBat
	.uleb128 0x28
	.4byte	.LASF251
	.byte	0x1
	.byte	0x47
	.4byte	0xce
	.uleb128 0x5
	.byte	0x3
	.4byte	ISense
	.uleb128 0x28
	.4byte	.LASF252
	.byte	0x1
	.byte	0x48
	.4byte	0xe4
	.uleb128 0x5
	.byte	0x3
	.4byte	ChargeOnDebounce
	.uleb128 0x28
	.4byte	.LASF253
	.byte	0x1
	.byte	0x49
	.4byte	0xe4
	.uleb128 0x5
	.byte	0x3
	.4byte	RechargeTimeout
	.uleb128 0x28
	.4byte	.LASF254
	.byte	0x1
	.byte	0x4a
	.4byte	0xdce
	.uleb128 0x5
	.byte	0x3
	.4byte	PWRKEYAppHandler
	.uleb128 0x28
	.4byte	.LASF255
	.byte	0x1
	.byte	0x4b
	.4byte	0xce
	.uleb128 0x5
	.byte	0x3
	.4byte	ChargeLevel
	.uleb128 0x28
	.4byte	.LASF256
	.byte	0x1
	.byte	0x4c
	.4byte	0x905
	.uleb128 0x5
	.byte	0x3
	.4byte	FirstMeasurememnt
	.uleb128 0x8
	.4byte	0xce
	.4byte	0x1189
	.uleb128 0x9
	.4byte	0x152
	.byte	0x7f
	.byte	0
	.uleb128 0x28
	.4byte	.LASF257
	.byte	0x1
	.byte	0x4d
	.4byte	0x1179
	.uleb128 0x5
	.byte	0x3
	.4byte	MathVBatArray
	.uleb128 0x28
	.4byte	.LASF258
	.byte	0x1
	.byte	0x4e
	.4byte	0x1179
	.uleb128 0x5
	.byte	0x3
	.4byte	MathISenseArray
	.uleb128 0x37
	.4byte	.LASF259
	.byte	0x7
	.2byte	0x2fd
	.4byte	0x4aa
	.uleb128 0x8
	.4byte	0x11c7
	.4byte	0x11c7
	.uleb128 0x9
	.4byte	0x152
	.byte	0xf
	.byte	0
	.uleb128 0x18
	.4byte	0xb86
	.uleb128 0x38
	.4byte	.LASF260
	.byte	0x1
	.byte	0x31
	.4byte	0x11dd
	.uleb128 0x5
	.byte	0x3
	.4byte	BatCurrentLimits
	.uleb128 0x18
	.4byte	0x11b7
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
	.uleb128 0x3
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.4byte	0xfc
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF173:
	.ascii	"USB_EP1IN\000"
.LASF15:
	.ascii	"int8_t\000"
.LASF193:
	.ascii	"Handler\000"
.LASF28:
	.ascii	"sizetype\000"
.LASF263:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF30:
	.ascii	"__value\000"
.LASF99:
	.ascii	"__sf\000"
.LASF66:
	.ascii	"_read\000"
.LASF67:
	.ascii	"_write\000"
.LASF19:
	.ascii	"int32_t\000"
.LASF110:
	.ascii	"_asctime_buf\000"
.LASF93:
	.ascii	"_cvtlen\000"
.LASF250:
	.ascii	"VBat\000"
.LASF214:
	.ascii	"ChargerState\000"
.LASF129:
	.ascii	"_unused\000"
.LASF40:
	.ascii	"__tm\000"
.LASF125:
	.ascii	"_wcsrtombs_state\000"
.LASF71:
	.ascii	"_nbuf\000"
.LASF41:
	.ascii	"__tm_sec\000"
.LASF118:
	.ascii	"_l64a_buf\000"
.LASF75:
	.ascii	"_lock\000"
.LASF237:
	.ascii	"ISINK_CON\000"
.LASF106:
	.ascii	"_mult\000"
.LASF233:
	.ascii	"PMU_SetISINKMode\000"
.LASF164:
	.ascii	"TLPFUNC\000"
.LASF185:
	.ascii	"TF_DIRECT\000"
.LASF252:
	.ascii	"ChargeOnDebounce\000"
.LASF245:
	.ascii	"PMU_Initialize\000"
.LASF26:
	.ascii	"__wch\000"
.LASF1:
	.ascii	"__uint8_t\000"
.LASF63:
	.ascii	"_file\000"
.LASF50:
	.ascii	"_on_exit_args\000"
.LASF264:
	.ascii	"PMU_IsChargerEnabled\000"
.LASF256:
	.ascii	"FirstMeasurememnt\000"
.LASF121:
	.ascii	"_mbrlen_state\000"
.LASF9:
	.ascii	"long int\000"
.LASF259:
	.ascii	"_impure_ptr\000"
.LASF90:
	.ascii	"_result_k\000"
.LASF60:
	.ascii	"_size\000"
.LASF221:
	.ascii	"Enabled\000"
.LASF111:
	.ascii	"_localtime_buf\000"
.LASF174:
	.ascii	"USB_EP2IN\000"
.LASF261:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF196:
	.ascii	"USBDLMaxCurrent\000"
.LASF45:
	.ascii	"__tm_mon\000"
.LASF242:
	.ascii	"Voltage\000"
.LASF236:
	.ascii	"Channel\000"
.LASF171:
	.ascii	"tag_EP\000"
.LASF159:
	.ascii	"IC_48mA\000"
.LASF246:
	.ascii	"Result\000"
.LASF150:
	.ascii	"tag_ICVAL\000"
.LASF85:
	.ascii	"_current_category\000"
.LASF219:
	.ascii	"PMU_SetPWRKEYLongPressFunction\000"
.LASF203:
	.ascii	"Size\000"
.LASF108:
	.ascii	"_unused_rand\000"
.LASF2:
	.ascii	"signed char\000"
.LASF16:
	.ascii	"uint8_t\000"
.LASF251:
	.ascii	"ISense\000"
.LASF154:
	.ascii	"IC_16mA\000"
.LASF132:
	.ascii	"boolean\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF255:
	.ascii	"ChargeLevel\000"
.LASF180:
	.ascii	"USB_EPNUM\000"
.LASF78:
	.ascii	"_reent\000"
.LASF253:
	.ascii	"RechargeTimeout\000"
.LASF249:
	.ascii	"ChargerTimer\000"
.LASF190:
	.ascii	"Flags\000"
.LASF33:
	.ascii	"char\000"
.LASF57:
	.ascii	"_fns\000"
.LASF148:
	.ascii	"ISINK_CHTOTAL\000"
.LASF69:
	.ascii	"_close\000"
.LASF222:
	.ascii	"PMU_SetChargerWDTEnabled\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF262:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\pmu.c\000"
.LASF80:
	.ascii	"_stdin\000"
.LASF194:
	.ascii	"Limit\000"
.LASF215:
	.ascii	"PMU_InterruptHandler\000"
.LASF207:
	.ascii	"tmpData\000"
.LASF197:
	.ascii	"TCURRLIMIT\000"
.LASF206:
	.ascii	"Index\000"
.LASF130:
	.ascii	"false\000"
.LASF134:
	.ascii	"tag_ListItem\000"
.LASF65:
	.ascii	"_cookie\000"
.LASF178:
	.ascii	"USB_EP1OUT\000"
.LASF38:
	.ascii	"_wds\000"
.LASF156:
	.ascii	"IC_24mA\000"
.LASF97:
	.ascii	"_sig_func\000"
.LASF143:
	.ascii	"TVMC\000"
.LASF73:
	.ascii	"_offset\000"
.LASF94:
	.ascii	"_cvtbuf\000"
.LASF186:
	.ascii	"TMRFLAGS\000"
.LASF175:
	.ascii	"USB_EP3IN\000"
.LASF243:
	.ascii	"PMU_SetVoltageVMC\000"
.LASF91:
	.ascii	"_p5s\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF61:
	.ascii	"__sFILE\000"
.LASF87:
	.ascii	"__sdidinit\000"
.LASF77:
	.ascii	"_flags2\000"
.LASF184:
	.ascii	"TF_AUTOREPEAT\000"
.LASF22:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF218:
	.ascii	"PMU_SetPWRKEYHandler\000"
.LASF232:
	.ascii	"PMU_DisableISINKs\000"
.LASF79:
	.ascii	"_errno\000"
.LASF212:
	.ascii	"PMU_ChargerTimerHandler\000"
.LASF119:
	.ascii	"_signal_buf\000"
.LASF172:
	.ascii	"USB_EP0\000"
.LASF200:
	.ascii	"ParamIndex\000"
.LASF39:
	.ascii	"_Bigint\000"
.LASF153:
	.ascii	"IC_12mA\000"
.LASF224:
	.ascii	"PMU_IsPowerKeyPressed\000"
.LASF36:
	.ascii	"_maxwds\000"
.LASF223:
	.ascii	"PMU_SetChargerWDTInterval\000"
.LASF191:
	.ascii	"Interval\000"
.LASF88:
	.ascii	"__cleanup\000"
.LASF157:
	.ascii	"IC_32mA\000"
.LASF96:
	.ascii	"_atexit0\000"
.LASF144:
	.ascii	"tag_VMC\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF84:
	.ascii	"_emergency\000"
.LASF12:
	.ascii	"long long int\000"
.LASF102:
	.ascii	"_niobs\000"
.LASF98:
	.ascii	"__sglue\000"
.LASF260:
	.ascii	"BatCurrentLimits\000"
.LASF128:
	.ascii	"_nmalloc\000"
.LASF112:
	.ascii	"_gamma_signgam\000"
.LASF225:
	.ascii	"PMU_IsChargerConnected\000"
.LASF202:
	.ascii	"PMU_FilterADCMeasures\000"
.LASF86:
	.ascii	"_current_locale\000"
.LASF92:
	.ascii	"_freelist\000"
.LASF103:
	.ascii	"_iobs\000"
.LASF101:
	.ascii	"_glue\000"
.LASF37:
	.ascii	"_sign\000"
.LASF192:
	.ascii	"StartTicks\000"
.LASF152:
	.ascii	"IC_8mA\000"
.LASF216:
	.ascii	"PMU_PWRKeyInterruptHandler\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF188:
	.ascii	"tag_TIMER\000"
.LASF133:
	.ascii	"TDLITEM\000"
.LASF199:
	.ascii	"Enable\000"
.LASF155:
	.ascii	"IC_20mA\000"
.LASF126:
	.ascii	"_h_errno\000"
.LASF254:
	.ascii	"PWRKEYAppHandler\000"
.LASF158:
	.ascii	"IC_40mA\000"
.LASF124:
	.ascii	"_wcrtomb_state\000"
.LASF247:
	.ascii	"PrevChargerState\000"
.LASF44:
	.ascii	"__tm_mday\000"
.LASF162:
	.ascii	"LPF_REBOOT\000"
.LASF95:
	.ascii	"_new\000"
.LASF70:
	.ascii	"_ubuf\000"
.LASF82:
	.ascii	"_stderr\000"
.LASF231:
	.ascii	"PMU_SetVibrationOutput\000"
.LASF117:
	.ascii	"_wctomb_state\000"
.LASF76:
	.ascii	"_mbstate\000"
.LASF235:
	.ascii	"PMU_SetISINKOutput\000"
.LASF113:
	.ascii	"_rand_next\000"
.LASF161:
	.ascii	"tag_LPFUNC\000"
.LASF62:
	.ascii	"_flags\000"
.LASF160:
	.ascii	"ICVAL\000"
.LASF189:
	.ascii	"ListHeader\000"
.LASF176:
	.ascii	"USB_EP4IN\000"
.LASF210:
	.ascii	"tmpADCValues\000"
.LASF138:
	.ascii	"pDLITEM\000"
.LASF55:
	.ascii	"_atexit\000"
.LASF248:
	.ascii	"BatteryCharging\000"
.LASF29:
	.ascii	"__count\000"
.LASF177:
	.ascii	"USB_EPMAXINDEX\000"
.LASF187:
	.ascii	"pTIMER\000"
.LASF47:
	.ascii	"__tm_wday\000"
.LASF21:
	.ascii	"long double\000"
.LASF48:
	.ascii	"__tm_yday\000"
.LASF105:
	.ascii	"_seed\000"
.LASF68:
	.ascii	"_seek\000"
.LASF24:
	.ascii	"_fpos_t\000"
.LASF27:
	.ascii	"__wchb\000"
.LASF205:
	.ascii	"Delta\000"
.LASF145:
	.ascii	"tag_ISINKCHNL\000"
.LASF116:
	.ascii	"_mbtowc_state\000"
.LASF228:
	.ascii	"PMU_GetBatteryChargeLevel\000"
.LASF0:
	.ascii	"__int8_t\000"
.LASF244:
	.ascii	"PMU_GetSelectedVoltageVMC\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF18:
	.ascii	"uint16_t\000"
.LASF241:
	.ascii	"PMU_TurnOnVMC\000"
.LASF52:
	.ascii	"_dso_handle\000"
.LASF104:
	.ascii	"_rand48\000"
.LASF81:
	.ascii	"_stdout\000"
.LASF72:
	.ascii	"_blksize\000"
.LASF59:
	.ascii	"_base\000"
.LASF109:
	.ascii	"_strtok_last\000"
.LASF240:
	.ascii	"PMU_TurnOnVUSB\000"
.LASF122:
	.ascii	"_mbrtowc_state\000"
.LASF165:
	.ascii	"tag_VLINDEX\000"
.LASF32:
	.ascii	"_flock_t\000"
.LASF100:
	.ascii	"__FILE\000"
.LASF4:
	.ascii	"__int16_t\000"
.LASF151:
	.ascii	"IC_4mA\000"
.LASF31:
	.ascii	"_mbstate_t\000"
.LASF258:
	.ascii	"MathISenseArray\000"
.LASF114:
	.ascii	"_r48\000"
.LASF227:
	.ascii	"PMU_GetBatteryVoltageMV\000"
.LASF25:
	.ascii	"wint_t\000"
.LASF139:
	.ascii	"VMC_VO18V\000"
.LASF183:
	.ascii	"TF_ENABLED\000"
.LASF204:
	.ascii	"AverageSize\000"
.LASF35:
	.ascii	"_next\000"
.LASF74:
	.ascii	"_data\000"
.LASF166:
	.ascii	"LCDIF_LAYER0\000"
.LASF167:
	.ascii	"LCDIF_LAYER1\000"
.LASF168:
	.ascii	"LCDIF_LAYER2\000"
.LASF169:
	.ascii	"LCDIF_LAYER3\000"
.LASF229:
	.ascii	"PMU_EnableUSBDLMode\000"
.LASF163:
	.ascii	"LPF_SHUTDOWN\000"
.LASF198:
	.ascii	"TestValue\000"
.LASF208:
	.ascii	"PMU_ChargerEnable\000"
.LASF136:
	.ascii	"Next\000"
.LASF137:
	.ascii	"Data\000"
.LASF115:
	.ascii	"_mblen_state\000"
.LASF5:
	.ascii	"short int\000"
.LASF135:
	.ascii	"Prev\000"
.LASF195:
	.ascii	"BitValue\000"
.LASF230:
	.ascii	"PMU_DisableUSBDLMode\000"
.LASF17:
	.ascii	"int16_t\000"
.LASF53:
	.ascii	"_fntypes\000"
.LASF146:
	.ascii	"ISINK_CH0\000"
.LASF147:
	.ascii	"ISINK_CH1\000"
.LASF226:
	.ascii	"PMU_IsBatteryCharging\000"
.LASF131:
	.ascii	"true\000"
.LASF46:
	.ascii	"__tm_year\000"
.LASF238:
	.ascii	"PMU_SetISINKParameters\000"
.LASF257:
	.ascii	"MathVBatArray\000"
.LASF64:
	.ascii	"_lbfsize\000"
.LASF83:
	.ascii	"_inc\000"
.LASF56:
	.ascii	"_ind\000"
.LASF179:
	.ascii	"USB_EP2OUT\000"
.LASF170:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF58:
	.ascii	"__sbuf\000"
.LASF54:
	.ascii	"_is_cxa\000"
.LASF127:
	.ascii	"_nextf\000"
.LASF34:
	.ascii	"__ULong\000"
.LASF239:
	.ascii	"Value\000"
.LASF141:
	.ascii	"VMC_VO30V\000"
.LASF20:
	.ascii	"uint32_t\000"
.LASF89:
	.ascii	"_result\000"
.LASF217:
	.ascii	"intflags\000"
.LASF149:
	.ascii	"ISINKCHNL\000"
.LASF23:
	.ascii	"_off_t\000"
.LASF107:
	.ascii	"_add\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF43:
	.ascii	"__tm_hour\000"
.LASF213:
	.ascii	"Timer\000"
.LASF123:
	.ascii	"_mbsrtowcs_state\000"
.LASF234:
	.ascii	"UsePWM\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF220:
	.ascii	"Function\000"
.LASF140:
	.ascii	"VMC_VO28V\000"
.LASF51:
	.ascii	"_fnargs\000"
.LASF49:
	.ascii	"__tm_isdst\000"
.LASF209:
	.ascii	"PMU_MeasureChargeParams\000"
.LASF181:
	.ascii	"tag_MRFLAGS\000"
.LASF201:
	.ascii	"PMU_GetChargingParams\000"
.LASF42:
	.ascii	"__tm_min\000"
.LASF182:
	.ascii	"TF_NONE\000"
.LASF120:
	.ascii	"_getdate_err\000"
.LASF211:
	.ascii	"tmpValue\000"
.LASF142:
	.ascii	"VMC_VO33V\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
