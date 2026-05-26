.text

.align 2
.global nzd_rekurzivno

// unsigned nzd_rekurzivno(unsigned a, unsigned b)
//  w0                      w0          w1
nzd_rekurzivno:
    stp fp, lr, [sp, #-16]!
    mov fp, sp

    cmp w1, #0
    b.eq kraj

    udiv w2, w0, w1
    msub w2, w2, w1, w0   // w2 = a % b

    mov w0, w1
    mov w1, w2
    bl nzd_rekurzivno

kraj:
    ldp fp, lr, [sp], #16
    ret
