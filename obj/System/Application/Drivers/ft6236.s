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
	.file	"ft6236.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	FT6236_PenPressed,2,4
	.comm	FT6326_PenCoordinates,8,4
	.section	.text.FT6236_ReadData,"ax",%progbits
	.align	2
	.global	FT6236_ReadData
	.code	16
	.thumb_func
	.type	FT6236_ReadData, %function
FT6236_ReadData:
.LFB1:
	.file 1 "Source\\Application\\Drivers\\ft6236.c"
	.loc 1 45 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 376
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #376
	.cfi_def_cfa_offset 384
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, .L153
	movs	r2, #188
	lsls	r2, r2, #1
	mov	ip, r2
	add	ip, ip, r7
	add	r3, r3, ip
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 46 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L2
	.loc 1 46 0 discriminator 1
	movs	r3, #0
	bl	.L3	@ far jump
.L2:
	.loc 1 47 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.LCB32
	bl	.L4	@far jump
.LCB32:
.LBB2:
.LBB3:
	.loc 1 51 0
	movs	r3, #120
	adds	r3, r3, #255
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	movs	r2, #184
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #112
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	strb	r2, [r3]
.LBB4:
	movs	r3, #15
	movs	r2, #164
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #164
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L5
	.loc 1 51 0 is_stmt 0 discriminator 1
	ldr	r3, .L153+4
	movs	r1, #1
	movs	r2, #164
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L6
.L5:
	.loc 1 51 0 discriminator 2
	movs	r3, #164
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L6
	.loc 1 51 0 discriminator 4
	ldr	r3, .L153+8
	movs	r2, #164
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L6:
.LBE4:
.LBB5:
	.loc 1 51 0 discriminator 6
	movs	r3, #14
	movs	r2, #162
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #162
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L7
	.loc 1 51 0 discriminator 7
	ldr	r3, .L153+4
	movs	r1, #1
	movs	r2, #162
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L8
.L7:
	.loc 1 51 0 discriminator 8
	movs	r3, #162
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L8
	.loc 1 51 0 discriminator 10
	ldr	r3, .L153+8
	movs	r2, #162
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L8:
.LBE5:
	.loc 1 51 0 discriminator 12
	movs	r0, #1
	bl	USC_Pause_us
.LBB6:
	movs	r3, #15
	movs	r2, #160
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #160
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L9
	.loc 1 51 0 discriminator 13
	movs	r2, #1
	movs	r3, #160
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #158
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L153+12
	movs	r2, #158
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L10
.L9:
	.loc 1 51 0 discriminator 14
	movs	r3, #160
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L10
	.loc 1 51 0 discriminator 16
	movs	r3, #160
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #158
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L153+16
	movs	r2, #158
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L10:
.LBE6:
.LBB7:
	.loc 1 51 0 discriminator 18
	movs	r3, #15
	movs	r2, #156
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #156
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L11
	.loc 1 51 0 discriminator 19
	ldr	r3, .L153+20
	movs	r1, #1
	movs	r2, #156
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L12
.L11:
	.loc 1 51 0 discriminator 20
	movs	r3, #156
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L12
	.loc 1 51 0 discriminator 22
	ldr	r3, .L153+24
	movs	r2, #156
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L12:
.LBE7:
	.loc 1 51 0 discriminator 24
	movs	r0, #1
	bl	USC_Pause_us
.LBB8:
	movs	r3, #14
	movs	r2, #154
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #154
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L13
	.loc 1 51 0 discriminator 25
	movs	r2, #1
	movs	r3, #154
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #152
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L153+12
	movs	r2, #152
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L14
.L13:
	.loc 1 51 0 discriminator 26
	movs	r3, #154
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L14
	.loc 1 51 0 discriminator 28
	movs	r3, #154
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #152
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L153+16
	movs	r2, #152
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L14:
.LBE8:
.LBB9:
	.loc 1 51 0 discriminator 30
	movs	r3, #14
	movs	r2, #150
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #150
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L15
	.loc 1 51 0 discriminator 31
	ldr	r3, .L153+20
	movs	r1, #1
	movs	r2, #150
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L16
.L15:
	.loc 1 51 0 discriminator 32
	movs	r3, #150
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L16
	.loc 1 51 0 discriminator 34
	ldr	r3, .L153+24
	movs	r2, #150
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L16:
.LBE9:
	.loc 1 51 0 discriminator 36
	movs	r0, #1
	bl	USC_Pause_us
	bl	.L17	@ far jump
.L143:
.LBB10:
	.loc 1 51 0 is_stmt 1 discriminator 371
	movs	r3, #104
	adds	r3, r3, #255
	adds	r3, r7, r3
	movs	r2, #112
	strb	r2, [r3]
	movs	r3, #0
	movs	r2, #180
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L18
.L32:
	.loc 1 51 0 is_stmt 0 discriminator 75
	movs	r3, #104
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L19
.LBB11:
	.loc 1 51 0 discriminator 39
	movs	r3, #15
	movs	r2, #148
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #148
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L20
	.loc 1 51 0 discriminator 41
	ldr	r3, .L153+4
	movs	r1, #1
	movs	r2, #148
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L22
.L20:
	.loc 1 51 0 discriminator 42
	movs	r3, #148
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	ble	.LCB409
	b	.L22	@long jump
.LCB409:
	.loc 1 51 0 discriminator 43
	ldr	r3, .L153+8
	movs	r2, #148
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L22
.L19:
.LBE11:
.LBB12:
	.loc 1 51 0 discriminator 40
	movs	r3, #15
	movs	r2, #146
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #146
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L23
	.loc 1 51 0 discriminator 44
	movs	r2, #1
	movs	r3, #146
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #144
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L153+12
	movs	r2, #144
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L24
.L23:
	.loc 1 51 0 discriminator 45
	movs	r3, #146
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L24
	.loc 1 51 0 discriminator 47
	movs	r3, #146
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #144
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L153+16
	movs	r2, #144
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L24:
.LBE12:
.LBB13:
	.loc 1 51 0 discriminator 49
	movs	r3, #15
	movs	r2, #142
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #142
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L25
	.loc 1 51 0 discriminator 50
	ldr	r3, .L153+20
	movs	r1, #1
	movs	r2, #142
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L22
.L154:
	.align	2
.L153:
	.word	-361
	.word	-1610481656
	.word	-1610481640
	.word	-1610480888
	.word	-1610480872
	.word	-1610481660
	.word	-1610481644
.L25:
	.loc 1 51 0 discriminator 51
	movs	r3, #142
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L22
	.loc 1 51 0 discriminator 53
	ldr	r3, .L155
	movs	r2, #142
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L22:
.LBE13:
	.loc 1 51 0 discriminator 55
	movs	r0, #1
	bl	USC_Pause_us
.LBB14:
	movs	r3, #14
	movs	r2, #140
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #140
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L26
	.loc 1 51 0 discriminator 56
	ldr	r3, .L155+4
	movs	r1, #1
	movs	r2, #140
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L27
.L26:
	.loc 1 51 0 discriminator 57
	movs	r3, #140
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L27
	.loc 1 51 0 discriminator 59
	ldr	r3, .L155+8
	movs	r2, #140
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L27:
.LBE14:
	.loc 1 51 0 discriminator 61
	movs	r0, #2
	bl	USC_Pause_us
.LBB15:
	movs	r3, #14
	movs	r2, #138
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #138
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L28
	.loc 1 51 0 discriminator 62
	movs	r2, #1
	movs	r3, #138
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #136
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L155+12
	movs	r2, #136
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L29
.L28:
	.loc 1 51 0 discriminator 63
	movs	r3, #138
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L29
	.loc 1 51 0 discriminator 65
	movs	r3, #138
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #136
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L155+16
	movs	r2, #136
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L29:
.LBE15:
.LBB16:
	.loc 1 51 0 discriminator 67
	movs	r3, #14
	movs	r2, #134
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #134
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L30
	.loc 1 51 0 discriminator 68
	ldr	r3, .L155+20
	movs	r1, #1
	movs	r2, #134
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L31
.L30:
	.loc 1 51 0 discriminator 69
	movs	r3, #134
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L31
	.loc 1 51 0 discriminator 71
	ldr	r3, .L155
	movs	r2, #134
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L31:
.LBE16:
	.loc 1 51 0 discriminator 73
	movs	r0, #1
	bl	USC_Pause_us
	movs	r3, #104
	adds	r3, r3, #255
	adds	r2, r7, r3
	movs	r3, #104
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	adds	r3, r3, r3
	strb	r3, [r2]
	movs	r3, #180
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	adds	r3, r3, #1
	movs	r2, #180
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
.L18:
	.loc 1 51 0 discriminator 74
	movs	r3, #180
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.LCB720
	b	.L32	@long jump
.LCB720:
.LBB17:
	.loc 1 51 0 discriminator 76
	movs	r3, #15
	movs	r2, #132
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #132
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L33
	.loc 1 51 0 discriminator 77
	ldr	r3, .L155+4
	movs	r1, #1
	movs	r2, #132
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L34
.L33:
	.loc 1 51 0 discriminator 78
	movs	r3, #132
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L34
	.loc 1 51 0 discriminator 80
	ldr	r3, .L155+8
	movs	r2, #132
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L34:
.LBE17:
	.loc 1 51 0 discriminator 82
	movs	r0, #2
	bl	USC_Pause_us
.LBB18:
	movs	r3, #14
	adds	r2, r7, #5
	adds	r2, r2, #255
	str	r3, [r2]
	adds	r3, r7, #5
	adds	r3, r3, #255
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L35
	.loc 1 51 0 discriminator 83
	ldr	r3, .L155+4
	movs	r1, #1
	adds	r2, r7, #5
	adds	r2, r2, #255
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L36
.L35:
	.loc 1 51 0 discriminator 84
	adds	r3, r7, #5
	adds	r3, r3, #255
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L36
	.loc 1 51 0 discriminator 86
	ldr	r3, .L155+8
	adds	r2, r7, #5
	adds	r2, r2, #255
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L36:
.LBE18:
	.loc 1 51 0 discriminator 88
	movs	r0, #2
	bl	USC_Pause_us
.LBB19:
	movs	r3, #15
	adds	r2, r7, #1
	adds	r2, r2, #255
	str	r3, [r2]
	adds	r3, r7, #1
	adds	r3, r3, #255
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L37
	.loc 1 51 0 discriminator 89
	ldr	r3, .L155+24
	ldr	r2, [r3]
	adds	r3, r7, #1
	adds	r3, r3, #255
	ldr	r3, [r3]
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L38
.L37:
	.loc 1 51 0 discriminator 90
	adds	r3, r7, #1
	adds	r3, r3, #255
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L39
	.loc 1 51 0 discriminator 92
	ldr	r3, .L155+28
	ldr	r2, [r3]
	adds	r3, r7, #1
	adds	r3, r3, #255
	ldr	r3, [r3]
	subs	r3, r3, #32
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	beq	.L39
	.loc 1 51 0 discriminator 94
	movs	r3, #1
	b	.L38
.L39:
	.loc 1 51 0 discriminator 95
	movs	r3, #0
.L38:
.LBE19:
	.loc 1 51 0 discriminator 98
	movs	r2, #180
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
.LBB20:
	movs	r3, #14
	movs	r2, #252
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #252
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L41
	.loc 1 51 0 discriminator 99
	movs	r2, #1
	movs	r3, #252
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #248
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L155+12
	movs	r2, #248
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L42
.L41:
	.loc 1 51 0 discriminator 100
	movs	r3, #252
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L42
	.loc 1 51 0 discriminator 102
	movs	r3, #252
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #248
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L155+16
	movs	r2, #248
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L42:
.LBE20:
.LBB21:
	.loc 1 51 0 discriminator 104
	movs	r3, #14
	movs	r2, #244
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #244
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L43
	.loc 1 51 0 discriminator 105
	ldr	r3, .L155+20
	movs	r1, #1
	movs	r2, #244
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L44
.L43:
	.loc 1 51 0 discriminator 106
	movs	r3, #244
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L44
	.loc 1 51 0 discriminator 108
	ldr	r3, .L155
	movs	r2, #244
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L44:
.LBE21:
	.loc 1 51 0 discriminator 110
	movs	r0, #2
	bl	USC_Pause_us
	movs	r3, #180
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #120
	adds	r3, r3, #255
	adds	r3, r7, r3
	strb	r2, [r3]
.LBE10:
	movs	r3, #120
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.LCB973
	bl	.L152	@far jump
.LCB973:
.LBB22:
	.loc 1 51 0 discriminator 111
	movs	r3, #96
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldr	r2, .L155+32
	movs	r1, #188
	lsls	r1, r1, #1
	mov	ip, r1
	add	ip, ip, r7
	add	r2, r2, ip
	ldrb	r2, [r2]
	strb	r2, [r3]
	movs	r3, #0
	movs	r2, #176
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L47
.L61:
	.loc 1 51 0 discriminator 149
	movs	r3, #96
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L48
.LBB23:
	.loc 1 51 0 discriminator 113
	movs	r3, #15
	movs	r2, #240
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #240
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L49
	.loc 1 51 0 discriminator 115
	ldr	r3, .L155+4
	movs	r1, #1
	movs	r2, #240
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L51
.L49:
	.loc 1 51 0 discriminator 116
	movs	r3, #240
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L51
	.loc 1 51 0 discriminator 117
	ldr	r3, .L155+8
	movs	r2, #240
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L51
.L156:
	.align	2
.L155:
	.word	-1610481644
	.word	-1610481656
	.word	-1610481640
	.word	-1610480888
	.word	-1610480872
	.word	-1610481660
	.word	-1610480640
	.word	-1610480624
	.word	-361
.L48:
.LBE23:
.LBB24:
	.loc 1 51 0 discriminator 114
	movs	r3, #15
	movs	r2, #236
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #236
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L52
	.loc 1 51 0 discriminator 118
	movs	r2, #1
	movs	r3, #236
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #232
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L157
	movs	r2, #232
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L53
.L52:
	.loc 1 51 0 discriminator 119
	movs	r3, #236
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L53
	.loc 1 51 0 discriminator 121
	movs	r3, #236
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #232
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L157+4
	movs	r2, #232
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L53:
.LBE24:
.LBB25:
	.loc 1 51 0 discriminator 123
	movs	r3, #15
	movs	r2, #228
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #228
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L54
	.loc 1 51 0 discriminator 124
	ldr	r3, .L157+8
	movs	r1, #1
	movs	r2, #228
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L51
.L54:
	.loc 1 51 0 discriminator 125
	movs	r3, #228
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L51
	.loc 1 51 0 discriminator 127
	ldr	r3, .L157+12
	movs	r2, #228
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L51:
.LBE25:
	.loc 1 51 0 discriminator 129
	movs	r0, #1
	bl	USC_Pause_us
.LBB26:
	movs	r3, #14
	movs	r2, #224
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L55
	.loc 1 51 0 discriminator 130
	ldr	r3, .L157+16
	movs	r1, #1
	movs	r2, #224
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L56
.L55:
	.loc 1 51 0 discriminator 131
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L56
	.loc 1 51 0 discriminator 133
	ldr	r3, .L157+20
	movs	r2, #224
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L56:
.LBE26:
	.loc 1 51 0 discriminator 135
	movs	r0, #2
	bl	USC_Pause_us
.LBB27:
	movs	r3, #14
	movs	r2, #220
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #220
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L57
	.loc 1 51 0 discriminator 136
	movs	r2, #1
	movs	r3, #220
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #216
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L157
	movs	r2, #216
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L58
.L57:
	.loc 1 51 0 discriminator 137
	movs	r3, #220
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L58
	.loc 1 51 0 discriminator 139
	movs	r3, #220
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #216
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L157+4
	movs	r2, #216
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L58:
.LBE27:
.LBB28:
	.loc 1 51 0 discriminator 141
	movs	r3, #14
	movs	r2, #212
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #212
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L59
	.loc 1 51 0 discriminator 142
	ldr	r3, .L157+8
	movs	r1, #1
	movs	r2, #212
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L60
.L59:
	.loc 1 51 0 discriminator 143
	movs	r3, #212
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L60
	.loc 1 51 0 discriminator 145
	ldr	r3, .L157+12
	movs	r2, #212
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L60:
.LBE28:
	.loc 1 51 0 discriminator 147
	movs	r0, #1
	bl	USC_Pause_us
	movs	r3, #96
	adds	r3, r3, #255
	adds	r2, r7, r3
	movs	r3, #96
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	adds	r3, r3, r3
	strb	r3, [r2]
	movs	r3, #176
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	adds	r3, r3, #1
	movs	r2, #176
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
.L47:
	.loc 1 51 0 discriminator 148
	movs	r3, #176
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.LCB1308
	b	.L61	@long jump
.LCB1308:
.LBB29:
	.loc 1 51 0 discriminator 150
	movs	r3, #15
	movs	r2, #208
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #208
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L62
	.loc 1 51 0 discriminator 151
	ldr	r3, .L157+16
	movs	r1, #1
	movs	r2, #208
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L63
.L62:
	.loc 1 51 0 discriminator 152
	movs	r3, #208
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L63
	.loc 1 51 0 discriminator 154
	ldr	r3, .L157+20
	movs	r2, #208
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L63:
.LBE29:
	.loc 1 51 0 discriminator 156
	movs	r0, #2
	bl	USC_Pause_us
.LBB30:
	movs	r3, #14
	movs	r2, #204
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #204
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L64
	.loc 1 51 0 discriminator 157
	ldr	r3, .L157+16
	movs	r1, #1
	movs	r2, #204
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L65
.L64:
	.loc 1 51 0 discriminator 158
	movs	r3, #204
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L65
	.loc 1 51 0 discriminator 160
	ldr	r3, .L157+20
	movs	r2, #204
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L65:
.LBE30:
	.loc 1 51 0 discriminator 162
	movs	r0, #2
	bl	USC_Pause_us
.LBB31:
	movs	r3, #15
	movs	r2, #200
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #200
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L66
	.loc 1 51 0 discriminator 163
	ldr	r3, .L157+24
	ldr	r2, [r3]
	movs	r3, #200
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L67
.L66:
	.loc 1 51 0 discriminator 164
	movs	r3, #200
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L68
	.loc 1 51 0 discriminator 166
	ldr	r3, .L157+28
	ldr	r2, [r3]
	movs	r3, #200
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	beq	.L68
	.loc 1 51 0 discriminator 168
	movs	r3, #1
	b	.L67
.L68:
	.loc 1 51 0 discriminator 169
	movs	r3, #0
