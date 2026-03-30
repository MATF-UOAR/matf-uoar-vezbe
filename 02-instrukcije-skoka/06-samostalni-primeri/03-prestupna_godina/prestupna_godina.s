.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global je_prestupna
# int je_prestupna(int godina)
# eax               edi
je_prestupna:
    push rbp
    mov rbp, rsp

    mov esi, 400
    mov eax, edi
    cdq
    idiv esi
    cmp edx, 0
    je jeste_prestupna

    mov esi, 100
    mov eax, edi
    cdq
    idiv esi
    cmp edx, 0
    je nije_prestupna

    mov esi, 4
    mov eax, edi
    cdq
    idiv esi
    cmp edx, 0
    je jeste_prestupna

nije_prestupna:
    mov eax, 0
    jmp kraj

jeste_prestupna:
    mov eax, 1

kraj:
    mov rsp, rbp
    pop rbp
    ret
