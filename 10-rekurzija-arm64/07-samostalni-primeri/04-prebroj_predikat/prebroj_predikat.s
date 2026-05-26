.text

.align 2
.global prebroj_predikat

// int prebroj_predikat(unsigned *a, int n, int (*pred)(unsigned))
//  w0                  x0           w1     x2
prebroj_predikat:
    stp fp, lr, [sp, #-48]!
    mov fp, sp

    str x0, [sp, #16]       // a
    str x2, [sp, #24]       // pred
    str w1, [sp, #32]       // n
    str wzr, [sp, #36]      // i = 0
    str wzr, [sp, #40]      // broj = 0

petlja:
    ldr w3, [sp, #36]
    ldr w4, [sp, #32]
    cmp w3, w4
    b.ge kraj_petlje

    ldr x4, [sp, #16]
    ldr w0, [x4, w3, sxtw #2]
    ldr x8, [sp, #24]
    blr x8

    cmp w0, #0
    b.eq nije_pogodak

    ldr w3, [sp, #40]
    add w3, w3, #1
    str w3, [sp, #40]

nije_pogodak:
    ldr w3, [sp, #36]
    add w3, w3, #1
    str w3, [sp, #36]
    b petlja

kraj_petlje:
    ldr w0, [sp, #40]

    ldp fp, lr, [sp], #48
    ret
