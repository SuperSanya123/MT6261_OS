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
	.file	"fscache.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.FSC_FindBlock,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	FSC_FindBlock, %function
FSC_FindBlock:
.LFB1:
	.file 1 "Source\\System\\fscache.c"
	.loc 1 25 0
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
	.loc 1 26 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	movs	r0, r3
	bl	DL_GetFirstItem
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 28 0
	b	.L2
.L5:
	.loc 1 30 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	beq	.L7
	.loc 1 31 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	DL_GetNextItem
	movs	r3, r0
	str	r3, [r7, #12]
.L2:
	.loc 1 28 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L5
	b	.L4
.L7:
	.loc 1 30 0
	nop
.L4:
	.loc 1 33 0
	ldr	r3, [r7, #12]
	.loc 1 34 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	FSC_FindBlock, .-FSC_FindBlock
	.section	.text.FSC_Create,"ax",%progbits
	.align	2
	.global	FSC_Create
	.code	16
	.thumb_func
	.type	FSC_Create, %function
FSC_Create:
.LFB2:
	.loc 1 37 0
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
	str	r1, [r7]
	.loc 1 38 0
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 40 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L9
	.loc 1 42 0
	movs	r0, #20
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 43 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L9
	.loc 1 45 0
	ldr	r3, [r7, #20]
	movs	r2, #20
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 47 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3]
.LBB2:
	.loc 1 48 0
	movs	r3, #128
	str	r3, [r7, #16]
	ldr	r3, [r7]
	str	r3, [r7, #12]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	cmp	r3, r2
	bls	.L10
	movs	r3, r2
.L10:
.LBE2:
	ldr	r2, [r7, #20]
	str	r3, [r2, #4]
.L9:
	.loc 1 51 0
	ldr	r3, [r7, #20]
	.loc 1 52 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	FSC_Create, .-FSC_Create
	.section	.text.FSC_Destroy,"ax",%progbits
	.align	2
	.global	FSC_Destroy
	.code	16
	.thumb_func
	.type	FSC_Destroy, %function
FSC_Destroy:
.LFB3:
	.loc 1 55 0
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
	.loc 1 56 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L13
	.loc 1 58 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	movs	r0, r3
	bl	DL_GetItemsCount
	subs	r3, r0, #0
	beq	.L14
	.loc 1 59 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	movs	r1, #0
	movs	r0, r3
	bl	DL_Delete
.L14:
	.loc 1 60 0
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	IsDynamicMemory
	subs	r3, r0, #0
	beq	.L13
	.loc 1 60 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	free
.L13:
	.loc 1 62 0 is_stmt 1
	movs	r3, #0
	.loc 1 63 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	FSC_Destroy, .-FSC_Destroy
	.section	.text.FSC_Invalidate,"ax",%progbits
	.align	2
	.global	FSC_Invalidate
	.code	16
	.thumb_func
	.type	FSC_Invalidate, %function
FSC_Invalidate:
.LFB4:
	.loc 1 66 0
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
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	movs	r3, #11
	adds	r3, r7, r3
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 67 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 69 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L17
	.loc 1 71 0
	movs	r3, #11
	adds	r3, r7, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L20
	cmp	r3, #1
	beq	.L19
	b	.L17
.L21:
	.loc 1 75 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	movs	r0, r3
	bl	DL_DeleteFirstItem
.L20:
	.loc 1 74 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	movs	r0, r3
	bl	DL_GetItemsCount
	subs	r3, r0, #0
	bne	.L21
	.loc 1 76 0
	movs	r3, #23
	adds	r3, r7, r3
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 77 0
	b	.L17
.L19:
.LBB3:
	.loc 1 80 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	FSC_FindBlock
	movs	r3, r0
	str	r3, [r7, #16]
	.loc 1 82 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L24
	.loc 1 84 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r2, [r7, #16]
	movs	r1, #23
	adds	r4, r7, r1
	movs	r1, r2
	movs	r0, r3
	bl	DL_ExcludeItem
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 85 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	free
.L24:
.LBE3:
	.loc 1 88 0
	nop
.L17:
	.loc 1 91 0
	movs	r3, #23
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 92 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE4:
	.size	FSC_Invalidate, .-FSC_Invalidate
	.section	.text.FSC_StoreDataBlock,"ax",%progbits
	.align	2
	.global	FSC_StoreDataBlock
	.code	16
	.thumb_func
	.type	FSC_StoreDataBlock, %function
FSC_StoreDataBlock:
.LFB5:
	.loc 1 95 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 96 0
	movs	r3, #31
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 98 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L26
	.loc 1 98 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L26
.LBB4:
	.loc 1 100 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	FSC_FindBlock
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 102 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L27
	.loc 1 104 0
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	movs	r0, r3
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r1, r3
	bl	memcpy
	.loc 1 105 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r2, [r7, #24]
	movs	r1, #31
	adds	r4, r7, r1
	movs	r1, #0
	movs	r0, r3
	bl	DL_MoveItemToIndex
	movs	r3, r0
	strb	r3, [r4]
	b	.L26
.L27:
	.loc 1 109 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	movs	r0, r3
	bl	malloc
	movs	r3, r0
	str	r3, [r7, #24]
	.loc 1 110 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L26
	.loc 1 112 0
	b	.L28
.L31:
.LBB5:
	.loc 1 114 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	movs	r0, r3
	bl	DL_GetLastItem
	movs	r3, r0
	str	r3, [r7, #20]
	.loc 1 116 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L33
	.loc 1 117 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r2, [r7, #20]
	movs	r1, r2
	movs	r0, r3
	bl	DL_DeleteItem
.L28:
.LBE5:
	.loc 1 112 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	movs	r0, r3
	bl	DL_GetItemsCount
	movs	r2, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L31
	b	.L30
.L33:
.LBB6:
	.loc 1 116 0
	nop
.L30:
.LBE6:
	.loc 1 119 0
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	movs	r0, r3
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r1, r3
	bl	memcpy
	.loc 1 120 0
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #8]
	str	r2, [r3, #12]
	.loc 1 121 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r2, [r7, #24]
	movs	r1, #31
	adds	r4, r7, r1
	movs	r1, #0
	movs	r0, r3
	bl	DL_AddItemAtIndexPtr
	movs	r3, r0
	strb	r3, [r4]
.L26:
.LBE4:
	.loc 1 125 0
	movs	r3, #31
	adds	r3, r7, r3
	ldrb	r3, [r3]
	.loc 1 126 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE5:
	.size	FSC_StoreDataBlock, .-FSC_StoreDataBlock
	.section	.text.FSC_GetDataBlock,"ax",%progbits
	.align	2
	.global	FSC_GetDataBlock
	.code	16
	.thumb_func
	.type	FSC_GetDataBlock, %function
FSC_GetDataBlock:
.LFB6:
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
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 132 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L35
	.loc 1 132 0 discriminator 1
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	FSC_FindBlock
	movs	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L35
	.loc 1 134 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	b	.L36
.L35:
	.loc 1 135 0
	movs	r3, #0
.L36:
	.loc 1 136 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE6:
	.size	FSC_GetDataBlock, .-FSC_GetDataBlock
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\System/dlist.h"
	.file 6 ".\\Source\\System/fscache.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x40f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.LASF57
	.4byte	.Ldebug_ranges0+0x18
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.4byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x1
	.4byte	0x37
	.byte	0x4
	.byte	0x1d
	.4byte	0xc7
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1d
	.4byte	0xae
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x17
	.4byte	0xdd
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0xc
	.byte	0x5
	.byte	0x18
	.4byte	0x10e
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x1a
	.4byte	0x10e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x1b
	.4byte	0x10e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x1c
	.4byte	0xa5
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x17
	.4byte	0x119
	.uleb128 0xa
	.byte	0x4
	.4byte	0xdd
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0xc
	.byte	0x5
	.byte	0x1f
	.4byte	0x150
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x21
	.4byte	0x10e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x22
	.4byte	0x10e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x23
	.4byte	0x8c
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x24
	.4byte	0x11f
	.uleb128 0xb
	.4byte	0x81
	.4byte	0x16a
	.uleb128 0xc
	.4byte	0x9e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x18
	.4byte	0x187
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x1c
	.4byte	0x16a
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x14
	.byte	0x6
	.byte	0x1e
	.4byte	0x1c3
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0x20
	.4byte	0x8c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0x21
	.4byte	0x8c
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0x22
	.4byte	0x150
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x6
	.byte	0x23
	.4byte	0x1ce
	.uleb128 0xa
	.byte	0x4
	.4byte	0x192
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x10
	.byte	0x6
	.byte	0x25
	.4byte	0x205
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0x27
	.4byte	0xd2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0x28
	.4byte	0x8c
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0x29
	.4byte	0x15b
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x6
	.byte	0x2a
	.4byte	0x210
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x1
	.byte	0x18
	.4byte	0x205
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25a
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x18
	.4byte	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x18
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1a
	.4byte	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x24
	.4byte	0x1c3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c2
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0x24
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x24
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x26
	.4byte	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x13
	.ascii	"_a\000"
	.byte	0x1
	.byte	0x30
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.ascii	"_b\000"
	.byte	0x1
	.byte	0x30
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x1
	.byte	0x36
	.4byte	0x1c3
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ea
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x36
	.4byte	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x41
	.4byte	0xc7
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x354
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x41
	.4byte	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0x41
	.4byte	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x41
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.byte	0x43
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x50
	.4byte	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x1
	.byte	0x5e
	.4byte	0xc7
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d2
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x5e
	.4byte	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x5e
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x5e
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.byte	0x60
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x1
	.byte	0x64
	.4byte	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x1
	.byte	0x72
	.4byte	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x1
	.byte	0x80
	.4byte	0xa5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x80
	.4byte	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x80
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x1
	.byte	0x82
	.4byte	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x44
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF34:
	.ascii	"BlockSize\000"
.LASF45:
	.ascii	"NewFSCache\000"
.LASF30:
	.ascii	"FSC_INVALIDATEALL\000"
.LASF42:
	.ascii	"pFCBLOCK\000"
.LASF17:
	.ascii	"true\000"
.LASF59:
	.ascii	"FSC_FindBlock\000"
.LASF14:
	.ascii	"sizetype\000"
.LASF60:
	.ascii	"FSC_GetDataBlock\000"
.LASF32:
	.ascii	"TFSCCMD\000"
.LASF38:
	.ascii	"tag_FCBLOCK\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF44:
	.ascii	"tmpBlockItem\000"
.LASF2:
	.ascii	"short int\000"
.LASF40:
	.ascii	"BlockIndex\000"
.LASF46:
	.ascii	"FSC_Create\000"
.LASF50:
	.ascii	"Result\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF27:
	.ascii	"Last\000"
.LASF8:
	.ascii	"long long int\000"
.LASF33:
	.ascii	"tag_FCACHE\000"
.LASF4:
	.ascii	"long int\000"
.LASF54:
	.ascii	"tmpItem\000"
.LASF36:
	.ascii	"BlockList\000"
.LASF43:
	.ascii	"Cache\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF22:
	.ascii	"Data\000"
.LASF41:
	.ascii	"BlockData\000"
.LASF26:
	.ascii	"First\000"
.LASF13:
	.ascii	"long double\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF24:
	.ascii	"tag_ListItem\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF16:
	.ascii	"false\000"
.LASF51:
	.ascii	"tmpBlock\000"
.LASF31:
	.ascii	"FSC_INVALIDATEBLOCK\000"
.LASF28:
	.ascii	"Count\000"
.LASF52:
	.ascii	"FSC_StoreDataBlock\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF49:
	.ascii	"Command\000"
.LASF15:
	.ascii	"char\000"
.LASF20:
	.ascii	"Prev\000"
.LASF37:
	.ascii	"pFSCACHE\000"
.LASF35:
	.ascii	"MaxBlocksCount\000"
.LASF21:
	.ascii	"Next\000"
.LASF19:
	.ascii	"TDLITEM\000"
.LASF57:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF48:
	.ascii	"FSC_Invalidate\000"
.LASF47:
	.ascii	"FSC_Destroy\000"
.LASF58:
	.ascii	"tag_FSCCMD\000"
.LASF53:
	.ascii	"DataBlock\000"
.LASF29:
	.ascii	"TDLIST\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF56:
	.ascii	"Source\\System\\fscache.c\000"
.LASF23:
	.ascii	"pDLITEM\000"
.LASF39:
	.ascii	"ListHeader\000"
.LASF25:
	.ascii	"tag_DList\000"
.LASF55:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF18:
	.ascii	"boolean\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
