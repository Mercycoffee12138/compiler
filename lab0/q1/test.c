#include <stdio.h>
#include <time.h>

// 宏定义
#define FIB_NUMBER 10000000
#define SQUARE(x) ((x)*(x))

#ifdef DEBUG
    #define LOG(msg) printf("DEBUG: %s\n", msg)
#else
    #define LOG(msg)
#endif

unsigned long long fibonacci(unsigned long long n) {
    if (n <= 1) {
        return n;
    }
    unsigned long long a = 0, b = 1, c;
    for (unsigned long long i = 2; i <= n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}

int main() {
    clock_t start, end;
    double cpu_time_used;

    start = clock();

    unsigned long long n = FIB_NUMBER;
    LOG("开始计算斐波那契数");
    printf("The %lluth Fibonacci number is: %llu\n", n, fibonacci(n));
    printf("SQUARE(%llu) = %llu\n", n, SQUARE(n));

    end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("程序运行时间: %f 秒\n", cpu_time_used);

    return 0;
}