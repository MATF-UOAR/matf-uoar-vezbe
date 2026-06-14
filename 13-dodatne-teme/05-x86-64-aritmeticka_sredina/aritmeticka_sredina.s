.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global aritmeticka_sredina

# float aritmeticka_sredina(int *a, int n)
# xmm0                       rdi     esi
aritmeticka_sredina:
    enter 0, 0

    xor eax, eax    # eax = suma
    xor ecx, ecx    # ecx = i

petlja:
    cmp ecx, esi
    jge kraj_petlje

    add eax, [rdi + 4*rcx]

    inc ecx
    jmp petlja

kraj_petlje:
    cvtsi2ss xmm0, eax
    cvtsi2ss xmm1, esi
    divss xmm0, xmm1

    leave
    ret
