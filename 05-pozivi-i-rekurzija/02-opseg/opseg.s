.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global opseg

# int opseg(int *a, int n)
# eax        rdi     esi
opseg:
    enter 16, 0

    mov qword ptr [rbp - 8], rdi
    mov dword ptr [rbp - 12], esi

    call minimum
    mov dword ptr [rbp - 16], eax

    mov rdi, qword ptr [rbp - 8]
    mov esi, dword ptr [rbp - 12]
    call maksimum

    sub eax, dword ptr [rbp - 16]

    leave
    ret
