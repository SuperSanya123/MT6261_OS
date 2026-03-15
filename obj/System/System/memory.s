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
	.file	"memory.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.noinit,"aw",%progbits
	.align	3
	.type	MemoryPool, %object
	.size	MemoryPool, 3145728
MemoryPool:
	.space	3145728
	.section	.text.InitializeMemoryPool,"ax",%progbits
	.align	2
	.global	InitializeMemoryPool
	.code	16
	.thumb_func
	.type	InitializeMemoryPool, %function
InitializeMemoryPool:
.LFB1:
	.file 1 "Source\\System\\memory.c"
	.loc 1 31 0
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
	.loc 1 32 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #4]
	.loc 1 35 0
	ldr	r3, .L3
	movs	r0, r3
	bl	destroy_memory_pool
	.loc 1 37 0
	ldr	r2, .L3
	movs	r3, #192
	lsls	r3, r3, #14
	movs	r1, r2
	movs	r0, r3
	bl	init_memory_pool
	movs	r3, r0
	str	r3, [r7]
	.loc 1 38 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 40 0
	ldr	r3, [r7]
	.loc 1 41 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L4:
	.align	2
.L3:
	.word	MemoryPool
	.cfi_endproc
.LFE1:
	.size	InitializeMemoryPool, .-InitializeMemoryPool
	.section	.text.malloc,"ax",%progbits
	.align	2
	.global	malloc
	.code	16
	.thumb_func
	.type	malloc, %function
