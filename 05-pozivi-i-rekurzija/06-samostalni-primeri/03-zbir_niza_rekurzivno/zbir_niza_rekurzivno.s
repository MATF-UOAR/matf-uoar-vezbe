.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global zbir_niza_rekurzivno

# int zbir_niza_rekurzivno(int *a, int n)
# eax                     rdi     esi
zbir_niza_rekurzivno:
    enter 16, 0

    cmp esi, 0
    jne rekurzivni_slucaj

    mov eax, 0
    leave
    ret

rekurzivni_slucaj:
    mov eax, [rdi]
    mov [rbp - 4], eax

    add rdi, 4
    sub esi, 1
    call zbir_niza_rekurzivno

    add eax, [rbp - 4]

    leave
    ret
