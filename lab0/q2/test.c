//#include "sylib.h"
/*
编译语句    gcc test.c -o test
优化编译O1  gcc test.c -o test -O1
运行语句    ./test
riscv64-unknown-elf-gcc test.c -S -march=rv64imafdc -mabi=lp64d
riscv64-unknown-elf-gcc test.s -c -o test.o -w
riscv64-unknown-elf-gcc test.o -o test -L./lib -lsysy_riscv -static -mcmodel=medany -Wl,--no-relax,-Ttext=0x90000000
qemu-riscv64 ./test
*/
int relu(int n) {
      if (n <= 0) {        // 条件分支
          return 0;
      }
      return n;
}

int main() {
    int result = 1;      // 赋值
    int a = 1;
    result = result + a; //加法
    result = result / a; //除法
    result = 2 % a;      //取模
    result = result - a; //减法

    // 数组操作
    int arr[11];         // 声明数组

    // 初始化数组，每个元素值为其下标
    for (int i = 1; i <= 10; i = i + 1) {
        arr[i] = i;      // 数组赋值
        arr[i] = relu(arr[i]);  // 数组访问、函数调用
    putint(arr[i]);  // 数组访问、输出
    putch('\n');
        result = result * arr[i];
    }

    putint(result); 
    putch('\n');
    return 0;
  }