.text

.align 2
.global broj_reci

// unsigned broj_reci(const char *s)
//  w0                 x0
broj_reci:
    mov w1, #0
    mov w2, #0

petlja:
    ldrb w3, [x0], #1
    cmp w3, #0
    b.eq kraj

    cmp w3, #' '
    b.eq razmak

    cmp w2, #0
    b.ne petlja

    add w1, w1, #1
    mov w2, #1
    b petlja

razmak:
    mov w2, #0
    b petlja

kraj:
    mov w0, w1
    ret
