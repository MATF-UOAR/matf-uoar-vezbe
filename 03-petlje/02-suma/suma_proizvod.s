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
    mul edi              # edx:eax = n * (n+1)

    shrd eax, edx, 1     # nizi 32 bita od (n * (n+1)) / 2

    leave
    ret
