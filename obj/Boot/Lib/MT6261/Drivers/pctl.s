	.syntax unified
	.cpu arm9e
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.thumb
	.syntax unified
	.file	"pctl.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.PCTL_Initialize,"ax",%progbits
	.align	1
	.global	PCTL_Initialize
	.code	16
	.thumb_func
	.type	PCTL_Initialize, %function
PCTL_Initialize:
.LFB1:
	.file 1 "Source\\Lib\\MT6261\\Drivers\\pctl.c"
	.loc 1 25 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 26 0
	movs	r3, #1
	ldr	r2, .L8
	rsbs	r3, r3, #0
	.loc 1 25 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 26 0
	strh	r3, [r2]
	.loc 1 27 0
	ldr	r2, .L8+4
.LBB2:
	.loc 1 32 0
	movs	r0, #0
.LBE2:
	.loc 1 27 0
	strh	r3, [r2]
	.loc 1 28 0
	ldr	r3, .L8+8
	ldr	r2, .L8+12
	strh	r2, [r3]
.LBB4:
	.loc 1 32 0
	bl	USART_GetPDCode
.LVL0:
	.loc 1 34 0
	adds	r3, r0, #1
	beq	.L2
.LVL1:
.LBB3:
	.loc 1 34 0 is_stmt 0 discriminator 1
	cmp	r0, #46
	bgt	.L3
	.loc 1 34 0 discriminator 2
	asrs	r3, r0, #4
	ldr	r2, .L8+16
	lsls	r3, r3, #2
	adds	r3, r3, r2
	movs	r2, #15
	ands	r0, r2
.LVL2:
	movs	r2, #128
	lsls	r2, r2, #9
	lsls	r2, r2, r0
	lsrs	r2, r2, #16
	strh	r2, [r3]
	b	.L2
.LVL3:
.L3:
	.loc 1 34 0 discriminator 3
	cmp	r0, #52
	bgt	.L2
	.loc 1 34 0 discriminator 4
	movs	r3, #15
	ands	r0, r3
.LVL4:
	movs	r3, #128
	lsls	r3, r3, #9
	lsls	r3, r3, r0
	ldr	r2, .L8+20
	lsrs	r3, r3, #16
	strh	r3, [r2]
.L2:
.LBE3:
.LBE4:
	.loc 1 39 0 is_stmt 1
	movs	r2, #1
	ldr	r3, .L8+24
	rsbs	r2, r2, #0
	strh	r2, [r3]
	.loc 1 40 0
	@ sp needed
	pop	{r4, pc}
.L9:
	.align	2
.L8:
	.word	-1610546416
	.word	-1610546412
	.word	-1610546408
	.word	-2049
	.word	-1610546400
	.word	-1603076080
	.word	-1603076084
	.cfi_endproc
.LFE1:
	.size	PCTL_Initialize, .-PCTL_Initialize
	.section	.text.PCTL_GetPeripheralPowerStatus,"ax",%progbits
	.align	1
	.global	PCTL_GetPeripheralPowerStatus
	.code	16
	.thumb_func
	.type	PCTL_GetPeripheralPowerStatus, %function
PCTL_GetPeripheralPowerStatus:
.LFB2:
	.loc 1 43 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5:
	.loc 1 44 0
	cmp	r0, #46
	bhi	.L11
	.loc 1 44 0 is_stmt 0 discriminator 1
	ldr	r2, .L15
	lsrs	r3, r0, #4
	adds	r3, r3, r2
	lsls	r3, r3, #2
	b	.L14
.L11:
	.loc 1 47 0 is_stmt 1
	movs	r3, #0
	.loc 1 45 0
	cmp	r0, #52
	bhi	.L12
	.loc 1 45 0 is_stmt 0 discriminator 1
	ldr	r3, .L15+4
.L14:
	ldrh	r2, [r3]
	movs	r3, #15
	ands	r0, r3
.LVL6:
	asrs	r2, r2, r0
	subs	r3, r3, #14
	bics	r3, r2
.L12:
	.loc 1 48 0 is_stmt 1
	movs	r0, r3
	@ sp needed
	bx	lr
.L16:
	.align	2
.L15:
	.word	671105216
	.word	-1603076088
	.cfi_endproc
.LFE2:
	.size	PCTL_GetPeripheralPowerStatus, .-PCTL_GetPeripheralPowerStatus
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source/systypes.h"
	.file 5 ".\\Source\\Lib\\MT6261/drivers\\usart.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x196
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0xc
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x3f
	.4byte	0x57
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
	.byte	0x24
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x1
	.4byte	0x2c
	.byte	0x4
	.byte	0x1d
	.4byte	0xdb
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1d
	.4byte	0xc2
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x1
	.4byte	0x2c
	.byte	0x5
	.byte	0x19
	.4byte	0x10f
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x1
	.byte	0x18
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x165
	.uleb128 0x9
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x20
	.4byte	0x97
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x154
	.uleb128 0xc
	.ascii	"_x\000"
	.byte	0x1
	.byte	0x22
	.4byte	0x97
	.4byte	.LLST1
	.byte	0
	.uleb128 0xd
	.4byte	.LVL0
	.4byte	0x18e
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2a
	.4byte	0xdb
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18e
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2a
	.4byte	0xa2
	.4byte	.LLST2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x5
	.byte	0xeb
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF19:
	.ascii	"true\000"
.LASF31:
	.ascii	"PCTL_GetPeripheralPowerStatus\000"
.LASF5:
	.ascii	"__int32_t\000"
.LASF30:
	.ascii	"PCTL_Initialize\000"
.LASF28:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF18:
	.ascii	"false\000"
.LASF25:
	.ascii	"PDCode\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF29:
	.ascii	"tag_USART\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF33:
	.ascii	"USART_GetPDCode\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF26:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -Os -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF32:
	.ascii	"Periph\000"
.LASF0:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"int32_t\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF9:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"USART_MODULE1\000"
.LASF22:
	.ascii	"USART_MODULE2\000"
.LASF23:
	.ascii	"USART_MODULE3\000"
.LASF2:
	.ascii	"short int\000"
.LASF12:
	.ascii	"uint16_t\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF6:
	.ascii	"long int\000"
.LASF17:
	.ascii	"char\000"
.LASF15:
	.ascii	"long double\000"
.LASF27:
	.ascii	"Source\\Lib\\MT6261\\Drivers\\pctl.c\000"
.LASF20:
	.ascii	"boolean\000"
.LASF24:
	.ascii	"USART_MODULES\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
