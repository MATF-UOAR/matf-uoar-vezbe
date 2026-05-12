.text

.align 2
.global mirror

// unsigned mirror(unsigned n)
//  w0              w0
mirror:
    mov w1, #0

petlja:
    cmp w0, #0
    b.eq kraj

    lsl w1, w1, #1

    tst w0, #1
    b.eq preskoci_jedinicu
    add w1, w1, #1

preskoci_jedinicu:
    lsr w0, w0, #1
    b petlja

kraj:
    mov w0, w1
    ret
