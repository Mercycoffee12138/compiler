	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"test.c"
	.text
	.align	1
	.global	fibonacci
	.syntax unified
	.thumb
	.thumb_func
	.type	fibonacci, %function
fibonacci:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bgt	.L2
	ldr	r3, [r7, #4]
	b	.L3
.L2:
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #1
	str	r3, [r7, #12]
	movs	r3, #2
	str	r3, [r7, #16]
	b	.L4
.L5:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L4:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L5
	ldr	r3, [r7, #12]
.L3:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	fibonacci, .-fibonacci
	.section	.rodata
	.align	2
.LC0:
	.ascii	"The %dth Fibonacci number is: %d\012\000"
	.align	2
.LC1:
	.ascii	"SQUARE(%d) = %d\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #10
	str	r3, [r7, #4]
	ldr	r0, [r7, #4]
	bl	fibonacci(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r1, [r7, #4]
	ldr	r3, .L8
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	mul	r3, r3, r3
	mov	r2, r3
	ldr	r1, [r7, #4]
	ldr	r3, .L8+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L9:
	.align	2
.L8:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",%progbits
