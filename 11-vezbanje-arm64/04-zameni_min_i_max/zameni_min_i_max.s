.text

.align 2
.global zameni_min_i_max

// void zameni_min_i_max(int *a, int n)
//  -                    x0      w1
zameni_min_i_max:
    cmp w1, #1
    b.le kraj

    mov w2, #0
    mov w3, #0
    ldr w4, [x0]
    mov w5, w4
    mov w6, #1

petlja:
    cmp w6, w1
    b.ge zamena

    ldr w7, [x0, x6, lsl #2]

    cmp w7, w4
    b.ge proveri_maksimum
    mov w4, w7
    mov w2, w6

proveri_maksimum:
    cmp w7, w5
    b.le sledeci
    mov w5, w7
    mov w3, w6

sledeci:
    add w6, w6, #1
    b petlja

zamena:
    ldr w6, [x0, x2, lsl #2]
    ldr w7, [x0, x3, lsl #2]
    str w7, [x0, x2, lsl #2]
    str w6, [x0, x3, lsl #2]

kraj:
    ret
