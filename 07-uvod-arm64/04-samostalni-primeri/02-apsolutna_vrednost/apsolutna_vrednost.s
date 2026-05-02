.text

.align 2
.global apsolutna_vrednost

// int apsolutna_vrednost(int x)
// w0                      w0
apsolutna_vrednost:
    cmp w0, #0
    b.ge kraj
    neg w0, w0

kraj:
    ret
