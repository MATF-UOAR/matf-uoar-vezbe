.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global nzs
# unsigned nzs(unsigned a, unsigned b)
#   eax           edi        esi
nzs:
    enter 0, 0

    push rdi
    push rsi

    call nzd

    pop rsi
    pop rdi

    cmp eax, 0
    je oba_nula

    mov ecx, eax
    mov eax, edi
    xor edx, edx
    div ecx
    mul esi
    jmp kraj

oba_nula:
    xor eax, eax

kraj:
    leave
    ret
