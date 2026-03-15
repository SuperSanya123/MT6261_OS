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
	.file	"evmngr.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.bss.EventsList,"aw",%nobits
	.align	2
	.type	EventsList, %object
	.size	EventsList, 4
EventsList:
	.space	4
	.section	.text.EM_GetTopEvent,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	EM_GetTopEvent, %function
EM_GetTopEvent:
.LFB1:
	.file 1 "Source\\System\\evmngr.c"
	.loc 1 27 0
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
	.loc 1 28 0
	ldr	r3, .L5
	ldr	r3, [r3]
	movs	r0, r3
	bl	DL_GetFirstItem
	movs	r3, r0
	str	r3, [r7, #4]
	.loc 1 30 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L2
	.loc 1 30 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 1 30 0 is_stmt 1 discriminator 1
	b	.L4
.L2:
	.loc 1 30 0 discriminator 2
	movs	r3, #0
.L4:
	.loc 1 31 0 discriminator 5
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	EventsList
	.cfi_endproc
.LFE1:
	.size	EM_GetTopEvent, .-EM_GetTopEvent
	.section	.text.EM_Initialize,"ax",%progbits
	.align	2
	.global	EM_Initialize
	.code	16
	.thumb_func
	.type	EM_Initialize, %function
EM_Initialize:
.LFB2:
	.loc 1 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 35 0
	ldr	r3, .L11
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L8
	.loc 1 35 0 discriminator 1
	bl	DL_Create
	movs	r2, r0
	ldr	r3, .L11
	str	r2, [r3]
.L8:
	.loc 1 36 0
	ldr	r3, .L11
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L9
	.loc 1 36 0 discriminator 1
	movs	r3, #0
	b	.L10
.L9:
	.loc 1 38 0
	movs	r3, #1
.L10:
	.loc 1 39 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	EventsList
	.cfi_endproc
.LFE2:
	.size	EM_Initialize, .-EM_Initialize
	.section	.text.EM_PostEvent,"ax",%progbits
	.align	2
	.global	EM_PostEvent
	.code	16
	.thumb_func
	.type	EM_PostEvent, %function
EM_PostEvent:
.LFB3:
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
	str	r3, [r7]
	movs	r3, #15
	adds	r3, r7, r3
	adds	r2, r0, #0
	strb	r2, [r3]
	.loc 1 45 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L14
	.loc 1 45 0 discriminator 1
	movs	r3, #0
	str	r3, [r7]
.L14:
	.loc 1 47 0
	ldr	r3, [r7]
	adds	r3, r3, #24
	movs	r0, r3
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 48 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L15
	.loc 1 50 0
	ldr	r3, [r7, #20]
	movs	r2, #15
	adds	r2, r7, r2
	ldrb	r2, [r2]
	strb	r2, [r3, #12]
	.loc 1 51 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	str	r2, [r3, #16]
	.loc 1 52 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	str	r2, [r3, #20]
	.loc 1 53 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L16
	.loc 1 53 0 discriminator 1
	ldr	r3, [r7, #20]
	adds	r3, r3, #24
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	movs	r0, r3
	bl	memcpy
.L16:
	.loc 1 54 0
	ldr	r3, .L19
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	movs	r1, r2
	movs	r0, r3
	bl	DL_AddItemPtr
	subs	r3, r0, #0
	beq	.L17
	.loc 1 54 0 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L18
.L17:
	.loc 1 55 0 is_stmt 1
	ldr	r3, [r7, #20]
	movs	r0, r3
	bl	free
.L15:
	.loc 1 57 0
	movs	r3, #0
.L18:
	.loc 1 58 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L20:
	.align	2
.L19:
	.word	EventsList
	.cfi_endproc
.LFE3:
	.size	EM_PostEvent, .-EM_PostEvent
	.section	.text.EM_ProcessEvents,"ax",%progbits
	.align	2
	.global	EM_ProcessEvents
	.code	16
	.thumb_func
	.type	EM_ProcessEvents, %function
EM_ProcessEvents:
.LFB4:
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
	.loc 1 64 0
	b	.L22
.L39:
	.loc 1 66 0
	ldr	r3, .L47
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	DL_ExcludeItem
	.loc 1 68 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]
	cmp	r3, #7
	bhi	.L40
	lsls	r2, r3, #2
	ldr	r3, .L47+4
	adds	r3, r2, r3
	ldr	r3, [r3]
	mov	pc, r3
	.section	.rodata.EM_ProcessEvents,"a",%progbits
	.align	2
.L25:
	.word	.L40
	.word	.L24
	.word	.L26
	.word	.L27
	.word	.L28
	.word	.L29
	.word	.L40
	.word	.L31
	.section	.text.EM_ProcessEvents
.L24:
	.loc 1 71 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #8
	bne	.L41
	.loc 1 72 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_OnPenPressHandler
	.loc 1 73 0
	b	.L41
.L26:
	.loc 1 75 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #8
	bne	.L42
	.loc 1 76 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_OnPenReleaseHandler
	.loc 1 77 0
	b	.L42
.L27:
	.loc 1 79 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #8
	bne	.L43
	.loc 1 80 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	GUI_OnPenMoveHandler
	.loc 1 81 0
	b	.L43
.L28:
	.loc 1 83 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #16
	bne	.L44
	.loc 1 84 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	movs	r0, r3
	bl	GUI_OnPaintHandler
	.loc 1 85 0
	b	.L44
.L29:
	.loc 1 87 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #4
	bne	.L45
	.loc 1 88 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	movs	r0, r3
	bl	GUI_OnDestroyHandler
	.loc 1 89 0
	b	.L45
.L31:
	.loc 1 93 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #4
	bne	.L46
.LBB2:
	.loc 1 95 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r3, [r3]
	str	r3, [r7]
	.loc 1 97 0
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L46
	.loc 1 97 0 discriminator 1
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	ldr	r2, [r7]
	movs	r0, r2
	blx	r3
.LBE2:
	.loc 1 99 0 discriminator 1
	b	.L46
.L40:
	.loc 1 101 0
	nop
	b	.L33
.L41:
	.loc 1 73 0
	nop
	b	.L33
.L42:
	.loc 1 77 0
	nop
	b	.L33
.L43:
	.loc 1 81 0
	nop
	b	.L33
.L44:
	.loc 1 85 0
	nop
	b	.L33
.L45:
	.loc 1 89 0
	nop
	b	.L33
.L46:
	.loc 1 99 0
	nop
.L33:
	.loc 1 103 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	free
.L22:
	.loc 1 64 0
	bl	EM_GetTopEvent
	movs	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L39
	.loc 1 105 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L48:
	.align	2
.L47:
	.word	EventsList
	.word	.L25
	.cfi_endproc
.LFE4:
	.size	EM_ProcessEvents, .-EM_ProcessEvents
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\System/dlist.h"
	.file 6 ".\\Source\\GUI/gditypes.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 8 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 9 ".\\Source\\System/evmngr.h"
	.file 10 ".\\Source\\System/lrtimer.h"
	.file 11 ".\\Source\\GUI/guiobject.h"
	.file 12 ".\\Source\\GUI/gui.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x6be
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0xc
	.4byte	.LASF118
	.4byte	.LASF119
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
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x3f
	.4byte	0x62
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
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.4byte	0x69
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0xf3
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x1d
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x17
	.4byte	0x109
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0xc
	.byte	0x5
	.byte	0x18
	.4byte	0x13a
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x1a
	.4byte	0x13a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1b
	.4byte	0x13a
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1c
	.4byte	0xd1
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x17
	.4byte	0x145
	.uleb128 0xa
	.byte	0x4
	.4byte	0x109
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0xc
	.byte	0x5
	.byte	0x1f
	.4byte	0x17c
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0x21
	.4byte	0x13a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x5
	.byte	0x22
	.4byte	0x13a
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x5
	.byte	0x23
	.4byte	0xb8
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x5
	.byte	0x24
	.4byte	0x187
	.uleb128 0xa
	.byte	0x4
	.4byte	0x14b
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x4
	.byte	0x6
	.byte	0x41
	.4byte	0x1ae
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x6
	.byte	0x43
	.4byte	0xa2
	.byte	0
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0x6
	.byte	0x44
	.4byte	0xa2
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x45
	.4byte	0x18d
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0x45
	.4byte	0x1c4
	.uleb128 0xa
	.byte	0x4
	.4byte	0x18d
	.uleb128 0xc
	.byte	0x8
	.byte	0x6
	.byte	0x49
	.4byte	0x1e9
	.uleb128 0xb
	.ascii	"lt\000"
	.byte	0x6
	.byte	0x4b
	.4byte	0x1ae
	.byte	0
	.uleb128 0xb
	.ascii	"rb\000"
	.byte	0x6
	.byte	0x4c
	.4byte	0x1ae
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x6
	.byte	0x4e
	.4byte	0x21a
	.uleb128 0xb
	.ascii	"l\000"
	.byte	0x6
	.byte	0x50
	.4byte	0xa2
	.byte	0
	.uleb128 0xb
	.ascii	"t\000"
	.byte	0x6
	.byte	0x51
	.4byte	0xa2
	.byte	0x2
	.uleb128 0xb
	.ascii	"r\000"
	.byte	0x6
	.byte	0x52
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xb
	.ascii	"b\000"
	.byte	0x6
	.byte	0x53
	.4byte	0xa2
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF120
	.byte	0x8
	.byte	0x6
	.byte	0x47
	.4byte	0x231
	.uleb128 0xe
	.4byte	0x1ca
	.uleb128 0xe
	.4byte	0x1e9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x6
	.byte	0x55
	.4byte	0x21a
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x6
	.byte	0x55
	.4byte	0x247
	.uleb128 0xa
	.byte	0x4
	.4byte	0x21a
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0xf1
	.4byte	0x27c
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
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x7
	.byte	0xf8
	.4byte	0x24d
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.4byte	0x37
	.byte	0x8
	.byte	0x24
	.4byte	0x2ce
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.4byte	0x37
	.byte	0x9
	.byte	0x16
	.4byte	0x30f
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
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x9
	.byte	0x23
	.4byte	0x2ce
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x18
	.byte	0x9
	.byte	0x25
	.4byte	0x363
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x9
	.byte	0x27
	.4byte	0xfe
	.byte	0
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x9
	.byte	0x28
	.4byte	0x30f
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x9
	.byte	0x29
	.4byte	0xd1
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x9
	.byte	0x2a
	.4byte	0xb8
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x9
	.byte	0x2b
	.4byte	0x363
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.4byte	0x97
	.4byte	0x372
	.uleb128 0x11
	.4byte	0xca
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x9
	.byte	0x2c
	.4byte	0x37d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x31a
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x1
	.4byte	0x37
	.byte	0xa
	.byte	0x16
	.4byte	0x3ac
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xa
	.byte	0x1c
	.4byte	0x383
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0xa
	.byte	0x1e
	.4byte	0x3c2
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3c8
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x1c
	.byte	0xa
	.byte	0x1f
	.4byte	0x411
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xa
	.byte	0x21
	.4byte	0xfe
	.byte	0
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0xa
	.byte	0x22
	.4byte	0x3ac
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0xa
	.byte	0x23
	.4byte	0xb8
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0xa
	.byte	0x24
	.4byte	0xb8
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0xa
	.byte	0x25
	.4byte	0x41c
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.4byte	0x41c
	.uleb128 0x13
	.4byte	0x3b7
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x411
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x1
	.4byte	0x37
	.byte	0xb
	.byte	0x16
	.4byte	0x451
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xb
	.byte	0x1e
	.4byte	0x422
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xb
	.byte	0x29
	.4byte	0x467
	.uleb128 0xa
	.byte	0x4
	.4byte	0x46d
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0x3c
	.byte	0xb
	.byte	0x2a
	.4byte	0x52e
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xb
	.byte	0x2c
	.4byte	0xfe
	.byte	0
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0xb
	.byte	0x2d
	.4byte	0x231
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0xb
	.byte	0x2e
	.4byte	0x45c
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0xb
	.byte	0x2f
	.4byte	0x451
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xb
	.byte	0x30
	.4byte	0xf3
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0xb
	.byte	0x31
	.4byte	0xf3
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0xb
	.byte	0x32
	.4byte	0xf3
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xb
	.byte	0x33
	.4byte	0xf3
	.byte	0x1c
	.uleb128 0xb
	.ascii	"Tag\000"
	.byte	0xb
	.byte	0x34
	.4byte	0xad
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xb
	.byte	0x35
	.4byte	0x53e
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0xb
	.byte	0x36
	.4byte	0x53e
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0xb
	.byte	0x37
	.4byte	0x53e
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0xb
	.byte	0x38
	.4byte	0x53e
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0xb
	.byte	0x39
	.4byte	0x554
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0xb
	.byte	0x3a
	.4byte	0x565
	.byte	0x38
	.byte	0
	.uleb128 0x12
	.4byte	0x53e
	.uleb128 0x13
	.4byte	0x45c
	.uleb128 0x13
	.4byte	0x1b9
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x52e
	.uleb128 0x12
	.4byte	0x554
	.uleb128 0x13
	.4byte	0x45c
	.uleb128 0x13
	.4byte	0x23c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x544
	.uleb128 0x12
	.4byte	0x565
	.uleb128 0x13
	.4byte	0x45c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x55a
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0x10
	.byte	0xc
	.byte	0x1c
	.4byte	0x59c
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xc
	.byte	0x1e
	.4byte	0x45c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0xc
	.byte	0x1f
	.4byte	0x231
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0xc
	.byte	0x20
	.4byte	0x27c
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xc
	.byte	0x21
	.4byte	0x5a7
	.uleb128 0xa
	.byte	0x4
	.4byte	0x56b
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x4
	.byte	0xc
	.byte	0x23
	.4byte	0x5c6
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xc
	.byte	0x25
	.4byte	0x45c
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xc
	.byte	0x26
	.4byte	0x5d1
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5ad
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x1
	.byte	0x1a
	.4byte	0x372
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ff
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x1
	.byte	0x1c
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x16
	.4byte	.LASF122
	.byte	0x1
	.byte	0x21
	.4byte	0xf3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF123
	.byte	0x1
	.byte	0x29
	.4byte	0xf3
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x674
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x1
	.byte	0x29
	.4byte	0x30f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x1
	.byte	0x29
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.byte	0x29
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x1
	.byte	0x29
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x1
	.byte	0x2b
	.4byte	0x372
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x19
	.4byte	.LASF124
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b0
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x1
	.byte	0x3e
	.4byte	0x372
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x1
	.byte	0x5f
	.4byte	0x3b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x1
	.byte	0x18
	.4byte	0x17c
	.uleb128 0x5
	.byte	0x3
	.4byte	EventsList
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF56:
	.ascii	"tag_EVTYPE\000"
.LASF104:
	.ascii	"OnClick\000"
.LASF80:
	.ascii	"tag_TIMER\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF107:
	.ascii	"tag_PAINTEV\000"
.LASF123:
	.ascii	"EM_PostEvent\000"
.LASF58:
	.ascii	"ET_PENPRESS\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF113:
	.ascii	"tmpItem\000"
.LASF124:
	.ascii	"EM_ProcessEvents\000"
.LASF55:
	.ascii	"USB_EPNUM\000"
.LASF109:
	.ascii	"Layer\000"
.LASF73:
	.ascii	"tag_MRFLAGS\000"
.LASF110:
	.ascii	"pPAINTEV\000"
.LASF36:
	.ascii	"pPOINT\000"
.LASF122:
	.ascii	"EM_Initialize\000"
.LASF14:
	.ascii	"int16_t\000"
.LASF10:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF85:
	.ascii	"tag_GOTYPE\000"
.LASF93:
	.ascii	"tag_GUIOBJECT\000"
.LASF72:
	.ascii	"pEVENT\000"
.LASF101:
	.ascii	"OnPress\000"
.LASF114:
	.ascii	"tmpEvent\000"
.LASF35:
	.ascii	"TPOINT\000"
.LASF7:
	.ascii	"long int\000"
.LASF69:
	.ascii	"Object\000"
.LASF90:
	.ascii	"GO_NUMTYPES\000"
.LASF47:
	.ascii	"USB_EP0\000"
.LASF44:
	.ascii	"TVLINDEX\000"
.LASF51:
	.ascii	"USB_EP4IN\000"
.LASF57:
	.ascii	"ET_UNKNOWN\000"
.LASF59:
	.ascii	"ET_PENRELEASE\000"
.LASF22:
	.ascii	"boolean\000"
.LASF95:
	.ascii	"Parent\000"
.LASF68:
	.ascii	"Event\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF96:
	.ascii	"Type\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF119:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF117:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF120:
	.ascii	"tag_RECT\000"
.LASF64:
	.ascii	"ET_ONTIMER\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF84:
	.ascii	"Handler\000"
.LASF79:
	.ascii	"pTIMER\000"
.LASF71:
	.ascii	"Param\000"
.LASF50:
	.ascii	"USB_EP3IN\000"
.LASF4:
	.ascii	"short int\000"
.LASF108:
	.ascii	"UpdateRect\000"
.LASF25:
	.ascii	"Next\000"
.LASF99:
	.ascii	"InheritedEnabled\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF86:
	.ascii	"GO_UNKNOWN\000"
.LASF60:
	.ascii	"ET_PENMOVE\000"
.LASF75:
	.ascii	"TF_ENABLED\000"
.LASF67:
	.ascii	"ListHeader\000"
.LASF24:
	.ascii	"Prev\000"
.LASF33:
	.ascii	"pDLIST\000"
.LASF43:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF106:
	.ascii	"OnDestroy\000"
.LASF45:
	.ascii	"tag_VLINDEX\000"
.LASF49:
	.ascii	"USB_EP2IN\000"
.LASF103:
	.ascii	"OnMove\000"
.LASF102:
	.ascii	"OnRelease\000"
.LASF30:
	.ascii	"First\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF61:
	.ascii	"ET_ONPAINT\000"
.LASF111:
	.ascii	"tag_GODESTROYEV\000"
.LASF87:
	.ascii	"GO_WINDOW\000"
.LASF97:
	.ascii	"Enabled\000"
.LASF77:
	.ascii	"TF_DIRECT\000"
.LASF20:
	.ascii	"false\000"
.LASF62:
	.ascii	"ET_GODESTROY\000"
.LASF37:
	.ascii	"TRECT\000"
.LASF29:
	.ascii	"tag_DList\000"
.LASF52:
	.ascii	"USB_EPMAXINDEX\000"
.LASF89:
	.ascii	"GO_LABEL\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF82:
	.ascii	"Interval\000"
.LASF83:
	.ascii	"StartTicks\000"
.LASF78:
	.ascii	"TMRFLAGS\000"
.LASF17:
	.ascii	"long double\000"
.LASF19:
	.ascii	"char\000"
.LASF48:
	.ascii	"USB_EP1IN\000"
.LASF98:
	.ascii	"Visible\000"
.LASF34:
	.ascii	"tag_POINT\000"
.LASF81:
	.ascii	"Flags\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF46:
	.ascii	"tag_EP\000"
.LASF94:
	.ascii	"Position\000"
.LASF42:
	.ascii	"LCDIF_LAYER3\000"
.LASF39:
	.ascii	"LCDIF_LAYER0\000"
.LASF40:
	.ascii	"LCDIF_LAYER1\000"
.LASF41:
	.ascii	"LCDIF_LAYER2\000"
.LASF66:
	.ascii	"tag_EVENT\000"
.LASF70:
	.ascii	"ParamSz\000"
.LASF91:
	.ascii	"TGOTYPE\000"
.LASF54:
	.ascii	"USB_EP2OUT\000"
.LASF38:
	.ascii	"pRECT\000"
.LASF118:
	.ascii	"Source\\System\\evmngr.c\000"
.LASF115:
	.ascii	"EvTimer\000"
.LASF112:
	.ascii	"pGODESTROYEV\000"
.LASF32:
	.ascii	"Count\000"
.LASF121:
	.ascii	"EM_GetTopEvent\000"
.LASF63:
	.ascii	"ET_PWRKEY\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF26:
	.ascii	"Data\000"
.LASF92:
	.ascii	"pGUIOBJECT\000"
.LASF100:
	.ascii	"InheritedVisible\000"
.LASF28:
	.ascii	"tag_ListItem\000"
.LASF31:
	.ascii	"Last\000"
.LASF53:
	.ascii	"USB_EP1OUT\000"
.LASF88:
	.ascii	"GO_BUTTON\000"
.LASF23:
	.ascii	"TDLITEM\000"
.LASF76:
	.ascii	"TF_AUTOREPEAT\000"
.LASF116:
	.ascii	"EventsList\000"
.LASF74:
	.ascii	"TF_NONE\000"
.LASF27:
	.ascii	"pDLITEM\000"
.LASF21:
	.ascii	"true\000"
.LASF105:
	.ascii	"OnPaint\000"
.LASF65:
	.ascii	"TEVTYPE\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
