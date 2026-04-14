.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global obrni

# void obrni(int* a, int n)
#  -          rdi     esi 
obrni:
    enter 0, 0

    mov ecx, 0     # ecx = i = 0
    mov edx, esi
    dec edx        # edx = j = n-1
   
for_loop:
    cmp ecx, edx   # poredim i i j
    jge for_loop_end # ako je i >= j zavrsili smo

    # zamena vrednost a[i] i a[j]
    mov r8d, [rdi + 4 * rcx]  # r8d = a[i]
    mov r9d, [rdi + 4 * rdx]  # r9d = a[j]
    mov [rdi + 4 * rcx], r9d  
    mov [rdi + 4 * rdx], r8d

    inc ecx
    dec edx
    jmp for_loop
for_loop_end:

    leave
    ret


