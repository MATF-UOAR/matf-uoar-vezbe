.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global zameni

# void zameni(int& a, int& b);
#  -          rdi      rsi
zameni:
    enter 0, 0

    mov ecx, [rdi]
    mov edx, [rsi]
    mov [rdi], edx
    mov [rsi], ecx
    
    leave
    ret
