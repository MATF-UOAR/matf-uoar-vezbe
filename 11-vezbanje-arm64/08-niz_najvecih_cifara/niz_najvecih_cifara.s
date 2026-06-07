.text

.align 2
.global niz_najvecih_cifara

// void niz_najvecih_cifara(unsigned *a, unsigned *rez, int n)
//                          x0           x1             w2
niz_najvecih_cifara:
    stp fp, lr, [sp, #-16]!
    mov fp, sp
    sub sp, sp, #32

    stp x19, x20, [sp]
    stp x21, x22, [sp, #16]

    mov x19, x0
    mov x20, x1
    mov w21, w2
    mov w22, #0

petlja:
    cmp w22, w21
    b.ge kraj_petlje

    ldr w0, [x19, x22, lsl #2]
    bl najveca_cifra
    str w0, [x20, x22, lsl #2]

    add w22, w22, #1
    b petlja

kraj_petlje:
    ldp x21, x22, [sp, #16]
    ldp x19, x20, [sp]
    mov sp, fp
    ldp fp, lr, [sp], #16
    ret