.L67:
.LBE31:
	.loc 1 51 0 discriminator 172
	movs	r2, #176
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
.LBB32:
	movs	r3, #14
	movs	r2, #196
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #196
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L70
	.loc 1 51 0 discriminator 173
	movs	r2, #1
	movs	r3, #196
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #192
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L157
	movs	r2, #192
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L71
.L70:
	.loc 1 51 0 discriminator 174
	movs	r3, #196
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L71
	.loc 1 51 0 discriminator 176
	movs	r3, #196
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #192
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L157+4
	movs	r2, #192
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L71:
.LBE32:
.LBB33:
	.loc 1 51 0 discriminator 178
	movs	r3, #14
	movs	r2, #188
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #188
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L72
	.loc 1 51 0 discriminator 179
	ldr	r3, .L157+8
	movs	r1, #1
	movs	r2, #188
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L73
.L72:
	.loc 1 51 0 discriminator 180
	movs	r3, #188
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L73
	.loc 1 51 0 discriminator 182
	ldr	r3, .L157+12
	movs	r2, #188
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L73:
.LBE33:
	.loc 1 51 0 discriminator 184
	movs	r0, #2
	bl	USC_Pause_us
	movs	r3, #176
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #120
	adds	r3, r3, #255
	adds	r3, r7, r3
	strb	r2, [r3]
.LBE22:
	movs	r3, #120
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.LCB1556
	bl	.L152	@far jump
.LCB1556:
.LBB34:
	.loc 1 51 0 discriminator 185
	movs	r3, #14
	movs	r2, #184
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #184
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L75
	.loc 1 51 0 discriminator 186
	ldr	r3, .L157+16
	movs	r1, #1
	movs	r2, #184
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L76
.L158:
	.align	2
.L157:
	.word	-1610480888
	.word	-1610480872
	.word	-1610481660
	.word	-1610481644
	.word	-1610481656
	.word	-1610481640
	.word	-1610480640
	.word	-1610480624
.L75:
	.loc 1 51 0 discriminator 187
	movs	r3, #184
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L76
	.loc 1 51 0 discriminator 189
	ldr	r3, .L159
	movs	r2, #184
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L76:
.LBE34:
	.loc 1 51 0 discriminator 191
	movs	r0, #1
	bl	USC_Pause_us
.LBB35:
	movs	r3, #15
	movs	r2, #180
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #180
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L77
	.loc 1 51 0 discriminator 192
	movs	r2, #1
	movs	r3, #180
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #176
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L159+4
	movs	r2, #176
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L78
.L77:
	.loc 1 51 0 discriminator 193
	movs	r3, #180
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L78
	.loc 1 51 0 discriminator 195
	movs	r3, #180
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #176
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L159+8
	movs	r2, #176
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L78:
.LBE35:
.LBB36:
	.loc 1 51 0 discriminator 197
	movs	r3, #15
	movs	r2, #172
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #172
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L79
	.loc 1 51 0 discriminator 198
	ldr	r3, .L159+12
	movs	r1, #1
	movs	r2, #172
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L80
.L79:
	.loc 1 51 0 discriminator 199
	movs	r3, #172
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L80
	.loc 1 51 0 discriminator 201
	ldr	r3, .L159+16
	movs	r2, #172
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L80:
.LBE36:
	.loc 1 51 0 discriminator 203
	movs	r0, #1
	bl	USC_Pause_us
.LBB37:
	movs	r3, #14
	movs	r2, #168
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #168
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L81
	.loc 1 51 0 discriminator 204
	movs	r2, #1
	movs	r3, #168
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #164
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L159+4
	movs	r2, #164
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L82
.L81:
	.loc 1 51 0 discriminator 205
	movs	r3, #168
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L82
	.loc 1 51 0 discriminator 207
	movs	r3, #168
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #164
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L159+8
	movs	r2, #164
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L82:
.LBE37:
.LBB38:
	.loc 1 51 0 discriminator 209
	movs	r3, #14
	movs	r2, #160
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #160
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L83
	.loc 1 51 0 discriminator 210
	ldr	r3, .L159+12
	movs	r1, #1
	movs	r2, #160
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L84
.L83:
	.loc 1 51 0 discriminator 211
	movs	r3, #160
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L84
	.loc 1 51 0 discriminator 213
	ldr	r3, .L159+16
	movs	r2, #160
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L84:
.LBE38:
	.loc 1 51 0 discriminator 215
	movs	r0, #1
	bl	USC_Pause_us
.LBB39:
	movs	r3, #88
	adds	r3, r3, #255
	adds	r3, r7, r3
	movs	r2, #113
	strb	r2, [r3]
	movs	r3, #0
	movs	r2, #172
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L85
.L99:
	.loc 1 51 0 discriminator 253
	movs	r3, #88
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L86
.LBB40:
	.loc 1 51 0 discriminator 217
	movs	r3, #15
	movs	r2, #156
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #156
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L87
	.loc 1 51 0 discriminator 219
	ldr	r3, .L159+20
	movs	r1, #1
	movs	r2, #156
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L89
.L87:
	.loc 1 51 0 discriminator 220
	movs	r3, #156
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L89
	.loc 1 51 0 discriminator 221
	ldr	r3, .L159
	movs	r2, #156
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L89
.L86:
.LBE40:
.LBB41:
	.loc 1 51 0 discriminator 218
	movs	r3, #15
	movs	r2, #152
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L90
	.loc 1 51 0 discriminator 222
	movs	r2, #1
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #148
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L159+4
	movs	r2, #148
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L91
.L90:
	.loc 1 51 0 discriminator 223
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L91
	.loc 1 51 0 discriminator 225
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #148
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L159+8
	movs	r2, #148
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L91:
.LBE41:
.LBB42:
	.loc 1 51 0 discriminator 227
	movs	r3, #15
	movs	r2, #144
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #144
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L92
	.loc 1 51 0 discriminator 228
	ldr	r3, .L159+12
	movs	r1, #1
	movs	r2, #144
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L89
.L92:
	.loc 1 51 0 discriminator 229
	movs	r3, #144
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L89
	.loc 1 51 0 discriminator 231
	ldr	r3, .L159+16
	movs	r2, #144
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L89:
.LBE42:
	.loc 1 51 0 discriminator 233
	movs	r0, #1
	bl	USC_Pause_us
.LBB43:
	movs	r3, #14
	movs	r2, #140
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #140
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L93
	.loc 1 51 0 discriminator 234
	ldr	r3, .L159+20
	movs	r1, #1
	movs	r2, #140
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L94
.L93:
	.loc 1 51 0 discriminator 235
	movs	r3, #140
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L94
	.loc 1 51 0 discriminator 237
	ldr	r3, .L159
	movs	r2, #140
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L94:
.LBE43:
	.loc 1 51 0 discriminator 239
	movs	r0, #2
	bl	USC_Pause_us
.LBB44:
	movs	r3, #14
	movs	r2, #136
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L95
	.loc 1 51 0 discriminator 240
	movs	r2, #1
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #132
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L159+4
	movs	r2, #132
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L96
.L95:
	.loc 1 51 0 discriminator 241
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L96
	.loc 1 51 0 discriminator 243
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #132
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L159+8
	movs	r2, #132
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L96:
.LBE44:
.LBB45:
	.loc 1 51 0 discriminator 245
	movs	r3, #14
	movs	r2, #128
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #128
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L97
	.loc 1 51 0 discriminator 246
	ldr	r3, .L159+12
	movs	r1, #1
	movs	r2, #128
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L98
.L160:
	.align	2
.L159:
	.word	-1610481640
	.word	-1610480888
	.word	-1610480872
	.word	-1610481660
	.word	-1610481644
	.word	-1610481656
.L97:
	.loc 1 51 0 discriminator 247
	movs	r3, #128
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L98
	.loc 1 51 0 discriminator 249
	ldr	r3, .L161
	movs	r2, #128
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L98:
.LBE45:
	.loc 1 51 0 discriminator 251
	movs	r0, #1
	bl	USC_Pause_us
	movs	r3, #88
	adds	r3, r3, #255
	adds	r2, r7, r3
	movs	r3, #88
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	adds	r3, r3, r3
	strb	r3, [r2]
	movs	r3, #172
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	adds	r3, r3, #1
	movs	r2, #172
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
.L85:
	.loc 1 51 0 discriminator 252
	movs	r3, #172
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.LCB2120
	b	.L99	@long jump
