.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

# int palindrom_opseg(const char *levo, const char *desno)
# eax                 rdi                rsi
palindrom_opseg:
    enter 0, 0

    cmp rdi, rsi
    jae jeste

    mov al, [rdi]
    mov dl, [rsi]
    cmp al, dl
    jne nije

    inc rdi
    dec rsi
    call palindrom_opseg

    leave
    ret

jeste:
    mov eax, 1
    leave
    ret

nije:
    mov eax, 0
    leave
    ret

.global palindrom_rekurzivno
# int palindrom_rekurzivno(const char *s)
# eax                      rdi
palindrom_rekurzivno:
    enter 0, 0

    mov rsi, rdi
    cmp byte ptr [rsi], 0
    je prazna_niska

trazi_kraj:
    mov al, [rsi]
    cmp al, 0
    je kraj_trazenja
    inc rsi
    jmp trazi_kraj

kraj_trazenja:
    dec rsi
    call palindrom_opseg

    leave
    ret

prazna_niska:
    mov eax, 1
    leave
    ret
