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
	.file	"appheader.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	app_header
	.section	.app_header,"aw",%progbits
	.align	2
	.type	app_header, %object
	.size	app_header, 68
app_header:
	.word	5066061
	.short	56
	.short	0
	.ascii	"FILE_INFO\000"
	.space	2
	.word	1
	.short	2
	.byte	7
	.byte	1
	.word	__app_header_base
	.word	-1
	.word	-1
	.word	__app_header_size
	.word	32
	.word	__app_header_size
	.word	3
	.word	5066061
	.short	12
	.short	1
	.word	0
	.text
.Letext0:
	.file 1 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 2 "d:\\1.11\\share\\em_armgcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 3 "Source\\Lib\\mtktypes.h"
	.file 4 "Source\\Lib\\appheader.c"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x36e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc
	.4byte	.LASF90
	.4byte	.LASF91
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
	.uleb128 0x5
	.byte	0x2
	.4byte	0x48
	.byte	0x3
	.byte	0x2e
	.4byte	0x1c7
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF32
	.2byte	0x100
	.uleb128 0x7
	.4byte	.LASF33
	.2byte	0x101
	.uleb128 0x7
	.4byte	.LASF34
	.2byte	0x102
	.uleb128 0x7
	.4byte	.LASF35
	.2byte	0x103
	.uleb128 0x7
	.4byte	.LASF36
	.2byte	0x104
	.uleb128 0x7
	.4byte	.LASF37
	.2byte	0x200
	.uleb128 0x7
	.4byte	.LASF38
	.2byte	0x201
	.uleb128 0x7
	.4byte	.LASF39
	.2byte	0x202
	.uleb128 0x7
	.4byte	.LASF40
	.2byte	0x203
	.uleb128 0x7
	.4byte	.LASF41
	.2byte	0x204
	.uleb128 0x7
	.4byte	.LASF42
	.2byte	0x205
	.uleb128 0x7
	.4byte	.LASF43
	.2byte	0x206
	.uleb128 0x7
	.4byte	.LASF44
	.2byte	0x207
	.uleb128 0x7
	.4byte	.LASF45
	.2byte	0x208
	.uleb128 0x7
	.4byte	.LASF46
	.2byte	0x209
	.uleb128 0x7
	.4byte	.LASF47
	.2byte	0x20a
	.uleb128 0x7
	.4byte	.LASF48
	.2byte	0x20b
	.uleb128 0x7
	.4byte	.LASF49
	.2byte	0x20c
	.uleb128 0x7
	.4byte	.LASF50
	.2byte	0x20d
	.uleb128 0x7
	.4byte	.LASF51
	.2byte	0x20e
	.uleb128 0x7
	.4byte	.LASF52
	.2byte	0x20f
	.uleb128 0x7
	.4byte	.LASF53
	.2byte	0x210
	.uleb128 0x7
	.4byte	.LASF54
	.2byte	0x300
	.uleb128 0x7
	.4byte	.LASF55
	.2byte	0x301
	.uleb128 0x7
	.4byte	.LASF56
	.2byte	0xffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x3
	.byte	0x5f
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF58
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x8
	.byte	0x3
	.byte	0x6b
	.4byte	0x20a
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x3
	.byte	0x6d
	.4byte	0x9a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x3
	.byte	0x6e
	.4byte	0x8f
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x3
	.byte	0x6f
	.4byte	0x1c7
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x3
	.byte	0x70
	.4byte	0x1d9
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x38
	.byte	0x3
	.byte	0x72
	.4byte	0x2be
	.uleb128 0xa
	.ascii	"hdr\000"
	.byte	0x3
	.byte	0x74
	.4byte	0x20a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x3
	.byte	0x75
	.4byte	0x2be
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x3
	.byte	0x76
	.4byte	0x9a
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x3
	.byte	0x78
	.4byte	0x8f
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x3
	.byte	0x79
	.4byte	0x84
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x3
	.byte	0x7a
	.4byte	0x84
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x3
	.byte	0x7c
	.4byte	0x9a
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x3
	.byte	0x7d
	.4byte	0x9a
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x3
	.byte	0x7e
	.4byte	0x9a
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x3
	.byte	0x7f
	.4byte	0x9a
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x3
	.byte	0x80
	.4byte	0x9a
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x3
	.byte	0x81
	.4byte	0x9a
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x3
	.byte	0x82
	.4byte	0x9a
	.byte	0x34
	.byte	0
	.uleb128 0xb
	.4byte	0x2ce
	.4byte	0x2ce
	.uleb128 0xc
	.4byte	0x1d2
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF77
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x3
	.byte	0x83
	.4byte	0x215
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0xc
	.byte	0x3
	.byte	0x8b
	.4byte	0x305
	.uleb128 0xa
	.ascii	"hdr\000"
	.byte	0x3
	.byte	0x8d
	.4byte	0x20a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x3
	.byte	0x8e
	.4byte	0x9a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x3
	.byte	0x8f
	.4byte	0x2e0
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x44
	.byte	0x4
	.byte	0x18
	.4byte	0x335
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x4
	.byte	0x1a
	.4byte	0x2d5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x4
	.byte	0x1b
	.4byte	0x305
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x4
	.byte	0x1c
	.4byte	0x310
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x4
	.byte	0x1e
	.4byte	0x9a
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x4
	.byte	0x1f
	.4byte	0x9a
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x4
	.byte	0x21
	.4byte	0x36c
	.uleb128 0x5
	.byte	0x3
	.4byte	app_header
	.uleb128 0xf
	.4byte	0x335
	.uleb128 0x10
	.4byte	0x367
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
.LASF82:
	.ascii	"tag_APP_HEADER\000"
