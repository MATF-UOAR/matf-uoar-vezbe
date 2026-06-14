.text

.align 2

.global broj_u_opsegu

// int broj_u_opsegu(unsigned long *a, int n, unsigned long l, unsigned long d);
// x0                        x0         w1        x2             x3
broj_u_opsegu:
	mov w4, #0    // w4 - count
	mov w5, #0    // w5 - i
for_loop:
	cmp w5, w1
	b.ge for_loop_end

		ldr x6, [x0, x5, lsl #3]
		cmp x6, x2
		b.lo dalje
		cmp x6, x3
		b.hi dalje
			add w4, w4, #1
	dalje:

	add w5, w5, #1
	b for_loop
for_loop_end:

	mov w0, w4
	ret
