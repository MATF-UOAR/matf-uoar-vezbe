.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.section .rodata

poruka_zima: .asciz "Zima"
poruka_prolece: .asciz "Prolece"
poruka_leto: .asciz "Leto"
poruka_jesen: .asciz "Jesen"
poruka_neispravan: .asciz "Neispravan mesec"

.text

.global sezona
# void sezona(int mesec)
#             edi
sezona:
    push rbp
    mov rbp, rsp

    cmp edi, 12
    je zima
    cmp edi, 1
    je zima
    cmp edi, 2
    je zima

    cmp edi, 3
    je prolece
    cmp edi, 4
    je prolece
    cmp edi, 5
    je prolece

    cmp edi, 6
    je leto
    cmp edi, 7
    je leto
    cmp edi, 8
    je leto

    cmp edi, 9
    je jesen
    cmp edi, 10
    je jesen
    cmp edi, 11
    je jesen

    lea rdi, [rip+poruka_neispravan]
    call puts
    jmp kraj

zima:
    lea rdi, [rip+poruka_zima]
    call puts
    jmp kraj

prolece:
    lea rdi, [rip+poruka_prolece]
    call puts
    jmp kraj

leto:
    lea rdi, [rip+poruka_leto]
    call puts
    jmp kraj

jesen:
    lea rdi, [rip+poruka_jesen]
    call puts

kraj:
    mov rsp, rbp
    pop rbp
    ret
