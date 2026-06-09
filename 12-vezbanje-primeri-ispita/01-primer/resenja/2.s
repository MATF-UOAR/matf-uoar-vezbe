.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global broj_unutrasnjih

# int broj_unutrasnjih(long *a, int n);
# eax                   rdi      esi
broj_unutrasnjih:
    enter 16, 0
    # -------- <- rsp = rbp - 16
    #          <- long max (na adresi rbp - 16)
    #          <- long min (na adresi rbp - 8)
    # -------- <- rbp

    push rdi
    push rsi
    
    lea rdx, [rbp - 8]
    lea rcx, [rbp - 16]
    call minmax # funkcija popunjava lokalne promenjive min i max
    
    pop rsi
    pop rdi

    mov r8, [rbp - 8] # r8 - min, ceo registar zato sto je tip long
    mov r9, [rbp - 16] # r9 - max, ceo registar zato sto je tip long

    mov r10d, 0 # r10d - count
    mov ecx, 0 # ecx - i
for_loop:
    cmp ecx, esi
    jge for_loop_end

        mov rdx, [rdi + 8 * rcx] # rdx = a[i] 
        cmp rdx, r8              # cmp a[i], min
        jle nije_u_opsegu
        cmp rdx, r9              # cmp a[i], max
        jge nije_u_opsegu
            inc r10d
    nije_u_opsegu:

    inc ecx
    jmp for_loop
for_loop_end:

    mov eax, r10d

    leave
    ret
