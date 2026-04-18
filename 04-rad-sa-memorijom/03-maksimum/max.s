.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global max

# int max(int* a, int n)
# eax      rdi     esi 
max:
    enter 0, 0

    cmp esi, 0
    jle prazan_niz

    mov r8d, [rdi]  # r8d - tekuci_maks = a[0]

    mov ecx, 1      # ecx = i
for_petlja:
    cmp esi, ecx    
    je kraj_petlje

    mov r9d, [rdi+4*rcx]  # r9d = a[i]

    cmp r8d, r9d       # poredim tekuci_maks i a[i]
    jg nastavak
        mov r8d, r9d

nastavak:

    inc ecx
    jmp for_petlja
kraj_petlje:

    mov eax, r8d
    jmp kraj

prazan_niz:
    mov eax, 0

kraj:
   
    leave
    ret
