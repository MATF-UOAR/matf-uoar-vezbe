.text

.align 2
.global nzd

// unsigned nzd(unsigned a, unsigned b)
//  w0            w0          w1
nzd:
while_petlja:
    cmp w1, #0
    b.eq kraj_petlje

    udiv w2, w0, w1
    msub w3, w2, w1, w0

    mov w0, w1
    mov w1, w3

    b while_petlja

kraj_petlje:
    ret