.LASF34:
	.ascii	"GFH_CMEM_ID_INFO\000"
.LASF32:
	.ascii	"GFH_EPP_INFO\000"
.LASF79:
	.ascii	"tag_GFH_BL_INFO_v1\000"
.LASF23:
	.ascii	"GFH_BROM_SEC_CFG\000"
.LASF35:
	.ascii	"GFH_CMEM_NOR_INFO\000"
.LASF2:
	.ascii	"short int\000"
.LASF58:
	.ascii	"sizetype\000"
.LASF38:
	.ascii	"GFH_MAUI_SEC\000"
.LASF37:
	.ascii	"GFH_MAUI_INFO\000"
.LASF31:
	.ascii	"GFH_MD_SEC_CFG\000"
.LASF63:
	.ascii	"tag_GFH_Header\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF85:
	.ascii	"APP_HEADER\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF55:
	.ascii	"GFH_TYPE_NUM\000"
.LASF68:
	.ascii	"flash_dev\000"
.LASF76:
	.ascii	"attr\000"
.LASF61:
	.ascii	"type\000"
.LASF46:
	.ascii	"GFH_ARM_BL_INFO\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF20:
	.ascii	"GFH_TOOL_AUTH\000"
.LASF22:
	.ascii	"GFH_BROM_CFG\000"
.LASF15:
	.ascii	"GFH_FILE_INFO\000"
.LASF75:
	.ascii	"jump_offset\000"
.LASF65:
	.ascii	"identifier\000"
.LASF69:
	.ascii	"sig_type\000"
.LASF56:
	.ascii	"GFH_TYPE_END\000"
.LASF9:
	.ascii	"long long int\000"
.LASF29:
	.ascii	"GFH_CHIP_VER\000"
.LASF77:
	.ascii	"char\000"
.LASF60:
	.ascii	"size\000"
.LASF6:
	.ascii	"long int\000"
.LASF73:
	.ascii	"offset\000"
.LASF53:
	.ascii	"GFH_BINARY_LOCATION\000"
.LASF86:
	.ascii	"__app_header_base\000"
.LASF18:
	.ascii	"GFH_BL_SEC_KEY\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF90:
	.ascii	"Source\\Lib\\appheader.c\000"
.LASF27:
	.ascii	"GFH_EXP_CHK\000"
.LASF21:
	.ascii	"GFH_MTK_RESERVED1\000"
.LASF64:
	.ascii	"tag_FILE_INFO_v1_\000"
.LASF67:
	.ascii	"file_type\000"
.LASF25:
	.ascii	"GFH_MTK_RESERVED3\000"
.LASF41:
	.ascii	"GFH_MAUI_RESOURCE_KEY\000"
.LASF40:
	.ascii	"GFH_MAUI_SECURE_RO_KEY\000"
.LASF57:
	.ascii	"GFH_TYPE\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF26:
	.ascii	"GFH_ROOT_CERT\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF24:
	.ascii	"GFH_MTK_RESERVED2\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF30:
	.ascii	"GFH_MTK_RESERVED4\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF47:
	.ascii	"GFH_EMMC_BOOTING_INFO\000"
.LASF78:
	.ascii	"FILE_INFO_v1\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF70:
	.ascii	"load_addr\000"
.LASF17:
	.ascii	"GFH_ANTI_CLONE\000"
.LASF16:
	.ascii	"GFH_BL_INFO\000"
.LASF43:
	.ascii	"GFH_DL_PACKAGE_INFO\000"
.LASF44:
	.ascii	"GFH_FLASH_INFO\000"
.LASF50:
	.ascii	"GFH_CONFIDENTIAL_BIN_INFO\000"
.LASF42:
	.ascii	"GFH_SECURE_RO_INFO\000"
.LASF54:
	.ascii	"GFH_BOOT_CERT_CTRL_CONTENT\000"
.LASF48:
	.ascii	"GFH_FOTA_INFO\000"
.LASF39:
	.ascii	"GFH_MAUI_CODE_KEY\000"
.LASF19:
	.ascii	"GFH_SCTRL_CERT\000"
.LASF87:
	.ascii	"__app_header_size\000"
.LASF91:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF66:
	.ascii	"file_ver\000"
.LASF88:
	.ascii	"app_header\000"
.LASF51:
	.ascii	"GFH_CBR_INFO\000"
.LASF49:
	.ascii	"GFH_CBR_RECORD_INFO\000"
.LASF45:
	.ascii	"GFH_MACR_INFO\000"
.LASF74:
	.ascii	"sig_len\000"
.LASF52:
	.ascii	"GFH_MBA_INFO\000"
.LASF33:
	.ascii	"GFH_EMI_LIST\000"
.LASF36:
	.ascii	"GFH_DSP_INFO\000"
.LASF72:
	.ascii	"max_size\000"
.LASF80:
	.ascii	"bl_attr\000"
.LASF71:
	.ascii	"file_len\000"
.LASF59:
	.ascii	"magic\000"
.LASF84:
	.ascii	"bl_info\000"
.LASF62:
	.ascii	"GFH_Header\000"
.LASF81:
	.ascii	"GFH_BL_INFO_v1\000"
.LASF83:
	.ascii	"file_info\000"
.LASF89:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF28:
	.ascii	"GFH_EPP_PARAM\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
