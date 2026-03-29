.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global deljenje_int
# Namerno pogresna verzija: koristi xor edx, edx pre idiv.
deljenje_int:
    push rbp
    mov rbp, rsp

    mov r8, rdx
    mov r9, rcx

    mov eax, edi
    xor edx, edx
    idiv esi

    mov [r8], eax
    mov [r9], edx

    mov rsp, rbp
    pop rbp
    ret
