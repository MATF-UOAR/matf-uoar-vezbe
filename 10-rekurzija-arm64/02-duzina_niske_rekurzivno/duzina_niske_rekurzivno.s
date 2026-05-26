.text

.align 2
.global duzina_niske_rekurzivno

// int duzina_niske_rekurzivno(const char *s)
//  w0                          x0
duzina_niske_rekurzivno:
    stp fp, lr, [sp, #-16]!
    mov fp, sp

    ldrb w1, [x0]
    cmp w1, #0
    b.ne rekurzivni_slucaj

    mov w0, #0
    b kraj

rekurzivni_slucaj:
    add x0, x0, #1
    bl duzina_niske_rekurzivno
    add w0, w0, #1

kraj:
    ldp fp, lr, [sp], #16
    ret
