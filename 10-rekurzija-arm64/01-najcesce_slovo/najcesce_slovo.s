.text

.align 2
.global najcesce_slovo

// char najcesce_slovo(const char *s)
//  w0                   x0
najcesce_slovo:
    stp fp, lr, [sp, #-16]!
    mov fp, sp
    sub sp, sp, #112

    mov x4, sp              // x4 = brojaci
    mov w5, #0              // w5 = i

inicijalizacija:
    cmp w5, #26
    b.hs brojaci_spremni

    str wzr, [x4, x5, lsl #2]
    add w5, w5, #1
    b inicijalizacija

brojaci_spremni:
    ldrb w5, [x0], #1
    cmp w5, #0
    b.eq nadji_najcesce

    cmp w5, #'a'
    b.lo proveri_veliko_slovo
    cmp w5, #'z'
    b.ls uvecaj_brojac

proveri_veliko_slovo:
    cmp w5, #'A'
    b.lo brojaci_spremni
    cmp w5, #'Z'
    b.hi brojaci_spremni
    add w5, w5, #('a' - 'A')

uvecaj_brojac:
    sub w5, w5, #'a'       // indeks slova: s[i] - 'a'
    ldr w6, [x4, x5, lsl #2]
    add w6, w6, #1
    str w6, [x4, x5, lsl #2]
    b brojaci_spremni

nadji_najcesce:
    mov x0, x4
    mov w1, #26
    bl indeks_maksimuma

    add w0, w0, #'a'       // slovo: 'a' + indeks

    mov sp, fp
    ldp fp, lr, [sp], #16
    ret
