.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global vise_parnih_cifara
# int vise_parnih_cifara(long *a, int n);
# eax                      rdi     esi
vise_parnih_cifara:
    enter 0, 0

    mov r8d, 0   # r8d - count
    mov ecx, 0   # ecx - i
for_loop:
    cmp ecx, esi
    jge for_loop_end

        mov rax, [rdi + 8 * rcx] # rax - num = a[i]  (rax i mnozenje sa 8 je zbog tipa long)

        mov r10, 10   # 10 za deljenje
        mov r9d, 0    # r9d - even_count
        mov r11d, 0   # r11d - odd_count
    petlja:
        cqo
        idiv r10  # rax - num / 10   rdx - num % 10

        test rdx, 1 # testiramo parnost bitovskom konjukcijom sa 1
        jz paran
            inc r11d
            jmp kraj_if
    paran:
            inc r9d
    kraj_if:

        cmp rax, 0
        jne petlja

    cmp r9d, r11d
    jle nije_vece
        inc r8d
nije_vece:

    inc ecx
    jmp for_loop
for_loop_end:

    mov eax, r8d

    leave
    ret
