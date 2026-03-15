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
	.file	"init.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\015\012--System initialization--\015\000"
	.align	2
.LC3:
	.ascii	"Initialize serial flash interface:\015\000"
	.align	2
.LC5:
	.ascii	"Initialize system memory pool - \000"
	.align	2
.LC7:
	.ascii	"%u KiB available\015\012\000"
	.align	2
.LC9:
	.ascii	"failed!\015\000"
	.align	2
.LC11:
	.ascii	"Initialize NVICs...\000"
	.align	2
.LC13:
	.ascii	"Complete.\015\000"
	.align	2
.LC15:
	.ascii	"Initialize real time clock...\000"
	.align	2
.LC17:
	.ascii	"Initialize event manager...\000"
	.align	2
.LC19:
	.ascii	"Complete.\015\012\000"
	.align	2
.LC21:
	.ascii	"Failed\015\012\000"
	.align	2
.LC23:
	.ascii	"Initialize low resolution timers pool...\000"
	.align	2
.LC25:
	.ascii	"Power management initialization\000"
	.section	.text.Init,"ax",%progbits
	.align	2
	.global	Init
	.code	16
	.thumb_func
	.type	Init, %function
Init:
.LFB1:
	.file 1 "Source\\System\\init.c"
	.loc 1 26 0
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
	.loc 1 29 0
	bl	DBG_Initialize
	.loc 1 30 0
	ldr	r3, .L8
	movs	r0, r3
	bl	puts
	.loc 1 30 0
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 30 0
	movs	r0, r3
	bl	fflush
	.loc 1 32 0
	movs	r1, #1
	movs	r0, #0
	bl	PMU_SetPWRKEYLongPressFunction
	.loc 1 34 0
	bl	MPU_Initialize
	.loc 1 35 0
	bl	PCTL_Initialize
	.loc 1 36 0
	bl	GPIO_Initialize
	.loc 1 38 0
	bl	USC_StartCounter
	.loc 1 40 0
	ldr	r3, .L8+8
	movs	r0, r3
	bl	puts
	.loc 1 40 0
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 40 0
	movs	r0, r3
	bl	fflush
	.loc 1 41 0
	bl	SF_Initialize
	.loc 1 43 0
	ldr	r3, .L8+12
	movs	r0, r3
	bl	printf
	.loc 1 43 0
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 43 0
	movs	r0, r3
	bl	fflush
