.text

.align 2
.global kvadriraj_negativne

// void kvadriraj_negativne(int *a, int n)
//  -                       x0      w1
kvadriraj_negativne:
    mov w2, #0

petlja:
    cmp w2, w1
    b.ge kraj

    ldr w3, [x0, x2, lsl #2]
    cmp w3, #0
    b.ge sledeci

    mul w3, w3, w3
    str w3, [x0, x2, lsl #2]

sledeci:
    add w2, w2, #1
    b petlja

kraj:
    ret
