.text

.align 2
.global najveca_cifra

// unsigned najveca_cifra(unsigned n)
//  w0                     w0
najveca_cifra:
    mov w1, #0
    mov w10, #10

petlja:
    cmp w0, #0
    b.eq kraj

    udiv w2, w0, w10
    msub w3, w2, w10, w0

    cmp w3, w1
    csel w1, w3, w1, hi

    mov w0, w2
    b petlja

kraj:
    mov w0, w1
    ret
