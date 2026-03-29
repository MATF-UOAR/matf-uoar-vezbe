.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global broj_dana_u_mesecu
# int broj_dana_u_mesecu(int mesec)
# eax                    edi
broj_dana_u_mesecu:
    push rbp
    mov rbp, rsp

    cmp edi, 1
    je ima_31
    cmp edi, 3
    je ima_31
    cmp edi, 5
    je ima_31
    cmp edi, 7
    je ima_31
    cmp edi, 8
    je ima_31
    cmp edi, 10
    je ima_31
    cmp edi, 12
    je ima_31

    cmp edi, 4
    je ima_30
    cmp edi, 6
    je ima_30
    cmp edi, 9
    je ima_30
    cmp edi, 11
    je ima_30

    cmp edi, 2
    je februar

    mov eax, -1
    jmp kraj

ima_31:
    mov eax, 31
    jmp kraj

ima_30:
    mov eax, 30
    jmp kraj

februar:
    mov eax, 28

kraj:
    mov rsp, rbp
    pop rbp
    ret
