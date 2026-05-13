.text

.align 2
.global max

// int max(int x, int y)
// w0       w0     w1
max:
    cmp w0, w1
    b.ge kraj
    mov w0, w1

kraj:
    ret