.LBB2:
	.loc 1 45 0
	bl	InitializeMemoryPool
	movs	r3, r0
	str	r3, [r7, #4]
	.loc 1 47 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	beq	.L2
	.loc 1 47 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	lsrs	r2, r3, #10
	ldr	r3, .L8+16
	movs	r1, r2
	movs	r0, r3
	bl	printf
	.loc 1 47 0 is_stmt 1 discriminator 1
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 47 0 discriminator 1
	movs	r0, r3
	bl	fflush
	b	.L3
.L2:
	.loc 1 48 0
	ldr	r3, .L8+20
	movs	r0, r3
	bl	puts
	.loc 1 48 0
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 48 0
	movs	r0, r3
	bl	fflush
.L3:
.LBE2:
	.loc 1 51 0
	ldr	r3, .L8+24
	movs	r0, r3
	bl	printf
	.loc 1 51 0
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 51 0
	movs	r0, r3
	bl	fflush
	.loc 1 52 0
	bl	NVIC_Initialize
	.loc 1 53 0
	ldr	r3, .L8+28
	movs	r0, r3
	bl	puts
	.loc 1 53 0
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 53 0
	movs	r0, r3
	bl	fflush
	.loc 1 55 0
	ldr	r3, .L8+32
	movs	r0, r3
	bl	printf
	.loc 1 55 0
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 55 0
	movs	r0, r3
	bl	fflush
	.loc 1 56 0
	bl	RTC_Initialize
	.loc 1 58 0
	ldr	r3, .L8+36
	movs	r0, r3
	bl	printf
	.loc 1 58 0
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 58 0
	movs	r0, r3
	bl	fflush
	.loc 1 59 0
	adds	r4, r7, #3
	bl	EM_Initialize
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 60 0
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L4
	.loc 1 60 0 is_stmt 0 discriminator 1
	ldr	r3, .L8+40
	b	.L5
.L4:
	.loc 1 60 0 discriminator 2
	ldr	r3, .L8+44
.L5:
	.loc 1 60 0 discriminator 4
	movs	r0, r3
	bl	printf
	.loc 1 60 0 is_stmt 1 discriminator 4
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 60 0 discriminator 4
	movs	r0, r3
	bl	fflush
	.loc 1 62 0 discriminator 4
	ldr	r3, .L8+48
	movs	r0, r3
	bl	printf
	.loc 1 62 0 discriminator 4
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 62 0 discriminator 4
	movs	r0, r3
	bl	fflush
	.loc 1 63 0 discriminator 4
	adds	r4, r7, #3
	bl	LRT_Initialize
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 64 0 discriminator 4
	adds	r3, r7, #3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L6
	.loc 1 64 0 is_stmt 0 discriminator 1
	ldr	r3, .L8+40
	b	.L7
.L6:
	.loc 1 64 0 discriminator 2
	ldr	r3, .L8+44
.L7:
	.loc 1 64 0 discriminator 4
	movs	r0, r3
	bl	printf
	.loc 1 64 0 is_stmt 1 discriminator 4
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 64 0 discriminator 4
	movs	r0, r3
	bl	fflush
	.loc 1 66 0 discriminator 4
	ldr	r3, .L8+52
	movs	r0, r3
	bl	printf
	.loc 1 66 0 discriminator 4
	ldr	r3, .L8+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 1 66 0 discriminator 4
	movs	r0, r3
	bl	fflush
	.loc 1 67 0 discriminator 4
	bl	PMU_Initialize
	.loc 1 69 0 discriminator 4
	bl	__enable_interrupts
	.loc 1 70 0 discriminator 4
	bl	APP_Initialize
	.loc 1 71 0 discriminator 4
	nop
	mov	sp, r7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r7, pc}
.L9:
	.align	2
.L8:
	.word	.LC0
	.word	_impure_ptr
	.word	.LC3
	.word	.LC5
	.word	.LC7
	.word	.LC9
	.word	.LC11
	.word	.LC13
	.word	.LC15
	.word	.LC17
	.word	.LC19
	.word	.LC21
	.word	.LC23
	.word	.LC25
	.cfi_endproc
