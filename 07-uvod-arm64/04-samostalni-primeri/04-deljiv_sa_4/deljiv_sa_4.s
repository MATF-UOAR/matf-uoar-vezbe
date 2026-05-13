.text

.align 2
.global deljiv_sa_4

// int deljiv_sa_4(int x)
// w0              w0
deljiv_sa_4:
    and w1, w0, #3
    mov w0, #0

    cmp w1, #0
    b.ne kraj
    mov w0, #1

kraj:
    ret
