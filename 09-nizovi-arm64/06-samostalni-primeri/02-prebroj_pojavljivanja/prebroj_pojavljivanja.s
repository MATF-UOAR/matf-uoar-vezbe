.text

.align 2
.global prebroj_pojavljivanja

// int prebroj_pojavljivanja(int *a, int n, int x);
// w0                         x0      w1     w2
prebroj_pojavljivanja:
    mov w3, #0  // w3 = broj pojavljivanja
    mov w4, #0  // w4 = i
petlja:
    cmp w4, w1
    b.ge kraj_petlje

    ldr w5, [x0, x4, lsl #2]
    cmp w5, w2
    b.ne nastavak

    add w3, w3, #1

nastavak:
    add w4, w4, #1
    b petlja
kraj_petlje:

    mov w0, w3
    ret