.LFE1:
	.size	Init, .-Init
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\lib\\gcc\\arm-none-eabi\\5.4.1\\include\\stddef.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\lock.h"
	.file 4 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_types.h"
	.file 5 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\reent.h"
	.file 6 ".\\Source/systypes.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\pmu.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x8fa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0xc
	.4byte	.LASF127
	.4byte	.LASF128
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0xd8
	.4byte	0x64
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x7
	.4byte	0x5d
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x72
	.4byte	0x41
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x165
	.4byte	0x64
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.4byte	0xc9
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa8
	.4byte	0x9e
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa9
	.4byte	0xc9
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0xd9
	.uleb128 0x9
	.4byte	0xd9
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.4byte	0x101
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa5
	.4byte	0x5d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaa
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0xab
	.4byte	0xe0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0xaf
	.4byte	0x7d
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x11f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x16
	.4byte	0x48
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x18
	.byte	0x5
	.byte	0x2d
	.4byte	0x184
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2f
	.4byte	0x184
	.byte	0
	.uleb128 0xf
	.ascii	"_k\000"
	.byte	0x5
	.byte	0x30
	.4byte	0x5d
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x30
	.4byte	0x5d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x30
	.4byte	0x5d
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x30
	.4byte	0x5d
	.byte	0x10
	.uleb128 0xf
	.ascii	"_x\000"
	.byte	0x5
	.byte	0x31
	.4byte	0x18a
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x131
	.uleb128 0x8
	.4byte	0x126
	.4byte	0x19a
	.uleb128 0x9
	.4byte	0xd9
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x24
	.byte	0x5
	.byte	0x35
	.4byte	0x213
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x37
	.4byte	0x5d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x38
	.4byte	0x5d
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x39
	.4byte	0x5d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3a
	.4byte	0x5d
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3b
	.4byte	0x5d
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3c
	.4byte	0x5d
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3d
	.4byte	0x5d
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x3e
	.4byte	0x5d
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x3f
	.4byte	0x5d
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x5
	.byte	0x48
	.4byte	0x253
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x49
	.4byte	0x253
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x4a
	.4byte	0x253
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x5
	.byte	0x4c
	.4byte	0x126
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x5
	.byte	0x4f
	.4byte	0x126
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x117
	.4byte	0x263
	.uleb128 0x9
	.4byte	0xd9
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF44
	.2byte	0x190
	.byte	0x5
	.byte	0x5b
	.4byte	0x2a1
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x5c
	.4byte	0x2a1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x5d
	.4byte	0x5d
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x5f
	.4byte	0x2a7
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x60
	.4byte	0x213
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x263
	.uleb128 0x8
	.4byte	0x2b7
	.4byte	0x2b7
	.uleb128 0x9
	.4byte	0xd9
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2bd
	.uleb128 0x12
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x8
	.byte	0x5
	.byte	0x73
	.4byte	0x2e3
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x74
	.4byte	0x2e3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0x75
	.4byte	0x5d
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x68
	.byte	0x5
	.byte	0xb3
	.4byte	0x413
	.uleb128 0xf
	.ascii	"_p\000"
	.byte	0x5
	.byte	0xb4
	.4byte	0x2e3
	.byte	0
	.uleb128 0xf
	.ascii	"_r\000"
	.byte	0x5
	.byte	0xb5
	.4byte	0x5d
	.byte	0x4
	.uleb128 0xf
	.ascii	"_w\000"
	.byte	0x5
	.byte	0xb6
	.4byte	0x5d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0xb7
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0xb8
	.4byte	0x33
	.byte	0xe
	.uleb128 0xf
	.ascii	"_bf\000"
	.byte	0x5
	.byte	0xb9
	.4byte	0x2be
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0xba
	.4byte	0x5d
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0xc1
	.4byte	0x117
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x5
	.byte	0xc3
	.4byte	0x569
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x5
	.byte	0xc5
	.4byte	0x598
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x5
	.byte	0xc8
	.4byte	0x5bc
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0xc9
	.4byte	0x5d6
	.byte	0x2c
	.uleb128 0xf
	.ascii	"_ub\000"
	.byte	0x5
	.byte	0xcc
	.4byte	0x2be
	.byte	0x30
	.uleb128 0xf
	.ascii	"_up\000"
	.byte	0x5
	.byte	0xcd
	.4byte	0x2e3
	.byte	0x38
	.uleb128 0xf
	.ascii	"_ur\000"
	.byte	0x5
	.byte	0xce
	.4byte	0x5d
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x5
	.byte	0xd1
	.4byte	0x5dc
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x5
	.byte	0xd2
	.4byte	0x5ec
	.byte	0x43
	.uleb128 0xf
	.ascii	"_lb\000"
	.byte	0x5
	.byte	0xd5
	.4byte	0x2be
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x5
	.byte	0xd8
	.4byte	0x5d
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x5
	.byte	0xd9
	.4byte	0x88
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x5
	.byte	0xdc
	.4byte	0x431
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x5
	.byte	0xe0
	.4byte	0x10c
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x5
	.byte	0xe2
	.4byte	0x101
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x5
	.byte	0xe3
	.4byte	0x5d
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.4byte	0x5d
	.4byte	0x431
	.uleb128 0x14
	.4byte	0x431
	.uleb128 0x14
	.4byte	0x117
	.uleb128 0x14
	.4byte	0x119
	.uleb128 0x14
	.4byte	0x5d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x437
	.uleb128 0x15
	.4byte	.LASF67
	.2byte	0x428
	.byte	0x5
	.2byte	0x238
	.4byte	0x569
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x23a
	.4byte	0x5d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x23f
	.4byte	0x643
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x23f
	.4byte	0x643
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x23f
	.4byte	0x643
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x241
	.4byte	0x5d
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x242
	.4byte	0x825
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x244
	.4byte	0x5d
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x245
	.4byte	0x58d
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x247
	.4byte	0x5d
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x249
	.4byte	0x840
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x24c
	.4byte	0x184
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x24d
	.4byte	0x5d
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x24e
	.4byte	0x184
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x24f
	.4byte	0x846
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x252
	.4byte	0x5d
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x253
	.4byte	0x119
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x276
	.4byte	0x803
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x27a
	.4byte	0x2a1
	.2byte	0x148
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x27b
	.4byte	0x263
	.2byte	0x14c
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x27f
	.4byte	0x857
	.2byte	0x2dc
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x284
	.4byte	0x608
	.2byte	0x2e0
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x285
	.4byte	0x863
	.2byte	0x2ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x413
	.uleb128 0x13
	.4byte	0x5d
	.4byte	0x58d
	.uleb128 0x14
	.4byte	0x431
	.uleb128 0x14
	.4byte	0x117
	.uleb128 0x14
	.4byte	0x58d
	.uleb128 0x14
	.4byte	0x5d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x593
	.uleb128 0x18
	.4byte	0x11f
	.uleb128 0xd
	.byte	0x4
	.4byte	0x56f
	.uleb128 0x13
	.4byte	0x93
	.4byte	0x5bc
	.uleb128 0x14
	.4byte	0x431
	.uleb128 0x14
	.4byte	0x117
	.uleb128 0x14
	.4byte	0x93
	.uleb128 0x14
	.4byte	0x5d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x59e
	.uleb128 0x13
	.4byte	0x5d
	.4byte	0x5d6
	.uleb128 0x14
	.4byte	0x431
	.uleb128 0x14
	.4byte	0x117
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5c2
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x5ec
	.uleb128 0x9
	.4byte	0xd9
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x5fc
	.uleb128 0x9
	.4byte	0xd9
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x11d
	.4byte	0x2e9
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0xc
	.byte	0x5
	.2byte	0x121
	.4byte	0x63d
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x123
	.4byte	0x63d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x124
	.4byte	0x5d
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x125
	.4byte	0x643
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x608
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5fc
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0xe
	.byte	0x5
	.2byte	0x13d
	.4byte	0x67e
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x13e
	.4byte	0x67e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x13f
	.4byte	0x67e
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x140
	.4byte	0x3a
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x68e
	.uleb128 0x9
	.4byte	0xd9
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd0
	.byte	0x5
	.2byte	0x257
	.4byte	0x78f
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x259
	.4byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x25a
	.4byte	0x119
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x25b
	.4byte	0x78f
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x25c
	.4byte	0x19a
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x25d
	.4byte	0x5d
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x25e
	.4byte	0x56
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x25f
	.4byte	0x649
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x260
	.4byte	0x101
	.byte	0x68
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x261
	.4byte	0x101
	.byte	0x70
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x262
	.4byte	0x101
	.byte	0x78
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x263
	.4byte	0x79f
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x264
	.4byte	0x7af
	.byte	0x88
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x265
	.4byte	0x5d
	.byte	0xa0
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x266
	.4byte	0x101
	.byte	0xa4
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x267
	.4byte	0x101
	.byte	0xac
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x268
	.4byte	0x101
	.byte	0xb4
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x269
	.4byte	0x101
	.byte	0xbc
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x26a
	.4byte	0x101
	.byte	0xc4
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x26b
	.4byte	0x5d
	.byte	0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0x11f
	.4byte	0x79f
	.uleb128 0x9
	.4byte	0xd9
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x11f
	.4byte	0x7af
	.uleb128 0x9
	.4byte	0xd9
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x11f
	.4byte	0x7bf
	.uleb128 0x9
	.4byte	0xd9
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0x5
	.2byte	0x270
	.4byte	0x7e3
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x273
	.4byte	0x7e3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x274
	.4byte	0x7f3
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x2e3
	.4byte	0x7f3
	.uleb128 0x9
	.4byte	0xd9
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x64
	.4byte	0x803
	.uleb128 0x9
	.4byte	0xd9
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x5
	.2byte	0x255
	.4byte	0x825
	.uleb128 0x1c
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x26c
	.4byte	0x68e
	.uleb128 0x1c
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x275
	.4byte	0x7bf
	.byte	0
	.uleb128 0x8
	.4byte	0x11f
	.4byte	0x835
	.uleb128 0x9
	.4byte	0xd9
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.4byte	0x840
	.uleb128 0x14
	.4byte	0x431
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x835
	.uleb128 0xd
	.byte	0x4
	.4byte	0x184
	.uleb128 0x1d
	.4byte	0x857
	.uleb128 0x14
	.4byte	0x5d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x85d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x84c
	.uleb128 0x8
	.4byte	0x5fc
	.4byte	0x873
	.uleb128 0x9
	.4byte	0xd9
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x2c
	.byte	0x6
	.byte	0x1d
	.4byte	0x88c
	.uleb128 0x1f
	.4byte	.LASF119
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x6
	.byte	0x1d
	.4byte	0x873
	.uleb128 0x20
	.4byte	.LASF129
	.byte	0x1
	.4byte	0x2c
	.byte	0x7
	.2byte	0x315
	.4byte	0x8b5
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0x1
	.byte	0
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x1
	.byte	0x19
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f1
	.uleb128 0x22
	.4byte	.LASF124
	.byte	0x1
	.byte	0x1b
	.4byte	0x88c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.byte	0x2d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x5
	.2byte	0x2fd
	.4byte	0x431
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF41:
	.ascii	"_dso_handle\000"
