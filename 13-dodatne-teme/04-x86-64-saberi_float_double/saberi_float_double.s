.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text

.global saberi_float
.global saberi_double

# float saberi_float(float a, float b)
# xmm0               xmm0     xmm1
saberi_float:
    addss xmm0, xmm1
    ret

# double saberi_double(double a, double b)
# xmm0                 xmm0      xmm1
saberi_double:
    addsd xmm0, xmm1
    ret
