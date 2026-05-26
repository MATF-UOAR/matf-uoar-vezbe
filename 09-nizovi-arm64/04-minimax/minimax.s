.text

.align 2
.global minimax

// void minimax(short *a, int n, short &pmin, short &pmax);
//  -              x0      w1         x2          x3
minimax:
    ldrsh w4, [x0], #2  // w4 = min
    mov w5, w4          // w5 = max
    sub w1, w1, #1
petlja:
    cmp w1, #0
    b.eq kraj_petlje

    ldrsh w6, [x0], #2
    cmp w6, w4
    csel w4, w6, w4, lt
    cmp w6, w5
    csel w5, w6, w5, gt

    sub w1, w1, #1
    b petlja
kraj_petlje:

    strh w4, [x2]
    strh w5, [x3]
    ret
