.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global broj_pozitivnih

# int broj_pozitivnih(int* a, int n)
# eax                rdi     esi
broj_pozitivnih:
    enter 0, 0

    mov eax, 0      # eax = broj pozitivnih

    cmp esi, 0
    jle kraj

    mov ecx, 0      # ecx = i
for_loop:
    cmp ecx, esi
    jge kraj

    cmp dword ptr [rdi + 4*rcx], 0
    jle dalje
        inc eax
dalje:
    inc ecx
    jmp for_loop

kraj:
    leave
    ret
