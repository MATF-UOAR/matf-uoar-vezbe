.text

.align 2
.global saberi_float
.global saberi_double

// float saberi_float(float a, float b)
// s0                 s0       s1
saberi_float:
    fadd s0, s0, s1
    ret

// double saberi_double(double a, double b)
// d0                   d0        d1
saberi_double:
    fadd d0, d0, d1
    ret
