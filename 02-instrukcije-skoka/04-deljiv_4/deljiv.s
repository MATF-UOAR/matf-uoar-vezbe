.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.section .rodata

poruka_deljiv: .asciz "Deljiv je"
poruka_nije_deljiv: .asciz "Nije deljiv"

.text

.global deljiv_4
# void deljiv_4(int x)
#               edi
deljiv_4:
    push rbp
    mov rbp, rsp    # sredjivanje steka
                    # posle push rbp, rsp je deljiv sa 16

    mov esi, 4      # u esi stavljamo cime delimo
    mov eax, edi    # u eax stavljamo sta delimo
    cdq             # edx popunjavamo tako da edx:eax = edi
                    # kako radimo sa OZNACENIM brojevima
                    # koristimo cdq 

    idiv esi        # eax = edi / 4  edx = edi % 4

    cmp edx, 0      # zanima nas da li je edx == 0
    jne else_grana

    lea rdi, [rip+poruka_deljiv]
    call puts
    jmp nastavak

else_grana:
    lea rdi, [rip+poruka_nije_deljiv]
    call puts

nastavak:
    mov rsp, rbp    # kraj funkcije, sredjivanje steka
    pop rbp
    ret
