.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global suma_parnih

# unsigned suma_parnih(unsigned n)
#   eax                  edi
suma_parnih:
    enter 0, 0

    xor eax, eax        # eax = trenutna suma
    mov ecx, edi        # ecx = i = n
    test ecx, ecx
    je kraj             # loop bi za n = 0 napravio problem

do_while_petlja:
    test ecx, 1
    jnz nastavak
    add eax, ecx

nastavak:
    loop do_while_petlja

kraj:

    leave
    ret
