.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global apsolutna_vrednost
# int apsolutna_vrednost(int x)
# eax                     edi
apsolutna_vrednost:
    push rbp
    mov rbp, rsp

    cmp edi, 0
    jge nenegativan

    mov eax, edi
    neg eax
    jmp kraj

nenegativan:
    mov eax, edi

kraj:
    mov rsp, rbp
    pop rbp
    ret
