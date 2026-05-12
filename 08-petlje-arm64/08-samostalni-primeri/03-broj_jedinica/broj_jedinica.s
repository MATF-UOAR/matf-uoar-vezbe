.text

.align 2
.global broj_jedinica

// unsigned broj_jedinica(unsigned n)
//  w0                     w0
broj_jedinica:
    mov w1, #0  // w1 = broj jedinica

while_petlja:
    cmp w0, #0
    b.eq kraj_petlje

    tst w0, #1
    b.eq preskoci
    add w1, w1, #1

preskoci:
    lsr w0, w0, #1
    b while_petlja

kraj_petlje:
    mov w0, w1
    ret
