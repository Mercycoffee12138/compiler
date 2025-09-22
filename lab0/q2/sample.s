    .option nopic
    .attribute arch, "rv64i2p1_m2p0_d2p2"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  max
max:
    mv      a5,a0
    bge     a0,a1,.L2
    mv      a5,a1
.L2:
    sext.w  a0,a5
    ret
    .section .rodata.str1.8,"aMS",@progbits,1
    .align 3
.LC0:
    .string "%d %d"
    .align 3
.LC1:
    .string "max is: %d\\n"
    .section .text.startup,"ax",@progbits
    .align 1
    .globl  main
main:
    addi    sp,sp,-16
    lla     a1,a
    lla     a2,b
    lla     a0,.LC0
    sd      ra,8(sp)
    call    scanf
    lw      a4,b
    lw      a5,a
    sext.w  a1,a4
    sext.w  a0,a5
    call    max
    mv      a1,a0
.L5:
    lla     a0,.LC1
    call    printf
    ld      ra,8(sp)
    li      a0,0
    addi    sp,sp,16
    jr      ra
    .size   main, .-main
    .globl  a
    .globl  b
    .section .sbss,"aw",@nobits
    .align 2
b:
    .zero   4
a:
    .zero   4