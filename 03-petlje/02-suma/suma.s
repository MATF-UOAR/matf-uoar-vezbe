.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global suma
# unsigned suma(unsigned n)
#   eax           edi
suma:
    enter 0, 0

    xor eax, eax   # eax - trenutna suma
    mov ecx, 1     # ecx - i

for_petlja:
    cmp edi, ecx
    jb  for_petlja_kraj

    add eax, ecx

    add ecx, 1
    jmp for_petlja
for_petlja_kraj:

    leave
    ret
