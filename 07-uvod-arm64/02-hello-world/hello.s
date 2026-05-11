.section .rodata

msg: .asciz "Hello world!"

.text

.align 2
.global main

main:
    stp fp, lr, [sp, #-16]!
    mov fp, sp

    adr x0, msg
    bl puts

    mov w0, #0

    ldp fp, lr, [sp], #16
    ret
