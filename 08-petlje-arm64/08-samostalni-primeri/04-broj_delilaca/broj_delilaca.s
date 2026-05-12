.text

.align 2
.global broj_delilaca

// unsigned broj_delilaca(unsigned n)
//  w0                     w0
broj_delilaca:
    mov w1, w0  // w1 = n
    mov w0, #0  // w0 = broj delilaca
    mov w2, #1  // w2 = d

for_petlja:
    cmp w2, w1
    b.hi kraj_petlje

    udiv w3, w1, w2       // w3 = n / d
    msub w4, w3, w2, w1   // w4 = n % d

    cmp w4, #0
    b.ne nastavak
    add w0, w0, #1

nastavak:
    cmp w2, w1
    b.eq kraj_petlje

    add w2, w2, #1
    b for_petlja

kraj_petlje:
    ret
