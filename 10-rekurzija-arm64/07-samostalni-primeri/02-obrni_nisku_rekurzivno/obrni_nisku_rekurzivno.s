.text

.align 2

// void obrni_opseg(char *levo, char *desno)
//  -                 x0          x1
obrni_opseg:
    stp fp, lr, [sp, #-16]!
    mov fp, sp

    cmp x0, x1
    b.hs kraj_opsega

    ldrb w2, [x0]
    ldrb w3, [x1]
    strb w3, [x0]
    strb w2, [x1]

    add x0, x0, #1
    sub x1, x1, #1
    bl obrni_opseg

kraj_opsega:
    ldp fp, lr, [sp], #16
    ret

.align 2
.global obrni_nisku_rekurzivno

// void obrni_nisku_rekurzivno(char *s)
//  -                             x0
obrni_nisku_rekurzivno:
    stp fp, lr, [sp, #-16]!
    mov fp, sp

    mov x1, x0
    ldrb w2, [x1]
    cmp w2, #0
    b.eq kraj

trazi_kraj:
    ldrb w2, [x1]
    cmp w2, #0
    b.eq kraj_trazenja
    add x1, x1, #1
    b trazi_kraj

kraj_trazenja:
    sub x1, x1, #1
    bl obrni_opseg

kraj:
    ldp fp, lr, [sp], #16
    ret
