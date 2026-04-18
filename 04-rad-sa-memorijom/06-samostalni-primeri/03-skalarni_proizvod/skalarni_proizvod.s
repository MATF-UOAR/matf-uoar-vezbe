.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global skalarni_proizvod

# int skalarni_proizvod(int* a, int* b, int n)
# eax                   rdi     rsi     edx
skalarni_proizvod:
    enter 0, 0

    mov r8d, 0      # r8d = trenutna suma
    mov eax, 0

    cmp edx, 0
    jle kraj

    mov ecx, 0      # ecx = i
for_loop:
    cmp ecx, edx
    jge petlja_gotova

    mov eax, [rdi + 4*rcx]
    imul eax, dword ptr [rsi + 4*rcx]
    add r8d, eax

    inc ecx
    jmp for_loop

petlja_gotova:
    mov eax, r8d

kraj:
    leave
    ret
