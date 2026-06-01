.text

.align 2
.global nadji_prvi

// int nadji_prvi(unsigned *a, int n, int (*pred)(unsigned))
//  w0            x0           w1     x2
nadji_prvi:
    stp fp, lr, [sp, #-16]!
    mov fp, sp
    sub sp, sp, #32

    stp x19, x20, [sp]
    stp x21, x22, [sp, #16]

    mov x19, x0             // a
    mov w20, w1             // n
    mov x21, x2             // pred
    mov w22, #0             // i = 0

petlja:
    cmp w22, w20
    b.ge nije_nadjen

    ldr w0, [x19, x22, lsl #2]
    blr x21

    cmp w0, #0
    b.ne nadjen

    add w22, w22, #1
    b petlja

nadjen:
    mov w0, w22
    b kraj

nije_nadjen:
    mov w0, #-1

kraj:
    ldp x21, x22, [sp, #16]
    ldp x19, x20, [sp]
    mov sp, fp
    ldp fp, lr, [sp], #16
    ret
