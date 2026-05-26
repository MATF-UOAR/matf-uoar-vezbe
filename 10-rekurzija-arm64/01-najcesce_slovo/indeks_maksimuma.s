.text

.align 2
.global indeks_maksimuma

// unsigned indeks_maksimuma(unsigned *a, unsigned n)
//  w0                       x0          w1
indeks_maksimuma:
    cmp w1, #0
    b.eq prazan_niz

    mov w2, #0              // w2 = indeks trenutnog maksimuma
    ldr w3, [x0]            // w3 = trenutni maksimum
    mov w4, #1              // w4 = i

petlja:
    cmp w4, w1
    b.hs kraj

    ldr w5, [x0, w4, uxtw #2]
    cmp w5, w3
    b.ls nastavak

    mov w3, w5
    mov w2, w4

nastavak:
    add w4, w4, #1
    b petlja

prazan_niz:
    mov w2, #0

kraj:
    mov w0, w2
    ret