.LASF2:
	.ascii	"short int\000"
.LASF50:
	.ascii	"__sFILE\000"
.LASF40:
	.ascii	"_fnargs\000"
.LASF10:
	.ascii	"size_t\000"
.LASF93:
	.ascii	"_rand48\000"
.LASF73:
	.ascii	"_emergency\000"
.LASF124:
	.ascii	"Result\000"
.LASF85:
	.ascii	"_atexit0\000"
.LASF113:
	.ascii	"_wcrtomb_state\000"
.LASF114:
	.ascii	"_wcsrtombs_state\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF53:
	.ascii	"_lbfsize\000"
.LASF111:
	.ascii	"_mbrtowc_state\000"
.LASF106:
	.ascii	"_wctomb_state\000"
.LASF30:
	.ascii	"__tm_sec\000"
.LASF12:
	.ascii	"_off_t\000"
.LASF58:
	.ascii	"_close\000"
.LASF0:
	.ascii	"signed char\000"
.LASF59:
	.ascii	"_ubuf\000"
.LASF48:
	.ascii	"_base\000"
.LASF32:
	.ascii	"__tm_hour\000"
.LASF88:
	.ascii	"__sf\000"
.LASF39:
	.ascii	"_on_exit_args\000"
.LASF54:
	.ascii	"_cookie\000"
