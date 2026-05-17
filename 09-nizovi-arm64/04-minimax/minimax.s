.text

.align 2
.global minimax

// void minimax(int *a, int n, int &pmin, int &pmax);
//  -            x0      w1       x2        x3
minimax:
    ldr w4, [x0], #4  // w4 = min
    mov w5, w4        // w5 = max
    sub w1, w1, #1
petlja:
    cmp w1, #0
    b.eq kraj_petlje

    ldr w6, [x0], #4
    cmp w6, w4
    csel w4, w6, w4, lt
    cmp w6, w5
    csel w5, w6, w5, gt

    sub w1, w1, #1
    b petlja
kraj_petlje:

    str w4, [x2]
    str w5, [x3]
    ret
