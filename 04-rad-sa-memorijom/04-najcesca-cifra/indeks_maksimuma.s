.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global indeks_maksimuma

# unsigned indeks_maksimuma(unsigned* a, unsigned n)
# eax                       rdi          esi
indeks_maksimuma:
    enter 0, 0

    cmp esi, 0
    je prazan_niz

    mov eax, 0       # eax = indeks trenutnog maksimuma
    mov r8d, [rdi]   # r8d = trenutni maksimum = a[0]
    mov ecx, 1       # ecx = i

for_petlja:
    cmp ecx, esi
    jae kraj_petlje

    mov r9d, [rdi + 4 * rcx]

    cmp r9d, r8d
    jbe nastavak

    mov r8d, r9d
    mov eax, ecx

nastavak:
    inc ecx
    jmp for_petlja

prazan_niz:
    mov eax, 0

kraj_petlje:
    leave
    ret
