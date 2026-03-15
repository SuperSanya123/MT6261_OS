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
	.file	"dflib.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	GD25LQ64PRE
	.section	.data.GD25LQ64PRE,"aw",%progbits
	.align	2
	.type	GD25LQ64PRE, %object
	.size	GD25LQ64PRE, 11
GD25LQ64PRE:
	.byte	1
	.byte	6
	.byte	1
	.byte	80
	.byte	3
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	56
	.byte	0
	.global	GD25LQ64POST
	.section	.data.GD25LQ64POST,"aw",%progbits
	.align	2
	.type	GD25LQ64POST, %object
	.size	GD25LQ64POST, 4
GD25LQ64POST:
	.byte	2
	.byte	-64
	.byte	34
	.byte	0
	.global	DFConfigList
	.section	.rodata
	.align	2
.LC0:
	.ascii	"GD25LQ64\000"
	.section	.rodata.DFConfigList,"a",%progbits
	.align	2
	.type	DFConfigList, %object
	.size	DFConfigList, 112
DFConfigList:
	.word	1532104
	.word	.LC0
	.byte	0
	.space	1
	.short	256
	.word	32768
	.byte	7
	.space	3
	.word	GD25LQ64PRE
	.word	GD25LQ64POST
	.word	65536
	.word	202069873
	.word	1391985168
	.word	1
	.word	0
	.word	318767123
	.word	262148
	.word	0
	.space	52
	.text
.Letext0:
	.file 1 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 3 ".\\Source/systypes.h"
	.file 4 ".\\Source\\Lib\\MT6261/drivers\\sfi.h"
	.file 5 ".\\Source\\Lib\\MT6261/drivers\\lcdif.h"
	.file 6 ".\\Source\\Lib\\MT6261/drivers\\usb.h"
	.file 7 "Source\\Application\\Drivers\\dflib.c"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2c4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xc
	.4byte	.LASF62
	.4byte	.LASF63
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x1
	.byte	0x1d
	.4byte	0x2f
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
	.byte	0x1
	.byte	0x2b
	.4byte	0x48
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
	.byte	0x1
	.byte	0x41
	.4byte	0x61
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
	.byte	0x2
	.byte	0x18
	.4byte	0x24
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x24
	.4byte	0x3d
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x30
	.4byte	0x56
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x1
	.4byte	0x2f
	.byte	0x3
	.byte	0x1d
	.4byte	0xd9
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x1d
	.4byte	0xc0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x84
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x1
	.4byte	0x2f
	.byte	0x4
	.byte	0x83
	.4byte	0x10d
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x88
	.4byte	0xea
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x8a
	.4byte	0x123
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x38
	.byte	0x4
	.byte	0x8b
	.4byte	0x1e4
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x8d
	.4byte	0x9a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x8e
	.4byte	0xb3
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x8f
	.4byte	0xd9
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x90
	.4byte	0x8f
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0x91
	.4byte	0x9a
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.byte	0x92
	.4byte	0x10d
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x93
	.4byte	0xe4
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.byte	0x94
	.4byte	0xe4
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0x95
	.4byte	0x9a
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.byte	0x96
	.4byte	0x9a
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0x97
	.4byte	0x9a
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.byte	0x98
	.4byte	0x9a
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.byte	0x99
	.4byte	0x9a
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x9a
	.4byte	0x9a
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x9b
	.4byte	0x9a
	.byte	0x34
	.byte	0
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.4byte	0x2f
	.byte	0x5
	.byte	0xf1
	.4byte	0x213
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x1
	.4byte	0x2f
	.byte	0x6
	.byte	0x24
	.4byte	0x25a
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	0x26a
	.4byte	0x26a
	.uleb128 0xc
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	0x118
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x7
	.byte	0x1a
	.4byte	0x280
	.uleb128 0x5
	.byte	0x3
	.4byte	DFConfigList
	.uleb128 0xd
	.4byte	0x25a
	.uleb128 0xb
	.4byte	0x84
	.4byte	0x295
	.uleb128 0xc
	.4byte	0xac
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x7
	.byte	0x17
	.4byte	0x285
	.uleb128 0x5
	.byte	0x3
	.4byte	GD25LQ64PRE
	.uleb128 0xb
	.4byte	0x84
	.4byte	0x2b6
	.uleb128 0xc
	.4byte	0xac
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x7
	.byte	0x18
	.4byte	0x2a6
	.uleb128 0x5
	.byte	0x3
	.4byte	GD25LQ64POST
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF56:
	.ascii	"USB_EP2OUT\000"
.LASF38:
	.ascii	"SFI_DLY_CTL_2\000"
.LASF39:
	.ascii	"SFI_DLY_CTL_3\000"
.LASF53:
	.ascii	"USB_EP4IN\000"
.LASF26:
	.ascii	"DeviceID\000"
.LASF24:
	.ascii	"TBSRANGE\000"
.LASF42:
	.ascii	"tag_VLINDEX\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF35:
	.ascii	"SFI_DIRECT_CTL\000"
.LASF23:
	.ascii	"BR_64K\000"
.LASF52:
	.ascii	"USB_EP3IN\000"
.LASF37:
	.ascii	"SFI_MISC_CTL2\000"
.LASF2:
	.ascii	"short int\000"
.LASF25:
	.ascii	"TDFCONFIG\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF60:
	.ascii	"GD25LQ64POST\000"
.LASF57:
	.ascii	"USB_EPNUM\000"
.LASF51:
	.ascii	"USB_EP2IN\000"
.LASF41:
	.ascii	"tag_BSRANGE\000"
.LASF47:
	.ascii	"LCDIF_NUMLAYERS\000"
.LASF40:
	.ascii	"DRIVING\000"
.LASF9:
	.ascii	"long long int\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF62:
	.ascii	"Source\\Application\\Drivers\\dflib.c\000"
.LASF6:
	.ascii	"long int\000"
.LASF33:
	.ascii	"PostInitSequence\000"
.LASF54:
	.ascii	"USB_EPMAXINDEX\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF50:
	.ascii	"USB_EP1IN\000"
.LASF30:
	.ascii	"TotalPages\000"
.LASF34:
	.ascii	"SFI_MAC_CTL\000"
.LASF15:
	.ascii	"long double\000"
.LASF48:
	.ascii	"tag_EP\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF58:
	.ascii	"DFConfigList\000"
.LASF31:
	.ascii	"EraseSupport\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF18:
	.ascii	"false\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF32:
	.ascii	"PreInitSequence\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF59:
	.ascii	"GD25LQ64PRE\000"
.LASF21:
	.ascii	"BR_4K\000"
.LASF64:
	.ascii	"tag_DFCONFIG\000"
.LASF17:
	.ascii	"char\000"
.LASF55:
	.ascii	"USB_EP1OUT\000"
.LASF19:
	.ascii	"true\000"
.LASF36:
	.ascii	"SFI_MISC_CTL\000"
.LASF28:
	.ascii	"Address4Bytes\000"
.LASF63:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF29:
	.ascii	"PageSize\000"
.LASF49:
	.ascii	"USB_EP0\000"
.LASF43:
	.ascii	"LCDIF_LAYER0\000"
.LASF44:
	.ascii	"LCDIF_LAYER1\000"
.LASF45:
	.ascii	"LCDIF_LAYER2\000"
.LASF46:
	.ascii	"LCDIF_LAYER3\000"
.LASF27:
	.ascii	"DeviceName\000"
.LASF61:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF20:
	.ascii	"boolean\000"
.LASF22:
	.ascii	"BR_32K\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
