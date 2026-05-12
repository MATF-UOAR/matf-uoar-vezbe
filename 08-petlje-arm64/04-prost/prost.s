.text

.align 2
.global prost

// unsigned prost(unsigned n)
//  w0              w0
prost:
    cmp w0, #2
    b.hs proveri_delioce

    mov w0, #0
    ret

proveri_delioce:
    mov w1, w0  // w1 = n
    mov w2, #2  // w2 = d

for_petlja:
    cmp w2, w1
    b.hs jeste_prost

    udiv w3, w1, w2       // w3 = n / d
    msub w4, w3, w2, w1   // w4 = n - (n / d) * d

    cmp w4, #0
    b.eq nije_prost

    add w2, w2, #1
    b for_petlja

nije_prost:
    mov w0, #0
    ret

jeste_prost:
    mov w0, #1
    ret
