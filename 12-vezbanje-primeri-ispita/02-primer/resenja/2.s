.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global najtezi

#  unsigned long najtezi(unsigned long *a, int n);
#      rax                     rdi          esi
najtezi:
	enter 0, 0

	mov rdx, 0   # rdx - max_weight
	mov r8, 0    # r8 - result

	mov ecx, 0   # ecx - i
for_loop:
	cmp ecx, esi
	jge for_loop_end

		push rdi
		push rsi
		push rdx
		push r8
		push rcx
		push rcx

		mov rdi, [rdi + 8 * rcx]
		call tezina

		pop rcx
		pop rcx
		pop r8
		pop rdx
		pop rsi
		pop rdi

		cmp rax, rdx
		jbe dalje
			mov rdx, rax
			mov r8, [rdi + 8 * rcx]
	dalje:

	inc ecx
	jmp for_loop
for_loop_end:

	mov rax, r8

	leave
	ret
