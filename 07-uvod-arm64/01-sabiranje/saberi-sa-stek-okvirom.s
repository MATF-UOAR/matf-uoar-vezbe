.text

.align 2
.global saberi

// int saberi(int a, int b)
// w0          w0     w1
saberi:
    stp x29, x30, [sp, -32]!
    mov x29, sp

    str w0, [sp, 24]
    str w1, [sp, 28]

    ldr w2, [sp, 24]
    ldr w3, [sp, 28]
    add w0, w2, w3

    ldp x29, x30, [sp], 32
    ret
