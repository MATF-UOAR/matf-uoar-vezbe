.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.section .rodata

msg: .asciz "Hello world!"

.text

.global main

main:
    push rbp
    mov rbp, rsp
    # Posle push rbp, rsp je ponovo poravnat na 16 bajtova pre call puts.

    lea rdi, [rip+msg]
    call puts

    mov eax, 0

    mov rsp, rbp
    pop rbp
    ret
