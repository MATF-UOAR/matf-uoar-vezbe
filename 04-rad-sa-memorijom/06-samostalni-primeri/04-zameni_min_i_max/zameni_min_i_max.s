.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global zameni_min_i_max

# void zameni_min_i_max(int* a, int n)
# -                     rdi     esi
zameni_min_i_max:
    enter 0, 0

    cmp esi, 1
    jle kraj

    xor r8d, r8d      # r8d = i_min = 0
    xor r9d, r9d      # r9d = i_max = 0
    mov r10d, [rdi]   # r10d = trenutni minimum
    mov r11d, [rdi]   # r11d = trenutni maksimum

    mov ecx, 1        # ecx = i
for_loop:
    cmp ecx, esi
    jge zamena

    mov eax, [rdi + 4*rcx]  # eax = a[i]

    cmp eax, r10d
    jge proveri_maksimum
        mov r10d, eax
        mov r8d, ecx

proveri_maksimum:
    cmp eax, r11d
    jle dalje
        mov r11d, eax
        mov r9d, ecx

dalje:
    inc ecx
    jmp for_loop

zamena:
    mov eax, [rdi + 4*r8]
    mov edx, [rdi + 4*r9]
    mov [rdi + 4*r8], edx
    mov [rdi + 4*r9], eax

kraj:
    leave
    ret
