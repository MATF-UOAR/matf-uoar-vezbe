.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global stepen_rekurzivno

# unsigned stepen_rekurzivno(unsigned a, unsigned n)
# eax                        edi         esi
stepen_rekurzivno:
    enter 16, 0

    mov dword ptr [rbp - 4], edi

    cmp esi, 0
    jne rekurzivni_slucaj

    mov eax, 1
    leave
    ret

rekurzivni_slucaj:
    sub esi, 1
    call stepen_rekurzivno
    imul eax, dword ptr [rbp - 4]

    leave
    ret
