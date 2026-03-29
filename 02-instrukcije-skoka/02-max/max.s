.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global max
# int max(int x, int y)
# eax     edi    esi
max:
    push rbp
    mov rbp, rsp          # sredjivanje steka

    cmp edi, esi          # provera uslova x > y
    jle else_grana        # ukoliko nije ispunjen
                          # idemo na else granu
    # if grana
    mov eax, edi          # postavlajmo povratnu vrednost na x

    jmp nastavak          # preskacemo else granu

else_grana:
    mov eax, esi          # postavljamo povratnu vrednost na y

nastavak:

    mov rsp, rbp          # sredjivanje steka, kraj funkcije
    pop rbp
    ret
