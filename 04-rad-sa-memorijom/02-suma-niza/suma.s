.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global suma_niza

# int suma_niza(int* a, int n)
# eax            rdi     esi 
suma_niza:
    enter 0, 0

    mov eax, 0      # eax = trenutna suma

    mov ecx, 0      # ecx = i

for_loop:
    cmp esi, ecx
    je for_loop_end

    add eax, [rdi + 4*rcx]  # eax += *(rdi+4*rcx)

    inc ecx
    jmp for_loop
for_loop_end:

    leave
    ret
