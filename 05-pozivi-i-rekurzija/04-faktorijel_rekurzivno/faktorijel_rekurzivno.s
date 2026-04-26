.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global faktorijel_rekurzivno
# unsigned faktorijel_rekurzivno(unsigned n)
# eax                           edi
faktorijel_rekurzivno:
    enter 16, 0

    mov [rbp - 4], edi

    cmp edi, 1
    ja rekurzivni_slucaj

    mov eax, 1
    leave
    ret

rekurzivni_slucaj:
    dec edi
    call faktorijel_rekurzivno
    imul dword ptr [rbp - 4]

    leave
    ret
