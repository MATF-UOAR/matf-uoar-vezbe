.text

.align 2
.global maksimum_rekurzivno

// int maksimum_rekurzivno(int *a, int n)
//  w0                    x0      w1
maksimum_rekurzivno:
    stp fp, lr, [sp, #-16]!
    mov fp, sp
    sub sp, sp, #16

    cmp w1, #0
    b.gt neprazan

    mov w0, #0
    b kraj

neprazan:
    cmp w1, #1
    b.ne rekurzivni_slucaj

    ldr w0, [x0]
    b kraj

rekurzivni_slucaj:
    ldr w2, [x0]
    str w2, [sp]

    add x0, x0, #4
    sub w1, w1, #1
    bl maksimum_rekurzivno

    ldr w2, [sp]
    cmp w2, w0
    csel w0, w2, w0, gt

kraj:
    mov sp, fp
    ldp fp, lr, [sp], #16
    ret
