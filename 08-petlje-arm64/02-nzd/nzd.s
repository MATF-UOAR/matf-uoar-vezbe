.text

.align 2
.global NZD

// unsigned NZD(unsigned a, unsigned b)
//  w0            w0          w1
NZD:
while_petlja:
    cmp w1, #0
    b.eq kraj_petlje

    udiv w2, w0, w1       // w2 = a / b
    msub w3, w2, w1, w0   // w3 = a - (a / b) * b

    mov w0, w1            // a = b
    mov w1, w3            // b = a % b

    b while_petlja

kraj_petlje:
    ret
