	.file	"test.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	relu
	.type	relu, @function
relu:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	lw	a5,-20(s0)
.L3:
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	relu, .-relu
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	li	a5,1
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-28(s0)
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	addw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	divw	a5,a4,a5
	sw	a5,-20(s0)
	li	a4,2
	lw	a5,-28(s0)
	remw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	subw	a5,a4,a5
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-24(s0)
	j	.L5
.L6:
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,-56(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a5,-56(a5)
	mv	a0,a5
	call	relu
	mv	a5,a0
	mv	a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a3,s0,-16
	add	a5,a3,a5
	sw	a4,-56(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a5,-56(a5)
	mv	a0,a5
	call	putint
	li	a0,10
	call	putch
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a5,-56(a5)
	lw	a4,-20(s0)
	mulw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L5:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,10
	ble	a4,a5,.L6
	lw	a5,-20(s0)
	mv	a0,a5
	call	putint
	li	a0,10
	call	putch
	li	a5,0
	mv	a0,a5
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 10.2.0"
