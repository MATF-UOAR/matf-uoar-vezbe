.text

.align 2
.global max
.type max, %function

// int max(int x, int y)
// w0       w0     w1
max:
    cmp w0, w1
    b.ge kraj
    mov w0, w1

kraj:
    ret

.size max, .-max
.section .note.GNU-stack,"",@progbits
