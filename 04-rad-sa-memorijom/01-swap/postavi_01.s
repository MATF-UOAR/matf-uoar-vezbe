.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global postavi_01

# void postavi_01(int& a, int& b);
#  -               rdi      rsi
postavi_01:
    enter 0, 0

    mov dword ptr [rdi], 0
    mov dword ptr [rsi], 1

    leave
    ret
