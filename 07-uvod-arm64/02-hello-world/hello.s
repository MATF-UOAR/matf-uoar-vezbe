.section .rodata

msg: .asciz "Hello world!"

.text

.align 2
.global main

main:
    stp x29, x30, [sp, -16]!
    mov x29, sp

    adr x0, msg
    bl puts

    mov w0, #0

    ldp x29, x30, [sp], 16
    ret
