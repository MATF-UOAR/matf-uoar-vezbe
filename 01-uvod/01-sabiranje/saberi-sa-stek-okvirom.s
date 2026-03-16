.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global saberi

# int saberi(int a, int b)
# eax         edi   esi
saberi:
    push rbp
    mov rbp, rsp
    # Rezervisemo 16 bajtova na steku.
    # Za samo dva int argumenta bilo bi dovoljno i 8 bajtova,
    # ali ovako zadrzavamo poravnanje steka na 16 bajtova.
    sub rsp, 16

    # Cuvamo argumente u memoriji, kao lokalne promenljive.
    mov [rbp-4], edi
    mov [rbp-8], esi

    # Ucitavamo ih nazad iz memorije i sabiramo.
    mov edx, [rbp-4]
    mov eax, [rbp-8]
    add eax, edx

    mov rsp, rbp
    pop rbp
    ret
