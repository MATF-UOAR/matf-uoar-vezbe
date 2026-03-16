.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text
.global oduzmi

# int oduzmi(int a, int b)
# eax         edi   esi
oduzmi:
    sub edi, esi
    mov eax, edi
    ret
