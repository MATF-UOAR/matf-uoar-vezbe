.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global opseg

# int opseg(int *a, int n)
# eax        rdi     esi
opseg:
    enter 16, 0

    mov [rbp - 8], rdi
    mov [rbp - 12], esi

    call minimum
    mov [rbp - 16], eax

    mov rdi, [rbp - 8]
    mov esi, [rbp - 12]
    call maksimum

    sub eax, [rbp - 16]

    leave
    ret
