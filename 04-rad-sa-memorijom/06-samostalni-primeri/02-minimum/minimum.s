.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global minimum

# int minimum(int* a, int n)
# eax         rdi     esi
minimum:
    enter 0, 0

    cmp esi, 0
    jle prazan_niz

    mov r8d, [rdi]  # r8d = tekuci_min = a[0]

    mov ecx, 1      # ecx = i
for_loop:
    cmp ecx, esi
    jge kraj_petlje

    mov r9d, [rdi + 4*rcx]  # r9d = a[i]

    cmp r9d, r8d
    jge dalje
        mov r8d, r9d
dalje:
    inc ecx
    jmp for_loop

kraj_petlje:
    mov eax, r8d
    jmp kraj

prazan_niz:
    mov eax, 0

kraj:
    leave
    ret
