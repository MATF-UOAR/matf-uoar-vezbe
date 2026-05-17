.text

.align 2
.global prost

// unsigned prost(unsigned n)
//  w0              w0
prost:
    cmp w0, #2
    b.hs proveri_ojlera

    mov w0, #0
    ret

proveri_ojlera:
    stp fp, lr, [sp, #-16]!
    mov fp, sp

    sub sp, sp, #16
    str w0, [sp]

    bl ojler

    ldr w1, [sp]
    add sp, sp, #16

    add w0, w0, #1
    cmp w0, w1
    b.eq jeste_prost

    mov w0, #0
    b kraj

jeste_prost:
    mov w0, #1

kraj:
    ldp fp, lr, [sp], #16
    ret
