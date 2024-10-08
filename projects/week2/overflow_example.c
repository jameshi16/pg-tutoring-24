#include <stdio.h>

void vulnerable_function() {
    int a = 123;
    char buffer[4];
    int b = 456;

    // uh oh
    buffer[0] = 'A';
    buffer[1] = 'B';
    buffer[2] = 'C';
    buffer[3] = 'D';
    buffer[4] = 'E';

    printf("a = %d\n", a);
    printf("b = %d\n", b);
}

int main() {
    vulnerable_function();
    return 0;
}
