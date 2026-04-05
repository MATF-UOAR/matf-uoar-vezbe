.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global faktorijel
# unsigned faktorijel(unsigned n)
#   eax                 edi
faktorijel:
    enter 0, 0

    mov eax, 1
    mov ecx, 1

for_petlja:
    cmp edi, ecx
    jb for_petlja_kraj

    mul ecx

    add ecx, 1
    jmp for_petlja
for_petlja_kraj:

    leave
    ret
