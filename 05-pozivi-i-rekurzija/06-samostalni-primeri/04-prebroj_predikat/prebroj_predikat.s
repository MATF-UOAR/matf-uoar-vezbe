.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global prebroj_predikat

# int prebroj_predikat(unsigned *a, int n, int (*pred)(unsigned))
# eax                  rdi           esi     rdx
prebroj_predikat:
    enter 32, 0

    mov [rbp - 8], rdi
    mov [rbp - 16], rdx
    mov [rbp - 20], esi
    mov dword ptr [rbp - 24], 0
    mov dword ptr [rbp - 28], 0

for_petlja:
    mov ecx, [rbp - 24]
    cmp ecx, [rbp - 20]
    jge for_petlja_kraj

    mov rax, [rbp - 8]
    mov edi, [rax + 4 * rcx]
    call [rbp - 16]

    cmp eax, 0
    je nije_pogodak
    add dword ptr [rbp - 28], 1

nije_pogodak:
    add dword ptr [rbp - 24], 1
    jmp for_petlja

for_petlja_kraj:
    mov eax, [rbp - 28]

    leave
    ret
