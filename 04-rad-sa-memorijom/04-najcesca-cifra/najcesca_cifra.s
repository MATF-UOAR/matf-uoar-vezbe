.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.extern indeks_maksimuma
.global najcesca_cifra

# unsigned najcesca_cifra(unsigned n)
# eax                     edi
najcesca_cifra:
    enter 48, 0

    mov ecx, 0
    mov eax, 0

inicijalizacija_niza:
    cmp ecx, 10
    je brojaci_spremni

    mov [rbp + 4 * rcx - 48], eax
    inc ecx
    jmp inicijalizacija_niza

brojaci_spremni:
    cmp edi, 0
    jne while_petlja_priprema

    mov dword ptr [rbp - 48], 1
    jmp nadji_najcescu

while_petlja_priprema:
    mov r8d, 10

while_petlja:
    cmp edi, 0
    je nadji_najcescu

    mov eax, edi
    xor edx, edx
    div r8d

    add dword ptr [rbp + 4 * rdx - 48], 1
    mov edi, eax
    jmp while_petlja

nadji_najcescu:
    lea rdi, [rbp - 48]
    mov esi, 10
    call indeks_maksimuma

    leave
    ret
