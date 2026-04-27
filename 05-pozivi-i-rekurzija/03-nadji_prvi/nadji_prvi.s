.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global nadji_prvi

# int nadji_prvi(unsigned *a, int n, int (*pred)(unsigned))
# eax            rdi           esi     rdx
nadji_prvi:
    enter 32, 0

    mov [rbp - 8], rdi
    mov [rbp - 16], rdx
    mov [rbp - 20], esi
    mov dword ptr [rbp - 24], 0

for_petlja:
    mov ecx, [rbp - 24]
    cmp ecx, [rbp - 20]
    jge nije_nadjen

    mov rax, [rbp - 8]
    mov edi, [rax + 4 * rcx]
    call [rbp - 16]

    cmp eax, 0
    jne nadjen

    add dword ptr [rbp - 24], 1
    jmp for_petlja

nadjen:
    mov eax, [rbp - 24]
    leave
    ret

nije_nadjen:
    mov eax, -1
    leave
    ret
