.text

.align 2

// int palindrom_opseg(const char *levo, const char *desno)
//  w0                  x0                x1
palindrom_opseg:
    stp fp, lr, [sp, #-16]!
    mov fp, sp

    cmp x0, x1
    b.hs jeste

    ldrb w2, [x0]
    ldrb w3, [x1]
    cmp w2, w3
    b.ne nije

    add x0, x0, #1
    sub x1, x1, #1
    bl palindrom_opseg
    b kraj_opseg

jeste:
    mov w0, #1
    b kraj_opseg

nije:
    mov w0, #0

kraj_opseg:
    ldp fp, lr, [sp], #16
    ret

.align 2
.global palindrom_rekurzivno

// int palindrom_rekurzivno(const char *s)
//  w0                       x0
palindrom_rekurzivno:
    stp fp, lr, [sp, #-16]!
    mov fp, sp

    mov x1, x0
    ldrb w2, [x1]
    cmp w2, #0
    b.eq prazna_niska

trazi_kraj:
    ldrb w2, [x1]
    cmp w2, #0
    b.eq kraj_trazenja
    add x1, x1, #1
    b trazi_kraj

kraj_trazenja:
    sub x1, x1, #1
    bl palindrom_opseg
    b kraj_pal

prazna_niska:
    mov w0, #1

kraj_pal:
    ldp fp, lr, [sp], #16
    ret
