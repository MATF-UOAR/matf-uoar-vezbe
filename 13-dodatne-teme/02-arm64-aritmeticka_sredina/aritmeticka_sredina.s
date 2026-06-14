.text

.align 2
.global aritmeticka_sredina

// float aritmeticka_sredina(int *a, int n)
// s0                         x0      w1
aritmeticka_sredina:
    mov w2, #0  // w2 = suma
    mov w3, #0  // w3 = i

petlja:
    cmp w3, w1
    b.ge kraj_petlje

    ldr w4, [x0, x3, lsl #2]
    add w2, w2, w4

    add w3, w3, #1
    b petlja

kraj_petlje:
    scvtf s0, w2
    scvtf s1, w1
    fdiv s0, s0, s1
    ret
