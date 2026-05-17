.text

.align 2
.global duzina_niske

// int duzina_niske(const char *s);
// w0                x0
duzina_niske:
    mov x1, x0
    mov w0, #0
petlja:
    ldrb w2, [x1, x0]
    cmp w2, #0
    b.eq kraj

    add w0, w0, #1
    b petlja
kraj:
    ret
