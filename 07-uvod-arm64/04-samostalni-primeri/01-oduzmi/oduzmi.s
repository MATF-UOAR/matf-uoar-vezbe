.text

.align 2
.global oduzmi

// int oduzmi(int a, int b)
// w0          w0     w1
oduzmi:
    sub w0, w0, w1
    ret
