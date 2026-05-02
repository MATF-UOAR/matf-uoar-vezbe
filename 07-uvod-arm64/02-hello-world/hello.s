.section .rodata

msg: .asciz "Hello world!"

.text

.align 2
.global main
.type main, %function

main:
    stp x29, x30, [sp, -16]!
    mov x29, sp

    adrp x0, msg
    add x0, x0, :lo12:msg
    bl puts

    mov w0, #0

    ldp x29, x30, [sp], 16
    ret

.size main, .-main
.section .note.GNU-stack,"",@progbits
