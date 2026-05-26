.text

.align 2
.global linearna_pretraga

// int linearna_pretraga(int *a, int n, int x);
// w0                     x0      w1     w2
linearna_pretraga:
    mov w3, #0  // w3 = i
petlja:
    cmp w3, w1
    b.ge nije_pronadjen

    ldr w4, [x0, x3, lsl #2]
    cmp w4, w2
    b.eq pronadjen

    add w3, w3, #1
    b petlja

nije_pronadjen:
    mov w0, #-1
    ret

pronadjen:
    mov w0, w3
    ret
