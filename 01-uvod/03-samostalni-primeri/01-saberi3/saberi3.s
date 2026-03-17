.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text
.global saberi3

# int saberi3(int a, int b, int c)
# eax          edi   esi   edx
saberi3:
    add edi, esi
    add edi, edx
    mov eax, edi
    ret
