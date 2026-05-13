.text

.align 2
.global max3

// int max3(int x, int y, int z)
// w0       w0     w1     w2
max3:
    cmp w0, w1
    b.ge proveri_z
    mov w0, w1

proveri_z:
    cmp w0, w2
    b.ge kraj
    mov w0, w2

kraj:
    ret
