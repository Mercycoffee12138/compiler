	.text
	.file	"test.c"
	.globl	fibonacci                       # -- Begin function fibonacci
	.p2align	4, 0x90
	.type	fibonacci,@function
fibonacci:                              # @fibonacci
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -12(%rbp)
	cmpl	$1, -12(%rbp)
	jg	.LBB0_2
# %bb.1:
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movl	$0, -16(%rbp)
	movl	$1, -4(%rbp)
	movl	$2, -8(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-16(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB0_7:
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	fibonacci, .Lfunc_end0-fibonacci
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	$0, -16(%rbp)
	movl	$10, -12(%rbp)
	movl	-12(%rbp), %ebx
	movl	-12(%rbp), %edi
	callq	fibonacci
	movabsq	$.L.str, %rdi
	movl	%ebx, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	printf@PLT
	movl	-12(%rbp), %esi
	movl	-12(%rbp), %edx
	imull	-12(%rbp), %edx
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"The %dth Fibonacci number is: %d\n"
	.size	.L.str, 34

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SQUARE(%d) = %d\n"
	.size	.L.str.1, 17

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
