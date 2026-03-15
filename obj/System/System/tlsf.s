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
	.file	"tlsf.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.table,"a",%progbits
	.align	2
	.type	table, %object
	.size	table, 1024
table:
	.word	-1
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.section	.text.ls_bit,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	ls_bit, %function
ls_bit:
.LFB0:
	.file 1 "Source\\System\\tlsf.c"
	.loc 1 291 0
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
	.loc 1 293 0
	ldr	r3, [r7, #4]
	rsbs	r3, r3, #0
	ldr	r2, [r7, #4]
	ands	r3, r2
	str	r3, [r7, #12]
	.loc 1 295 0
	ldr	r3, [r7, #12]
	ldr	r2, .L9
	cmp	r3, r2
	bhi	.L2
	.loc 1 295 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #255
	bhi	.L3
	.loc 1 295 0 discriminator 3
	movs	r3, #0
	b	.L5
.L3:
	.loc 1 295 0 discriminator 4
	movs	r3, #8
	b	.L5
.L2:
	.loc 1 295 0 discriminator 2
	ldr	r3, [r7, #12]
	ldr	r2, .L9+4
	cmp	r3, r2
	bhi	.L6
	.loc 1 295 0 discriminator 8
	movs	r3, #16
	b	.L5
.L6:
	.loc 1 295 0 discriminator 9
	movs	r3, #24
.L5:
	.loc 1 295 0 discriminator 12
	str	r3, [r7, #8]
	.loc 1 296 0 is_stmt 1 discriminator 12
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	lsrs	r2, r2, r3
	ldr	r3, .L9+8
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	movs	r2, r3
	ldr	r3, [r7, #8]
	adds	r3, r2, r3
	.loc 1 297 0 discriminator 12
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	65535
	.word	16777215
	.word	table
	.cfi_endproc
.LFE0:
	.size	ls_bit, .-ls_bit
	.section	.text.ms_bit,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	ms_bit, %function
ms_bit:
.LFB1:
	.loc 1 300 0
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
	.loc 1 302 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	.loc 1 304 0
	ldr	r3, [r7, #12]
	ldr	r2, .L19
	cmp	r3, r2
	bhi	.L12
	.loc 1 304 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #255
	bhi	.L13
	.loc 1 304 0 discriminator 3
	movs	r3, #0
	b	.L15
.L13:
	.loc 1 304 0 discriminator 4
	movs	r3, #8
	b	.L15
.L12:
	.loc 1 304 0 discriminator 2
	ldr	r3, [r7, #12]
	ldr	r2, .L19+4
	cmp	r3, r2
	bhi	.L16
	.loc 1 304 0 discriminator 8
	movs	r3, #16
	b	.L15
.L16:
	.loc 1 304 0 discriminator 9
	movs	r3, #24
.L15:
	.loc 1 304 0 discriminator 12
	str	r3, [r7, #8]
	.loc 1 305 0 is_stmt 1 discriminator 12
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	lsrs	r2, r2, r3
	ldr	r3, .L19+8
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	movs	r2, r3
	ldr	r3, [r7, #8]
	adds	r3, r2, r3
	.loc 1 306 0 discriminator 12
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L20:
	.align	2
.L19:
	.word	65535
	.word	16777215
	.word	table
	.cfi_endproc
.LFE1:
	.size	ms_bit, .-ms_bit
	.section	.text.set_bit,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	set_bit, %function
set_bit:
.LFB2:
	.loc 1 309 0
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
	str	r1, [r7]
	.loc 1 310 0
	ldr	r3, [r7, #4]
	asrs	r3, r3, #5
	lsls	r3, r3, #2
	ldr	r2, [r7]
	adds	r3, r2, r3
	ldr	r2, [r7, #4]
	asrs	r2, r2, #5
	lsls	r2, r2, #2
	ldr	r1, [r7]
	adds	r2, r1, r2
	ldr	r2, [r2]
	ldr	r1, [r7, #4]
	movs	r0, #31
	ands	r1, r0
	movs	r0, #1
	lsls	r0, r0, r1
	movs	r1, r0
	orrs	r2, r1
	str	r2, [r3]
	.loc 1 311 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	set_bit, .-set_bit
	.section	.text.clear_bit,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	clear_bit, %function
clear_bit:
.LFB3:
	.loc 1 314 0
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
	str	r1, [r7]
	.loc 1 315 0
	ldr	r3, [r7, #4]
	asrs	r3, r3, #5
	lsls	r3, r3, #2
	ldr	r2, [r7]
	adds	r3, r2, r3
	ldr	r2, [r7, #4]
	asrs	r2, r2, #5
	lsls	r2, r2, #2
	ldr	r1, [r7]
	adds	r2, r1, r2
	ldr	r2, [r2]
	ldr	r1, [r7, #4]
	movs	r0, #31
	ands	r1, r0
	movs	r0, #1
	lsls	r0, r0, r1
	movs	r1, r0
	mvns	r1, r1
	ands	r2, r1
	str	r2, [r3]
	.loc 1 316 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	clear_bit, .-clear_bit
	.section	.text.MAPPING_SEARCH,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	MAPPING_SEARCH, %function
MAPPING_SEARCH:
.LFB4:
	.loc 1 319 0
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 322 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #127
	bhi	.L24
	.loc 1 323 0
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 324 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	lsrs	r3, r3, #2
	movs	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 336 0
	b	.L26
.L24:
	.loc 1 326 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r0, r3
	bl	ms_bit
	movs	r3, r0
	subs	r3, r3, #5
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	subs	r3, r3, #1
	str	r3, [r7, #20]
	.loc 1 327 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	.loc 1 328 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r0, r3
	bl	ms_bit
	movs	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 1 329 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r3, r3, #5
	lsrs	r2, r2, r3
	movs	r3, r2
	subs	r3, r3, #32
	movs	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 330 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r2, r3, #6
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 1 334 0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	mvns	r2, r2
	ands	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L26:
	.loc 1 336 0
	nop
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	MAPPING_SEARCH, .-MAPPING_SEARCH
	.section	.text.MAPPING_INSERT,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	MAPPING_INSERT, %function
MAPPING_INSERT:
.LFB5:
	.loc 1 339 0
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 340 0
	ldr	r3, [r7, #12]
	cmp	r3, #127
	bhi	.L28
	.loc 1 341 0
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 342 0
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #2
	movs	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 348 0
	b	.L30
.L28:
	.loc 1 344 0
	ldr	r3, [r7, #12]
	movs	r0, r3
	bl	ms_bit
	movs	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 1 345 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r3, r3, #5
	ldr	r2, [r7, #12]
	lsrs	r2, r2, r3
	movs	r3, r2
	subs	r3, r3, #32
	movs	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 346 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r2, r3, #6
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L30:
	.loc 1 348 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE5:
	.size	MAPPING_INSERT, .-MAPPING_INSERT
	.section	.text.FIND_SUITABLE_BLOCK,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	FIND_SUITABLE_BLOCK, %function
FIND_SUITABLE_BLOCK:
.LFB6:
	.loc 1 352 0
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 353 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #1
	rsbs	r1, r1, #0
	lsls	r1, r1, r3
	movs	r3, r1
	ands	r3, r2
	str	r3, [r7, #16]
	.loc 1 354 0
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 356 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L32
	.loc 1 357 0
	ldr	r3, [r7, #16]
	movs	r0, r3
	bl	ls_bit
	movs	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 358 0
	ldr	r3, [r7, #8]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	str	r3, [r7, #20]
	b	.L33
.L32:
	.loc 1 360 0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #1
	movs	r1, #1
	rsbs	r1, r1, #0
	lsls	r1, r1, r3
	movs	r3, r1
	ands	r3, r2
	movs	r0, r3
	bl	ls_bit
	movs	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 1 361 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L33
	.loc 1 362 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	movs	r0, r3
	bl	ls_bit
	movs	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 363 0
	ldr	r3, [r7, #8]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	str	r3, [r7, #20]
.L33:
	.loc 1 366 0
	ldr	r3, [r7, #20]
	.loc 1 367 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE6:
	.size	FIND_SUITABLE_BLOCK, .-FIND_SUITABLE_BLOCK
	.section	.text.process_area,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	process_area, %function
process_area:
.LFB7:
	.loc 1 438 0
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
	.loc 1 442 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	.loc 1 443 0
	ldr	r3, [r7, #20]
	movs	r2, #8
	str	r2, [r3, #4]
	.loc 1 446 0
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #16]
	.loc 1 447 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	ldr	r2, [r7]
	subs	r3, r2, r3
	subs	r3, r3, #24
	movs	r2, #7
	bics	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #4]
	.loc 1 448 0
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #16]
	str	r2, [r3, #8]
	.loc 1 449 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #12]
	.loc 1 450 0
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	.loc 1 451 0
	ldr	r3, [r7, #12]
	movs	r2, #2
	str	r2, [r3, #4]
	.loc 1 452 0
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	str	r3, [r7, #8]
	.loc 1 453 0
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 454 0
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	.loc 1 455 0
	ldr	r3, [r7, #20]
	.loc 1 456 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	process_area, .-process_area
	.section	.bss.mpool,"aw",%nobits
	.align	2
	.type	mpool, %object
	.size	mpool, 4
mpool:
	.space	4
	.section	.text.init_memory_pool,"ax",%progbits
	.align	2
	.global	init_memory_pool
	.code	16
	.thumb_func
	.type	init_memory_pool, %function
init_memory_pool:
.LFB8:
	.loc 1 466 0
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
	.loc 1 471 0
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L38
	.loc 1 471 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L38
	.loc 1 471 0 discriminator 2
	ldr	r3, [r7, #4]
	ldr	r2, .L43
	cmp	r3, r2
	bhi	.L39
.L38:
	.loc 1 473 0 is_stmt 1
	movs	r3, #1
	rsbs	r3, r3, #0
	b	.L40
.L39:
	.loc 1 476 0
	ldr	r3, [r7]
	movs	r2, #3
	ands	r3, r2
	beq	.L41
	.loc 1 478 0
	movs	r3, #1
	rsbs	r3, r3, #0
	b	.L40
.L41:
	.loc 1 480 0
	ldr	r3, [r7]
	str	r3, [r7, #20]
	.loc 1 482 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r2, .L43+4
	cmp	r3, r2
	bne	.L42
	.loc 1 483 0
	ldr	r3, .L43+8
	ldr	r2, [r7]
	str	r2, [r3]
	.loc 1 484 0
	ldr	r3, .L43+8
	ldr	r3, [r3]
	ldr	r2, .L43+12
	mov	ip, r2
	add	r3, r3, ip
	str	r3, [r7, #16]
	.loc 1 485 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	b	.L40
.L42:
	.loc 1 488 0
	ldr	r3, .L43+8
	ldr	r2, [r7]
	str	r2, [r3]
	.loc 1 491 0
	ldr	r2, .L43+16
	ldr	r3, [r7]
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 493 0
	ldr	r3, [r7, #20]
	ldr	r2, .L43+4
	str	r2, [r3]
	.loc 1 497 0
	ldr	r3, [r7]
	ldr	r2, .L43+12
	adds	r0, r3, r2
	.loc 1 498 0
	ldr	r3, [r7, #4]
	ldr	r2, .L43+20
	mov	ip, r2
	add	r3, r3, ip
	.loc 1 497 0
	movs	r2, #7
	bics	r3, r2
	movs	r1, r3
	bl	process_area
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 499 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #16]
	.loc 1 500 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #8
	ldr	r2, [r7, #20]
	movs	r1, r2
	movs	r0, r3
	bl	free_ex
	.loc 1 501 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #12]
	.loc 1 504 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	ldr	r2, [r7, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	.loc 1 505 0
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3, #8]
	.loc 1 508 0
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
.L40:
	.loc 1 509 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L44:
	.align	2
.L43:
	.word	2195
	.word	710539865
	.word	mpool
	.word	2136
	.word	2132
	.word	-2132
	.cfi_endproc
.LFE8:
	.size	init_memory_pool, .-init_memory_pool
	.section	.text.add_new_area,"ax",%progbits
	.align	2
	.global	add_new_area
	.code	16
	.thumb_func
	.type	add_new_area, %function
add_new_area:
.LFB9:
	.loc 1 513 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #64
	.cfi_def_cfa_offset 72
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 515 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #40]
	.loc 1 519 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 520 0
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	str	r3, [r7, #60]
	.loc 1 521 0
	movs	r3, #0
	str	r3, [r7, #56]
	.loc 1 523 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	process_area
	movs	r3, r0
	str	r3, [r7, #52]
	.loc 1 524 0
	ldr	r3, [r7, #52]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #48]
	.loc 1 525 0
	ldr	r3, [r7, #48]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #44]
	.loc 1 530 0
	b	.L46
.L53:
	.loc 1 531 0
	ldr	r3, [r7, #60]
	subs	r3, r3, #8
	str	r3, [r7, #36]
	.loc 1 532 0
	ldr	r3, [r7, #36]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #32]
	.loc 1 533 0
	ldr	r3, [r7, #60]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	.loc 1 536 0
	ldr	r3, [r7, #44]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bne	.L47
	.loc 1 537 0
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bne	.L48
	.loc 1 538 0
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	.loc 1 539 0
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
	b	.L49
.L48:
	.loc 1 541 0
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #56]
	str	r2, [r3, #4]
	.loc 1 542 0
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
.L49:
	.loc 1 546 0
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	adds	r3, r3, #16
	.loc 1 547 0
	movs	r2, #7
	bics	r3, r2
	movs	r2, r3
	.loc 1 545 0
	ldr	r3, [r7, #48]
	str	r2, [r3, #4]
	.loc 1 549 0
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #48]
	str	r2, [r3]
	.loc 1 550 0
	ldr	r3, [r7, #28]
	str	r3, [r7, #44]
	.loc 1 552 0
	b	.L46
.L47:
	.loc 1 557 0
	ldr	r3, [r7, #28]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bne	.L50
	.loc 1 558 0
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bne	.L51
	.loc 1 559 0
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	.loc 1 560 0
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
	b	.L52
.L51:
	.loc 1 562 0
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #56]
	str	r2, [r3, #4]
	.loc 1 563 0
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
.L52:
	.loc 1 567 0
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	adds	r3, r3, #16
	.loc 1 568 0
	movs	r2, #7
	bics	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	movs	r1, #2
	ands	r3, r1
	orrs	r2, r3
	.loc 1 566 0
	ldr	r3, [r7, #28]
	str	r2, [r3, #4]
	.loc 1 569 0
	ldr	r3, [r7, #28]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #24]
	.loc 1 570 0
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	.loc 1 571 0
	ldr	r3, [r7, #28]
	str	r3, [r7, #48]
	.loc 1 572 0
	ldr	r3, [r7, #36]
	str	r3, [r7, #52]
	.loc 1 574 0
	b	.L46
.L50:
	.loc 1 576 0
	ldr	r3, [r7, #60]
	str	r3, [r7, #56]
	.loc 1 577 0
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
.L46:
	.loc 1 530 0
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.LCB954
	b	.L53	@long jump
.LCB954:
	.loc 1 581 0
	ldr	r3, [r7, #52]
	adds	r3, r3, #8
	str	r3, [r7, #20]
	.loc 1 582 0
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	.loc 1 583 0
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	str	r2, [r3]
	.loc 1 584 0
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	.loc 1 585 0
	ldr	r3, [r7, #48]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	free_ex
	.loc 1 586 0
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	.loc 1 587 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #64
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE9:
	.size	add_new_area, .-add_new_area
	.section	.text.get_used_size,"ax",%progbits
	.align	2
	.global	get_used_size
	.code	16
	.thumb_func
	.type	get_used_size, %function
get_used_size:
.LFB10:
	.loc 1 592 0
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
	.loc 1 595 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	.loc 1 599 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE10:
	.size	get_used_size, .-get_used_size
	.section	.text.get_max_size,"ax",%progbits
	.align	2
	.global	get_max_size
	.code	16
	.thumb_func
	.type	get_max_size, %function
get_max_size:
.LFB11:
	.loc 1 603 0
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
	.loc 1 606 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 1 610 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE11:
	.size	get_max_size, .-get_max_size
	.section	.text.destroy_memory_pool,"ax",%progbits
	.align	2
	.global	destroy_memory_pool
	.code	16
	.thumb_func
	.type	destroy_memory_pool, %function
destroy_memory_pool:
.LFB12:
	.loc 1 614 0
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
	.loc 1 616 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	.loc 1 618 0
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 622 0
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE12:
	.size	destroy_memory_pool, .-destroy_memory_pool
	.section	.text.tlsf_malloc,"ax",%progbits
	.align	2
	.global	tlsf_malloc
	.code	16
	.thumb_func
	.type	tlsf_malloc, %function
tlsf_malloc:
.LFB13:
	.loc 1 627 0
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
	.loc 1 647 0
	ldr	r3, .L62
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	malloc_ex
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 651 0
	ldr	r3, [r7, #12]
	.loc 1 652 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L63:
	.align	2
.L62:
	.word	mpool
	.cfi_endproc
.LFE13:
	.size	tlsf_malloc, .-tlsf_malloc
	.section	.text.tlsf_free,"ax",%progbits
	.align	2
	.global	tlsf_free
	.code	16
	.thumb_func
	.type	tlsf_free, %function
tlsf_free:
.LFB14:
	.loc 1 656 0
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
	.loc 1 661 0
	ldr	r3, .L65
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	free_ex
	.loc 1 665 0
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L66:
	.align	2
.L65:
	.word	mpool
	.cfi_endproc
.LFE14:
	.size	tlsf_free, .-tlsf_free
	.section	.text.tlsf_realloc,"ax",%progbits
	.align	2
	.global	tlsf_realloc
	.code	16
	.thumb_func
	.type	tlsf_realloc, %function
tlsf_realloc:
.LFB15:
	.loc 1 669 0
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
	.loc 1 681 0
	ldr	r3, .L69
	ldr	r2, [r3]
	ldr	r1, [r7]
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	realloc_ex
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 685 0
	ldr	r3, [r7, #12]
	.loc 1 686 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L70:
	.align	2
.L69:
	.word	mpool
	.cfi_endproc
.LFE15:
	.size	tlsf_realloc, .-tlsf_realloc
	.section	.text.tlsf_calloc,"ax",%progbits
	.align	2
	.global	tlsf_calloc
	.code	16
	.thumb_func
	.type	tlsf_calloc, %function
tlsf_calloc:
.LFB16:
	.loc 1 690 0
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
	.loc 1 696 0
	ldr	r3, .L73
	ldr	r2, [r3]
	ldr	r1, [r7]
	ldr	r3, [r7, #4]
	movs	r0, r3
	bl	calloc_ex
	movs	r3, r0
	str	r3, [r7, #12]
	.loc 1 700 0
	ldr	r3, [r7, #12]
	.loc 1 701 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L74:
	.align	2
.L73:
	.word	mpool
	.cfi_endproc
.LFE16:
	.size	tlsf_calloc, .-tlsf_calloc
	.section	.text.malloc_ex,"ax",%progbits
	.align	2
	.global	malloc_ex
	.code	16
	.thumb_func
	.type	malloc_ex, %function
malloc_ex:
.LFB17:
	.loc 1 705 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #44
	.cfi_def_cfa_offset 56
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 707 0
	ldr	r3, [r7]
	str	r3, [r7, #36]
	.loc 1 712 0
	ldr	r3, [r7, #4]
	cmp	r3, #7
	bls	.L76
	.loc 1 712 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #7
	movs	r2, #7
	bics	r3, r2
	b	.L77
.L76:
	.loc 1 712 0 discriminator 2
	movs	r3, #8
.L77:
	.loc 1 712 0 discriminator 4
	str	r3, [r7, #4]
	.loc 1 715 0 is_stmt 1 discriminator 4
	movs	r3, #12
	adds	r2, r7, r3
	movs	r3, #16
	adds	r1, r7, r3
	adds	r3, r7, #4
	movs	r0, r3
	bl	MAPPING_SEARCH
	.loc 1 719 0 discriminator 4
	movs	r3, #12
	adds	r2, r7, r3
	movs	r3, #16
	adds	r1, r7, r3
	ldr	r3, [r7, #36]
	movs	r0, r3
	bl	FIND_SUITABLE_BLOCK
	movs	r3, r0
	str	r3, [r7, #32]
	.loc 1 737 0 discriminator 4
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L78
	.loc 1 738 0
	movs	r3, #0
	b	.L86
.L78:
	.loc 1 740 0
	ldr	r4, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #12]
	ldr	r1, [r7, #36]
	lsls	r3, r4, #5
	adds	r3, r3, r0
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #4
	str	r2, [r3]
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L80
	.loc 1 740 0 is_stmt 0 discriminator 1
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #8]
	b	.L81
.L80:
	.loc 1 740 0 is_stmt 1 discriminator 2
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	adds	r3, r2, r3
	adds	r3, r3, #4
	movs	r1, r3
	bl	clear_bit
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #36]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L81
	.loc 1 740 0 is_stmt 0 discriminator 4
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #36]
	adds	r3, r3, #16
	movs	r1, r3
	movs	r0, r2
	bl	clear_bit
.L81:
	.loc 1 740 0 discriminator 6
	ldr	r3, [r7, #32]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 740 0 is_stmt 1 discriminator 6
	ldr	r3, [r7, #32]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 743 0 discriminator 6
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #28]
	.loc 1 745 0 discriminator 6
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	.loc 1 746 0 discriminator 6
	ldr	r3, [r7, #24]
	cmp	r3, #15
	bls	.L82
	.loc 1 747 0
	ldr	r3, [r7, #24]
	subs	r3, r3, #8
	str	r3, [r7, #24]
	.loc 1 748 0
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r2, r3
	str	r3, [r7, #20]
	.loc 1 749 0
	ldr	r3, [r7, #24]
	movs	r2, #1
	orrs	r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	.loc 1 750 0
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	.loc 1 751 0
	movs	r3, #12
	adds	r2, r7, r3
	movs	r3, #16
	adds	r1, r7, r3
	ldr	r3, [r7, #24]
	movs	r0, r3
	bl	MAPPING_INSERT
	.loc 1 752 0
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 752 0
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	str	r2, [r3, #12]
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L83
	.loc 1 752 0 is_stmt 0 discriminator 1
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
.L83:
	.loc 1 752 0 discriminator 3
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	adds	r3, r2, r3
	adds	r3, r3, #4
	movs	r1, r3
	bl	set_bit
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #36]
	adds	r3, r3, #16
	movs	r1, r3
	movs	r0, r2
	bl	set_bit
	.loc 1 754 0 is_stmt 1 discriminator 3
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	movs	r2, #2
	ands	r2, r3
	ldr	r3, [r7, #4]
	orrs	r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3, #4]
	b	.L84
.L82:
	.loc 1 756 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	movs	r2, #2
	bics	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #4]
	.loc 1 757 0
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	movs	r2, #1
	bics	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3, #4]
.L84:
	.loc 1 760 0
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #4]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L85
	.loc 1 760 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	str	r2, [r3, #8]
.L85:
	.loc 1 762 0 is_stmt 1
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
.L86:
	.loc 1 763 0 discriminator 1
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE17:
	.size	malloc_ex, .-malloc_ex
	.section	.text.free_ex,"ax",%progbits
	.align	2
	.global	free_ex
	.code	16
	.thumb_func
	.type	free_ex, %function
free_ex:
.LFB18:
	.loc 1 767 0
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
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 769 0
	ldr	r3, [r7]
	str	r3, [r7, #24]
	.loc 1 771 0
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 773 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.LCB1555
	b	.L99	@long jump
.LCB1555:
	.loc 1 776 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #8
	str	r3, [r7, #28]
	.loc 1 777 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	movs	r2, #1
	orrs	r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #4]
	.loc 1 779 0
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	subs	r3, r2, r3
	subs	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #4]
	.loc 1 781 0
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 782 0
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 783 0
	ldr	r3, [r7, #28]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #20]
	.loc 1 784 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	movs	r2, #1
	ands	r3, r2
	beq	.L90
	.loc 1 785 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	movs	r2, #12
	adds	r2, r7, r2
	movs	r1, #16
	adds	r1, r7, r1
	movs	r0, r3
	bl	MAPPING_INSERT
	.loc 1 786 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L91
	.loc 1 786 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #20]
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
.L91:
	.loc 1 786 0 discriminator 3
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L92
	.loc 1 786 0 discriminator 4
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #20]
	ldr	r2, [r2, #12]
	str	r2, [r3, #12]
.L92:
	.loc 1 786 0 discriminator 6
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L93
	.loc 1 786 0 discriminator 7
	ldr	r4, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r1, [r7, #24]
	lsls	r3, r4, #5
	adds	r3, r3, r0
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #4
	str	r2, [r3]
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L93
	.loc 1 786 0 discriminator 9
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	adds	r3, r2, r3
	adds	r3, r3, #4
	movs	r1, r3
	bl	clear_bit
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #24]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L93
	.loc 1 786 0 discriminator 11
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	movs	r1, r3
	movs	r0, r2
	bl	clear_bit
.L93:
	.loc 1 786 0 discriminator 13
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 786 0 is_stmt 1 discriminator 13
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 787 0 discriminator 13
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #4]
.L90:
	.loc 1 789 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	movs	r2, #2
	ands	r3, r2
	beq	.L94
	.loc 1 790 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	.loc 1 791 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	movs	r2, #12
	adds	r2, r7, r2
	movs	r1, #16
	adds	r1, r7, r1
	movs	r0, r3
	bl	MAPPING_INSERT
	.loc 1 792 0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L95
	.loc 1 792 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #20]
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
.L95:
	.loc 1 792 0 discriminator 3
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L96
	.loc 1 792 0 discriminator 4
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #20]
	ldr	r2, [r2, #12]
	str	r2, [r3, #12]
.L96:
	.loc 1 792 0 discriminator 6
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L97
	.loc 1 792 0 discriminator 7
	ldr	r4, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r1, [r7, #24]
	lsls	r3, r4, #5
	adds	r3, r3, r0
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #4
	str	r2, [r3]
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L97
	.loc 1 792 0 discriminator 9
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	adds	r3, r2, r3
	adds	r3, r3, #4
	movs	r1, r3
	bl	clear_bit
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #24]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L97
	.loc 1 792 0 discriminator 11
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	movs	r1, r3
	movs	r0, r2
	bl	clear_bit
.L97:
	.loc 1 792 0 discriminator 13
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 792 0 is_stmt 1 discriminator 13
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 793 0 discriminator 13
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	.loc 1 794 0 discriminator 13
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
.L94:
	.loc 1 796 0
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	movs	r2, #12
	adds	r2, r7, r2
	movs	r1, #16
	adds	r1, r7, r1
	movs	r0, r3
	bl	MAPPING_INSERT
	.loc 1 797 0
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 797 0
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	str	r2, [r3, #12]
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L98
	.loc 1 797 0 is_stmt 0 discriminator 1
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r7, #28]
	str	r2, [r3, #8]
.L98:
	.loc 1 797 0 discriminator 3
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	adds	r3, r2, r3
	adds	r3, r3, #4
	movs	r1, r3
	bl	set_bit
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	movs	r1, r3
	movs	r0, r2
	bl	set_bit
	.loc 1 799 0 is_stmt 1 discriminator 3
	ldr	r3, [r7, #28]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #20]
	.loc 1 800 0 discriminator 3
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	movs	r2, #2
	orrs	r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	.loc 1 801 0 discriminator 3
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	b	.L87
.L99:
	.loc 1 774 0
	nop
.L87:
	.loc 1 802 0
	mov	sp, r7
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE18:
	.size	free_ex, .-free_ex
	.section	.text.realloc_ex,"ax",%progbits
	.align	2
	.global	realloc_ex
	.code	16
	.thumb_func
	.type	realloc_ex, %function
realloc_ex:
.LFB19:
	.loc 1 806 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #60
	.cfi_def_cfa_offset 72
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 808 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #44]
	.loc 1 815 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L101
	.loc 1 816 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L102
	.loc 1 817 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	movs	r1, r2
	movs	r0, r3
	bl	malloc_ex
	movs	r3, r0
	b	.L124
.L102:
	.loc 1 818 0
	movs	r3, #0
	b	.L124
.L101:
	.loc 1 819 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L104
	.loc 1 820 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	free_ex
	.loc 1 821 0
	movs	r3, #0
	b	.L124
.L104:
	.loc 1 824 0
	ldr	r3, [r7, #12]
	subs	r3, r3, #8
	str	r3, [r7, #40]
	.loc 1 825 0
	ldr	r3, [r7, #40]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #52]
	.loc 1 826 0
	ldr	r3, [r7, #8]
	cmp	r3, #7
	bls	.L105
	.loc 1 826 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	adds	r3, r3, #7
	movs	r2, #7
	bics	r3, r2
	b	.L106
.L105:
	.loc 1 826 0 discriminator 2
	movs	r3, #8
.L106:
	.loc 1 826 0 discriminator 4
	str	r3, [r7, #8]
	.loc 1 827 0 is_stmt 1 discriminator 4
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	str	r3, [r7, #48]
	.loc 1 828 0 discriminator 4
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bls	.LCB2035
	b	.L107	@long jump
.LCB2035:
	.loc 1 829 0
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	subs	r3, r2, r3
	subs	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #4]
	.loc 1 830 0
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r2, #1
	ands	r3, r2
	beq	.L108
	.loc 1 831 0
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	movs	r2, #20
	adds	r2, r7, r2
	movs	r1, #24
	adds	r1, r7, r1
	movs	r0, r3
	bl	MAPPING_INSERT
	.loc 1 832 0
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L109
	.loc 1 832 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #52]
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
.L109:
	.loc 1 832 0 discriminator 3
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L110
	.loc 1 832 0 discriminator 4
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #52]
	ldr	r2, [r2, #12]
	str	r2, [r3, #12]
.L110:
	.loc 1 832 0 discriminator 6
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bne	.L111
	.loc 1 832 0 discriminator 7
	ldr	r4, [r7, #24]
	ldr	r0, [r7, #20]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #12]
	ldr	r1, [r7, #44]
	lsls	r3, r4, #5
	adds	r3, r3, r0
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #4
	str	r2, [r3]
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L111
	.loc 1 832 0 discriminator 9
	ldr	r0, [r7, #20]
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	adds	r3, r2, r3
	adds	r3, r3, #4
	movs	r1, r3
	bl	clear_bit
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #44]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L111
	.loc 1 832 0 discriminator 11
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #44]
	adds	r3, r3, #16
	movs	r1, r3
	movs	r0, r2
	bl	clear_bit
.L111:
	.loc 1 832 0 discriminator 13
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 832 0 is_stmt 1 discriminator 13
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 833 0 discriminator 13
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #48]
	adds	r3, r2, r3
	adds	r3, r3, #8
	str	r3, [r7, #48]
	.loc 1 834 0 discriminator 13
	ldr	r3, [r7, #52]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #52]
.L108:
	.loc 1 838 0
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #48]
	.loc 1 839 0
	ldr	r3, [r7, #48]
	cmp	r3, #15
	bls	.L112
	.loc 1 840 0
	ldr	r3, [r7, #48]
	subs	r3, r3, #8
	str	r3, [r7, #48]
	.loc 1 841 0
	ldr	r3, [r7, #40]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #8]
	adds	r3, r2, r3
	str	r3, [r7, #36]
	.loc 1 842 0
	ldr	r3, [r7, #48]
	movs	r2, #1
	orrs	r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #4]
	.loc 1 843 0
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	.loc 1 844 0
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r2, #2
	orrs	r2, r3
	ldr	r3, [r7, #52]
	str	r2, [r3, #4]
	.loc 1 845 0
	movs	r3, #20
	adds	r2, r7, r3
	movs	r3, #24
	adds	r1, r7, r3
	ldr	r3, [r7, #48]
	movs	r0, r3
	bl	MAPPING_INSERT
	.loc 1 846 0
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 846 0
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	str	r2, [r3, #12]
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L113
	.loc 1 846 0 is_stmt 0 discriminator 1
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r7, #36]
	str	r2, [r3, #8]
.L113:
	.loc 1 846 0 discriminator 3
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r0, [r7, #20]
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	adds	r3, r2, r3
	adds	r3, r3, #4
	movs	r1, r3
	bl	set_bit
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #44]
	adds	r3, r3, #16
	movs	r1, r3
	movs	r0, r2
	bl	set_bit
	.loc 1 847 0 is_stmt 1 discriminator 3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	movs	r2, #2
	ands	r2, r3
	ldr	r3, [r7, #8]
	orrs	r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #4]
.L112:
	.loc 1 849 0
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #4]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L114
	.loc 1 849 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #44]
	str	r2, [r3, #8]
.L114:
	.loc 1 850 0 is_stmt 1
	ldr	r3, [r7, #40]
	adds	r3, r3, #8
	b	.L124
.L107:
	.loc 1 852 0
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r2, #1
	ands	r3, r2
	bne	.LCB2322
	b	.L115	@long jump
.LCB2322:
	.loc 1 853 0
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #48]
	adds	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.LCB2332
	b	.L115	@long jump
.LCB2332:
	.loc 1 854 0
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	subs	r3, r2, r3
	subs	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #4]
	.loc 1 855 0
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	movs	r2, #20
	adds	r2, r7, r2
	movs	r1, #24
	adds	r1, r7, r1
	movs	r0, r3
	bl	MAPPING_INSERT
	.loc 1 856 0
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L116
	.loc 1 856 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #52]
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
.L116:
	.loc 1 856 0 discriminator 3
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L117
	.loc 1 856 0 discriminator 4
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #52]
	ldr	r2, [r2, #12]
	str	r2, [r3, #12]
.L117:
	.loc 1 856 0 discriminator 6
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bne	.L118
	.loc 1 856 0 discriminator 7
	ldr	r4, [r7, #24]
	ldr	r0, [r7, #20]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #12]
	ldr	r1, [r7, #44]
	lsls	r3, r4, #5
	adds	r3, r3, r0
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r1, r3
	adds	r3, r3, #4
	str	r2, [r3]
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L118
	.loc 1 856 0 discriminator 9
	ldr	r0, [r7, #20]
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	adds	r3, r2, r3
	adds	r3, r3, #4
	movs	r1, r3
	bl	clear_bit
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #44]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L118
	.loc 1 856 0 discriminator 11
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #44]
	adds	r3, r3, #16
	movs	r1, r3
	movs	r0, r2
	bl	clear_bit
.L118:
	.loc 1 856 0 discriminator 13
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 856 0 is_stmt 1 discriminator 13
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 857 0 discriminator 13
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #4]
	.loc 1 858 0 discriminator 13
	ldr	r3, [r7, #40]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	str	r3, [r7, #52]
	.loc 1 859 0 discriminator 13
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #40]
	str	r2, [r3]
	.loc 1 860 0 discriminator 13
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r2, #2
	bics	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #52]
	str	r2, [r3, #4]
	.loc 1 861 0 discriminator 13
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #48]
	.loc 1 862 0 discriminator 13
	ldr	r3, [r7, #48]
	cmp	r3, #15
	bls	.L119
	.loc 1 863 0
	ldr	r3, [r7, #48]
	subs	r3, r3, #8
	str	r3, [r7, #48]
	.loc 1 864 0
	ldr	r3, [r7, #40]
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #8]
	adds	r3, r2, r3
	str	r3, [r7, #36]
	.loc 1 865 0
	ldr	r3, [r7, #48]
	movs	r2, #1
	orrs	r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #4]
	.loc 1 866 0
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	.loc 1 867 0
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	movs	r2, #2
	orrs	r2, r3
	ldr	r3, [r7, #52]
	str	r2, [r3, #4]
	.loc 1 868 0
	movs	r3, #20
	adds	r2, r7, r3
	movs	r3, #24
	adds	r1, r7, r3
	ldr	r3, [r7, #48]
	movs	r0, r3
	bl	MAPPING_INSERT
	.loc 1 869 0
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 869 0
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	str	r2, [r3, #12]
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L120
	.loc 1 869 0 is_stmt 0 discriminator 1
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r7, #36]
	str	r2, [r3, #8]
.L120:
	.loc 1 869 0 discriminator 3
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #44]
	lsls	r1, r1, #5
	adds	r3, r1, r3
	adds	r3, r3, #20
	lsls	r3, r3, #2
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r0, [r7, #20]
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	adds	r3, r2, r3
	adds	r3, r3, #4
	movs	r1, r3
	bl	set_bit
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #44]
	adds	r3, r3, #16
	movs	r1, r3
	movs	r0, r2
	bl	set_bit
	.loc 1 870 0 is_stmt 1 discriminator 3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	movs	r2, #2
	ands	r2, r3
	ldr	r3, [r7, #8]
	orrs	r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #4]
.L119:
	.loc 1 872 0
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	movs	r1, #3
	bics	r3, r1
	adds	r3, r2, r3
	adds	r3, r3, #8
	movs	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #4]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L121
	.loc 1 872 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #44]
	str	r2, [r3, #8]
.L121:
	.loc 1 873 0 is_stmt 1
	ldr	r3, [r7, #40]
	adds	r3, r3, #8
	b	.L124
.L115:
	.loc 1 877 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	movs	r1, r2
	movs	r0, r3
	bl	malloc_ex
	movs	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L122
	.loc 1 878 0
	movs	r3, #0
	b	.L124
.L122:
	.loc 1 881 0
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	movs	r2, #3
	bics	r3, r2
	ldr	r2, [r7, #8]
	cmp	r3, r2
	bls	.L123
	movs	r3, r2
.L123:
	str	r3, [r7, #28]
	.loc 1 883 0
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #32]
	movs	r0, r3
	bl	memcpy
	.loc 1 885 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movs	r1, r2
	movs	r0, r3
	bl	free_ex
	.loc 1 886 0
	ldr	r3, [r7, #32]
.L124:
	.loc 1 887 0 discriminator 1
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE19:
	.size	realloc_ex, .-realloc_ex
	.section	.text.calloc_ex,"ax",%progbits
	.align	2
	.global	calloc_ex
	.code	16
	.thumb_func
	.type	calloc_ex, %function
calloc_ex:
.LFB20:
	.loc 1 892 0
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 896 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L126
	.loc 1 896 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L127
.L126:
	.loc 1 897 0 is_stmt 1
	movs	r3, #0
	b	.L128
.L127:
	.loc 1 899 0
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	muls	r3, r2
	ldr	r2, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	malloc_ex
	movs	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L129
	.loc 1 900 0
	movs	r3, #0
	b	.L128
.L129:
	.loc 1 901 0
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	muls	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #0
	movs	r0, r3
	bl	memset
	.loc 1 903 0
	ldr	r3, [r7, #20]
.L128:
	.loc 1 904 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE20:
	.size	calloc_ex, .-calloc_ex
	.text
.Letext0:
	.file 2 "d:\\1.11\\share\\em_armgcc\\lib\\gcc\\arm-none-eabi\\5.4.1\\include\\stddef.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x9be
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xc
	.4byte	.LASF76
	.4byte	.LASF77
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x1
	.byte	0xbe
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x1
	.byte	0xbf
	.4byte	0x53
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x8
	.byte	0x1
	.byte	0xc1
	.4byte	0xce
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0xc2
	.4byte	0xff
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0xc3
	.4byte	0xff
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x10
	.byte	0x1
	.byte	0xc6
	.4byte	0xff
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0xc8
	.4byte	0xff
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0xca
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x9
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0xcf
	.4byte	0x105
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0xa
	.byte	0x8
	.byte	0x1
	.byte	0xcc
	.4byte	0x124
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0xcd
	.4byte	0xa9
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0xce
	.4byte	0x124
	.byte	0
	.uleb128 0xc
	.4byte	0x9e
	.4byte	0x134
	.uleb128 0xd
	.4byte	0x7d
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x1
	.byte	0xd0
	.4byte	0xce
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x8
	.byte	0x1
	.byte	0xd5
	.4byte	0x164
	.uleb128 0x9
	.ascii	"end\000"
	.byte	0x1
	.byte	0xd6
	.4byte	0x164
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0xd7
	.4byte	0x16a
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x134
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13f
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd8
	.4byte	0x13f
	.uleb128 0xe
	.4byte	.LASF26
	.2byte	0x854
	.byte	0x1
	.byte	0xda
	.4byte	0x1dd
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x1
	.byte	0xdc
	.4byte	0x93
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x1
	.byte	0xe5
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x1
	.byte	0xe6
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x1
	.byte	0xea
	.4byte	0x1dd
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x1
	.byte	0xee
	.4byte	0x93
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x1
	.byte	0xf1
	.4byte	0x1e3
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1
	.byte	0xf3
	.4byte	0x1f3
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x170
	.uleb128 0xc
	.4byte	0x93
	.4byte	0x1f3
	.uleb128 0xd
	.4byte	0x7d
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0x164
	.4byte	0x209
	.uleb128 0xd
	.4byte	0x7d
	.byte	0xf
	.uleb128 0xd
	.4byte	0x7d
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x1
	.byte	0xf4
	.4byte	0x17b
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x122
	.4byte	0x25
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x256
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x122
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x124
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x125
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x12b
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x298
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x12e
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x134
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cc
	.uleb128 0x10
	.ascii	"nr\000"
	.byte	0x1
	.2byte	0x134
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x134
	.4byte	0x2cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x93
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x139
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x306
	.uleb128 0x10
	.ascii	"nr\000"
	.byte	0x1
	.2byte	0x139
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x139
	.4byte	0x2cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x13e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x357
	.uleb128 0x10
	.ascii	"_r\000"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.ascii	"_fl\000"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x35d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.ascii	"_sl\000"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x35d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.ascii	"_t\000"
	.byte	0x1
	.2byte	0x140
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x152
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a6
	.uleb128 0x10
	.ascii	"_r\000"
	.byte	0x1
	.2byte	0x152
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.ascii	"_fl\000"
	.byte	0x1
	.2byte	0x152
	.4byte	0x35d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.ascii	"_sl\000"
	.byte	0x1
	.2byte	0x152
	.4byte	0x35d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x15f
	.4byte	0x164
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40b
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x15f
	.4byte	0x40b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.ascii	"_fl\000"
	.byte	0x1
	.2byte	0x15f
	.4byte	0x35d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.ascii	"_sl\000"
	.byte	0x1
	.2byte	0x15f
	.4byte	0x35d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x161
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.ascii	"_b\000"
	.byte	0x1
	.2byte	0x162
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x209
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x164
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x481
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.ascii	"lb\000"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii	"ib\000"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.ascii	"ai\000"
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x1dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x2c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e4
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x40b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.ascii	"ib\000"
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x200
	.4byte	0x2c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cf
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x200
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x200
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x200
	.4byte	0x84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x203
	.4byte	0x40b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x204
	.4byte	0x1dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x204
	.4byte	0x1dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.ascii	"ai\000"
	.byte	0x1
	.2byte	0x204
	.4byte	0x1dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.ascii	"ib0\000"
	.byte	0x1
	.2byte	0x205
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii	"b0\000"
	.byte	0x1
	.2byte	0x205
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.ascii	"lb0\000"
	.byte	0x1
	.2byte	0x205
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.ascii	"ib1\000"
	.byte	0x1
	.2byte	0x205
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.ascii	"b1\000"
	.byte	0x1
	.2byte	0x205
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.ascii	"lb1\000"
	.byte	0x1
	.2byte	0x205
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x205
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x18
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x24f
	.4byte	0x2c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f9
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x24f
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x25a
	.4byte	0x2c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x623
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x25a
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x265
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x658
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x265
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x268
	.4byte	0x40b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x272
	.4byte	0x84
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x691
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x272
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x275
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x28f
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b7
	.uleb128 0x10
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x28f
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x29c
	.4byte	0x84
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ff
	.uleb128 0x10
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x29c
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x29c
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x29f
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x84
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x747
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x84
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e4
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x2c3
	.4byte	0x40b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.ascii	"b2\000"
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.ascii	"fl\000"
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.ascii	"sl\000"
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x2c6
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x2fe
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x860
	.uleb128 0x10
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x2fe
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x2fe
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x301
	.4byte	0x40b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x302
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x302
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.ascii	"fl\000"
	.byte	0x1
	.2byte	0x303
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.ascii	"sl\000"
	.byte	0x1
	.2byte	0x303
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x17
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x325
	.4byte	0x84
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92c
	.uleb128 0x10
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x325
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x325
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x325
	.4byte	0x84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x328
	.4byte	0x40b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x329
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x32a
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x32b
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x32b
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x32b
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii	"fl\000"
	.byte	0x1
	.2byte	0x32c
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.ascii	"sl\000"
	.byte	0x1
	.2byte	0x32c
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x32d
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x37b
	.4byte	0x84
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x983
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x37b
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x37b
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x37b
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x37e
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xc
	.4byte	0x993
	.4byte	0x993
	.uleb128 0xd
	.4byte	0x7d
	.byte	0xff
	.byte	0
	.uleb128 0x1b
	.4byte	0x25
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x107
	.4byte	0x9aa
	.uleb128 0x5
	.byte	0x3
	.4byte	table
	.uleb128 0x1b
	.4byte	0x983
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x86
	.uleb128 0x5
	.byte	0x3
	.4byte	mpool
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0xbc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
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
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF51:
	.ascii	"add_new_area\000"
.LASF53:
	.ascii	"ptr_prev\000"
.LASF12:
	.ascii	"size_t\000"
.LASF15:
	.ascii	"prev\000"
.LASF54:
	.ascii	"next_b\000"
.LASF30:
	.ascii	"area_head\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF37:
	.ascii	"addr\000"
.LASF60:
	.ascii	"tlsf_realloc\000"
.LASF67:
	.ascii	"tmp_b\000"
.LASF16:
	.ascii	"next\000"
.LASF58:
	.ascii	"destroy_memory_pool\000"
.LASF1:
	.ascii	"long long int\000"
.LASF3:
	.ascii	"signed char\000"
.LASF19:
	.ascii	"prev_hdr\000"
.LASF7:
	.ascii	"long int\000"
.LASF43:
	.ascii	"_tlsf\000"
.LASF63:
	.ascii	"elem_size\000"
.LASF45:
	.ascii	"process_area\000"
.LASF59:
	.ascii	"tlsf_free\000"
.LASF46:
	.ascii	"area\000"
.LASF61:
	.ascii	"tlsf_calloc\000"
.LASF28:
	.ascii	"used_size\000"
.LASF33:
	.ascii	"matrix\000"
.LASF41:
	.ascii	"MAPPING_INSERT\000"
.LASF77:
	.ascii	"C:\\\\Users\\\\user\\\\Desktop\\\\DZ09-master\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF72:
	.ascii	"calloc_ex\000"
.LASF75:
	.ascii	"GNU C11 5.4.1 20160609 (release) [ARM/embedded-5-br"
	.ascii	"anch revision 237715] -mcpu=arm9e -march=armv5te -m"
	.ascii	"thumb -mthumb-interwork -g2 -O0 -fdata-sections -ff"
	.ascii	"unction-sections\000"
.LASF47:
	.ascii	"mem_pool_size\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF13:
	.ascii	"u32_t\000"
.LASF17:
	.ascii	"free_ptr_struct\000"
.LASF74:
	.ascii	"mpool\000"
.LASF20:
	.ascii	"size\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF57:
	.ascii	"tlsf_malloc\000"
.LASF40:
	.ascii	"MAPPING_SEARCH\000"
.LASF52:
	.ascii	"area_size\000"
.LASF62:
	.ascii	"nelem\000"
.LASF39:
	.ascii	"clear_bit\000"
.LASF14:
	.ascii	"u8_t\000"
.LASF10:
	.ascii	"sizetype\000"
.LASF55:
	.ascii	"get_used_size\000"
.LASF2:
	.ascii	"long double\000"
.LASF42:
	.ascii	"FIND_SUITABLE_BLOCK\000"
.LASF48:
	.ascii	"mem_pool\000"
.LASF69:
	.ascii	"new_size\000"
.LASF71:
	.ascii	"cpsize\000"
.LASF21:
	.ascii	"free_ptr\000"
.LASF56:
	.ascii	"get_max_size\000"
.LASF44:
	.ascii	"_tmp\000"
.LASF66:
	.ascii	"free_ex\000"
.LASF34:
	.ascii	"tlsf_t\000"
.LASF68:
	.ascii	"realloc_ex\000"
.LASF25:
	.ascii	"area_info_t\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"short int\000"
.LASF73:
	.ascii	"table\000"
.LASF65:
	.ascii	"tmp_size\000"
.LASF18:
	.ascii	"bhdr_struct\000"
.LASF35:
	.ascii	"ls_bit\000"
.LASF38:
	.ascii	"set_bit\000"
.LASF11:
	.ascii	"char\000"
.LASF76:
	.ascii	"Source\\System\\tlsf.c\000"
.LASF24:
	.ascii	"area_info_struct\000"
.LASF22:
	.ascii	"buffer\000"
.LASF36:
	.ascii	"ms_bit\000"
.LASF49:
	.ascii	"tlsf\000"
.LASF27:
	.ascii	"tlsf_signature\000"
.LASF64:
	.ascii	"malloc_ex\000"
.LASF32:
	.ascii	"sl_bitmap\000"
.LASF23:
	.ascii	"bhdr_t\000"
.LASF70:
	.ascii	"ptr_aux\000"
.LASF29:
	.ascii	"max_size\000"
.LASF31:
	.ascii	"fl_bitmap\000"
.LASF26:
	.ascii	"TLSF_struct\000"
.LASF50:
	.ascii	"init_memory_pool\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
