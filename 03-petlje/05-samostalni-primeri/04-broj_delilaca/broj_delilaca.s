.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global broj_delilaca
# unsigned broj_delilaca(unsigned n)
#   eax                    edi
broj_delilaca:
    enter 0, 0

    mov r8d, edi
    xor r9d, r9d
    mov ecx, 1

for_petlja:
    cmp r8d, ecx
    jb for_petlja_kraj

    mov eax, r8d
    xor edx, edx
    div ecx

    cmp edx, 0
    jne nastavak
    inc r9d

nastavak:
    add ecx, 1
    jmp for_petlja
for_petlja_kraj:

    mov eax, r9d

    leave
    ret
