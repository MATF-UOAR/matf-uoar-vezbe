.text

.align 2
.global najcesce_slovo

// char najcesce_slovo(const char *s)
//  w0                   x0
najcesce_slovo:
    stp fp, lr, [sp, #-128]!
    mov fp, sp

    add x4, sp, #16         // x4 = brojaci
    mov w5, #0              // w5 = i

inicijalizacija:
    cmp w5, #26
    b.hs brojaci_spremni

    str wzr, [x4, w5, uxtw #2]
    add w5, w5, #1
    b inicijalizacija

brojaci_spremni:
    ldrb w5, [x0], #1
    cmp w5, #0
    b.eq nadji_najcesce

    sub w5, w5, #97        // indeks slova: s[i] - 'a'
    ldr w6, [x4, w5, uxtw #2]
    add w6, w6, #1
    str w6, [x4, w5, uxtw #2]
    b brojaci_spremni

nadji_najcesce:
    mov x0, x4
    mov w1, #26
    bl indeks_maksimuma

    add w0, w0, #97        // slovo: 'a' + indeks

    ldp fp, lr, [sp], #128
    ret
