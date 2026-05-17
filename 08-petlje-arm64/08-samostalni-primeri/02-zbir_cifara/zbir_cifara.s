.text

.align 2
.global zbir_cifara

// unsigned zbir_cifara(unsigned n)
//  w0                    w0
zbir_cifara:
    mov w1, #0   // w1 = zbir
    mov w10, #10

while_petlja:
    cmp w0, #0
    b.eq kraj_petlje

    udiv w2, w0, w10      // w2 = n / 10
    msub w3, w2, w10, w0  // w3 = n % 10

    add w1, w1, w3
    mov w0, w2

    b while_petlja

kraj_petlje:
    mov w0, w1
    ret
