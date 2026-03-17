.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.section .rodata
msg1: .asciz "Prva poruka"
msg2: .asciz "Druga poruka"

.text
.global main

main:
    push rbp
    mov rbp, rsp
    # Posle push rbp, rsp je poravnat na 16 bajtova pre call puts.

    lea rdi, [rip+msg1]
    call puts

    lea rdi, [rip+msg2]
    call puts

    mov eax, 0

    mov rsp, rbp
    pop rbp
    ret
