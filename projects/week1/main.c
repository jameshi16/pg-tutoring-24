#include "memory.h"
#include "stdio.h"
#include "stdlib.h"
#include <string.h>

void memcpy_self(void* dest, void* src, int count) {
    while (count--) (*((unsigned char*)dest + count) = *((unsigned char*)src + count));
}

int main(int argc, char** argv) {
    char c = 'x';
    int* d = calloc(sizeof(int), 1);
    // memcpy((void*) d, (void*) &c, sizeof(char));
    memcpy_self((void*) d, (void*) &c, sizeof(char));
    /* printf("Address of %x", (unsigned int)(&c)); */
    /* printf("Address of %x", (unsigned int)(&((int)c))); */
    // printf("%d\n", (int)c);
    printf("%d", *d);
    return 0;
}
