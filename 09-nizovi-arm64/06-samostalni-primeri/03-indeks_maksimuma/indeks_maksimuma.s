.text

.align 2
.global indeks_maksimuma

// int indeks_maksimuma(int *a, int n);
// w0                  x0      w1
indeks_maksimuma:
    ldr w2, [x0]  // w2 = max = a[0]
    mov w3, #0    // w3 = indeks maksimuma
    mov w4, #1    // w4 = i
petlja:
    cmp w4, w1
    b.ge kraj_petlje

    ldr w5, [x0, x4, lsl #2]
    cmp w5, w2
    b.le nastavak

    mov w2, w5
    mov w3, w4

nastavak:
    add w4, w4, #1
    b petlja
kraj_petlje:

    mov w0, w3
    ret
