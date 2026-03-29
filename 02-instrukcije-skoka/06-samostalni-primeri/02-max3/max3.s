.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global max3
# int max3(int x, int y, int z)
# eax      edi    esi    edx
max3:
    push rbp
    mov rbp, rsp

    mov eax, edi

    cmp eax, esi
    jge proveri_z
    mov eax, esi

proveri_z:
    cmp eax, edx
    jge kraj
    mov eax, edx

kraj:
    mov rsp, rbp
    pop rbp
    ret
