.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global minimum

# int minimum(int *a, int n)
# eax         rdi     esi
minimum:
    enter 0, 0

    mov eax, [rdi]
    mov ecx, 1

for_petlja:
    cmp ecx, esi
    jge for_petlja_kraj

    cmp [rdi + 4 * rcx], eax
    jge nije_manji
    mov eax, [rdi + 4 * rcx]

nije_manji:
    inc ecx
    jmp for_petlja

for_petlja_kraj:
    leave
    ret
