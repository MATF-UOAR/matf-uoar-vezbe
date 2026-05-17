.text

.align 2
.global stepen

// unsigned stepen(unsigned a, unsigned n)
//  w0              w0          w1
stepen:
    mov w2, w0  // w2 = a
    mov w0, #1  // w0 = rezultat
    mov w3, #0  // w3 = i

for_petlja:
    cmp w3, w1
    b.hs kraj_petlje

    mul w0, w0, w2

    add w3, w3, #1
    b for_petlja

kraj_petlje:
    ret
