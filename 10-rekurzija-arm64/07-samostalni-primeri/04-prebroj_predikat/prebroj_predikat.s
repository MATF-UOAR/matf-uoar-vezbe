.text

.align 2
.global prebroj_predikat

// int prebroj_predikat(unsigned *a, int n, int (*pred)(unsigned))
//  w0                  x0           w1     x2
prebroj_predikat:
    stp fp, lr, [sp, #-16]!
    mov fp, sp
    sub sp, sp, #32

    str x0, [sp]            // a
    str x2, [sp, #8]        // pred
    str w1, [sp, #16]       // n
    str wzr, [sp, #20]      // i = 0
    str wzr, [sp, #24]      // broj = 0

petlja:
    ldr w3, [sp, #20]
    ldr w4, [sp, #16]
    cmp w3, w4
    b.ge kraj_petlje

    ldr x4, [sp]
    ldr w0, [x4, w3, sxtw #2]
    ldr x8, [sp, #8]
    blr x8

    cmp w0, #0
    b.eq nije_pogodak

    ldr w3, [sp, #24]
    add w3, w3, #1
    str w3, [sp, #24]

nije_pogodak:
    ldr w3, [sp, #20]
    add w3, w3, #1
    str w3, [sp, #20]
    b petlja

kraj_petlje:
    ldr w0, [sp, #24]

    mov sp, fp
    ldp fp, lr, [sp], #16
    ret
