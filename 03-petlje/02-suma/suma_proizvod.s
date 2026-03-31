.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global suma
# unsigned suma(unsigned n)
#   eax           edi
suma:
    enter 0, 0

    mov eax, edi
    add edi, 1
    mul edi     # eax = n * (n+1)

    mov esi, 2
    xor edx, edx
    div esi     # eax = n * (n+1) / 2

    leave
    ret
