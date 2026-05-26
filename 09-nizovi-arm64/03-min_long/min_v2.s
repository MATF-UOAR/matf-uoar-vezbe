.text

.align 2
.global min_element

// unsigned long min_element(unsigned long *a, int n);
//  x0                                  x0      w1
min_element:
    ldr x2, [x0], #8  // x2 = min = a[0]
    sub w1, w1, #1
petlja:
    cmp w1, #0
    b.le kraj_petlje

    ldr x3, [x0], #8  // x3 = a[i]
    cmp x3, x2
    csel x2, x3, x2, lo

    sub w1, w1, #1
    b petlja
kraj_petlje:

    mov x0, x2
    ret
