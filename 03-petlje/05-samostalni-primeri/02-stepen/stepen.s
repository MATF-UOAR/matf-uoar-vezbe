.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global stepen
# unsigned stepen(unsigned a, unsigned n)
#   eax             edi        esi
stepen:
    enter 0, 0

    mov eax, 1
    xor ecx, ecx

for_petlja:
    cmp ecx, esi
    jae for_petlja_kraj

    mul edi

    add ecx, 1
    jmp for_petlja
for_petlja_kraj:

    leave
    ret