.LASF87:
	.ascii	"__sglue\000"
.LASF4:
	.ascii	"long int\000"
.LASF51:
	.ascii	"_flags\000"
.LASF43:
	.ascii	"_is_cxa\000"
.LASF69:
	.ascii	"_stdin\000"
.LASF79:
	.ascii	"_result_k\000"
.LASF6:
	.ascii	"long long int\000"
.LASF123:
	.ascii	"LPF_SHUTDOWN\000"
.LASF83:
	.ascii	"_cvtbuf\000"
.LASF62:
	.ascii	"_offset\000"
.LASF112:
	.ascii	"_mbsrtowcs_state\000"
.LASF110:
	.ascii	"_mbrlen_state\000"
.LASF46:
	.ascii	"_fns\000"
.LASF125:
	.ascii	"MemSize\000"
.LASF26:
	.ascii	"_sign\000"
.LASF131:
	.ascii	"_impure_ptr\000"
.LASF71:
	.ascii	"_stderr\000"
.LASF28:
	.ascii	"_Bigint\000"
.LASF55:
	.ascii	"_read\000"
.LASF29:
	.ascii	"__tm\000"
.LASF128:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF16:
	.ascii	"__wchb\000"
.LASF70:
	.ascii	"_stdout\000"
.LASF82:
	.ascii	"_cvtlen\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF52:
	.ascii	"_file\000"
.LASF127:
	.ascii	"Source\\System\\init.c\000"
