.text

.align 2
.global zbir_niza_rekurzivno

// int zbir_niza_rekurzivno(int *a, int n)
//  w0                      x0     w1
zbir_niza_rekurzivno:
    stp fp, lr, [sp, #-16]!
    mov fp, sp
    sub sp, sp, #16

    cmp w1, #0
    b.ne rekurzivni_slucaj

    mov w0, #0
    b kraj

rekurzivni_slucaj:
    ldr w2, [x0]
    str w2, [sp]

    add x0, x0, #4
    sub w1, w1, #1
    bl zbir_niza_rekurzivno

    ldr w1, [sp]
    add w0, w0, w1

kraj:
    mov sp, fp
    ldp fp, lr, [sp], #16
    ret
