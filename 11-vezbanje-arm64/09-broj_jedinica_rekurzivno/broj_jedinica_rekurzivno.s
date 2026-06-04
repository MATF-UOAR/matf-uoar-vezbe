.text

.align 2
.global broj_jedinica_rekurzivno

// unsigned broj_jedinica_rekurzivno(unsigned n)
//  w0                              w0
broj_jedinica_rekurzivno:
    stp fp, lr, [sp, #-16]!
    mov fp, sp
    sub sp, sp, #16

    cmp w0, #0
    b.ne rekurzivni_slucaj

    mov w0, #0
    b kraj

rekurzivni_slucaj:
    and w1, w0, #1
    str w1, [sp]

    lsr w0, w0, #1
    bl broj_jedinica_rekurzivno

    ldr w1, [sp]
    add w0, w0, w1

kraj:
    mov sp, fp
    ldp fp, lr, [sp], #16
    ret