.LCB2120:
.LBB46:
	.loc 1 51 0 discriminator 254
	movs	r3, #15
	str	r3, [r7, #124]
	ldr	r3, [r7, #124]
	cmp	r3, #31
	bgt	.L100
	.loc 1 51 0 discriminator 255
	ldr	r3, .L161+4
	movs	r1, #1
	ldr	r2, [r7, #124]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L101
.L100:
	.loc 1 51 0 discriminator 256
	ldr	r3, [r7, #124]
	cmp	r3, #63
	bgt	.L101
	.loc 1 51 0 discriminator 258
	ldr	r3, .L161+8
	ldr	r2, [r7, #124]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L101:
.LBE46:
	.loc 1 51 0 discriminator 260
	movs	r0, #2
	bl	USC_Pause_us
.LBB47:
	movs	r3, #14
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #31
	bgt	.L102
	.loc 1 51 0 discriminator 261
	ldr	r3, .L161+4
	movs	r1, #1
	ldr	r2, [r7, #120]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L103
.L102:
	.loc 1 51 0 discriminator 262
	ldr	r3, [r7, #120]
	cmp	r3, #63
	bgt	.L103
	.loc 1 51 0 discriminator 264
	ldr	r3, .L161+8
	ldr	r2, [r7, #120]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L103:
.LBE47:
	.loc 1 51 0 discriminator 266
	movs	r0, #2
	bl	USC_Pause_us
.LBB48:
	movs	r3, #15
	str	r3, [r7, #116]
	ldr	r3, [r7, #116]
	cmp	r3, #31
	bgt	.L104
	.loc 1 51 0 discriminator 267
	ldr	r3, .L161+12
	ldr	r2, [r3]
	ldr	r3, [r7, #116]
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L105
.L104:
	.loc 1 51 0 discriminator 268
	ldr	r3, [r7, #116]
	cmp	r3, #63
	bgt	.L106
	.loc 1 51 0 discriminator 270
	ldr	r3, .L161+16
	ldr	r2, [r3]
	ldr	r3, [r7, #116]
	subs	r3, r3, #32
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	beq	.L106
	.loc 1 51 0 discriminator 272
	movs	r3, #1
	b	.L105
.L106:
	.loc 1 51 0 discriminator 273
	movs	r3, #0
.L105:
.LBE48:
	.loc 1 51 0 discriminator 276
	movs	r2, #172
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
.LBB49:
	movs	r3, #14
	str	r3, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #31
	bgt	.L108
	.loc 1 51 0 discriminator 277
	movs	r2, #1
	ldr	r3, [r7, #112]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #108]
	ldr	r3, .L161+20
	ldr	r2, [r7, #108]
	str	r2, [r3]
	b	.L109
.L108:
	.loc 1 51 0 discriminator 278
	ldr	r3, [r7, #112]
	cmp	r3, #63
	bgt	.L109
	.loc 1 51 0 discriminator 280
	ldr	r3, [r7, #112]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #108]
	ldr	r3, .L161+24
	ldr	r2, [r7, #108]
	str	r2, [r3]
.L109:
.LBE49:
.LBB50:
	.loc 1 51 0 discriminator 282
	movs	r3, #14
	str	r3, [r7, #104]
	ldr	r3, [r7, #104]
	cmp	r3, #31
	bgt	.L110
	.loc 1 51 0 discriminator 283
	ldr	r3, .L161+28
	movs	r1, #1
	ldr	r2, [r7, #104]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L111
.L110:
	.loc 1 51 0 discriminator 284
	ldr	r3, [r7, #104]
	cmp	r3, #63
	bgt	.L111
	.loc 1 51 0 discriminator 286
	ldr	r3, .L161
	ldr	r2, [r7, #104]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L111:
.LBE50:
	.loc 1 51 0 discriminator 288
	movs	r0, #2
	bl	USC_Pause_us
	movs	r3, #172
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #120
	adds	r3, r3, #255
	adds	r3, r7, r3
	strb	r2, [r3]
.LBE39:
	movs	r3, #120
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.LCB2310
	b	.L152	@long jump
.LCB2310:
	.loc 1 51 0
	b	.L113
.L142:
	.loc 1 51 0 discriminator 366
	movs	r3, #112
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #112
	adds	r2, r2, #255
	adds	r2, r7, r2
	subs	r1, r3, #1
	strb	r1, [r2]
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #120
	adds	r3, r3, #255
	adds	r3, r7, r3
	strb	r2, [r3]
.LBB51:
	movs	r3, #0
	movs	r2, #166
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
.LBB52:
	movs	r3, #15
	str	r3, [r7, #100]
	ldr	r3, [r7, #100]
	cmp	r3, #31
	bgt	.L114
	.loc 1 51 0 discriminator 289
	ldr	r3, .L161+4
	movs	r1, #1
	ldr	r2, [r7, #100]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L115
.L114:
	.loc 1 51 0 discriminator 290
	ldr	r3, [r7, #100]
	cmp	r3, #63
	bgt	.L115
	.loc 1 51 0 discriminator 292
	ldr	r3, .L161+8
	ldr	r2, [r7, #100]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L115:
.LBE52:
	.loc 1 51 0 discriminator 294
	movs	r3, #0
	movs	r2, #168
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L116
.L128:
	.loc 1 51 0 discriminator 328
	movs	r3, #166
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r3, r3, #1
	movs	r2, #166
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
.LBB53:
	movs	r3, #14
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	cmp	r3, #31
	bgt	.L117
	.loc 1 51 0 discriminator 296
	ldr	r3, .L161+4
	movs	r1, #1
	ldr	r2, [r7, #96]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L118
.L117:
	.loc 1 51 0 discriminator 297
	ldr	r3, [r7, #96]
	cmp	r3, #63
	bgt	.L118
	.loc 1 51 0 discriminator 299
	ldr	r3, .L161+8
	ldr	r2, [r7, #96]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L118:
.LBE53:
	.loc 1 51 0 discriminator 301
	movs	r0, #2
	bl	USC_Pause_us
.LBB54:
	movs	r3, #15
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #31
	bgt	.L119
	.loc 1 51 0 discriminator 302
	ldr	r3, .L161+12
	ldr	r2, [r3]
	ldr	r3, [r7, #92]
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L120
.L119:
	.loc 1 51 0 discriminator 303
	ldr	r3, [r7, #92]
	cmp	r3, #63
	bgt	.L121
	.loc 1 51 0 discriminator 305
	ldr	r3, .L161+16
	ldr	r2, [r3]
	ldr	r3, [r7, #92]
	subs	r3, r3, #32
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	beq	.L121
	.loc 1 51 0 discriminator 307
	movs	r3, #1
	b	.L120
.L121:
	.loc 1 51 0 discriminator 308
	movs	r3, #0
.L120:
.LBE54:
	.loc 1 51 0 discriminator 311
	str	r3, [r7, #88]
.LBB55:
	movs	r3, #14
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #31
	bgt	.L123
	.loc 1 51 0 discriminator 312
	movs	r2, #1
	ldr	r3, [r7, #84]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #80]
	ldr	r3, .L161+20
	ldr	r2, [r7, #80]
	str	r2, [r3]
	b	.L124
.L123:
	.loc 1 51 0 discriminator 313
	ldr	r3, [r7, #84]
	cmp	r3, #63
	bgt	.L124
	.loc 1 51 0 discriminator 315
	ldr	r3, [r7, #84]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #80]
	ldr	r3, .L161+24
	ldr	r2, [r7, #80]
	str	r2, [r3]
.L124:
.LBE55:
.LBB56:
	.loc 1 51 0 discriminator 317
	movs	r3, #14
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #31
	bgt	.L125
	.loc 1 51 0 discriminator 318
	ldr	r3, .L161+28
	movs	r1, #1
	ldr	r2, [r7, #76]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L126
.L125:
	.loc 1 51 0 discriminator 319
	ldr	r3, [r7, #76]
	cmp	r3, #63
	bgt	.L126
	.loc 1 51 0 discriminator 321
	ldr	r3, .L161
	ldr	r2, [r7, #76]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L126:
.LBE56:
	.loc 1 51 0 discriminator 323
	movs	r0, #2
	bl	USC_Pause_us
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L127
	.loc 1 51 0 discriminator 324
	movs	r3, #166
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	movs	r2, #1
	orrs	r3, r2
	movs	r2, #166
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
.L127:
	.loc 1 51 0 discriminator 326
	movs	r3, #168
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	adds	r3, r3, #1
	movs	r2, #168
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
.L116:
	.loc 1 51 0 discriminator 327
	movs	r3, #168
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.LCB2553
	b	.L128	@long jump
.LCB2553:
	.loc 1 51 0 discriminator 329
	movs	r3, #120
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L129
.LBB57:
	.loc 1 51 0 discriminator 330
	movs	r3, #15
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	cmp	r3, #31
	bgt	.L130
	.loc 1 51 0 discriminator 332
	ldr	r3, .L161+4
	movs	r1, #1
	ldr	r2, [r7, #72]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L132
.L130:
	.loc 1 51 0 discriminator 333
	ldr	r3, [r7, #72]
	cmp	r3, #63
	bgt	.L132
	.loc 1 51 0 discriminator 334
	ldr	r3, .L161+8
	ldr	r2, [r7, #72]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L132
.L162:
	.align	2
.L161:
	.word	-1610481644
	.word	-1610481656
	.word	-1610481640
	.word	-1610480640
	.word	-1610480624
	.word	-1610480888
	.word	-1610480872
	.word	-1610481660
.L129:
.LBE57:
.LBB58:
	.loc 1 51 0 discriminator 331
	movs	r3, #15
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #31
	bgt	.L133
	.loc 1 51 0 discriminator 335
	movs	r2, #1
	ldr	r3, [r7, #68]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #64]
	ldr	r3, .L163
	ldr	r2, [r7, #64]
	str	r2, [r3]
	b	.L134
.L133:
	.loc 1 51 0 discriminator 336
	ldr	r3, [r7, #68]
	cmp	r3, #63
	bgt	.L134
	.loc 1 51 0 discriminator 338
	ldr	r3, [r7, #68]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #64]
	ldr	r3, .L163+4
	ldr	r2, [r7, #64]
	str	r2, [r3]
.L134:
.LBE58:
.LBB59:
	.loc 1 51 0 discriminator 340
	movs	r3, #15
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #31
	bgt	.L135
	.loc 1 51 0 discriminator 341
	ldr	r3, .L163+8
	movs	r1, #1
	ldr	r2, [r7, #60]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L132
.L135:
	.loc 1 51 0 discriminator 342
	ldr	r3, [r7, #60]
	cmp	r3, #63
	bgt	.L132
	.loc 1 51 0 discriminator 344
	ldr	r3, .L163+12
	ldr	r2, [r7, #60]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L132:
.LBE59:
.LBB60:
	.loc 1 51 0 discriminator 346
	movs	r3, #14
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #31
	bgt	.L136
	.loc 1 51 0 discriminator 347
	ldr	r3, .L163+16
	movs	r1, #1
	ldr	r2, [r7, #56]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L137
.L136:
	.loc 1 51 0 discriminator 348
	ldr	r3, [r7, #56]
	cmp	r3, #63
	bgt	.L137
	.loc 1 51 0 discriminator 350
	ldr	r3, .L163+20
	ldr	r2, [r7, #56]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L137:
.LBE60:
	.loc 1 51 0 discriminator 352
	movs	r0, #2
	bl	USC_Pause_us
.LBB61:
	movs	r3, #14
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #31
	bgt	.L138
	.loc 1 51 0 discriminator 353
	movs	r2, #1
	ldr	r3, [r7, #52]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #48]
	ldr	r3, .L163
	ldr	r2, [r7, #48]
	str	r2, [r3]
	b	.L139
.L138:
	.loc 1 51 0 discriminator 354
	ldr	r3, [r7, #52]
	cmp	r3, #63
	bgt	.L139
	.loc 1 51 0 discriminator 356
	ldr	r3, [r7, #52]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #48]
	ldr	r3, .L163+4
	ldr	r2, [r7, #48]
	str	r2, [r3]
.L139:
.LBE61:
.LBB62:
	.loc 1 51 0 discriminator 358
	movs	r3, #14
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #31
	bgt	.L140
	.loc 1 51 0 discriminator 359
	ldr	r3, .L163+8
	movs	r1, #1
	ldr	r2, [r7, #44]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L141
.L140:
	.loc 1 51 0 discriminator 360
	ldr	r3, [r7, #44]
	cmp	r3, #63
	bgt	.L141
	.loc 1 51 0 discriminator 362
	ldr	r3, .L163+12
	ldr	r2, [r7, #44]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L141:
.LBE62:
	.loc 1 51 0 discriminator 364
	movs	r0, #2
	bl	USC_Pause_us
	movs	r3, #184
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	adds	r2, r3, #1
	movs	r1, #184
	lsls	r1, r1, #1
	adds	r1, r7, r1
	str	r2, [r1]
	movs	r2, #166
	lsls	r2, r2, #1
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	strb	r2, [r3]
.L113:
.LBE51:
	.loc 1 51 0 discriminator 365
	movs	r3, #112
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.LCB2785
	b	.L142	@long jump
.LCB2785:
	.loc 1 51 0 discriminator 367
	movs	r3, #120
	adds	r3, r3, #255
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
.L17:
	.loc 1 51 0 is_stmt 1 discriminator 368
	movs	r3, #112
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L46
	.loc 1 51 0 is_stmt 0 discriminator 369
	movs	r3, #184
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.LCB2804
	bl	.L143	@far jump
.LCB2804:
	b	.L46
.L152:
	.loc 1 51 0 is_stmt 1
	nop
.L46:
	.loc 1 51 0 is_stmt 0 discriminator 372
	movs	r3, #120
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L163+24
	movs	r1, #188
	lsls	r1, r1, #1
	mov	ip, r1
	add	ip, ip, r7
	add	r3, r3, ip
	strb	r2, [r3]
.LBB63:
	movs	r3, #15
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #31
	bgt	.L144
	.loc 1 51 0 discriminator 373
	movs	r2, #1
	ldr	r3, [r7, #36]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #32]
	ldr	r3, .L163
	ldr	r2, [r7, #32]
	str	r2, [r3]
	b	.L145
.L144:
	.loc 1 51 0 discriminator 374
	ldr	r3, [r7, #36]
	cmp	r3, #63
	bgt	.L145
	.loc 1 51 0 discriminator 376
	ldr	r3, [r7, #36]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #32]
	ldr	r3, .L163+4
	ldr	r2, [r7, #32]
	str	r2, [r3]
.L145:
.LBE63:
.LBB64:
	.loc 1 51 0 discriminator 378
	movs	r3, #15
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #31
	bgt	.L146
	.loc 1 51 0 discriminator 379
	ldr	r3, .L163+8
	movs	r1, #1
	ldr	r2, [r7, #28]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L147
.L146:
	.loc 1 51 0 discriminator 380
	ldr	r3, [r7, #28]
	cmp	r3, #63
	bgt	.L147
	.loc 1 51 0 discriminator 382
	ldr	r3, .L163+12
	ldr	r2, [r7, #28]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L147:
.LBE64:
	.loc 1 51 0 discriminator 384
	movs	r0, #1
	bl	USC_Pause_us
.LBB65:
	movs	r3, #14
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #31
	bgt	.L148
	.loc 1 51 0 discriminator 385
	ldr	r3, .L163+16
	movs	r1, #1
	ldr	r2, [r7, #24]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L149
.L148:
	.loc 1 51 0 discriminator 386
	ldr	r3, [r7, #24]
	cmp	r3, #63
	bgt	.L149
	.loc 1 51 0 discriminator 388
	ldr	r3, .L163+20
	ldr	r2, [r7, #24]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L149:
.LBE65:
	.loc 1 51 0 discriminator 390
	movs	r0, #1
	bl	USC_Pause_us
.LBB66:
	movs	r3, #15
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #31
	bgt	.L150
	.loc 1 51 0 discriminator 391
	ldr	r3, .L163+16
	movs	r1, #1
	ldr	r2, [r7, #20]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L151
.L150:
	.loc 1 51 0 discriminator 392
	ldr	r3, [r7, #20]
	cmp	r3, #63
	bgt	.L151
	.loc 1 51 0 discriminator 394
	ldr	r3, .L163+20
	ldr	r2, [r7, #20]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L151:
.LBE66:
	.loc 1 51 0 discriminator 396
	movs	r0, #1
	bl	USC_Pause_us
.LBE3:
	.loc 1 52 0 is_stmt 1 discriminator 396
	ldr	r3, .L163+24
	movs	r2, #188
	lsls	r2, r2, #1
	mov	ip, r2
	add	ip, ip, r7
	add	r3, r3, ip
	ldrb	r3, [r3]
	b	.L3
.L4:
.LBE2:
	.loc 1 54 0
	movs	r3, #1
.L3:
	.loc 1 55 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #376
	@ sp needed
	pop	{r7, pc}
.L164:
	.align	2
.L163:
	.word	-1610480888
	.word	-1610480872
	.word	-1610481660
	.word	-1610481644
	.word	-1610481656
	.word	-1610481640
	.word	-333
	.cfi_endproc
.LFE1:
	.size	FT6236_ReadData, .-FT6236_ReadData
	.section	.text.FT6236_WriteData,"ax",%progbits
	.align	2
	.global	FT6236_WriteData
	.code	16
	.thumb_func
	.type	FT6236_WriteData, %function
FT6236_WriteData:
.LFB2:
	.loc 1 58 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 280
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #280
	.cfi_def_cfa_offset 288
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, .L277
	movs	r2, #140
	lsls	r2, r2, #1
	mov	ip, r2
	add	ip, ip, r7
	add	r3, r3, ip
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 59 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L166
	.loc 1 59 0 discriminator 1
	movs	r3, #0
	bl	.L167	@ far jump
.L166:
	.loc 1 60 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.LCB3023
	bl	.L168	@far jump
.LCB3023:
.LBB67:
.LBB68:
	.loc 1 64 0
	movs	r3, #24
	adds	r3, r3, #255
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	movs	r2, #136
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #16
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldr	r2, [r7, #4]
	strb	r2, [r3]
.LBB69:
	movs	r3, #15
	movs	r2, #240
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #240
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L169
	.loc 1 64 0 is_stmt 0 discriminator 1
	ldr	r3, .L277+4
	movs	r1, #1
	movs	r2, #240
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L170
.L169:
	.loc 1 64 0 discriminator 2
	movs	r3, #240
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L170
	.loc 1 64 0 discriminator 4
	ldr	r3, .L277+8
	movs	r2, #240
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L170:
.LBE69:
.LBB70:
	.loc 1 64 0 discriminator 6
	movs	r3, #14
	movs	r2, #236
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #236
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L171
	.loc 1 64 0 discriminator 7
	ldr	r3, .L277+4
	movs	r1, #1
	movs	r2, #236
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L172
.L171:
	.loc 1 64 0 discriminator 8
	movs	r3, #236
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L172
	.loc 1 64 0 discriminator 10
	ldr	r3, .L277+8
	movs	r2, #236
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L172:
.LBE70:
	.loc 1 64 0 discriminator 12
	movs	r0, #1
	bl	USC_Pause_us
.LBB71:
	movs	r3, #15
	movs	r2, #232
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #232
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L173
	.loc 1 64 0 discriminator 13
	movs	r2, #1
	movs	r3, #232
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #228
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L277+12
	movs	r2, #228
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L174
.L173:
	.loc 1 64 0 discriminator 14
	movs	r3, #232
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L174
	.loc 1 64 0 discriminator 16
	movs	r3, #232
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #228
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L277+16
	movs	r2, #228
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L174:
.LBE71:
.LBB72:
	.loc 1 64 0 discriminator 18
	movs	r3, #15
	movs	r2, #224
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L175
	.loc 1 64 0 discriminator 19
	ldr	r3, .L277+20
	movs	r1, #1
	movs	r2, #224
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L176
.L175:
	.loc 1 64 0 discriminator 20
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L176
	.loc 1 64 0 discriminator 22
	ldr	r3, .L277+24
	movs	r2, #224
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L176:
.LBE72:
	.loc 1 64 0 discriminator 24
	movs	r0, #1
	bl	USC_Pause_us
.LBB73:
	movs	r3, #14
	movs	r2, #220
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #220
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L177
	.loc 1 64 0 discriminator 25
	movs	r2, #1
	movs	r3, #220
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #216
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L277+12
	movs	r2, #216
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L178
.L177:
	.loc 1 64 0 discriminator 26
	movs	r3, #220
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L178
	.loc 1 64 0 discriminator 28
	movs	r3, #220
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #216
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L277+16
	movs	r2, #216
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L178:
.LBE73:
.LBB74:
	.loc 1 64 0 discriminator 30
	movs	r3, #14
	movs	r2, #212
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #212
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L179
	.loc 1 64 0 discriminator 31
	ldr	r3, .L277+20
	movs	r1, #1
	movs	r2, #212
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L180
.L179:
	.loc 1 64 0 discriminator 32
	movs	r3, #212
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L180
	.loc 1 64 0 discriminator 34
	ldr	r3, .L277+24
	movs	r2, #212
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L180:
.LBE74:
	.loc 1 64 0 discriminator 36
	movs	r0, #1
	bl	USC_Pause_us
.LBB75:
	movs	r3, #8
	adds	r3, r3, #255
	adds	r3, r7, r3
	movs	r2, #112
	strb	r2, [r3]
	movs	r3, #0
	movs	r2, #132
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L181
.L195:
	.loc 1 64 0 discriminator 75
	movs	r3, #8
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L182
.LBB76:
	.loc 1 64 0 discriminator 39
	movs	r3, #15
	movs	r2, #208
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #208
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L183
	.loc 1 64 0 discriminator 41
	ldr	r3, .L277+4
	movs	r1, #1
	movs	r2, #208
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L185
.L183:
	.loc 1 64 0 discriminator 42
	movs	r3, #208
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L185
	.loc 1 64 0 discriminator 43
	ldr	r3, .L277+8
	movs	r2, #208
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L185
.L182:
.LBE76:
.LBB77:
	.loc 1 64 0 discriminator 40
	movs	r3, #15
	movs	r2, #204
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #204
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L186
	.loc 1 64 0 discriminator 44
	movs	r2, #1
	movs	r3, #204
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #200
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L277+12
	movs	r2, #200
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L187
.L186:
	.loc 1 64 0 discriminator 45
	movs	r3, #204
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L187
	.loc 1 64 0 discriminator 47
	movs	r3, #204
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #200
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L277+16
	movs	r2, #200
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L187:
.LBE77:
.LBB78:
	.loc 1 64 0 discriminator 49
	movs	r3, #15
	movs	r2, #196
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #196
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L188
	.loc 1 64 0 discriminator 50
	ldr	r3, .L277+20
	movs	r1, #1
	movs	r2, #196
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L185
.L188:
	.loc 1 64 0 discriminator 51
	movs	r3, #196
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L185
	.loc 1 64 0 discriminator 53
	ldr	r3, .L277+24
	movs	r2, #196
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L185:
.LBE78:
	.loc 1 64 0 discriminator 55
	movs	r0, #1
	bl	USC_Pause_us
.LBB79:
	movs	r3, #14
	movs	r2, #192
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #192
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L189
	.loc 1 64 0 discriminator 56
	ldr	r3, .L277+4
	movs	r1, #1
	movs	r2, #192
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L190
.L189:
	.loc 1 64 0 discriminator 57
	movs	r3, #192
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L190
	.loc 1 64 0 discriminator 59
	ldr	r3, .L277+8
	movs	r2, #192
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L190:
.LBE79:
	.loc 1 64 0 discriminator 61
	movs	r0, #2
	bl	USC_Pause_us
.LBB80:
	movs	r3, #14
	movs	r2, #188
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #188
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L191
	.loc 1 64 0 discriminator 62
	movs	r2, #1
	movs	r3, #188
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #184
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L277+12
	movs	r2, #184
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L192
.L278:
	.align	2
.L277:
	.word	-265
	.word	-1610481656
	.word	-1610481640
	.word	-1610480888
	.word	-1610480872
	.word	-1610481660
	.word	-1610481644
.L191:
	.loc 1 64 0 discriminator 63
	movs	r3, #188
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L192
	.loc 1 64 0 discriminator 65
	movs	r3, #188
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #184
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L279
	movs	r2, #184
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L192:
.LBE80:
.LBB81:
	.loc 1 64 0 discriminator 67
	movs	r3, #14
	movs	r2, #180
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #180
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L193
	.loc 1 64 0 discriminator 68
	ldr	r3, .L279+4
	movs	r1, #1
	movs	r2, #180
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L194
.L193:
	.loc 1 64 0 discriminator 69
	movs	r3, #180
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L194
	.loc 1 64 0 discriminator 71
	ldr	r3, .L279+8
	movs	r2, #180
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L194:
.LBE81:
	.loc 1 64 0 discriminator 73
	movs	r0, #1
	bl	USC_Pause_us
	movs	r3, #8
	adds	r3, r3, #255
	adds	r2, r7, r3
	movs	r3, #8
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	adds	r3, r3, r3
	strb	r3, [r2]
	movs	r3, #132
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	adds	r3, r3, #1
	movs	r2, #132
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
.L181:
	.loc 1 64 0 discriminator 74
	movs	r3, #132
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.LCB3631
	b	.L195	@long jump
.LCB3631:
.LBB82:
	.loc 1 64 0 discriminator 76
	movs	r3, #15
	movs	r2, #176
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #176
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L196
	.loc 1 64 0 discriminator 77
	ldr	r3, .L279+12
	movs	r1, #1
	movs	r2, #176
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L197
.L196:
	.loc 1 64 0 discriminator 78
	movs	r3, #176
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L197
	.loc 1 64 0 discriminator 80
	ldr	r3, .L279+16
	movs	r2, #176
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L197:
.LBE82:
	.loc 1 64 0 discriminator 82
	movs	r0, #2
	bl	USC_Pause_us
.LBB83:
	movs	r3, #14
	movs	r2, #172
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #172
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L198
	.loc 1 64 0 discriminator 83
	ldr	r3, .L279+12
	movs	r1, #1
	movs	r2, #172
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L199
.L198:
	.loc 1 64 0 discriminator 84
	movs	r3, #172
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L199
	.loc 1 64 0 discriminator 86
	ldr	r3, .L279+16
	movs	r2, #172
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L199:
.LBE83:
	.loc 1 64 0 discriminator 88
	movs	r0, #2
	bl	USC_Pause_us
.LBB84:
	movs	r3, #15
	movs	r2, #168
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #168
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L200
	.loc 1 64 0 discriminator 89
	ldr	r3, .L279+20
	ldr	r2, [r3]
	movs	r3, #168
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L201
.L200:
	.loc 1 64 0 discriminator 90
	movs	r3, #168
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L202
	.loc 1 64 0 discriminator 92
	ldr	r3, .L279+24
	ldr	r2, [r3]
	movs	r3, #168
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	beq	.L202
	.loc 1 64 0 discriminator 94
	movs	r3, #1
	b	.L201
.L202:
	.loc 1 64 0 discriminator 95
	movs	r3, #0
.L201:
.LBE84:
	.loc 1 64 0 discriminator 98
	movs	r2, #132
	lsls	r2, r2, #1
	adds	r2, r7, r2
	str	r3, [r2]
.LBB85:
	movs	r3, #14
	movs	r2, #164
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #164
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L204
	.loc 1 64 0 discriminator 99
	movs	r2, #1
	movs	r3, #164
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #160
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L279+28
	movs	r2, #160
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L205
.L204:
	.loc 1 64 0 discriminator 100
	movs	r3, #164
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L205
	.loc 1 64 0 discriminator 102
	movs	r3, #164
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #160
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L279
	movs	r2, #160
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L205:
.LBE85:
.LBB86:
	.loc 1 64 0 discriminator 104
	movs	r3, #14
	movs	r2, #156
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #156
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L206
	.loc 1 64 0 discriminator 105
	ldr	r3, .L279+4
	movs	r1, #1
	movs	r2, #156
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L207
.L206:
	.loc 1 64 0 discriminator 106
	movs	r3, #156
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L207
	.loc 1 64 0 discriminator 108
	ldr	r3, .L279+8
	movs	r2, #156
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L207:
.LBE86:
	.loc 1 64 0 discriminator 110
	movs	r0, #2
	bl	USC_Pause_us
	movs	r3, #132
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #24
	adds	r3, r3, #255
	adds	r3, r7, r3
	strb	r2, [r3]
.LBE75:
	movs	r3, #24
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.LCB3879
	b	.L275	@long jump
.LCB3879:
.LBB87:
	.loc 1 64 0 discriminator 111
	movs	r3, #255
	adds	r3, r7, r3
	ldr	r2, .L279+32
	movs	r1, #140
	lsls	r1, r1, #1
	mov	ip, r1
	add	ip, ip, r7
	add	r2, r2, ip
	ldrb	r2, [r2]
	strb	r2, [r3]
	movs	r3, #0
	adds	r2, r7, #1
	adds	r2, r2, #255
	str	r3, [r2]
	b	.L210
.L224:
	.loc 1 64 0 discriminator 149
	movs	r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L211
.LBB88:
	.loc 1 64 0 discriminator 113
	movs	r3, #15
	movs	r2, #152
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L212
	.loc 1 64 0 discriminator 115
	ldr	r3, .L279+12
	movs	r1, #1
	movs	r2, #152
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L214
.L212:
	.loc 1 64 0 discriminator 116
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L214
	.loc 1 64 0 discriminator 117
	ldr	r3, .L279+16
	movs	r2, #152
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L214
.L211:
.LBE88:
.LBB89:
	.loc 1 64 0 discriminator 114
	movs	r3, #15
	movs	r2, #148
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #148
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L215
	.loc 1 64 0 discriminator 118
	movs	r2, #1
	movs	r3, #148
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #144
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L279+28
	movs	r2, #144
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L216
.L215:
	.loc 1 64 0 discriminator 119
	movs	r3, #148
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L216
	.loc 1 64 0 discriminator 121
	movs	r3, #148
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #144
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L279
	movs	r2, #144
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L216:
.LBE89:
.LBB90:
	.loc 1 64 0 discriminator 123
	movs	r3, #15
	movs	r2, #140
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #140
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L217
	.loc 1 64 0 discriminator 124
	ldr	r3, .L279+4
	movs	r1, #1
	movs	r2, #140
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L214
.L217:
	.loc 1 64 0 discriminator 125
	movs	r3, #140
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L214
	.loc 1 64 0 discriminator 127
	ldr	r3, .L279+8
	movs	r2, #140
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L214:
.LBE90:
	.loc 1 64 0 discriminator 129
	movs	r0, #1
	bl	USC_Pause_us
.LBB91:
	movs	r3, #14
	movs	r2, #136
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L218
	.loc 1 64 0 discriminator 130
	ldr	r3, .L279+12
	movs	r1, #1
	movs	r2, #136
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L219
.L280:
	.align	2
.L279:
	.word	-1610480872
	.word	-1610481660
	.word	-1610481644
	.word	-1610481656
	.word	-1610481640
	.word	-1610480640
	.word	-1610480624
	.word	-1610480888
	.word	-265
.L218:
	.loc 1 64 0 discriminator 131
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L219
	.loc 1 64 0 discriminator 133
	ldr	r3, .L281
	movs	r2, #136
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L219:
.LBE91:
	.loc 1 64 0 discriminator 135
	movs	r0, #2
	bl	USC_Pause_us
.LBB92:
	movs	r3, #14
	movs	r2, #132
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #132
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L220
	.loc 1 64 0 discriminator 136
	movs	r2, #1
	movs	r3, #132
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #128
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L281+4
	movs	r2, #128
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L221
.L220:
	.loc 1 64 0 discriminator 137
	movs	r3, #132
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L221
	.loc 1 64 0 discriminator 139
	movs	r3, #132
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #128
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, .L281+8
	movs	r2, #128
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L221:
.LBE92:
.LBB93:
	.loc 1 64 0 discriminator 141
	movs	r3, #14
	str	r3, [r7, #124]
	ldr	r3, [r7, #124]
	cmp	r3, #31
	bgt	.L222
	.loc 1 64 0 discriminator 142
	ldr	r3, .L281+12
	movs	r1, #1
	ldr	r2, [r7, #124]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L223
.L222:
	.loc 1 64 0 discriminator 143
	ldr	r3, [r7, #124]
	cmp	r3, #63
	bgt	.L223
	.loc 1 64 0 discriminator 145
	ldr	r3, .L281+16
	ldr	r2, [r7, #124]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L223:
.LBE93:
	.loc 1 64 0 discriminator 147
	movs	r0, #1
	bl	USC_Pause_us
	movs	r3, #255
	adds	r2, r7, r3
	movs	r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	adds	r3, r3, r3
	strb	r3, [r2]
	adds	r3, r7, #1
	adds	r3, r3, #255
	ldr	r3, [r3]
	adds	r3, r3, #1
	adds	r2, r7, #1
	adds	r2, r2, #255
	str	r3, [r2]
.L210:
	.loc 1 64 0 discriminator 148
	adds	r3, r7, #1
	adds	r3, r3, #255
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.LCB4196
	b	.L224	@long jump
.LCB4196:
.LBB94:
	.loc 1 64 0 discriminator 150
	movs	r3, #15
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #31
	bgt	.L225
	.loc 1 64 0 discriminator 151
	ldr	r3, .L281+20
	movs	r1, #1
	ldr	r2, [r7, #120]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L226
.L225:
	.loc 1 64 0 discriminator 152
	ldr	r3, [r7, #120]
	cmp	r3, #63
	bgt	.L226
	.loc 1 64 0 discriminator 154
	ldr	r3, .L281
	ldr	r2, [r7, #120]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L226:
.LBE94:
	.loc 1 64 0 discriminator 156
	movs	r0, #2
	bl	USC_Pause_us
.LBB95:
	movs	r3, #14
	str	r3, [r7, #116]
	ldr	r3, [r7, #116]
	cmp	r3, #31
	bgt	.L227
	.loc 1 64 0 discriminator 157
	ldr	r3, .L281+20
	movs	r1, #1
	ldr	r2, [r7, #116]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L228
.L227:
	.loc 1 64 0 discriminator 158
	ldr	r3, [r7, #116]
	cmp	r3, #63
	bgt	.L228
	.loc 1 64 0 discriminator 160
	ldr	r3, .L281
	ldr	r2, [r7, #116]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L228:
.LBE95:
	.loc 1 64 0 discriminator 162
	movs	r0, #2
	bl	USC_Pause_us
.LBB96:
	movs	r3, #15
	str	r3, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #31
	bgt	.L229
	.loc 1 64 0 discriminator 163
	ldr	r3, .L281+24
	ldr	r2, [r3]
	ldr	r3, [r7, #112]
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L230
.L229:
	.loc 1 64 0 discriminator 164
	ldr	r3, [r7, #112]
	cmp	r3, #63
	bgt	.L231
	.loc 1 64 0 discriminator 166
	ldr	r3, .L281+28
	ldr	r2, [r3]
	ldr	r3, [r7, #112]
	subs	r3, r3, #32
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	beq	.L231
	.loc 1 64 0 discriminator 168
	movs	r3, #1
	b	.L230
.L231:
	.loc 1 64 0 discriminator 169
	movs	r3, #0
.L230:
.LBE96:
	.loc 1 64 0 discriminator 172
	adds	r2, r7, #1
	adds	r2, r2, #255
	str	r3, [r2]
.LBB97:
	movs	r3, #14
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	cmp	r3, #31
	bgt	.L233
	.loc 1 64 0 discriminator 173
	movs	r2, #1
	ldr	r3, [r7, #108]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #104]
	ldr	r3, .L281+4
	ldr	r2, [r7, #104]
	str	r2, [r3]
	b	.L234
.L233:
	.loc 1 64 0 discriminator 174
	ldr	r3, [r7, #108]
	cmp	r3, #63
	bgt	.L234
	.loc 1 64 0 discriminator 176
	ldr	r3, [r7, #108]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #104]
	ldr	r3, .L281+8
	ldr	r2, [r7, #104]
	str	r2, [r3]
.L234:
.LBE97:
.LBB98:
	.loc 1 64 0 discriminator 178
	movs	r3, #14
	str	r3, [r7, #100]
	ldr	r3, [r7, #100]
	cmp	r3, #31
	bgt	.L235
	.loc 1 64 0 discriminator 179
	ldr	r3, .L281+12
	movs	r1, #1
	ldr	r2, [r7, #100]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L236
.L235:
	.loc 1 64 0 discriminator 180
	ldr	r3, [r7, #100]
	cmp	r3, #63
	bgt	.L236
	.loc 1 64 0 discriminator 182
	ldr	r3, .L281+16
	ldr	r2, [r7, #100]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L236:
.LBE98:
	.loc 1 64 0 discriminator 184
	movs	r0, #2
	bl	USC_Pause_us
	adds	r3, r7, #1
	adds	r3, r3, #255
	ldr	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #24
	adds	r3, r3, #255
	adds	r3, r7, r3
	strb	r2, [r3]
.LBE87:
	movs	r3, #136
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.LCB4384
	b	.L276	@long jump
.LCB4384:
	.loc 1 64 0 is_stmt 1
	b	.L238
.L266:
.LBB99:
	.loc 1 64 0 is_stmt 0 discriminator 260
	movs	r3, #136
	lsls	r3, r3, #1
	adds	r3, r7, r3
	ldr	r3, [r3]
	adds	r2, r3, #1
	movs	r1, #136
	lsls	r1, r1, #1
	adds	r1, r7, r1
	str	r2, [r1]
	movs	r2, #247
	adds	r2, r7, r2
	ldrb	r3, [r3]
	strb	r3, [r2]
	movs	r3, #0
	movs	r2, #248
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L239
.L253:
	.loc 1 64 0 discriminator 222
	movs	r3, #247
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L240
.LBB100:
	.loc 1 64 0 discriminator 186
	movs	r3, #15
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	cmp	r3, #31
	bgt	.L241
	.loc 1 64 0 discriminator 188
	ldr	r3, .L281+20
	movs	r1, #1
	ldr	r2, [r7, #96]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L243
.L241:
	.loc 1 64 0 discriminator 189
	ldr	r3, [r7, #96]
	cmp	r3, #63
	bgt	.L243
	.loc 1 64 0 discriminator 190
	ldr	r3, .L281
	ldr	r2, [r7, #96]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L243
.L240:
.LBE100:
.LBB101:
	.loc 1 64 0 discriminator 187
	movs	r3, #15
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #31
	bgt	.L244
	.loc 1 64 0 discriminator 191
	movs	r2, #1
	ldr	r3, [r7, #92]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #88]
	ldr	r3, .L281+4
	ldr	r2, [r7, #88]
	str	r2, [r3]
	b	.L245
.L244:
	.loc 1 64 0 discriminator 192
	ldr	r3, [r7, #92]
	cmp	r3, #63
	bgt	.L245
	.loc 1 64 0 discriminator 194
	ldr	r3, [r7, #92]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #88]
	ldr	r3, .L281+8
	ldr	r2, [r7, #88]
	str	r2, [r3]
.L245:
.LBE101:
.LBB102:
	.loc 1 64 0 discriminator 196
	movs	r3, #15
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #31
	bgt	.L246
	.loc 1 64 0 discriminator 197
	ldr	r3, .L281+12
	movs	r1, #1
	ldr	r2, [r7, #84]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L243
.L246:
	.loc 1 64 0 discriminator 198
	ldr	r3, [r7, #84]
	cmp	r3, #63
	bgt	.L243
	.loc 1 64 0 discriminator 200
	ldr	r3, .L281+16
	ldr	r2, [r7, #84]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L243:
.LBE102:
	.loc 1 64 0 discriminator 202
	movs	r0, #1
	bl	USC_Pause_us
.LBB103:
	movs	r3, #14
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #31
	bgt	.L247
	.loc 1 64 0 discriminator 203
	ldr	r3, .L281+20
	movs	r1, #1
	ldr	r2, [r7, #80]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L248
.L247:
	.loc 1 64 0 discriminator 204
	ldr	r3, [r7, #80]
	cmp	r3, #63
	bgt	.L248
	.loc 1 64 0 discriminator 206
	ldr	r3, .L281
	ldr	r2, [r7, #80]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L248:
.LBE103:
	.loc 1 64 0 discriminator 208
	movs	r0, #2
	bl	USC_Pause_us
.LBB104:
	movs	r3, #14
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #31
	bgt	.L249
	.loc 1 64 0 discriminator 209
	movs	r2, #1
	ldr	r3, [r7, #76]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #72]
	ldr	r3, .L281+4
	ldr	r2, [r7, #72]
	str	r2, [r3]
	b	.L250
.L249:
	.loc 1 64 0 discriminator 210
	ldr	r3, [r7, #76]
	cmp	r3, #63
	bgt	.L250
	.loc 1 64 0 discriminator 212
	ldr	r3, [r7, #76]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #72]
	ldr	r3, .L281+8
	ldr	r2, [r7, #72]
	str	r2, [r3]
.L250:
.LBE104:
.LBB105:
	.loc 1 64 0 discriminator 214
	movs	r3, #14
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #31
	bgt	.L251
	.loc 1 64 0 discriminator 215
	ldr	r3, .L281+12
	movs	r1, #1
	ldr	r2, [r7, #68]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L252
.L282:
	.align	2
.L281:
	.word	-1610481640
	.word	-1610480888
	.word	-1610480872
	.word	-1610481660
	.word	-1610481644
	.word	-1610481656
	.word	-1610480640
	.word	-1610480624
.L251:
	.loc 1 64 0 discriminator 216
	ldr	r3, [r7, #68]
	cmp	r3, #63
	bgt	.L252
	.loc 1 64 0 discriminator 218
	ldr	r3, .L283
	ldr	r2, [r7, #68]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L252:
.LBE105:
	.loc 1 64 0 discriminator 220
	movs	r0, #1
	bl	USC_Pause_us
	movs	r3, #247
	adds	r2, r7, r3
	movs	r3, #247
	adds	r3, r7, r3
	ldrb	r3, [r3]
	adds	r3, r3, r3
	strb	r3, [r2]
	movs	r3, #248
	adds	r3, r7, r3
	ldr	r3, [r3]
	adds	r3, r3, #1
	movs	r2, #248
	adds	r2, r7, r2
	str	r3, [r2]
.L239:
	.loc 1 64 0 discriminator 221
	movs	r3, #248
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.LCB4641
	b	.L253	@long jump
.LCB4641:
.LBB106:
	.loc 1 64 0 discriminator 223
	movs	r3, #15
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #31
	bgt	.L254
	.loc 1 64 0 discriminator 224
	ldr	r3, .L283+4
	movs	r1, #1
	ldr	r2, [r7, #64]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L255
.L254:
	.loc 1 64 0 discriminator 225
	ldr	r3, [r7, #64]
	cmp	r3, #63
	bgt	.L255
	.loc 1 64 0 discriminator 227
	ldr	r3, .L283+8
	ldr	r2, [r7, #64]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L255:
.LBE106:
	.loc 1 64 0 discriminator 229
	movs	r0, #2
	bl	USC_Pause_us
.LBB107:
	movs	r3, #14
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #31
	bgt	.L256
	.loc 1 64 0 discriminator 230
	ldr	r3, .L283+4
	movs	r1, #1
	ldr	r2, [r7, #60]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L257
.L256:
	.loc 1 64 0 discriminator 231
	ldr	r3, [r7, #60]
	cmp	r3, #63
	bgt	.L257
	.loc 1 64 0 discriminator 233
	ldr	r3, .L283+8
	ldr	r2, [r7, #60]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L257:
.LBE107:
	.loc 1 64 0 discriminator 235
	movs	r0, #2
	bl	USC_Pause_us
.LBB108:
	movs	r3, #15
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #31
	bgt	.L258
	.loc 1 64 0 discriminator 236
	ldr	r3, .L283+12
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L259
.L258:
	.loc 1 64 0 discriminator 237
	ldr	r3, [r7, #56]
	cmp	r3, #63
	bgt	.L260
	.loc 1 64 0 discriminator 239
	ldr	r3, .L283+16
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	subs	r3, r3, #32
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	beq	.L260
	.loc 1 64 0 discriminator 241
	movs	r3, #1
	b	.L259
.L260:
	.loc 1 64 0 discriminator 242
	movs	r3, #0
.L259:
.LBE108:
	.loc 1 64 0 discriminator 245
	movs	r2, #248
	adds	r2, r7, r2
	str	r3, [r2]
.LBB109:
	movs	r3, #14
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #31
	bgt	.L262
	.loc 1 64 0 discriminator 246
	movs	r2, #1
	ldr	r3, [r7, #52]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #48]
	ldr	r3, .L283+20
	ldr	r2, [r7, #48]
	str	r2, [r3]
	b	.L263
.L262:
	.loc 1 64 0 discriminator 247
	ldr	r3, [r7, #52]
	cmp	r3, #63
	bgt	.L263
	.loc 1 64 0 discriminator 249
	ldr	r3, [r7, #52]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #48]
	ldr	r3, .L283+24
	ldr	r2, [r7, #48]
	str	r2, [r3]
.L263:
.LBE109:
.LBB110:
	.loc 1 64 0 discriminator 251
	movs	r3, #14
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #31
	bgt	.L264
	.loc 1 64 0 discriminator 252
	ldr	r3, .L283+28
	movs	r1, #1
	ldr	r2, [r7, #44]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L265
.L264:
	.loc 1 64 0 discriminator 253
	ldr	r3, [r7, #44]
	cmp	r3, #63
	bgt	.L265
	.loc 1 64 0 discriminator 255
	ldr	r3, .L283
	ldr	r2, [r7, #44]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L265:
.LBE110:
	.loc 1 64 0 discriminator 257
	movs	r0, #2
	bl	USC_Pause_us
	movs	r3, #248
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #24
	adds	r3, r3, #255
	adds	r3, r7, r3
	strb	r2, [r3]
.L238:
.LBE99:
	.loc 1 64 0 discriminator 258
	movs	r3, #16
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #16
	adds	r2, r2, #255
	adds	r2, r7, r2
	subs	r1, r3, #1
	strb	r1, [r2]
	cmp	r3, #0
	beq	.L276
	.loc 1 64 0 discriminator 259
	movs	r3, #24
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.LCB4842
	b	.L266	@long jump
.LCB4842:
	.loc 1 64 0
	b	.L276
.L275:
	.loc 1 64 0 is_stmt 1
	nop
	b	.L209
.L276:
	.loc 1 64 0
	nop
.L209:
.LBB111:
	movs	r3, #15
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #31
	bgt	.L267
	.loc 1 64 0 is_stmt 0 discriminator 261
	movs	r2, #1
	ldr	r3, [r7, #40]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #36]
	ldr	r3, .L283+20
	ldr	r2, [r7, #36]
	str	r2, [r3]
	b	.L268
.L267:
	.loc 1 64 0 discriminator 262
	ldr	r3, [r7, #40]
	cmp	r3, #63
	bgt	.L268
	.loc 1 64 0 discriminator 264
	ldr	r3, [r7, #40]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #36]
	ldr	r3, .L283+24
	ldr	r2, [r7, #36]
	str	r2, [r3]
.L268:
.LBE111:
.LBB112:
	.loc 1 64 0 discriminator 266
	movs	r3, #15
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #31
	bgt	.L269
	.loc 1 64 0 discriminator 267
	ldr	r3, .L283+28
	movs	r1, #1
	ldr	r2, [r7, #32]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L270
.L269:
	.loc 1 64 0 discriminator 268
	ldr	r3, [r7, #32]
	cmp	r3, #63
	bgt	.L270
	.loc 1 64 0 discriminator 270
	ldr	r3, .L283
	ldr	r2, [r7, #32]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L270:
.LBE112:
	.loc 1 64 0 discriminator 272
	movs	r0, #1
	bl	USC_Pause_us
.LBB113:
	movs	r3, #14
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #31
	bgt	.L271
	.loc 1 64 0 discriminator 273
	ldr	r3, .L283+4
	movs	r1, #1
	ldr	r2, [r7, #28]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L272
.L271:
	.loc 1 64 0 discriminator 274
	ldr	r3, [r7, #28]
	cmp	r3, #63
	bgt	.L272
	.loc 1 64 0 discriminator 276
	ldr	r3, .L283+8
	ldr	r2, [r7, #28]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L272:
.LBE113:
	.loc 1 64 0 discriminator 278
	movs	r0, #1
	bl	USC_Pause_us
.LBB114:
	movs	r3, #15
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #31
	bgt	.L273
	.loc 1 64 0 discriminator 279
	ldr	r3, .L283+4
	movs	r1, #1
	ldr	r2, [r7, #24]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L274
.L273:
	.loc 1 64 0 discriminator 280
	ldr	r3, [r7, #24]
	cmp	r3, #63
	bgt	.L274
	.loc 1 64 0 discriminator 282
	ldr	r3, .L283+8
	ldr	r2, [r7, #24]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L274:
.LBE114:
	.loc 1 64 0 discriminator 284
	movs	r0, #1
	bl	USC_Pause_us
	movs	r3, #24
	adds	r3, r3, #255
	adds	r3, r7, r3
	ldrb	r3, [r3]
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, .L283+32
	movs	r1, #140
	lsls	r1, r1, #1
	mov	ip, r1
	add	ip, ip, r7
	add	r3, r3, ip
	strb	r2, [r3]
.LBE68:
	.loc 1 65 0 is_stmt 1 discriminator 284
	ldr	r3, .L283+32
	movs	r2, #140
	lsls	r2, r2, #1
	mov	ip, r2
	add	ip, ip, r7
	add	r3, r3, ip
	ldrb	r3, [r3]
	b	.L167
.L168:
.LBE67:
	.loc 1 67 0
	movs	r3, #1
.L167:
	.loc 1 68 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #280
	@ sp needed
	pop	{r7, pc}
.L284:
	.align	2
.L283:
	.word	-1610481644
	.word	-1610481656
	.word	-1610481640
	.word	-1610480640
	.word	-1610480624
	.word	-1610480888
	.word	-1610480872
	.word	-1610481660
	.word	-257
	.cfi_endproc
.LFE2:
	.size	FT6236_WriteData, .-FT6236_WriteData
	.section	.text.FT6236_ISR,"ax",%progbits
	.align	2
	.global	FT6236_ISR
	.code	16
	.thumb_func
	.type	FT6236_ISR, %function
FT6236_ISR:
.LFB3:
	.loc 1 71 0
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
	.loc 1 75 0
	movs	r3, #8
	adds	r3, r7, r3
	movs	r2, #13
	movs	r1, r3
	movs	r0, #2
	bl	FT6236_ReadData
	subs	r3, r0, #0
	bne	.LCB5056
	b	.L299	@long jump
.LCB5056:
	.loc 1 77 0
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L287
.L298:
.LBB115:
	.loc 1 81 0
	ldr	r2, [r7, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, #1
	str	r3, [r7, #24]
	.loc 1 82 0
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	movs	r2, #8
	adds	r2, r7, r2
	ldrb	r3, [r2, r3]
	lsrs	r3, r3, #4
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	movs	r2, r3
	movs	r3, r7
	str	r2, [r3]
	.loc 1 83 0
	movs	r3, r7
	ldr	r3, [r3]
	cmp	r3, #1
	bls	.LCB5085
	b	.L300	@long jump
.LCB5085:
	.loc 1 85 0
	movs	r3, #8
	adds	r2, r7, r3
	ldr	r3, [r7, #24]
	adds	r3, r2, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #8
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #240
	lsls	r2, r2, #4
	ands	r3, r2
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	movs	r1, #8
	adds	r1, r7, r1
	ldrb	r3, [r1, r3]
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, r7
	strh	r3, [r2, #4]
	.loc 1 86 0
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	movs	r2, #8
	adds	r2, r7, r2
	ldrb	r3, [r2, r3]
	lsls	r3, r3, #8
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, #240
	lsls	r2, r2, #4
	ands	r3, r2
	lsls	r2, r3, #16
	asrs	r2, r2, #16
	ldr	r3, [r7, #24]
	adds	r3, r3, #3
	movs	r1, #8
	adds	r1, r7, r1
	ldrb	r3, [r1, r3]
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	orrs	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	movs	r2, r7
	strh	r3, [r2, #6]
	.loc 1 88 0
	movs	r3, #8
	adds	r2, r7, r3
	ldr	r3, [r7, #24]
	adds	r3, r2, r3
	ldrb	r3, [r3]
	lsrs	r3, r3, #6
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	beq	.L291
	bgt	.L292
	cmp	r3, #0
	beq	.L293
	b	.L289
.L292:
	cmp	r3, #2
	beq	.L294
	.loc 1 110 0
	b	.L289
.L293:
	.loc 1 91 0
	movs	r3, r7
	ldr	r3, [r3]
	ldr	r1, .L302
	lsls	r2, r3, #2
	movs	r3, r7
	adds	r0, r1, r2
	adds	r3, r3, #4
	movs	r2, #4
	movs	r1, r3
	bl	memcpy
	.loc 1 92 0
	movs	r3, r7
	ldr	r3, [r3]
	ldr	r2, .L302+4
	movs	r1, #1
	strb	r1, [r2, r3]
	.loc 1 93 0
	movs	r2, r7
	movs	r3, #8
	movs	r1, #0
	movs	r0, #1
	bl	EM_PostEvent
	.loc 1 94 0
	b	.L289
.L291:
	.loc 1 96 0
	movs	r3, r7
	ldr	r3, [r3]
	ldr	r2, .L302+4
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L296
	.loc 1 97 0
	movs	r2, r7
	movs	r3, #8
	movs	r1, #0
	movs	r0, #2
	bl	EM_PostEvent
.L296:
	.loc 1 98 0
	movs	r3, r7
	ldr	r3, [r3]
	ldr	r2, .L302+4
	movs	r1, #0
	strb	r1, [r2, r3]
	.loc 1 99 0
	b	.L289
.L294:
	.loc 1 101 0
	movs	r3, r7
	ldr	r3, [r3]
	ldr	r2, .L302+4
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L301
	.loc 1 102 0 discriminator 1
	movs	r3, r7
	ldr	r2, [r3]
	ldr	r3, .L302
	lsls	r2, r2, #2
	ldrsh	r2, [r2, r3]
	movs	r3, r7
	movs	r1, #4
	ldrsh	r3, [r3, r1]
	.loc 1 101 0 discriminator 1
	cmp	r2, r3
	beq	.L301
	.loc 1 103 0
	movs	r3, r7
	ldr	r3, [r3]
	ldr	r2, .L302
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #2
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r3, r7
	movs	r1, #6
	ldrsh	r3, [r3, r1]
	.loc 1 102 0
	cmp	r2, r3
	beq	.L301
	.loc 1 105 0
	movs	r3, r7
	ldr	r3, [r3]
	ldr	r1, .L302
	lsls	r2, r3, #2
	movs	r3, r7
	adds	r0, r1, r2
	adds	r3, r3, #4
	movs	r2, #4
	movs	r1, r3
	bl	memcpy
	.loc 1 106 0
	movs	r2, r7
	movs	r3, #8
	movs	r1, #0
	movs	r0, #3
	bl	EM_PostEvent
	.loc 1 108 0
	b	.L301
.L300:
	.loc 1 83 0
	nop
	b	.L289
.L301:
	.loc 1 108 0
	nop
.L289:
.LBE115:
	.loc 1 77 0 discriminator 2
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L287:
	.loc 1 77 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #28]
	cmp	r3, #1
	bhi	.LCB5267
	b	.L298	@long jump
.LCB5267:
.L299:
	.loc 1 114 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
.L303:
	.align	2
.L302:
	.word	FT6326_PenCoordinates
	.word	FT6236_PenPressed
	.cfi_endproc
.LFE3:
	.size	FT6236_ISR, .-FT6236_ISR
	.section	.text.FT6236_RegisterISR,"ax",%progbits
	.align	2
	.global	FT6236_RegisterISR
	.code	16
	.thumb_func
	.type	FT6236_RegisterISR, %function
FT6236_RegisterISR:
.LFB4:
	.loc 1 117 0
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
	.loc 1 118 0
	ldr	r1, .L306
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	movs	r0, #23
	bl	NVIC_RegisterEINT
	movs	r3, r0
	.loc 1 119 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L307:
	.align	2
.L306:
	.word	FT6236_ISR
	.cfi_endproc
.LFE4:
	.size	FT6236_RegisterISR, .-FT6236_RegisterISR
	.section	.text.FT6236_UnregisterISR,"ax",%progbits
	.align	2
	.global	FT6236_UnregisterISR
	.code	16
	.thumb_func
	.type	FT6236_UnregisterISR, %function
FT6236_UnregisterISR:
.LFB5:
	.loc 1 122 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 123 0
	movs	r0, #23
	bl	NVIC_UnregisterEINT
	movs	r3, r0
	.loc 1 124 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE5:
	.size	FT6236_UnregisterISR, .-FT6236_UnregisterISR
	.section	.rodata
	.align	2
.LC3:
	.ascii	" TS driver initialization...\000"
	.align	2
.LC6:
	.ascii	"found at address 0x%02X - Complete.\015\012\000"
	.align	2
.LC8:
	.ascii	"Failed!\015\000"
	.section	.text.FT6236_Initialize,"ax",%progbits
	.align	2
	.global	FT6236_Initialize
	.code	16
	.thumb_func
	.type	FT6236_Initialize, %function
FT6236_Initialize:
.LFB6:
	.loc 1 127 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 240
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #240
	.cfi_def_cfa_offset 248
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 130 0
	ldr	r3, .L425
	movs	r0, r3
	bl	printf
	.loc 1 130 0
	ldr	r3, .L425+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 130 0
	movs	r0, r3
	bl	fflush
.LBB116:
	.loc 1 132 0
	movs	r3, #14
	movs	r2, #224
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #55
	ble	.LCB5374
	b	.L311	@long jump
.LCB5374:
.LBB117:
	.loc 1 132 0 is_stmt 0 discriminator 1
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	asrs	r3, r3, #3
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #223
	adds	r3, r7, r3
	movs	r1, #7
	ands	r2, r1
	strb	r2, [r3]
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r3, r3, #2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #222
	adds	r3, r7, r3
	movs	r1, #28
	ands	r2, r1
	strb	r2, [r3]
	movs	r3, #0
	movs	r2, #216
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #7
	bgt	.L312
	.loc 1 132 0 discriminator 3
	ldr	r3, .L425+8
	movs	r2, #216
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L313
.L312:
	.loc 1 132 0 discriminator 4
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #15
	bgt	.L314
	.loc 1 132 0 discriminator 6
	ldr	r3, .L425+12
	movs	r2, #216
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L313
.L314:
	.loc 1 132 0 discriminator 7
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #23
	bgt	.L315
	.loc 1 132 0 discriminator 9
	ldr	r3, .L425+12
	movs	r2, #216
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L313
.L315:
	.loc 1 132 0 discriminator 10
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L316
	.loc 1 132 0 discriminator 12
	ldr	r3, .L425+16
	movs	r2, #216
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L313
.L316:
	.loc 1 132 0 discriminator 13
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #39
	bgt	.L317
	.loc 1 132 0 discriminator 15
	ldr	r3, .L425+12
	movs	r2, #216
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L313
.L317:
	.loc 1 132 0 discriminator 16
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #47
	bgt	.L318
	.loc 1 132 0 discriminator 18
	ldr	r3, .L425+12
	movs	r2, #216
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L313
.L318:
	.loc 1 132 0 discriminator 19
	movs	r3, #224
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #55
	bgt	.L313
	.loc 1 132 0 discriminator 21
	ldr	r3, .L425+20
	movs	r2, #216
	adds	r2, r7, r2
	str	r3, [r2]
.L313:
	.loc 1 132 0 discriminator 23
	movs	r3, #223
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #4
	ldr	r2, .L425+24
	mov	ip, r2
	add	r3, r3, ip
	movs	r2, #223
	adds	r2, r7, r2
	ldrb	r2, [r2]
	lsls	r2, r2, #4
	ldr	r1, .L425+24
	mov	ip, r1
	add	r2, r2, ip
	ldr	r2, [r2]
	movs	r1, #222
	adds	r1, r7, r1
	ldrb	r1, [r1]
	movs	r0, #15
	lsls	r0, r0, r1
	movs	r1, r0
	mvns	r1, r1
	ands	r2, r1
	str	r2, [r3]
.L311:
.LBE117:
.LBE116:
.LBB118:
	.loc 1 132 0 discriminator 24
	movs	r3, #14
	movs	r2, #212
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #212
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L319
	.loc 1 132 0 discriminator 25
	ldr	r3, .L425+28
	movs	r1, #1
	movs	r2, #212
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L320
.L319:
	.loc 1 132 0 discriminator 26
	movs	r3, #212
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L320
	.loc 1 132 0 discriminator 28
	ldr	r3, .L425+32
	movs	r2, #212
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L320:
.LBE118:
.LBB119:
	.loc 1 132 0 discriminator 30
	movs	r3, #14
	movs	r2, #208
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #208
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L321
	.loc 1 132 0 discriminator 31
	movs	r2, #1
	movs	r3, #208
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #204
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #204
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L425+36
	ands	r3, r2
	beq	.L322
	.loc 1 132 0 discriminator 33
	ldr	r3, .L425+40
	movs	r2, #204
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L324
.L322:
	.loc 1 132 0 discriminator 34
	movs	r3, #204
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L425+44
	ands	r3, r2
	beq	.L324
	.loc 1 132 0 discriminator 35
	ldr	r3, .L425+48
	movs	r2, #204
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L324
.L321:
	.loc 1 132 0 discriminator 32
	movs	r3, #208
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L324
	.loc 1 132 0 discriminator 36
	movs	r3, #208
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #204
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #204
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L425+52
	ands	r3, r2
	beq	.L325
	.loc 1 132 0 discriminator 38
	ldr	r3, .L425+56
	movs	r2, #204
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L324
.L325:
	.loc 1 132 0 discriminator 39
	movs	r3, #204
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L425+60
	ands	r3, r2
	beq	.L324
	.loc 1 132 0 discriminator 41
	ldr	r3, .L425+64
	movs	r2, #204
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L324:
.LBE119:
.LBB120:
	.loc 1 132 0 discriminator 43
	movs	r3, #14
	movs	r2, #200
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #200
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L326
	.loc 1 132 0 discriminator 44
	movs	r2, #1
	movs	r3, #200
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #196
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #196
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L425+36
	ands	r3, r2
	beq	.L327
	.loc 1 132 0 discriminator 46
	ldr	r3, .L425+68
	movs	r2, #196
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L329
.L327:
	.loc 1 132 0 discriminator 47
	movs	r3, #196
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L425+44
	ands	r3, r2
	beq	.L329
	.loc 1 132 0 discriminator 48
	ldr	r3, .L425+72
	movs	r2, #196
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L329
.L326:
	.loc 1 132 0 discriminator 45
	movs	r3, #200
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L329
	.loc 1 132 0 discriminator 49
	movs	r3, #200
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #196
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #196
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L425+52
	ands	r3, r2
	beq	.L330
	.loc 1 132 0 discriminator 50
	ldr	r3, .L425+76
	movs	r2, #196
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L329
.L330:
	.loc 1 132 0 discriminator 51
	movs	r3, #196
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L425+60
	ands	r3, r2
	beq	.L329
	.loc 1 132 0 discriminator 52
	ldr	r3, .L425+80
	movs	r2, #196
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L329:
.LBE120:
.LBB121:
	.loc 1 133 0 is_stmt 1
	movs	r3, #15
	movs	r2, #192
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #192
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #55
	ble	.LCB5761
	b	.L331	@long jump
.LCB5761:
.LBB122:
	.loc 1 133 0 is_stmt 0 discriminator 1
	movs	r3, #192
	adds	r3, r7, r3
	ldr	r3, [r3]
	asrs	r3, r3, #3
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #191
	adds	r3, r7, r3
	movs	r1, #7
	ands	r2, r1
	strb	r2, [r3]
	movs	r3, #192
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r3, r3, #2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #190
	adds	r3, r7, r3
	movs	r1, #28
	ands	r2, r1
	strb	r2, [r3]
	movs	r3, #0
	movs	r2, #184
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #192
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #7
	bgt	.L332
	.loc 1 133 0 discriminator 3
	ldr	r3, .L425+8
	movs	r2, #184
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L333
.L332:
	.loc 1 133 0 discriminator 4
	movs	r3, #192
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #15
	bgt	.L334
	.loc 1 133 0 discriminator 6
	ldr	r3, .L425+12
	movs	r2, #184
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L333
.L334:
	.loc 1 133 0 discriminator 7
	movs	r3, #192
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #23
	bgt	.L335
	.loc 1 133 0 discriminator 9
	ldr	r3, .L425+12
	movs	r2, #184
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L333
.L335:
	.loc 1 133 0 discriminator 10
	movs	r3, #192
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L336
	.loc 1 133 0 discriminator 12
	ldr	r3, .L425+16
	movs	r2, #184
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L333
.L336:
	.loc 1 133 0 discriminator 13
	movs	r3, #192
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #39
	bgt	.L337
	.loc 1 133 0 discriminator 15
	ldr	r3, .L425+12
	movs	r2, #184
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L333
.L426:
	.align	2
.L425:
	.word	.LC3
	.word	_impure_ptr
	.word	2004353023
	.word	2004318071
	.word	2013263735
	.word	2004320119
	.word	-1610478592
	.word	-1610481656
	.word	-1610481640
	.word	1136659455
	.word	-1610480380
	.word	-1136659456
	.word	-1610479096
	.word	15734784
	.word	-1610480364
	.word	1042431
	.word	-1610479080
	.word	-1610481404
	.word	-1610478844
	.word	-1610481388
	.word	-1610478828
.L337:
	.loc 1 133 0 discriminator 16
	movs	r3, #192
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #47
	bgt	.L338
	.loc 1 133 0 discriminator 18
	ldr	r3, .L427
	movs	r2, #184
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L333
.L338:
	.loc 1 133 0 discriminator 19
	movs	r3, #192
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #55
	bgt	.L333
	.loc 1 133 0 discriminator 21
	ldr	r3, .L427+4
	movs	r2, #184
	adds	r2, r7, r2
	str	r3, [r2]
.L333:
	.loc 1 133 0 discriminator 23
	movs	r3, #191
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #4
	ldr	r2, .L427+8
	mov	ip, r2
	add	r3, r3, ip
	movs	r2, #191
	adds	r2, r7, r2
	ldrb	r2, [r2]
	lsls	r2, r2, #4
	ldr	r1, .L427+8
	mov	ip, r1
	add	r2, r2, ip
	ldr	r2, [r2]
	movs	r1, #190
	adds	r1, r7, r1
	ldrb	r1, [r1]
	movs	r0, #15
	lsls	r0, r0, r1
	movs	r1, r0
	mvns	r1, r1
	ands	r2, r1
	str	r2, [r3]
.L331:
.LBE122:
.LBE121:
.LBB123:
	.loc 1 133 0 discriminator 24
	movs	r3, #15
	movs	r2, #180
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #180
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L339
	.loc 1 133 0 discriminator 25
	ldr	r3, .L427+12
	movs	r1, #1
	movs	r2, #180
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L340
.L339:
	.loc 1 133 0 discriminator 26
	movs	r3, #180
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L340
	.loc 1 133 0 discriminator 28
	ldr	r3, .L427+16
	movs	r2, #180
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L340:
.LBE123:
.LBB124:
	.loc 1 133 0 discriminator 30
	movs	r3, #15
	movs	r2, #176
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #176
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L341
	.loc 1 133 0 discriminator 31
	movs	r2, #1
	movs	r3, #176
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #172
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #172
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L427+20
	ands	r3, r2
	beq	.L342
	.loc 1 133 0 discriminator 33
	ldr	r3, .L427+24
	movs	r2, #172
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L344
.L342:
	.loc 1 133 0 discriminator 34
	movs	r3, #172
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L427+28
	ands	r3, r2
	beq	.L344
	.loc 1 133 0 discriminator 35
	ldr	r3, .L427+32
	movs	r2, #172
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L344
.L341:
	.loc 1 133 0 discriminator 32
	movs	r3, #176
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L344
	.loc 1 133 0 discriminator 36
	movs	r3, #176
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #172
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #172
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L427+36
	ands	r3, r2
	beq	.L345
	.loc 1 133 0 discriminator 38
	ldr	r3, .L427+40
	movs	r2, #172
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L344
.L345:
	.loc 1 133 0 discriminator 39
	movs	r3, #172
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L427+44
	ands	r3, r2
	beq	.L344
	.loc 1 133 0 discriminator 41
	ldr	r3, .L427+48
	movs	r2, #172
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L344:
.LBE124:
.LBB125:
	.loc 1 133 0 discriminator 43
	movs	r3, #15
	movs	r2, #168
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #168
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L346
	.loc 1 133 0 discriminator 44
	movs	r2, #1
	movs	r3, #168
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #164
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #164
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L427+20
	ands	r3, r2
	beq	.L347
	.loc 1 133 0 discriminator 46
	ldr	r3, .L427+52
	movs	r2, #164
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L349
.L347:
	.loc 1 133 0 discriminator 47
	movs	r3, #164
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L427+28
	ands	r3, r2
	beq	.L349
	.loc 1 133 0 discriminator 48
	ldr	r3, .L427+56
	movs	r2, #164
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L349
.L346:
	.loc 1 133 0 discriminator 45
	movs	r3, #168
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L349
	.loc 1 133 0 discriminator 49
	movs	r3, #168
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #164
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #164
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L427+36
	ands	r3, r2
	beq	.L350
	.loc 1 133 0 discriminator 51
	ldr	r3, .L427+60
	movs	r2, #164
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L349
.L350:
	.loc 1 133 0 discriminator 52
	movs	r3, #164
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L427+44
	ands	r3, r2
	beq	.L349
	.loc 1 133 0 discriminator 54
	ldr	r3, .L427+64
	movs	r2, #164
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
.L349:
.LBE125:
.LBB126:
	.loc 1 133 0 discriminator 56
	movs	r3, #15
	movs	r2, #160
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #160
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L351
	.loc 1 133 0 discriminator 57
	movs	r2, #1
	movs	r3, #160
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #156
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #156
	adds	r3, r7, r3
	ldr	r3, [r3]
	ldr	r2, .L427+20
	ands	r3, r2
	beq	.L353
	.loc 1 133 0 discriminator 59
	ldr	r3, .L427+68
	movs	r1, #1
	movs	r2, #160
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L353
.L351:
	.loc 1 133 0 discriminator 58
	movs	r3, #160
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L353
	.loc 1 133 0 discriminator 60
	movs	r3, #160
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	movs	r2, #156
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #156
	adds	r3, r7, r3
	ldr	r2, [r3]
	movs	r3, #255
	lsls	r3, r3, #5
	ands	r3, r2
	beq	.L353
	.loc 1 133 0 discriminator 61
	ldr	r3, .L427+72
	movs	r2, #160
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L353:
.LBE126:
.LBB127:
	.loc 1 135 0 is_stmt 1
	movs	r3, #20
	movs	r2, #152
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #55
	ble	.LCB6247
	b	.L354	@long jump
.LCB6247:
.LBB128:
	.loc 1 135 0 is_stmt 0 discriminator 1
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	asrs	r3, r3, #3
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #151
	adds	r3, r7, r3
	movs	r1, #7
	ands	r2, r1
	strb	r2, [r3]
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r3, r3, #2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #150
	adds	r3, r7, r3
	movs	r1, #28
	ands	r2, r1
	strb	r2, [r3]
	movs	r3, #0
	movs	r2, #144
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #7
	bgt	.L355
	.loc 1 135 0 discriminator 2
	ldr	r3, .L427+76
	movs	r2, #144
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L356
.L355:
	.loc 1 135 0 discriminator 3
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #15
	bgt	.L357
	.loc 1 135 0 discriminator 5
	ldr	r3, .L427
	movs	r2, #144
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L356
.L357:
	.loc 1 135 0 discriminator 6
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #23
	bgt	.L358
	.loc 1 135 0 discriminator 8
	ldr	r3, .L427
	movs	r2, #144
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L356
.L358:
	.loc 1 135 0 discriminator 9
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L359
	.loc 1 135 0 discriminator 11
	ldr	r3, .L427+80
	movs	r2, #144
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L356
.L359:
	.loc 1 135 0 discriminator 12
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #39
	bgt	.L360
	.loc 1 135 0 discriminator 14
	ldr	r3, .L427
	movs	r2, #144
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L356
.L360:
	.loc 1 135 0 discriminator 15
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #47
	bgt	.L361
	.loc 1 135 0 discriminator 17
	ldr	r3, .L427
	movs	r2, #144
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L356
.L428:
	.align	2
.L427:
	.word	2004318071
	.word	2004320119
	.word	-1610478592
	.word	-1610481656
	.word	-1610481640
	.word	1136659455
	.word	-1610480380
	.word	-1136659456
	.word	-1610479096
	.word	15734784
	.word	-1610480364
	.word	1042431
	.word	-1610479080
	.word	-1610481404
	.word	-1610478844
	.word	-1610481388
	.word	-1610478828
	.word	-1610479356
	.word	-1610479340
	.word	2004353023
	.word	2013263735
.L361:
	.loc 1 135 0 discriminator 18
	movs	r3, #152
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #55
	bgt	.L356
	.loc 1 135 0 discriminator 20
	ldr	r3, .L429
	movs	r2, #144
	adds	r2, r7, r2
	str	r3, [r2]
.L356:
	.loc 1 135 0 discriminator 22
	movs	r3, #151
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #4
	ldr	r2, .L429+4
	mov	ip, r2
	add	r3, r3, ip
	movs	r2, #151
	adds	r2, r7, r2
	ldrb	r2, [r2]
	lsls	r2, r2, #4
	ldr	r1, .L429+4
	mov	ip, r1
	add	r2, r2, ip
	ldr	r2, [r2]
	movs	r1, #150
	adds	r1, r7, r1
	ldrb	r1, [r1]
	movs	r0, #15
	lsls	r0, r0, r1
	movs	r1, r0
	mvns	r1, r1
	ands	r2, r1
	str	r2, [r3]
.L354:
.LBE128:
.LBE127:
.LBB129:
	.loc 1 136 0 is_stmt 1
	movs	r3, #20
	movs	r2, #140
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #140
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L362
	.loc 1 136 0 is_stmt 0 discriminator 1
	ldr	r3, .L429+8
	movs	r1, #1
	movs	r2, #140
	adds	r2, r7, r2
	ldr	r2, [r2]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L363
.L362:
	.loc 1 136 0 discriminator 2
	movs	r3, #140
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L363
	.loc 1 136 0 discriminator 3
	ldr	r3, .L429+12
	movs	r2, #140
	adds	r2, r7, r2
	ldr	r2, [r2]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L363:
.LBE129:
.LBB130:
	.loc 1 138 0 is_stmt 1
	movs	r3, #52
	movs	r2, #136
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #55
	ble	.LCB6466
	b	.L364	@long jump
.LCB6466:
.LBB131:
	.loc 1 138 0 is_stmt 0 discriminator 1
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	asrs	r3, r3, #3
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #135
	adds	r3, r7, r3
	movs	r1, #7
	ands	r2, r1
	strb	r2, [r3]
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r3, r3, #2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #134
	adds	r3, r7, r3
	movs	r1, #28
	ands	r2, r1
	strb	r2, [r3]
	movs	r3, #0
	movs	r2, #236
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #7
	bgt	.L365
	.loc 1 138 0 discriminator 2
	ldr	r3, .L429+16
	movs	r2, #236
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L366
.L365:
	.loc 1 138 0 discriminator 3
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #15
	bgt	.L367
	.loc 1 138 0 discriminator 5
	ldr	r3, .L429+20
	movs	r2, #236
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L366
.L367:
	.loc 1 138 0 discriminator 6
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #23
	bgt	.L368
	.loc 1 138 0 discriminator 8
	ldr	r3, .L429+20
	movs	r2, #236
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L366
.L368:
	.loc 1 138 0 discriminator 9
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L369
	.loc 1 138 0 discriminator 11
	ldr	r3, .L429+24
	movs	r2, #236
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L366
.L369:
	.loc 1 138 0 discriminator 12
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #39
	bgt	.L370
	.loc 1 138 0 discriminator 14
	ldr	r3, .L429+20
	movs	r2, #236
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L366
.L370:
	.loc 1 138 0 discriminator 15
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #47
	bgt	.L371
	.loc 1 138 0 discriminator 17
	ldr	r3, .L429+20
	movs	r2, #236
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L366
.L371:
	.loc 1 138 0 discriminator 18
	movs	r3, #136
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #55
	bgt	.L366
	.loc 1 138 0 discriminator 20
	ldr	r3, .L429
	movs	r2, #236
	adds	r2, r7, r2
	str	r3, [r2]
.L366:
	.loc 1 138 0 discriminator 22
	movs	r3, #135
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #4
	ldr	r2, .L429+4
	mov	ip, r2
	add	r3, r3, ip
	movs	r2, #135
	adds	r2, r7, r2
	ldrb	r2, [r2]
	lsls	r2, r2, #4
	ldr	r1, .L429+4
	mov	ip, r1
	add	r2, r2, ip
	ldr	r2, [r2]
	movs	r1, #134
	adds	r1, r7, r1
	ldrb	r1, [r1]
	movs	r0, #15
	lsls	r0, r0, r1
	movs	r1, r0
	mvns	r1, r1
	ands	r1, r2
	movs	r2, #236
	adds	r2, r7, r2
	ldr	r2, [r2]
	movs	r0, #2
	ands	r0, r2
	movs	r2, #134
	adds	r2, r7, r2
	ldrb	r2, [r2]
	lsls	r0, r0, r2
	movs	r2, r0
	orrs	r2, r1
	str	r2, [r3]
.L364:
.LBE131:
.LBE130:
.LBB132:
	.loc 1 140 0 is_stmt 1
	movs	r3, #20
	movs	r2, #128
	adds	r2, r7, r2
	str	r3, [r2]
	movs	r3, #128
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #31
	bgt	.L372
	.loc 1 140 0 is_stmt 0 discriminator 1
	movs	r2, #1
	movs	r3, #128
	adds	r3, r7, r3
	ldr	r3, [r3]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #124]
	ldr	r3, .L429+28
	ldr	r2, [r7, #124]
	str	r2, [r3]
	b	.L373
.L372:
	.loc 1 140 0 discriminator 2
	movs	r3, #128
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L373
	.loc 1 140 0 discriminator 3
	movs	r3, #128
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #124]
	ldr	r3, .L429+32
	ldr	r2, [r7, #124]
	str	r2, [r3]
.L373:
.LBE132:
	.loc 1 141 0 is_stmt 1
	ldr	r3, .L429+36
	movs	r0, r3
	bl	USC_Pause_us
.LBB133:
	.loc 1 142 0
	movs	r3, #20
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #31
	bgt	.L374
	.loc 1 142 0 is_stmt 0 discriminator 1
	movs	r2, #1
	ldr	r3, [r7, #120]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #116]
	ldr	r3, .L429+40
	ldr	r2, [r7, #116]
	str	r2, [r3]
	b	.L375
.L374:
	.loc 1 142 0 discriminator 2
	ldr	r3, [r7, #120]
	cmp	r3, #63
	bgt	.L375
	.loc 1 142 0 discriminator 3
	ldr	r3, [r7, #120]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #116]
	ldr	r3, .L429+44
	ldr	r2, [r7, #116]
	str	r2, [r3]
.L375:
.LBE133:
.LBB134:
.LBB135:
	.loc 1 144 0 is_stmt 1
	movs	r3, #15
	str	r3, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #31
	bgt	.L376
	.loc 1 144 0 is_stmt 0 discriminator 1
	ldr	r3, .L429+48
	movs	r1, #1
	ldr	r2, [r7, #112]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L377
.L376:
	.loc 1 144 0 discriminator 2
	ldr	r3, [r7, #112]
	cmp	r3, #63
	bgt	.L377
	.loc 1 144 0 discriminator 4
	ldr	r3, .L429+52
	ldr	r2, [r7, #112]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L377:
.LBE135:
.LBB136:
	.loc 1 144 0 discriminator 6
	movs	r3, #14
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	cmp	r3, #31
	bgt	.L378
	.loc 1 144 0 discriminator 7
	ldr	r3, .L429+48
	movs	r1, #1
	ldr	r2, [r7, #108]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L379
.L378:
	.loc 1 144 0 discriminator 8
	ldr	r3, [r7, #108]
	cmp	r3, #63
	bgt	.L379
	.loc 1 144 0 discriminator 10
	ldr	r3, .L429+52
	ldr	r2, [r7, #108]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L379:
.LBE136:
	.loc 1 144 0 discriminator 12
	movs	r0, #1
	bl	USC_Pause_us
.LBB137:
	movs	r3, #15
	str	r3, [r7, #104]
	ldr	r3, [r7, #104]
	cmp	r3, #31
	bgt	.L380
	.loc 1 144 0 discriminator 13
	movs	r2, #1
	ldr	r3, [r7, #104]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #100]
	ldr	r3, .L429+28
	ldr	r2, [r7, #100]
	str	r2, [r3]
	b	.L381
.L380:
	.loc 1 144 0 discriminator 14
	ldr	r3, [r7, #104]
	cmp	r3, #63
	bgt	.L381
	.loc 1 144 0 discriminator 16
	ldr	r3, [r7, #104]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #100]
	ldr	r3, .L429+32
	ldr	r2, [r7, #100]
	str	r2, [r3]
.L381:
.LBE137:
.LBB138:
	.loc 1 144 0 discriminator 18
	movs	r3, #15
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	cmp	r3, #31
	bgt	.L382
	.loc 1 144 0 discriminator 19
	ldr	r3, .L429+8
	movs	r1, #1
	ldr	r2, [r7, #96]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L383
.L382:
	.loc 1 144 0 discriminator 20
	ldr	r3, [r7, #96]
	cmp	r3, #63
	bgt	.L383
	.loc 1 144 0 discriminator 22
	ldr	r3, .L429+12
	ldr	r2, [r7, #96]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L383:
.LBE138:
	.loc 1 144 0 discriminator 24
	movs	r0, #1
	bl	USC_Pause_us
.LBB139:
	movs	r3, #14
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #31
	bgt	.L384
	.loc 1 144 0 discriminator 25
	movs	r2, #1
	ldr	r3, [r7, #92]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #88]
	ldr	r3, .L429+28
	ldr	r2, [r7, #88]
	str	r2, [r3]
	b	.L385
.L384:
	.loc 1 144 0 discriminator 26
	ldr	r3, [r7, #92]
	cmp	r3, #63
	bgt	.L385
	.loc 1 144 0 discriminator 28
	ldr	r3, [r7, #92]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #88]
	ldr	r3, .L429+32
	ldr	r2, [r7, #88]
	str	r2, [r3]
.L385:
.LBE139:
.LBB140:
	.loc 1 144 0 discriminator 30
	movs	r3, #14
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #31
	bgt	.L386
	.loc 1 144 0 discriminator 31
	ldr	r3, .L429+8
	movs	r1, #1
	ldr	r2, [r7, #84]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L387
.L386:
	.loc 1 144 0 discriminator 32
	ldr	r3, [r7, #84]
	cmp	r3, #63
	bgt	.L387
	.loc 1 144 0 discriminator 34
	ldr	r3, .L429+12
	ldr	r2, [r7, #84]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L387:
.LBE140:
	.loc 1 144 0 discriminator 36
	movs	r0, #1
	bl	USC_Pause_us
.LBB141:
	movs	r3, #231
	adds	r3, r7, r3
	movs	r2, #112
	strb	r2, [r3]
	movs	r3, #0
	movs	r2, #232
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L388
.L430:
	.align	2
.L429:
	.word	2004320119
	.word	-1610478592
	.word	-1610481660
	.word	-1610481644
	.word	2004353023
	.word	2004318071
	.word	2013263735
	.word	-1610480888
	.word	-1610480872
	.word	10000
	.word	-1610480892
	.word	-1610480876
	.word	-1610481656
	.word	-1610481640
.L402:
	.loc 1 144 0 discriminator 74
	movs	r3, #231
	adds	r3, r7, r3
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bpl	.L389
.LBB142:
	.loc 1 144 0 discriminator 38
	movs	r3, #15
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #31
	bgt	.L390
	.loc 1 144 0 discriminator 40
	ldr	r3, .L431
	movs	r1, #1
	ldr	r2, [r7, #80]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L392
.L390:
	.loc 1 144 0 discriminator 41
	ldr	r3, [r7, #80]
	cmp	r3, #63
	bgt	.L392
	.loc 1 144 0 discriminator 42
	ldr	r3, .L431+4
	ldr	r2, [r7, #80]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L392
.L389:
.LBE142:
.LBB143:
	.loc 1 144 0 discriminator 39
	movs	r3, #15
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #31
	bgt	.L393
	.loc 1 144 0 discriminator 43
	movs	r2, #1
	ldr	r3, [r7, #76]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #72]
	ldr	r3, .L431+8
	ldr	r2, [r7, #72]
	str	r2, [r3]
	b	.L394
.L393:
	.loc 1 144 0 discriminator 44
	ldr	r3, [r7, #76]
	cmp	r3, #63
	bgt	.L394
	.loc 1 144 0 discriminator 46
	ldr	r3, [r7, #76]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #72]
	ldr	r3, .L431+12
	ldr	r2, [r7, #72]
	str	r2, [r3]
.L394:
.LBE143:
.LBB144:
	.loc 1 144 0 discriminator 48
	movs	r3, #15
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #31
	bgt	.L395
	.loc 1 144 0 discriminator 49
	ldr	r3, .L431+16
	movs	r1, #1
	ldr	r2, [r7, #68]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L392
.L395:
	.loc 1 144 0 discriminator 50
	ldr	r3, [r7, #68]
	cmp	r3, #63
	bgt	.L392
	.loc 1 144 0 discriminator 52
	ldr	r3, .L431+20
	ldr	r2, [r7, #68]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L392:
.LBE144:
	.loc 1 144 0 discriminator 54
	movs	r0, #1
	bl	USC_Pause_us
.LBB145:
	movs	r3, #14
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #31
	bgt	.L396
	.loc 1 144 0 discriminator 55
	ldr	r3, .L431
	movs	r1, #1
	ldr	r2, [r7, #64]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L397
.L396:
	.loc 1 144 0 discriminator 56
	ldr	r3, [r7, #64]
	cmp	r3, #63
	bgt	.L397
	.loc 1 144 0 discriminator 58
	ldr	r3, .L431+4
	ldr	r2, [r7, #64]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L397:
.LBE145:
	.loc 1 144 0 discriminator 60
	movs	r0, #2
	bl	USC_Pause_us
.LBB146:
	movs	r3, #14
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #31
	bgt	.L398
	.loc 1 144 0 discriminator 61
	movs	r2, #1
	ldr	r3, [r7, #60]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #56]
	ldr	r3, .L431+8
	ldr	r2, [r7, #56]
	str	r2, [r3]
	b	.L399
.L398:
	.loc 1 144 0 discriminator 62
	ldr	r3, [r7, #60]
	cmp	r3, #63
	bgt	.L399
	.loc 1 144 0 discriminator 64
	ldr	r3, [r7, #60]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #56]
	ldr	r3, .L431+12
	ldr	r2, [r7, #56]
	str	r2, [r3]
.L399:
.LBE146:
.LBB147:
	.loc 1 144 0 discriminator 66
	movs	r3, #14
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #31
	bgt	.L400
	.loc 1 144 0 discriminator 67
	ldr	r3, .L431+16
	movs	r1, #1
	ldr	r2, [r7, #52]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L401
.L400:
	.loc 1 144 0 discriminator 68
	ldr	r3, [r7, #52]
	cmp	r3, #63
	bgt	.L401
	.loc 1 144 0 discriminator 70
	ldr	r3, .L431+20
	ldr	r2, [r7, #52]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L401:
.LBE147:
	.loc 1 144 0 discriminator 72
	movs	r0, #1
	bl	USC_Pause_us
	movs	r3, #231
	adds	r2, r7, r3
	movs	r3, #231
	adds	r3, r7, r3
	ldrb	r3, [r3]
	adds	r3, r3, r3
	strb	r3, [r2]
	movs	r3, #232
	adds	r3, r7, r3
	ldr	r3, [r3]
	adds	r3, r3, #1
	movs	r2, #232
	adds	r2, r7, r2
	str	r3, [r2]
.L388:
	.loc 1 144 0 discriminator 73
	movs	r3, #232
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.LCB7139
	b	.L402	@long jump
.LCB7139:
.LBB148:
	.loc 1 144 0 discriminator 75
	movs	r3, #15
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #31
	bgt	.L403
	.loc 1 144 0 discriminator 76
	ldr	r3, .L431
	movs	r1, #1
	ldr	r2, [r7, #48]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L404
.L403:
	.loc 1 144 0 discriminator 77
	ldr	r3, [r7, #48]
	cmp	r3, #63
	bgt	.L404
	.loc 1 144 0 discriminator 79
	ldr	r3, .L431+4
	ldr	r2, [r7, #48]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L404:
.LBE148:
	.loc 1 144 0 discriminator 81
	movs	r0, #2
	bl	USC_Pause_us
.LBB149:
	movs	r3, #14
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #31
	bgt	.L405
	.loc 1 144 0 discriminator 82
	ldr	r3, .L431
	movs	r1, #1
	ldr	r2, [r7, #44]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L406
.L405:
	.loc 1 144 0 discriminator 83
	ldr	r3, [r7, #44]
	cmp	r3, #63
	bgt	.L406
	.loc 1 144 0 discriminator 85
	ldr	r3, .L431+4
	ldr	r2, [r7, #44]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L406:
.LBE149:
	.loc 1 144 0 discriminator 87
	movs	r0, #2
	bl	USC_Pause_us
.LBB150:
	movs	r3, #15
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #31
	bgt	.L407
	.loc 1 144 0 discriminator 88
	ldr	r3, .L431+24
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	b	.L408
.L407:
	.loc 1 144 0 discriminator 89
	ldr	r3, [r7, #40]
	cmp	r3, #63
	bgt	.L409
	.loc 1 144 0 discriminator 91
	ldr	r3, .L431+28
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	subs	r3, r3, #32
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, #1
	ands	r3, r2
	beq	.L409
	.loc 1 144 0 discriminator 93
	movs	r3, #1
	b	.L408
.L409:
	.loc 1 144 0 discriminator 94
	movs	r3, #0
.L408:
.LBE150:
	.loc 1 144 0 discriminator 97
	movs	r2, #232
	adds	r2, r7, r2
	str	r3, [r2]
.LBB151:
	movs	r3, #14
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #31
	bgt	.L411
	.loc 1 144 0 discriminator 98
	movs	r2, #1
	ldr	r3, [r7, #36]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #32]
	ldr	r3, .L431+8
	ldr	r2, [r7, #32]
	str	r2, [r3]
	b	.L412
.L411:
	.loc 1 144 0 discriminator 99
	ldr	r3, [r7, #36]
	cmp	r3, #63
	bgt	.L412
	.loc 1 144 0 discriminator 101
	ldr	r3, [r7, #36]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #32]
	ldr	r3, .L431+12
	ldr	r2, [r7, #32]
	str	r2, [r3]
.L412:
.LBE151:
.LBB152:
	.loc 1 144 0 discriminator 103
	movs	r3, #14
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #31
	bgt	.L413
	.loc 1 144 0 discriminator 104
	ldr	r3, .L431+16
	movs	r1, #1
	ldr	r2, [r7, #28]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L414
.L413:
	.loc 1 144 0 discriminator 105
	ldr	r3, [r7, #28]
	cmp	r3, #63
	bgt	.L414
	.loc 1 144 0 discriminator 107
	ldr	r3, .L431+20
	ldr	r2, [r7, #28]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L414:
.LBE152:
	.loc 1 144 0 discriminator 109
	movs	r0, #2
	bl	USC_Pause_us
	movs	r3, #232
	adds	r3, r7, r3
	ldr	r3, [r3]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	movs	r3, #27
	adds	r3, r7, r3
	strb	r2, [r3]
.LBE141:
.LBB153:
	movs	r3, #15
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #31
	bgt	.L415
	.loc 1 144 0 discriminator 110
	movs	r2, #1
	ldr	r3, [r7, #20]
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #16]
	ldr	r3, .L431+8
	ldr	r2, [r7, #16]
	str	r2, [r3]
	b	.L416
.L415:
	.loc 1 144 0 discriminator 111
	ldr	r3, [r7, #20]
	cmp	r3, #63
	bgt	.L416
	.loc 1 144 0 discriminator 113
	ldr	r3, [r7, #20]
	subs	r3, r3, #32
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #16]
	ldr	r3, .L431+12
	ldr	r2, [r7, #16]
	str	r2, [r3]
.L416:
.LBE153:
.LBB154:
	.loc 1 144 0 discriminator 115
	movs	r3, #15
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #31
	bgt	.L417
	.loc 1 144 0 discriminator 116
	ldr	r3, .L431+16
	movs	r1, #1
	ldr	r2, [r7, #12]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L418
.L417:
	.loc 1 144 0 discriminator 117
	ldr	r3, [r7, #12]
	cmp	r3, #63
	bgt	.L418
	.loc 1 144 0 discriminator 119
	ldr	r3, .L431+20
	ldr	r2, [r7, #12]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L418:
.LBE154:
	.loc 1 144 0 discriminator 121
	movs	r0, #1
	bl	USC_Pause_us
.LBB155:
	movs	r3, #14
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #31
	bgt	.L419
	.loc 1 144 0 discriminator 122
	ldr	r3, .L431
	movs	r1, #1
	ldr	r2, [r7, #8]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L420
.L419:
	.loc 1 144 0 discriminator 123
	ldr	r3, [r7, #8]
	cmp	r3, #63
	bgt	.L420
	.loc 1 144 0 discriminator 125
	ldr	r3, .L431+4
	ldr	r2, [r7, #8]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L420:
.LBE155:
	.loc 1 144 0 discriminator 127
	movs	r0, #1
	bl	USC_Pause_us
.LBB156:
	movs	r3, #15
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #31
	bgt	.L421
	.loc 1 144 0 discriminator 128
	ldr	r3, .L431
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
	b	.L422
.L432:
	.align	2
.L431:
	.word	-1610481656
	.word	-1610481640
	.word	-1610480888
	.word	-1610480872
	.word	-1610481660
	.word	-1610481644
	.word	-1610480640
	.word	-1610480624
.L421:
	.loc 1 144 0 discriminator 129
	ldr	r3, [r7, #4]
	cmp	r3, #63
	bgt	.L422
	.loc 1 144 0 discriminator 131
	ldr	r3, .L433
	ldr	r2, [r7, #4]
	subs	r2, r2, #32
	movs	r1, #1
	lsls	r1, r1, r2
	movs	r2, r1
	str	r2, [r3]
.L422:
.LBE156:
	.loc 1 144 0 discriminator 133
	movs	r0, #1
	bl	USC_Pause_us
	movs	r3, #27
	adds	r3, r7, r3
	ldrb	r3, [r3]
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	adds	r3, r7, #3
	strb	r2, [r3]
.LBE134:
	.loc 1 145 0 is_stmt 1 discriminator 133
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L423
	.loc 1 145 0 is_stmt 0 discriminator 1
	bl	FT6236_RegisterISR
	subs	r3, r0, #0
	beq	.L423
	.loc 1 152 0 is_stmt 1
	movs	r0, #23
	bl	NVIC_EnableEINT
	.loc 1 153 0
	ldr	r3, .L433+4
	movs	r1, #56
	movs	r0, r3
	bl	printf
	.loc 1 153 0
	ldr	r3, .L433+8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 153 0
	movs	r0, r3
	bl	fflush
	.loc 1 154 0
	movs	r3, #1
	b	.L424
.L423:
	.loc 1 156 0
	ldr	r3, .L433+12
	movs	r0, r3
	bl	puts
	.loc 1 156 0
	ldr	r3, .L433+8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 156 0
	movs	r0, r3
	bl	fflush
	.loc 1 157 0
	movs	r3, #0
.L424:
	.loc 1 158 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #240
	@ sp needed
	pop	{r7, pc}
.L434:
	.align	2
.L433:
	.word	-1610481640
	.word	.LC6
	.word	_impure_ptr
	.word	.LC8
	.cfi_endproc
.LFE6:
	.size	FT6236_Initialize, .-FT6236_Initialize
	.section	.text.FT6236_Sleep,"ax",%progbits
	.align	2
	.global	FT6236_Sleep
	.code	16
	.thumb_func
	.type	FT6236_Sleep, %function
FT6236_Sleep:
.LFB7:
	.loc 1 161 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 162 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	FT6236_Sleep, .-FT6236_Sleep
	.section	.text.FT6236_Resume,"ax",%progbits
	.align	2
	.global	FT6236_Resume
	.code	16
	.thumb_func
	.type	FT6236_Resume, %function
FT6236_Resume:
.LFB8:
	.loc 1 165 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 166 0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE8:
	.size	FT6236_Resume, .-FT6236_Resume
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\lock.h"
	.file 5 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_types.h"
	.file 6 "d:\\1.11\\share\\em_armgcc\\lib\\gcc\\arm-none-eabi\\5.4.1\\include\\stddef.h"
	.file 7 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\reent.h"
	.file 8 ".\\Source/systypes.h"
	.file 9 ".\\Source\\GUI/gditypes.h"
	.file 10 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 11 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 12 ".\\Source\\System/evmngr.h"
	.file 13 ".\\Source\\GUI/gui.h"
	.file 14 ".\\Source\\Application\\Drivers/ft6236.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1eef
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
	.byte	0x20
	.4byte	0x3e
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
	.4byte	0x49
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0xb8
	.4byte	0x49
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
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8c
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x4
	.byte	0x9
	.byte	0x41
	.4byte	0x8f5
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0x9
	.byte	0x43
	.4byte	0x97
	.byte	0
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0x9
	.byte	0x44
	.4byte	0x97
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x9
	.byte	0x45
	.4byte	0x8d4
	.uleb128 0x20
	.4byte	.LASF134
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0xf1
	.4byte	0x92f
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
	.byte	0xb
	.byte	0x24
	.4byte	0x976
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF144
	.byte	0x7
	.byte	0
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.4byte	0x37
	.byte	0xc
	.byte	0x16
	.4byte	0x9b7
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
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF153
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF154
	.byte	0x8
	.byte	0xd
	.byte	0x16
	.4byte	0x9dc
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xd
	.byte	0x18
	.4byte	0xa2
	.byte	0
	.uleb128 0xf
	.ascii	"PXY\000"
	.byte	0xd
	.byte	0x19
	.4byte	0x8f5
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xd
	.byte	0x1a
	.4byte	0x9b7
	.uleb128 0x20
	.4byte	.LASF157
	.byte	0x1
	.4byte	0x37
	.byte	0xe
	.byte	0x31
	.4byte	0xa10
	.uleb128 0x1f
	.4byte	.LASF158
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF160
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF161
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.4byte	.LASF166
	.byte	0x1
	.byte	0x2c
	.4byte	0x8c3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x124f
	.uleb128 0x22
	.4byte	.LASF162
	.byte	0x1
	.byte	0x2c
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -369
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0x1
	.byte	0x2c
	.4byte	0x8ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x22
	.4byte	.LASF164
	.byte	0x1
	.byte	0x2c
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x24
	.ascii	"Res\000"
	.byte	0x1
	.byte	0x31
	.4byte	0x8c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -341
	.uleb128 0x23
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x24
	.ascii	"Ack\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x8c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x24
	.ascii	"Dat\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x24
	.ascii	"Sz\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x25
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xaba
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x25
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xad4
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x25
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xafb
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x25
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xb16
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xb3e
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x25
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xb59
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x25
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xccd
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.4byte	.LASF165
	.byte	0x1
	.byte	0x33
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x25
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0xb9b
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x25
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xbc3
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x25
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0xbde
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x25
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0xbf9
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x25
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0xc21
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x25
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0xc3c
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x25
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0xc57
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x25
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0xc72
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x25
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0xc8d
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x25
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0xcb5
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x23
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0xe41
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.4byte	.LASF165
	.byte	0x1
	.byte	0x33
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x25
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0xd0f
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x25
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0xd37
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x25
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0xd52
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.uleb128 0x25
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0xd6d
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x25
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0xd95
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x25
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0xdb0
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.uleb128 0x25
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0xdcb
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x25
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0xde6
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x25
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0xe01
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x25
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0xe29
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x23
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.4byte	0xe5c
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x25
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0xe84
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x25
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.4byte	0xe9f
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.uleb128 0x25
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.4byte	0xec7
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.uleb128 0x25
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.4byte	0xee2
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x25
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.4byte	0x1056
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.4byte	.LASF165
	.byte	0x1
	.byte	0x33
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x25
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.4byte	0xf24
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.uleb128 0x25
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.4byte	0xf4c
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x25
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.4byte	0xf67
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x25
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0xf82
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.uleb128 0x25
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.4byte	0xfaa
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.uleb128 0x25
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.4byte	0xfc5
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x25
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.4byte	0xfe0
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.byte	0
	.uleb128 0x25
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0xffb
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x25
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.4byte	0x1016
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0
	.uleb128 0x25
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.4byte	0x103e
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.byte	0
	.uleb128 0x23
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0x11d7
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x24
	.ascii	"res\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.4byte	0x10a5
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.byte	0
	.uleb128 0x25
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.4byte	0x10c0
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x25
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.4byte	0x10db
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
	.uleb128 0x25
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.4byte	0x1103
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x25
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.4byte	0x111e
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.byte	0
	.uleb128 0x25
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.4byte	0x1139
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x25
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.4byte	0x1161
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x25
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.4byte	0x117c
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.byte	0
	.uleb128 0x25
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.4byte	0x1197
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.uleb128 0x25
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.4byte	0x11bf
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.byte	0
	.uleb128 0x23
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.4byte	0x11ff
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x25
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.4byte	0x121a
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.byte	0
	.uleb128 0x25
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.4byte	0x1235
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.byte	0
	.uleb128 0x23
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF167
	.byte	0x1
	.byte	0x39
	.4byte	0x8c3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186a
	.uleb128 0x22
	.4byte	.LASF162
	.byte	0x1
	.byte	0x39
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -273
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0x1
	.byte	0x39
	.4byte	0x8ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x22
	.4byte	.LASF164
	.byte	0x1
	.byte	0x39
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x23
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.uleb128 0x24
	.ascii	"Res\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0x8c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -265
	.uleb128 0x23
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.uleb128 0x24
	.ascii	"Ack\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x8c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x24
	.ascii	"Dat\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x24
	.ascii	"Sz\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x25
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.4byte	0x12f9
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.4byte	0x1313
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x25
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.4byte	0x1339
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x25
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.4byte	0x1353
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x25
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.4byte	0x137b
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.4byte	0x1396
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x25
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.4byte	0x150a
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.4byte	.LASF165
	.byte	0x1
	.byte	0x40
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x25
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.4byte	0x13d8
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x25
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.4byte	0x1400
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x25
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.4byte	0x141b
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x25
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.4byte	0x1436
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x25
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.4byte	0x145e
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x25
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.4byte	0x1479
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x25
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.4byte	0x1494
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x25
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.4byte	0x14af
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x25
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.4byte	0x14ca
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x25
	.4byte	.LBB85
	.4byte	.LBE85-.LBB85
	.4byte	0x14f2
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x23
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.4byte	0x167e
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.4byte	.LASF165
	.byte	0x1
	.byte	0x40
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x25
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.4byte	0x154c
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x25
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.4byte	0x1574
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x25
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.4byte	0x158f
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x25
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.4byte	0x15aa
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x25
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.4byte	0x15d2
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x25
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.4byte	0x15ed
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x25
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.4byte	0x1608
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x25
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.4byte	0x1623
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.uleb128 0x25
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.4byte	0x163e
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x25
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.4byte	0x1666
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x23
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.4byte	0x17f2
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.4byte	.LASF165
	.byte	0x1
	.byte	0x40
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x25
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.4byte	0x16c0
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x25
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.4byte	0x16e8
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x25
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.4byte	0x1703
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.byte	0
	.uleb128 0x25
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.4byte	0x171e
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x25
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.4byte	0x1746
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x25
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.4byte	0x1761
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.uleb128 0x25
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.4byte	0x177c
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x25
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.4byte	0x1797
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.uleb128 0x25
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.4byte	0x17b2
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x25
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.4byte	0x17da
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x23
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB111
	.4byte	.LBE111-.LBB111
	.4byte	0x181a
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.uleb128 0x25
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.4byte	0x1835
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x25
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.4byte	0x1850
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.byte	0
	.uleb128 0x23
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF185
	.byte	0x1
	.byte	0x46
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18be
	.uleb128 0x26
	.4byte	.LASF168
	.byte	0x1
	.byte	0x48
	.4byte	0x18be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0x49
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x49
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.uleb128 0x26
	.4byte	.LASF169
	.byte	0x1
	.byte	0x4f
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8c
	.4byte	0x18ce
	.uleb128 0x9
	.4byte	0x110
	.byte	0xc
	.byte	0
	.uleb128 0x28
	.4byte	.LASF170
	.byte	0x1
	.byte	0x74
	.4byte	0x8c3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF171
	.byte	0x1
	.byte	0x79
	.4byte	0x8c3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF172
	.byte	0x1
	.byte	0x7e
	.4byte	0x8c3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e82
	.uleb128 0x26
	.4byte	.LASF173
	.byte	0x1
	.byte	0x80
	.4byte	0x8c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -245
	.uleb128 0x25
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.4byte	0x196e
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x84
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.uleb128 0x26
	.4byte	.LASF174
	.byte	0x1
	.byte	0x84
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x1
	.byte	0x84
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x26
	.4byte	.LASF176
	.byte	0x1
	.byte	0x84
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.4byte	0x1988
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x84
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.4byte	0x19ae
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x84
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x84
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x25
	.4byte	.LBB120
	.4byte	.LBE120-.LBB120
	.4byte	0x19d4
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x84
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x84
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x25
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.4byte	0x1a22
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x85
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.uleb128 0x26
	.4byte	.LASF174
	.byte	0x1
	.byte	0x85
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x1
	.byte	0x85
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x26
	.4byte	.LASF176
	.byte	0x1
	.byte	0x85
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB123
	.4byte	.LBE123-.LBB123
	.4byte	0x1a3d
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x85
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x25
	.4byte	.LBB124
	.4byte	.LBE124-.LBB124
	.4byte	0x1a65
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x85
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x85
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x25
	.4byte	.LBB125
	.4byte	.LBE125-.LBB125
	.4byte	0x1a8d
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x85
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x85
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x25
	.4byte	.LBB126
	.4byte	.LBE126-.LBB126
	.4byte	0x1ab5
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x85
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x85
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x25
	.4byte	.LBB127
	.4byte	.LBE127-.LBB127
	.4byte	0x1b07
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x87
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.4byte	.LBB128
	.4byte	.LBE128-.LBB128
	.uleb128 0x26
	.4byte	.LASF174
	.byte	0x1
	.byte	0x87
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -97
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x1
	.byte	0x87
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -98
	.uleb128 0x26
	.4byte	.LASF176
	.byte	0x1
	.byte	0x87
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.4byte	0x1b22
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x88
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x25
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.4byte	0x1b73
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x8a
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.4byte	.LBB131
	.4byte	.LBE131-.LBB131
	.uleb128 0x26
	.4byte	.LASF174
	.byte	0x1
	.byte	0x8a
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x1
	.byte	0x8a
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -114
	.uleb128 0x26
	.4byte	.LASF176
	.byte	0x1
	.byte	0x8a
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB132
	.4byte	.LBE132-.LBB132
	.4byte	0x1b9b
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x8c
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x8c
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x25
	.4byte	.LBB133
	.4byte	.LBE133-.LBB133
	.4byte	0x1bc3
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x8e
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x8e
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.uleb128 0x23
	.4byte	.LBB134
	.4byte	.LBE134-.LBB134
	.uleb128 0x24
	.ascii	"Ack\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x8c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -221
	.uleb128 0x25
	.4byte	.LBB135
	.4byte	.LBE135-.LBB135
	.4byte	0x1bf6
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x25
	.4byte	.LBB136
	.4byte	.LBE136-.LBB136
	.4byte	0x1c11
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0x25
	.4byte	.LBB137
	.4byte	.LBE137-.LBB137
	.4byte	0x1c39
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x90
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x25
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.4byte	0x1c54
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x25
	.4byte	.LBB139
	.4byte	.LBE139-.LBB139
	.4byte	0x1c7c
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x90
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x25
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.4byte	0x1c97
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x25
	.4byte	.LBB141
	.4byte	.LBE141-.LBB141
	.4byte	0x1e0b
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0x90
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.4byte	.LASF165
	.byte	0x1
	.byte	0x90
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x25
	.4byte	.LBB142
	.4byte	.LBE142-.LBB142
	.4byte	0x1cd9
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x25
	.4byte	.LBB143
	.4byte	.LBE143-.LBB143
	.4byte	0x1d01
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x90
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x25
	.4byte	.LBB144
	.4byte	.LBE144-.LBB144
	.4byte	0x1d1c
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x25
	.4byte	.LBB145
	.4byte	.LBE145-.LBB145
	.4byte	0x1d37
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x25
	.4byte	.LBB146
	.4byte	.LBE146-.LBB146
	.4byte	0x1d5f
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x90
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x25
	.4byte	.LBB147
	.4byte	.LBE147-.LBB147
	.4byte	0x1d7a
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.byte	0
	.uleb128 0x25
	.4byte	.LBB148
	.4byte	.LBE148-.LBB148
	.4byte	0x1d95
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x25
	.4byte	.LBB149
	.4byte	.LBE149-.LBB149
	.4byte	0x1db0
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.byte	0
	.uleb128 0x25
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.4byte	0x1dcb
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x25
	.4byte	.LBB151
	.4byte	.LBE151-.LBB151
	.4byte	0x1df3
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x90
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x23
	.4byte	.LBB152
	.4byte	.LBE152-.LBB152
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB153
	.4byte	.LBE153-.LBB153
	.4byte	0x1e33
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.byte	0x90
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x25
	.4byte	.LBB154
	.4byte	.LBE154-.LBB154
	.4byte	0x1e4e
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x25
	.4byte	.LBB155
	.4byte	.LBE155-.LBB155
	.4byte	0x1e69
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x23
	.4byte	.LBB156
	.4byte	.LBE156-.LBB156
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.byte	0x90
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF177
	.byte	0x1
	.byte	0xa0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.4byte	.LASF178
	.byte	0x1
	.byte	0xa4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF179
	.byte	0x7
	.2byte	0x2fd
	.4byte	0x468
	.uleb128 0x8
	.4byte	0x8c3
	.4byte	0x1ec0
	.uleb128 0x9
	.4byte	0x110
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF180
	.byte	0x1
	.byte	0x29
	.4byte	0x1eb0
	.uleb128 0x5
	.byte	0x3
	.4byte	FT6236_PenPressed
	.uleb128 0x8
	.4byte	0x8f5
	.4byte	0x1ee1
	.uleb128 0x9
	.4byte	0x110
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF181
	.byte	0x1
	.byte	0x2a
	.4byte	0x1ed1
	.uleb128 0x5
	.byte	0x3
	.4byte	FT6326_PenCoordinates
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2b
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
.LASF46:
	.ascii	"_dso_handle\000"
.LASF128:
	.ascii	"TPOINT\000"
.LASF145:
	.ascii	"tag_EVTYPE\000"
.LASF4:
	.ascii	"short int\000"
.LASF55:
	.ascii	"__sFILE\000"
.LASF45:
	.ascii	"_fnargs\000"
.LASF98:
	.ascii	"_rand48\000"
.LASF78:
	.ascii	"_emergency\000"
.LASF133:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF90:
	.ascii	"_atexit0\000"
.LASF118:
	.ascii	"_wcrtomb_state\000"
.LASF180:
	.ascii	"FT6236_PenPressed\000"
.LASF119:
	.ascii	"_wcsrtombs_state\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF58:
	.ascii	"_lbfsize\000"
.LASF151:
	.ascii	"ET_GODESTROY\000"
.LASF144:
	.ascii	"USB_EPNUM\000"
.LASF116:
	.ascii	"_mbrtowc_state\000"
.LASF111:
	.ascii	"_wctomb_state\000"
.LASF35:
	.ascii	"__tm_sec\000"
.LASF13:
	.ascii	"int16_t\000"
.LASF17:
	.ascii	"_off_t\000"
.LASF63:
	.ascii	"_close\000"
.LASF0:
	.ascii	"signed char\000"
.LASF64:
	.ascii	"_ubuf\000"
.LASF53:
	.ascii	"_base\000"
.LASF37:
	.ascii	"__tm_hour\000"
.LASF175:
	.ascii	"ModePos\000"
.LASF93:
	.ascii	"__sf\000"
.LASF44:
	.ascii	"_on_exit_args\000"
.LASF153:
	.ascii	"ET_ONTIMER\000"
.LASF59:
	.ascii	"_cookie\000"
.LASF92:
	.ascii	"__sglue\000"
.LASF178:
	.ascii	"FT6236_Resume\000"
.LASF6:
	.ascii	"long int\000"
.LASF168:
	.ascii	"TPData\000"
.LASF56:
	.ascii	"_flags\000"
.LASF48:
	.ascii	"_is_cxa\000"
.LASF74:
	.ascii	"_stdin\000"
.LASF136:
	.ascii	"USB_EP0\000"
.LASF84:
	.ascii	"_result_k\000"
.LASF23:
	.ascii	"__count\000"
.LASF9:
	.ascii	"long long int\000"
.LASF140:
	.ascii	"USB_EP4IN\000"
.LASF88:
	.ascii	"_cvtbuf\000"
.LASF67:
	.ascii	"_offset\000"
.LASF146:
	.ascii	"ET_UNKNOWN\000"
.LASF161:
	.ascii	"PE_NOEVENT\000"
.LASF117:
	.ascii	"_mbsrtowcs_state\000"
.LASF148:
	.ascii	"ET_PENRELEASE\000"
.LASF115:
	.ascii	"_mbrlen_state\000"
.LASF126:
	.ascii	"boolean\000"
.LASF165:
	.ascii	"byte\000"
.LASF51:
	.ascii	"_fns\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF31:
	.ascii	"_sign\000"
.LASF174:
	.ascii	"RegIdx\000"
.LASF179:
	.ascii	"_impure_ptr\000"
.LASF76:
	.ascii	"_stderr\000"
.LASF33:
	.ascii	"_Bigint\000"
.LASF60:
	.ascii	"_read\000"
.LASF185:
	.ascii	"FT6236_ISR\000"
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
.LASF169:
	.ascii	"TSEvent\000"
.LASF181:
	.ascii	"FT6326_PenCoordinates\000"
.LASF162:
	.ascii	"Register\000"
.LASF96:
	.ascii	"_niobs\000"
.LASF107:
	.ascii	"_rand_next\000"
.LASF157:
	.ascii	"tag_PEVENT\000"
.LASF147:
	.ascii	"ET_PENPRESS\000"
.LASF113:
	.ascii	"_signal_buf\000"
.LASF104:
	.ascii	"_asctime_buf\000"
.LASF167:
	.ascii	"FT6236_WriteData\000"
.LASF83:
	.ascii	"_result\000"
.LASF20:
	.ascii	"__wch\000"
.LASF139:
	.ascii	"USB_EP3IN\000"
.LASF89:
	.ascii	"_new\000"
.LASF69:
	.ascii	"_lock\000"
.LASF100:
	.ascii	"_mult\000"
.LASF61:
	.ascii	"_write\000"
.LASF40:
	.ascii	"__tm_year\000"
.LASF183:
	.ascii	"Source\\Application\\Drivers\\ft6236.c\000"
.LASF122:
	.ascii	"_nmalloc\000"
.LASF43:
	.ascii	"__tm_isdst\000"
.LASF177:
	.ascii	"FT6236_Sleep\000"
.LASF22:
	.ascii	"sizetype\000"
.LASF149:
	.ascii	"ET_PENMOVE\000"
.LASF164:
	.ascii	"Count\000"
.LASF121:
	.ascii	"_nextf\000"
.LASF170:
	.ascii	"FT6236_RegisterISR\000"
.LASF39:
	.ascii	"__tm_mon\000"
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
.LASF173:
	.ascii	"DeviceFound\000"
.LASF155:
	.ascii	"PenIndex\000"
.LASF138:
	.ascii	"USB_EP2IN\000"
.LASF25:
	.ascii	"_mbstate_t\000"
.LASF16:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF150:
	.ascii	"ET_ONPAINT\000"
.LASF97:
	.ascii	"_iobs\000"
.LASF120:
	.ascii	"_h_errno\000"
.LASF26:
	.ascii	"_flock_t\000"
.LASF42:
	.ascii	"__tm_yday\000"
.LASF52:
	.ascii	"__sbuf\000"
.LASF71:
	.ascii	"_flags2\000"
.LASF86:
	.ascii	"_freelist\000"
.LASF130:
	.ascii	"LCDIF_LAYER1\000"
.LASF94:
	.ascii	"__FILE\000"
.LASF124:
	.ascii	"false\000"
.LASF70:
	.ascii	"_mbstate\000"
.LASF5:
	.ascii	"short unsigned int\000"
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
.LASF166:
	.ascii	"FT6236_ReadData\000"
.LASF141:
	.ascii	"USB_EPMAXINDEX\000"
.LASF24:
	.ascii	"__value\000"
.LASF62:
	.ascii	"_seek\000"
.LASF41:
	.ascii	"__tm_wday\000"
.LASF18:
	.ascii	"_fpos_t\000"
.LASF47:
	.ascii	"_fntypes\000"
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
.LASF137:
	.ascii	"USB_EP1IN\000"
.LASF99:
	.ascii	"_seed\000"
.LASF127:
	.ascii	"tag_POINT\000"
.LASF176:
	.ascii	"Mask\000"
.LASF135:
	.ascii	"tag_EP\000"
.LASF29:
	.ascii	"_next\000"
.LASF103:
	.ascii	"_strtok_last\000"
.LASF129:
	.ascii	"LCDIF_LAYER0\000"
.LASF158:
	.ascii	"PE_PRESS\000"
.LASF131:
	.ascii	"LCDIF_LAYER2\000"
.LASF132:
	.ascii	"LCDIF_LAYER3\000"
.LASF171:
	.ascii	"FT6236_UnregisterISR\000"
.LASF172:
	.ascii	"FT6236_Initialize\000"
.LASF101:
	.ascii	"_add\000"
.LASF28:
	.ascii	"__ULong\000"
.LASF114:
	.ascii	"_getdate_err\000"
.LASF143:
	.ascii	"USB_EP2OUT\000"
.LASF79:
	.ascii	"_current_category\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF102:
	.ascii	"_unused_rand\000"
.LASF57:
	.ascii	"_file\000"
.LASF32:
	.ascii	"_wds\000"
.LASF95:
	.ascii	"_glue\000"
.LASF156:
	.ascii	"TPENEVENT\000"
.LASF152:
	.ascii	"ET_PWRKEY\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF112:
	.ascii	"_l64a_buf\000"
.LASF163:
	.ascii	"Data\000"
.LASF91:
	.ascii	"_sig_func\000"
.LASF154:
	.ascii	"tag_PENEVENT\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF65:
	.ascii	"_nbuf\000"
.LASF123:
	.ascii	"_unused\000"
.LASF134:
	.ascii	"tag_VLINDEX\000"
.LASF159:
	.ascii	"PE_LIFTUP\000"
.LASF105:
	.ascii	"_localtime_buf\000"
.LASF36:
	.ascii	"__tm_min\000"
.LASF108:
	.ascii	"_r48\000"
.LASF142:
	.ascii	"USB_EP1OUT\000"
.LASF110:
	.ascii	"_mbtowc_state\000"
.LASF85:
	.ascii	"_p5s\000"
.LASF68:
	.ascii	"_data\000"
.LASF38:
	.ascii	"__tm_mday\000"
.LASF125:
	.ascii	"true\000"
.LASF160:
	.ascii	"PE_CONTACT\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
