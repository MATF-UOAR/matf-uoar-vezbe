.text

.align 2
.global print_bits

// void print_bits(unsigned n)
// -               w0
print_bits:
    stp fp, lr, [sp, #-16]!
    mov fp, sp

    cmp w0, #0
    b.ne pripremi_masku

    mov w0, #'0'
    bl putchar
    b kraj

pripremi_masku:
    mov w1, #1
    lsl w1, w1, #31

petlja:
    cmp w1, #0
    b.eq kraj

    cmp w1, w0
    b.hi nastavak

    sub sp, sp, #16
    str w0, [sp]
    str w1, [sp, #4]

    mov w2, #'0'
    mov w3, #'1'
    tst w0, w1
    csel w0, w2, w3, eq
    bl putchar

    ldr w0, [sp]
    ldr w1, [sp, #4]
    add sp, sp, #16

nastavak:
    lsr w1, w1, #1
    b petlja

kraj:
    ldp fp, lr, [sp], #16
    ret
