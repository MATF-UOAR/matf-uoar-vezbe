.text

.align 2
.global suma_niza

// int suma_niza(int *a, int n)
// w0             x0      w1
suma_niza:
    mov w2, #0  // w2 = suma
    mov w3, #0  // w3 = i
    sub x0, x0, #4
petlja:
    cmp w3, w1
    b.ge kraj_petlje

    ldr w4, [x0, #4]!
    add w2, w2, w4

    add w3, w3, #1
    b petlja
kraj_petlje:

    mov w0, w2
    ret
