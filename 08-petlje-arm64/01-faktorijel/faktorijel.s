.text

.align 2
.global faktorijel

// unsigned faktorijel(unsigned n)
//  w0                   w0
faktorijel:
    mov w2, w0  // w2 = n
    mov w0, #1  // w0 = rezultat
    mov w1, #1  // w1 = i

for_petlja:
    cmp w1, w2
    b.hi kraj_petlje

    mul w0, w0, w1

    add w1, w1, #1
    b for_petlja

kraj_petlje:
    ret
