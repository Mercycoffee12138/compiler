#include "sylib.h"
/*
riscv64-unknown-elf-gcc float.s -c -o float.o -w
riscv64-unknown-elf-gcc float.o -o float -L./lib -lsysy_riscv -static -mcmodel=medany -Wl,--no-relax
qemu-riscv64 ./float
*/
int main() {
    // 浮点数操作
    float f1 = 3.14;
    float f2 = 2.0;
    float fsum = f1 + f2;
    float fdiff = f1 - f2;
    float fmul = f1 * f2;
    float fdiv = f1 / f2;

    putfloat(fsum);
    putch('\n');
    putfloat(fdiff);
    putch('\n');
    putfloat(fmul);
    putch('\n');
    putfloat(fdiv);
    putch('\n');
    return 0;
}