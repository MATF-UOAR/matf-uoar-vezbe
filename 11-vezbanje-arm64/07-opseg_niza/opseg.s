.text

.align 2
.global opseg

// int opseg(int *a, int n)
//  w0        x0      w1
opseg:
    cmp w1, #0
    b.gt neprazan

    mov w0, #0
    ret

neprazan:
    stp fp, lr, [sp, #-16]!
    mov fp, sp
    sub sp, sp, #16

    str x0, [sp]
    str w1, [sp, #8]

    bl minimum
    str w0, [sp, #12]

    ldr x0, [sp]
    ldr w1, [sp, #8]
    bl maksimum

    ldr w1, [sp, #12]
    sub w0, w0, w1

    mov sp, fp
    ldp fp, lr, [sp], #16
    ret
