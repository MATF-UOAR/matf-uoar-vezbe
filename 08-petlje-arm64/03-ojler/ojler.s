.text

.align 2
.global ojler

// unsigned ojler(unsigned n)
//  w0                 w0
ojler:
    stp fp, lr, [sp, #-16]!
    mov fp, sp

    mov w1, w0  // w1 = n
    mov w2, #0  // w2 = br_up
    mov w3, #1  // w3 = i

for_petlja:
    cmp w3, w1
    b.hs kraj_petlje

    sub sp, sp, #16
    str w1, [sp]
    str w2, [sp, #4]
    str w3, [sp, #8]

    mov w0, w3
    bl nzd

    ldr w1, [sp]
    ldr w2, [sp, #4]
    ldr w3, [sp, #8]
    add sp, sp, #16

    cmp w0, #1
    b.ne nisu_uzajamno_prosti
    add w2, w2, #1

nisu_uzajamno_prosti:
    add w3, w3, #1
    b for_petlja

kraj_petlje:
    mov w0, w2

    ldp fp, lr, [sp], #16
    ret
