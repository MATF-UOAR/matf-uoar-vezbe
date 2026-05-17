.text

.align 2
.global max_element

// int max_element(int *a, int n)
// w0              x0        w1
max_element:
    ldr w2, [x0], #4  // w2 = max = a[0]
petlja:
    cmp w1, #1
    b.le kraj_petlje

    ldr w3, [x0], #4  // w3 = a[i]
    cmp w3, w2
    csel w2, w3, w2, gt

    sub w1, w1, #1
    b petlja
kraj_petlje:

    mov w0, w2
    ret
