.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global NZD

# unsigned NZD(unsigned a, unsigned b)
#   eax           edi        esi
NZD:
    enter 0, 0

while_petlja:
    cmp esi, 0
    je kraj_petlje

    mov eax, edi
    xor edx, edx
    div esi       # eax = a / b edx = a % b

    mov edi, esi  # a = b
    mov esi, edx  # b = a % b

    jmp while_petlja
kraj_petlje:

    mov eax, edi

    leave
    ret
