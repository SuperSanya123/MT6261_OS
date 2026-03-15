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
	.file	"crc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.AddByteToCRC16,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	AddByteToCRC16, %function
AddByteToCRC16:
.LFB1:
	.file 1 "Source\\System\\crc.c"
	.loc 1 25 0
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
	.loc 1 32 0
	ldr	r3, [r7, #4]
	ldrh	r2, [r3]
	adds	r3, r7, #3
	ldrb	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	eors	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #4]
	strh	r2, [r3]
	.loc 1 33 0
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	lsrs	r3, r3, #4
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	movs	r1, r3
	movs	r3, #15
	ands	r1, r3
	ldr	r3, .L2
	lsls	r1, r1, #1
	ldrh	r3, [r1, r3]
	eors	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #4]
	strh	r2, [r3]
	.loc 1 34 0
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	lsrs	r3, r3, #4
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	movs	r1, r3
	movs	r3, #15
	ands	r1, r3
	ldr	r3, .L2
	lsls	r1, r1, #1
	ldrh	r3, [r1, r3]
	eors	r3, r2
	lsls	r3, r3, #16
	lsrs	r2, r3, #16
	ldr	r3, [r7, #4]
	strh	r2, [r3]
	.loc 1 35 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	CRCTable.7485
	.cfi_endproc
.LFE1:
	.size	AddByteToCRC16, .-AddByteToCRC16
	.section	.text.CalculateCRC16,"ax",%progbits
	.align	2
	.global	CalculateCRC16
	.code	16
	.thumb_func
	.type	CalculateCRC16, %function
CalculateCRC16:
.LFB2:
	.loc 1 38 0
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
	.loc 1 39 0
	movs	r3, #10
	adds	r3, r7, r3
	movs	r2, #1
	rsbs	r2, r2, #0
	strh	r2, [r3]
	.loc 1 41 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L5
.LBB2:
	.loc 1 43 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	.loc 1 45 0
	b	.L6
.L7:
	.loc 1 46 0
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r2, [r3]
	movs	r3, #10
	adds	r3, r7, r3
	movs	r1, r2
	movs	r0, r3
	bl	AddByteToCRC16
.L6:
	.loc 1 45 0
	ldr	r3, [r7]
	subs	r2, r3, #1
	str	r2, [r7]
	cmp	r3, #0
	bne	.L7
.L5:
.LBE2:
	.loc 1 48 0
	movs	r3, #10
	adds	r3, r7, r3
	ldrh	r3, [r3]
	.loc 1 49 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	CalculateCRC16, .-CalculateCRC16
	.section	.rodata.CRCTable.7485,"a",%progbits
	.align	2
	.type	CRCTable.7485, %object
	.size	CRCTable.7485, 32
CRCTable.7485:
	.short	0
	.short	-13311
	.short	-10239
	.short	5120
	.short	-4095
	.short	15360
	.short	10240
	.short	-7167
	.short	-24575
	.short	27648
	.short	30720
	.short	-19455
	.short	20480
	.short	-25599
	.short	-30719
	.short	17408
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "d:\\1.11\\share\\em_armgcc\\lib\\gcc\\arm-none-eabi\\5.4.1\\include\\stddef.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x177
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
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
	.byte	0x24
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0x81
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x1
	.byte	0x18
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x18
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x18
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1a
	.4byte	0x11d
	.uleb128 0x5
	.byte	0x3
	.4byte	CRCTable.7485
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c
	.uleb128 0xa
	.4byte	0x118
	.4byte	0x118
	.uleb128 0xb
	.4byte	0xa9
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0x8c
	.uleb128 0xc
	.4byte	0x108
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x25
	.4byte	0x8c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x25
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x25
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x27
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0xe
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2b
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF8:
	.ascii	"long long int\000"
.LASF13:
	.ascii	"size_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF27:
	.ascii	"CalculateCRC16\000"
.LASF18:
	.ascii	"Data\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF16:
	.ascii	"char\000"
.LASF21:
	.ascii	"wCRC16\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF23:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF22:
	.ascii	"bData\000"
.LASF24:
	.ascii	"Source\\System\\crc.c\000"
.LASF6:
	.ascii	"long int\000"
.LASF26:
	.ascii	"AddByteToCRC16\000"
.LASF19:
	.ascii	"Count\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"uint16_t\000"
.LASF14:
	.ascii	"long double\000"
.LASF20:
	.ascii	"CRCTable\000"
.LASF2:
	.ascii	"short int\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF15:
	.ascii	"sizetype\000"
.LASF17:
	.ascii	"pCRC16\000"
.LASF25:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
