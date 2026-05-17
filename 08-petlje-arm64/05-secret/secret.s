.text

.align 2
.global secret

// unsigned secret(unsigned n)
//  w0                  w0
secret:
    mov w10, #10

spoljasnja_petlja:
    cmp w0, #10
    b.lo kraj

    mov w1, #0

unutrasnja_petlja:
    cmp w0, #0
    b.eq kraj_unutrasnje_petlje

    udiv w2, w0, w10
    msub w3, w2, w10, w0

    mov w0, w2
    add w1, w1, w3

    b unutrasnja_petlja

kraj_unutrasnje_petlje:
    mov w0, w1
    b spoljasnja_petlja

kraj:
    ret
