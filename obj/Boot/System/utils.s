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
	.file	"utils.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	__aeabi_uidiv
	.section	.text.GetCPUFrequency,"ax",%progbits
	.align	1
	.global	GetCPUFrequency
	.code	16
	.thumb_func
	.type	GetCPUFrequency, %function
GetCPUFrequency:
.LFB1:
	.file 1 "Source\\System\\utils.c"
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 28 0
	bl	__get_cpu_freq_ticks
.LVL0:
	.loc 1 31 0
	ldr	r3, .L2
	.loc 1 28 0
	movs	r1, r0
.LVL1:
	.loc 1 33 0
	ldr	r3, [r3]
.LVL2:
	lsrs	r0, r0, #1
.LVL3:
	adds	r0, r0, r3
	bl	__aeabi_uidiv
.LVL4:
	.loc 1 34 0
	@ sp needed
	pop	{r4, pc}
.L3:
	.align	2
.L2:
	.word	__freq_loops_cycles
	.cfi_endproc
.LFE1:
	.size	GetCPUFrequency, .-GetCPUFrequency
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 ".\\Source\\System/utils.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xea
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0xc
	.4byte	.LASF17
	.4byte	.LASF18
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x41
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1a
	.4byte	0x76
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1c
	.4byte	0x76
	.4byte	.LLST0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1d
	.4byte	0x76
	.4byte	.LLST1
	.uleb128 0x7
	.4byte	.LVL0
	.4byte	0xe2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x18
	.4byte	0x76
	.uleb128 0x9
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x12
	.byte	0x70
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0xf7
	.uleb128 0x25
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x11
	.byte	0x70
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x25
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x11
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x25
	.byte	0x71
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
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
.LASF7:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF20:
	.ascii	"__freq_loops_cycles\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"CPUTicks\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF13:
	.ascii	"char\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF5:
	.ascii	"long int\000"
.LASF15:
	.ascii	"CPUFrequency\000"
.LASF17:
	.ascii	"Source\\System\\utils.c\000"
.LASF21:
	.ascii	"__get_cpu_freq_ticks\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF19:
	.ascii	"GetCPUFrequency\000"
.LASF11:
	.ascii	"long double\000"
.LASF3:
	.ascii	"short int\000"
.LASF16:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -Os -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF12:
	.ascii	"sizetype\000"
.LASF18:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
