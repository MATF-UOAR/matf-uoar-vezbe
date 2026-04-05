.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global nzd
# unsigned nzd(unsigned a, unsigned b)
#   eax           edi        esi
nzd:
    enter 0, 0

while_petlja:
    cmp esi, 0
    je kraj_petlje

    mov eax, edi
    xor edx, edx
    div esi

    mov edi, esi
    mov esi, edx
    jmp while_petlja
kraj_petlje:

    mov eax, edi

    leave
    ret
