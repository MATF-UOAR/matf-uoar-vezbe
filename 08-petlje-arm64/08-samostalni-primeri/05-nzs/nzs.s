.text

.align 2
.global nzs

// unsigned nzs(unsigned a, unsigned b)
//  w0           w0          w1
nzs:
    stp fp, lr, [sp, #-16]!
    mov fp, sp

    sub sp, sp, #16
    str w0, [sp]
    str w1, [sp, #4]

    bl nzd

    cmp w0, #0
    b.eq oba_nula

    mov w2, w0
    ldr w3, [sp]
    ldr w4, [sp, #4]

    udiv w5, w3, w2
    mul w0, w5, w4
    b kraj

oba_nula:
    mov w0, #0

kraj:
    add sp, sp, #16
    ldp fp, lr, [sp], #16
    ret
