.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global zbir_cifara
# unsigned zbir_cifara(unsigned n)
#   eax                  edi
zbir_cifara:
    enter 0, 0

    xor r8d, r8d
    mov ecx, 10

while_petlja:
    cmp edi, 0
    je kraj_petlje

    mov eax, edi
    xor edx, edx
    div ecx

    add r8d, edx
    mov edi, eax
    jmp while_petlja
kraj_petlje:

    mov eax, r8d

    leave
    ret
