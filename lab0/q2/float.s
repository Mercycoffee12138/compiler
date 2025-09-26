	.file	"float.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zca1p0_zcd1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	lui	a5,%hi(.LC0)
	flw	fa5,%lo(.LC0)(a5)
	fsw	fa5,-20(s0)
	lui	a5,%hi(.LC1)
	flw	fa5,%lo(.LC1)(a5)
	fsw	fa5,-24(s0)
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	fadd.s	fa5,fa4,fa5
	fsw	fa5,-28(s0)
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-32(s0)
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-36(s0)
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-40(s0)
	flw	fa0,-28(s0)
	call	putfloat
	li	a0,10
	call	putch
	flw	fa0,-32(s0)
	call	putfloat
	li	a0,10
	call	putch
	flw	fa0,-36(s0)
	call	putfloat
	li	a0,10
	call	putch
	flw	fa0,-40(s0)
	call	putfloat
	li	a0,10
	call	putch
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
.LC0:
	.word	1078523331
	.align	2
.LC1:
	.word	1073741824
	.ident	"GCC: (g1b306039ac4) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
