.text
.align 2

.global ocisti

// int ocisti(char *s);
// w0           x0
ocisti:
    mov w1, #0  // w1 - count
    mov w2, #0  // w2 - i
for_loop:
    ldrb w3, [x0, x2] // w3 - s[i]
    cmp w3, 0
    b.eq for_loop_end

        cmp w3, #'0'
        b.lt nije_cifra
        cmp w3, #'9'
        b.gt nije_cifra
            mov w3, #'#'
            strb w3, [x0, x2]
            add w1, w1, #1
        b dalje
    nije_cifra:
    cmp w3, #'A'
    b.lt nije_veliko
    cmp w3, #'Z'
    b.gt nije_veliko
        add w3, w3, #('a'-'A')
        strb w3, [x0, x2]
        add w1, w1, #1
nije_veliko:

dalje:
    add w2, w2, #1
    b for_loop 
for_loop_end:

    mov w0, w1
    ret
