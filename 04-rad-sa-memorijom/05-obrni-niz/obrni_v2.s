.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global obrni

# void obrni(int* a, int n)
#  -          rdi     esi 
obrni:
    enter 0, 0

    cmp esi, 1
    jle for_loop_end

    mov rcx, rdi               # rdi = &a[0]
    lea rdx, [rdi + 4*rsi - 4] # rdx = &a[n-1]

for_loop:
    cmp rcx, rdx
    jae for_loop_end  # ako je leva adresa stigla do desne
                      # ili je presla preko nje, gotovi smo
                      # adrese posmatramo kao neoznacene
                      # vrednosti, pa koristimo jae, a ne jge

    mov r8d, [rcx]
    mov r9d, [rdx]
    mov [rcx], r9d
    mov [rdx], r8d

    add rcx, 4
    sub rdx, 4
    jmp for_loop
for_loop_end:

    leave
    ret
