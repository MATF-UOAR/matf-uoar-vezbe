.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global ispisi_puta

# void ispisi_puta(const char *s, unsigned n)
# -                rdi             esi
ispisi_puta:
    enter 16, 0

    mov [rbp - 8], rdi
    mov [rbp - 12], esi

petlja:
    cmp dword ptr [rbp - 12], 0
    je kraj

    mov rdi, [rbp - 8]
    call puts

    sub dword ptr [rbp - 12], 1
    jmp petlja

kraj:
    leave
    ret
