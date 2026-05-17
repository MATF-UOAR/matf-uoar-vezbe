.text

.align 2
.global faktorijel

// unsigned faktorijel(unsigned n)
//  w0                   w0
faktorijel:
    stp fp, lr, [sp, #-32]!
    mov fp, sp

    cmp w0, #0
    b.ne rekurzivni_slucaj

    mov w0, #1
    b kraj

rekurzivni_slucaj:
    str w0, [sp, #16]

    sub w0, w0, #1
    bl faktorijel

    ldr w1, [sp, #16]
    mul w0, w1, w0

kraj:
    ldp fp, lr, [sp], #32
    ret
