.text

.align 2
.global suma_niza

// int suma_niza(int *a, int n)
// w0             x0      w1
suma_niza:
    mov w2, #0  // w2 = suma
petlja:
    cmp w1, #0
    b.le kraj_petlje

    ldr w3, [x0], #4
    add w2, w2, w3

    sub w1, w1, #1
    b petlja
kraj_petlje:

    mov w0, w2
    ret
