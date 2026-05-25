.text

.align 2
.global stepen_rekurzivno

// unsigned stepen_rekurzivno(unsigned a, unsigned n)
//  w0                        w0          w1
stepen_rekurzivno:
    stp fp, lr, [sp, #-32]!
    mov fp, sp

    str w0, [sp, #16]

    cmp w1, #0
    b.ne rekurzivni_slucaj

    mov w0, #1
    b kraj

rekurzivni_slucaj:
    sub w1, w1, #1
    bl stepen_rekurzivno

    ldr w1, [sp, #16]
    mul w0, w0, w1

kraj:
    ldp fp, lr, [sp], #32
    ret
