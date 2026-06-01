.text

.align 2
.global stepen_rekurzivno

// unsigned stepen_rekurzivno(unsigned a, unsigned n)
//  w0                        w0          w1
stepen_rekurzivno:
    stp fp, lr, [sp, #-16]!
    mov fp, sp
    sub sp, sp, #16

    str w0, [sp]           // a
    str w1, [sp, #4]       // n

    cmp w1, #0
    b.ne rekurzivni_slucaj

    mov w0, #1
    b kraj

rekurzivni_slucaj:
    lsr w1, w1, #1
    bl stepen_rekurzivno

    mul w0, w0, w0         // p * p, gde je p = a^(n / 2)

    ldr w1, [sp, #4]
    tst w1, #1
    b.eq kraj

    ldr w1, [sp]
    mul w0, w0, w1         // a * p * p kada je n neparan

kraj:
    mov sp, fp
    ldp fp, lr, [sp], #16
    ret
