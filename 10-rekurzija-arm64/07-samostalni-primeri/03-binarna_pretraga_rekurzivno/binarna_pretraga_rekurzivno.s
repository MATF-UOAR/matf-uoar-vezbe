.text

.align 2
.global binarna_pretraga_rekurzivno

// int binarna_pretraga_rekurzivno(int *a, int levo, int desno, int x)
//  w0                              x0      w1         w2       w3
binarna_pretraga_rekurzivno:
    stp fp, lr, [sp, #-16]!
    mov fp, sp

    cmp w1, w2
    b.gt nije_nadjen

    sub w4, w2, w1
    asr w4, w4, #1
    add w4, w1, w4       // sredina = levo + (desno - levo) / 2

    ldr w5, [x0, w4, sxtw #2]
    cmp w5, w3
    b.eq nadjen
    b.lt trazi_desno

    sub w2, w4, #1
    bl binarna_pretraga_rekurzivno
    b kraj

trazi_desno:
    add w1, w4, #1
    bl binarna_pretraga_rekurzivno
    b kraj

nadjen:
    mov w0, w4
    b kraj

nije_nadjen:
    mov w0, #-1

kraj:
    ldp fp, lr, [sp], #16
    ret
