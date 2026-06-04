.text

.align 2
.global maksimum

// int maksimum(int *a, int n)
//  w0          x0      w1
maksimum:
    ldr w2, [x0], #4
    sub w1, w1, #1

petlja:
    cmp w1, #0
    b.eq kraj

    ldr w3, [x0], #4
    cmp w3, w2
    csel w2, w3, w2, gt

    sub w1, w1, #1
    b petlja

kraj:
    mov w0, w2
    ret
