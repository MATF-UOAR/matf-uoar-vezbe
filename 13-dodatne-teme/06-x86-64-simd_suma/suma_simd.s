.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global suma_simd

# int suma_simd(int *a, int n)
# eax          rdi     esi
suma_simd:
    enter 0, 0

    pxor xmm0, xmm0
    xor ecx, ecx

petlja:
    cmp ecx, esi
    jge kraj_petlje

    movdqu xmm1, XMMWORD PTR [rdi + 4*rcx]
    paddd xmm0, xmm1

    add ecx, 4
    jmp petlja

kraj_petlje:
    movdqa xmm1, xmm0
    psrldq xmm1, 8
    paddd xmm0, xmm1

    movdqa xmm1, xmm0
    psrldq xmm1, 4
    paddd xmm0, xmm1

    movd eax, xmm0

    leave
    ret
