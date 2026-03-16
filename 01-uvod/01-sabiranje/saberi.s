.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global saberi

# int saberi(int a, int b)
# eax         edi   esi
saberi:
    add edi, esi
    mov eax, edi
    ret
