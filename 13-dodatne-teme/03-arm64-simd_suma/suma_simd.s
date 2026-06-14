.text

.align 2
.global suma_simd

// int suma_simd(int *a, int n)
// w0            x0      w1
suma_simd:
    movi v0.4s, #0

petlja:
    cmp w1, #0
    b.le kraj_petlje

    ldr q1, [x0], #16
    add v0.4s, v0.4s, v1.4s

    sub w1, w1, #4
    b petlja

kraj_petlje:
    addv s0, v0.4s
    fmov w0, s0
    ret
