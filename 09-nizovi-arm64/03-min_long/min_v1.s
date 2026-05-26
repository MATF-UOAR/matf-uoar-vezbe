.text

.align 2
.global min_element

// unsigned long min_element(unsigned long *a, int n);
//  x0                                  x0      w1
min_element:
    ldr x2, [x0]  // x2 = min = a[0]
    mov w3, #1    // w3 = i
petlja:
    cmp w3, w1
    b.ge kraj_petlje

    ldr x4, [x0, x3, lsl #3]  // x4 = a[i]
    cmp x4, x2
    csel x2, x4, x2, lo

    add w3, w3, #1
    b petlja
kraj_petlje:

    mov x0, x2
    ret
