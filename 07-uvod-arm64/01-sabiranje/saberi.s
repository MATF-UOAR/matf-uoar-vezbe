.text

.align 2
.global saberi
.type saberi, %function

// int saberi(int a, int b)
// w0          w0     w1
saberi:
    add w0, w0, w1
    ret

.size saberi, .-saberi
.section .note.GNU-stack,"",@progbits