.LASF63:
	.ascii	"_data\000"
.LASF91:
	.ascii	"_niobs\000"
.LASF102:
	.ascii	"_rand_next\000"
.LASF108:
	.ascii	"_signal_buf\000"
.LASF99:
	.ascii	"_asctime_buf\000"
.LASF78:
	.ascii	"_result\000"
.LASF15:
	.ascii	"__wch\000"
.LASF116:
	.ascii	"_nextf\000"
.LASF84:
	.ascii	"_new\000"
.LASF64:
	.ascii	"_lock\000"
.LASF95:
	.ascii	"_mult\000"
.LASF56:
	.ascii	"_write\000"
.LASF35:
	.ascii	"__tm_year\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF129:
	.ascii	"tag_LPFUNC\000"
.LASF34:
	.ascii	"__tm_mon\000"
.LASF44:
	.ascii	"_atexit\000"
.LASF76:
	.ascii	"__sdidinit\000"
.LASF101:
	.ascii	"_gamma_signgam\000"
.LASF126:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF14:
	.ascii	"wint_t\000"
.LASF130:
	.ascii	"Init\000"
.LASF81:
	.ascii	"_freelist\000"
.LASF11:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF92:
	.ascii	"_iobs\000"
.LASF115:
	.ascii	"_h_errno\000"
.LASF21:
	.ascii	"_flock_t\000"
.LASF37:
	.ascii	"__tm_yday\000"
.LASF47:
	.ascii	"__sbuf\000"
.LASF66:
	.ascii	"_flags2\000"
.LASF89:
	.ascii	"__FILE\000"
.LASF20:
	.ascii	"_mbstate_t\000"
.LASF119:
	.ascii	"false\000"
.LASF65:
	.ascii	"_mbstate\000"
.LASF104:
	.ascii	"_mblen_state\000"
.LASF72:
	.ascii	"_inc\000"
.LASF45:
	.ascii	"_ind\000"
.LASF75:
	.ascii	"_current_locale\000"
.LASF77:
	.ascii	"__cleanup\000"
.LASF25:
	.ascii	"_maxwds\000"
.LASF67:
	.ascii	"_reent\000"
.LASF94:
	.ascii	"_seed\000"
.LASF18:
	.ascii	"__count\000"
.LASF19:
	.ascii	"__value\000"
.LASF57:
	.ascii	"_seek\000"
.LASF36:
	.ascii	"__tm_wday\000"
.LASF13:
	.ascii	"_fpos_t\000"
.LASF9:
	.ascii	"long double\000"
.LASF68:
	.ascii	"_errno\000"
.LASF22:
	.ascii	"char\000"
.LASF61:
	.ascii	"_blksize\000"
.LASF49:
	.ascii	"_size\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF121:
	.ascii	"boolean\000"
.LASF122:
	.ascii	"LPF_REBOOT\000"
.LASF24:
	.ascii	"_next\000"
.LASF98:
	.ascii	"_strtok_last\000"
.LASF42:
	.ascii	"_fntypes\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF96:
	.ascii	"_add\000"
.LASF23:
	.ascii	"__ULong\000"
.LASF109:
	.ascii	"_getdate_err\000"
.LASF74:
	.ascii	"_current_category\000"
.LASF97:
	.ascii	"_unused_rand\000"
.LASF27:
	.ascii	"_wds\000"
.LASF90:
	.ascii	"_glue\000"
.LASF117:
	.ascii	"_nmalloc\000"
.LASF107:
	.ascii	"_l64a_buf\000"
.LASF86:
	.ascii	"_sig_func\000"
.LASF60:
	.ascii	"_nbuf\000"
.LASF118:
	.ascii	"_unused\000"
.LASF38:
	.ascii	"__tm_isdst\000"
.LASF100:
	.ascii	"_localtime_buf\000"
.LASF31:
	.ascii	"__tm_min\000"
.LASF103:
	.ascii	"_r48\000"
.LASF105:
	.ascii	"_mbtowc_state\000"
.LASF80:
	.ascii	"_p5s\000"
.LASF33:
	.ascii	"__tm_mday\000"
.LASF120:
	.ascii	"true\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
