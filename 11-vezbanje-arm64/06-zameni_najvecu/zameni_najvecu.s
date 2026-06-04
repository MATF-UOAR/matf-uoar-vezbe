.text

.align 2
.global zameni_najvecu

// unsigned zameni_najvecu(unsigned n, unsigned c)
//  w0                      w0          w1
zameni_najvecu:
    stp fp, lr, [sp, #-16]!
    mov fp, sp
    sub sp, sp, #16

    str w0, [sp]
    str w1, [sp, #4]

    bl najveca_cifra

    mov w9, w0
    ldr w2, [sp]
    ldr w3, [sp, #4]

    cmp w2, #0
    b.ne pripremi_petlju

    mov w0, w3
    b kraj

pripremi_petlju:
    mov w4, #0
    mov w5, #1
    mov w10, #10

petlja:
    cmp w2, #0
    b.eq rezultat

    udiv w6, w2, w10
    msub w7, w6, w10, w2

    cmp w7, w9
    csel w7, w3, w7, eq

    mul w8, w7, w5
    add w4, w4, w8
    mul w5, w5, w10

    mov w2, w6
    b petlja

rezultat:
    mov w0, w4

kraj:
    mov sp, fp
    ldp fp, lr, [sp], #16
    ret
