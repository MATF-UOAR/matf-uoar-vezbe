.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global duzina_niske_rekurzivno

# int duzina_niske_rekurzivno(const char *s)
# eax                        rdi
duzina_niske_rekurzivno:
    enter 0, 0

    cmp byte ptr [rdi], 0
    jne rekurzivni_slucaj

    mov eax, 0
    leave
    ret

rekurzivni_slucaj:
    inc rdi
    call duzina_niske_rekurzivno
    add eax, 1

    leave
    ret
