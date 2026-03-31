.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global ojler

# unsigned ojler(unsigned n)
# eax              edi
ojler:
    enter 0, 0

    xor r9d, r9d    # r9d = br_up

    mov ecx, 1      # ecx = i
for_petlja:
    cmp ecx, edi
    je for_petlja_kraj

    # cuvamo vrednosti registara koji su
    # nam bitni na stek
    push r9
    push rcx
    push rdi
    push rdi  # stek mora biti poravnat sa 16
              # mozemo i sub rsp, 8 da uradimo
              # umesto push 

    mov esi, edi    # drugi arg  = n
    mov edi, ecx    # prvi arg = i
    call nzd        # eax = nzd(i, n)

    # vracanje starih vrednosti registara
    pop rdi  # mozemo i add esp, 8 umesto pop 
    pop rdi
    pop rcx
    pop r9

    cmp eax, 1
    jne nisu_uzajamno_prosti
    inc r9d

nisu_uzajamno_prosti:


    inc ecx
    jmp for_petlja
for_petlja_kraj:

    mov eax, r9d

    leave
    ret
