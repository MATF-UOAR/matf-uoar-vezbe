.text
.align 2

.global saberi_sarene

// long saberi_sarene(long *a, int n);
// x0                   x0      w1
saberi_sarene:
    stp fp, lr, [sp, #-16]!
    mov fp, sp
    sub sp, sp, #32
    str x19, [fp, #-8]
    str x20, [fp, #-16]
    str x21, [fp, #-24]
    str x22, [fp, #-32]

    mov x19, x0   // x19 - a
    mov w20, w1   // w20 - n
    mov x21, #0   // x21 - sum
    mov x22, #0   // w22 - i
for_loop:
    cmp w22, w20
    b.ge for_loop_end

        ldr x0, [x19, x22, lsl #3] // x0 - a[i]  (lsl #3 i x0 zato sto je niz long)
        bl saren
        cmp w0, #0
        b.eq nije_saren
            ldr x0, [x19, x22, lsl #3]
            add x21, x21, x0
    nije_saren:

    add w22, w22, #1
    b for_loop
for_loop_end:

    mov x0, x21
    
    ldr x19, [fp, #-8]
    ldr x20, [fp, #-16]
    ldr x21, [fp, #-24]
    ldr x22, [fp, #-32]
    mov sp, fp
    ldp fp, lr, [sp], #16
    ret
