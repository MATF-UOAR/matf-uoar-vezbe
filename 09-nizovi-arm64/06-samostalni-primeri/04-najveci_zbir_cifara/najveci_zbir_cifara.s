.text

.align 2
.global najveci_zbir_cifara

// unsigned najveci_zbir_cifara(unsigned *a, int n);
// w0                            x0          w1
najveci_zbir_cifara:
    mov w2, #0   // w2 = najveci zbir cifara
    mov w3, #0   // w3 = i
    mov w10, #10
spoljasnja_petlja:
    cmp w3, w1
    b.ge kraj_spoljasnje_petlje

    ldr w4, [x0, x3, lsl #2]  // w4 = a[i]
    mov w5, #0                // w5 = zbir cifara
unutrasnja_petlja:
    cmp w4, #0
    b.eq kraj_unutrasnje_petlje

    udiv w6, w4, w10
    msub w7, w6, w10, w4
    add w5, w5, w7
    mov w4, w6

    b unutrasnja_petlja
kraj_unutrasnje_petlje:
    cmp w5, w2
    csel w2, w5, w2, hi

    add w3, w3, #1
    b spoljasnja_petlja
kraj_spoljasnje_petlje:

    mov w0, w2
    ret
