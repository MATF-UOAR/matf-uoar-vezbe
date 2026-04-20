.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global maksimum

# int maksimum(int *a, int n)
# eax          rdi     esi
maksimum:
    enter 0, 0

    mov eax, dword ptr [rdi]
    mov ecx, 1

for_petlja:
    cmp ecx, esi
    jge for_petlja_kraj

    cmp dword ptr [rdi + 4 * rcx], eax
    jle nije_veci
    mov eax, dword ptr [rdi + 4 * rcx]

nije_veci:
    inc ecx
    jmp for_petlja

for_petlja_kraj:
    leave
    ret