malloc:
.LFB2:
	.loc 1 44 0
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
	.loc 1 45 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 46 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	tlsf_malloc
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 48 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 50 0
	ldr	r3, [r7, #8]
	.loc 1 51 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	malloc, .-malloc
	.section	.text.free,"ax",%progbits
	.align	2
	.global	free
	.code	16
	.thumb_func
	.type	free, %function
free:
.LFB3:
	.loc 1 54 0
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
	.loc 1 55 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 57 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	tlsf_free
	.loc 1 59 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 60 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	free, .-free
	.section	.text.realloc,"ax",%progbits
	.align	2
	.global	realloc
	.code	16
	.thumb_func
	.type	realloc, %function
realloc:
.LFB4:
	.loc 1 63 0
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
	.loc 1 64 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 65 0
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	tlsf_realloc
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 67 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 69 0
	ldr	r3, [r7, #8]
	.loc 1 70 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	realloc, .-realloc
	.section	.text.calloc,"ax",%progbits
	.align	2
	.global	calloc
	.code	16
	.thumb_func
	.type	calloc, %function
calloc:
.LFB5:
	.loc 1 73 0
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
	.loc 1 74 0
	bl	__disable_interrupts
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 75 0
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	tlsf_calloc
	movs	r3, r0
	str	r3, [r7, #8]
	.loc 1 77 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	__restore_interrupts
	.loc 1 79 0
	ldr	r3, [r7, #8]
	.loc 1 80 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE5:
	.size	calloc, .-calloc
	.section	.text.GetSysMemoryAddress,"ax",%progbits
	.align	2
	.global	GetSysMemoryAddress
	.code	16
	.thumb_func
	.type	GetSysMemoryAddress, %function
GetSysMemoryAddress:
.LFB6:
	.loc 1 83 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 84 0
	ldr	r3, .L14
	.loc 1 85 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	MemoryPool
	.cfi_endproc
.LFE6:
	.size	GetSysMemoryAddress, .-GetSysMemoryAddress
	.section	.text.IsDynamicMemory,"ax",%progbits
	.align	2
	.global	IsDynamicMemory
	.code	16
	.thumb_func
	.type	IsDynamicMemory, %function
IsDynamicMemory:
.LFB7:
	.loc 1 88 0
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
	.loc 1 89 0
	ldr	r2, [r7, #4]
	ldr	r3, .L20
	.loc 1 90 0
	cmp	r2, r3
	bcc	.L17
	.loc 1 90 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #4]
	ldr	r3, .L20+4
	cmp	r2, r3
	bhi	.L17
	.loc 1 90 0 discriminator 3
	movs	r3, #1
	b	.L18
.L17:
	.loc 1 90 0 discriminator 4
	movs	r3, #0
.L18:
	.loc 1 89 0 is_stmt 1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 91 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L21:
	.align	2
.L20:
	.word	MemoryPool
	.word	MemoryPool+3145727
	.cfi_endproc
.LFE7:
	.size	IsDynamicMemory, .-IsDynamicMemory
	.section	.text.IsStackMemory,"ax",%progbits
	.align	2
	.global	IsStackMemory
	.code	16
	.thumb_func
	.type	IsStackMemory, %function
IsStackMemory:
.LFB8:
	.loc 1 94 0
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
	.loc 1 95 0
	ldr	r2, [r7, #4]
	ldr	r3, .L28
	.loc 1 98 0
	cmp	r2, r3
	bcc	.L23
	.loc 1 96 0
	ldr	r2, [r7, #4]
	ldr	r3, .L28+4
	.loc 1 95 0
	cmp	r2, r3
	bcc	.L24
.L23:
	.loc 1 97 0 discriminator 1
	ldr	r2, [r7, #4]
	ldr	r3, .L28+8
	.loc 1 98 0 discriminator 1
	cmp	r2, r3
	bcc	.L25
	.loc 1 98 0 is_stmt 0 discriminator 2
	ldr	r2, [r7, #4]
	ldr	r3, .L28+12
	.loc 1 97 0 is_stmt 1 discriminator 2
	cmp	r2, r3
	bcs	.L25
.L24:
	.loc 1 98 0
	movs	r3, #1
	b	.L26
.L25:
	.loc 1 98 0 is_stmt 0 discriminator 3
	movs	r3, #0
.L26:
	.loc 1 95 0 is_stmt 1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	.loc 1 99 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L29:
	.align	2
.L28:
	.word	__stack_limit
	.word	__stack_top
	.word	__int_stack_limit
	.word	__int_stack_top
	.cfi_endproc
.LFE8:
	.size	IsStackMemory, .-IsStackMemory
	.section	.text.GetTotalUsedMemory,"ax",%progbits
	.align	2
	.global	GetTotalUsedMemory
	.code	16
	.thumb_func
	.type	GetTotalUsedMemory, %function
GetTotalUsedMemory:
.LFB9:
	.loc 1 102 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 103 0
	ldr	r3, .L32
	movs	r0, r3
	bl	get_used_size
	movs	r3, r0
	.loc 1 104 0
	movs	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L33:
	.align	2
.L32:
	.word	MemoryPool
	.cfi_endproc
.LFE9:
	.size	GetTotalUsedMemory, .-GetTotalUsedMemory
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "d:\\1.11\\share\\em_armgcc\\lib\\gcc\\arm-none-eabi\\5.4.1\\include\\stddef.h"
	.file 5 ".\\Source/systypes.h"
	.file 6 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 7 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 8 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\stdlib.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x380
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xc
	.4byte	.LASF58
	.4byte	.LASF59
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x41
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xca
	.4byte	0x85
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
	.byte	0x30
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x48
	.4byte	0x7a
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0xd8
	.4byte	0x85
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x6
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x1d
	.4byte	0xe8
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x1d
	.4byte	0xcf
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0xf1
	.4byte	0x122
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0x24
	.4byte	0x169
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1e
	.4byte	0xad
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19f
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.byte	0x20
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.byte	0x21
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x8
	.byte	0x64
	.4byte	0xc6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e3
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2b
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2e
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x8
	.byte	0x59
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x215
	.uleb128 0xd
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x35
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.byte	0x37
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x8
	.byte	0x89
	.4byte	0xc6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x267
	.uleb128 0xd
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x3e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.byte	0x40
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.byte	0x41
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0x56
	.4byte	0xc6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b9
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x1
	.byte	0x48
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x1
	.byte	0x48
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4a
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4b
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.byte	0x52
	.4byte	0x97
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1
	.byte	0x57
	.4byte	0xe8
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f6
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0x57
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0x5d
	.4byte	0xe8
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31e
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0x5d
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x65
	.4byte	0xad
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	0x8c
	.4byte	0x346
	.uleb128 0x12
	.4byte	0xbf
	.4byte	0x2fffff
	.byte	0
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x1
	.byte	0x19
	.4byte	0x333
	.uleb128 0x5
	.byte	0x3
	.4byte	MemoryPool
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x1
	.byte	0x1b
	.4byte	0xa2
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x1
	.byte	0x1b
	.4byte	0xa2
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x1
	.byte	0x1c
	.4byte	0xa2
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0x1c
	.4byte	0xa2
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x5c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF20:
	.ascii	"true\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF15:
	.ascii	"size_t\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF56:
	.ascii	"__int_stack_limit\000"
.LASF14:
	.ascii	"uintptr_t\000"
.LASF10:
	.ascii	"__uintptr_t\000"
.LASF27:
	.ascii	"tag_VLINDEX\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF57:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF48:
	.ascii	"Memory\000"
.LASF2:
	.ascii	"short int\000"
.LASF59:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF31:
	.ascii	"USB_EP2IN\000"
.LASF19:
	.ascii	"false\000"
.LASF37:
	.ascii	"USB_EPNUM\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF28:
	.ascii	"tag_EP\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF32:
	.ascii	"USB_EP3IN\000"
.LASF55:
	.ascii	"__int_stack_top\000"
.LASF24:
	.ascii	"LCDIF_LAYER2\000"
.LASF50:
	.ascii	"GetSysMemoryAddress\000"
.LASF35:
	.ascii	"USB_EP1OUT\000"
.LASF43:
	.ascii	"realloc\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF52:
	.ascii	"MemoryPool\000"
.LASF22:
	.ascii	"LCDIF_LAYER0\000"
.LASF23:
	.ascii	"LCDIF_LAYER1\000"
.LASF39:
	.ascii	"Result\000"
.LASF25:
	.ascii	"LCDIF_LAYER3\000"
.LASF49:
	.ascii	"IsStackMemory\000"
.LASF36:
	.ascii	"USB_EP2OUT\000"
.LASF51:
	.ascii	"GetTotalUsedMemory\000"
.LASF18:
	.ascii	"char\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF58:
	.ascii	"Source\\System\\memory.c\000"
.LASF54:
	.ascii	"__stack_limit\000"
.LASF47:
	.ascii	"IsDynamicMemory\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF60:
	.ascii	"free\000"
.LASF8:
	.ascii	"long long int\000"
.LASF45:
	.ascii	"nelem\000"
.LASF29:
	.ascii	"USB_EP0\000"
.LASF53:
	.ascii	"__stack_top\000"
.LASF44:
	.ascii	"calloc\000"
.LASF42:
	.ascii	"size\000"
.LASF13:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF16:
	.ascii	"long double\000"
.LASF30:
	.ascii	"USB_EP1IN\000"
.LASF0:
	.ascii	"signed char\000"
.LASF40:
	.ascii	"InitializeMemoryPool\000"
.LASF26:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF34:
	.ascii	"USB_EPMAXINDEX\000"
.LASF33:
	.ascii	"USB_EP4IN\000"
.LASF21:
	.ascii	"boolean\000"
.LASF41:
	.ascii	"malloc\000"
.LASF46:
	.ascii	"elem_size\000"
.LASF38:
	.ascii	"iflags\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
