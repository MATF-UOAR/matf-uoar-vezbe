.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global suma_parnih
# unsigned suma_parnih(unsigned n)
#   eax                  edi
suma_parnih:
    enter 0, 0

    xor eax, eax   # eax = trenutna suma
    mov ecx, 1     # ecx = i

for_petlja:
    cmp edi, ecx
    jb  for_petlja_kraj

    test ecx, 1
    jnz nastavak
    add eax, ecx

nastavak:
    add ecx, 1
    jmp for_petlja
for_petlja_kraj:

    leave
    ret
