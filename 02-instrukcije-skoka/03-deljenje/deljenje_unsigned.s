.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global deljenje_unsigned
# void deljenje_unsigned(unsigned a, unsigned b,
#                        unsigned &kolicnik, unsigned &ostatak)
#                        edi         esi      rdx             rcx
deljenje_unsigned:
    push rbp
    mov rbp, rsp

    mov r8, rdx
    mov r9, rcx

    mov eax, edi
    xor edx, edx
    div esi

    mov [r8], eax
    mov [r9], edx

    mov rsp, rbp
    pop rbp
    ret
