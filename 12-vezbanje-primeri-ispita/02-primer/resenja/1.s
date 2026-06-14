.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.text

.global tezina

# unsigned long tezina(unsigned long x);
#      rax                     rdi
tezina:
	enter 0, 0

	mov rcx, 0  # rcx - sum
	mov r10, 10
	petlja:
		cmp rdi, 0
		je kraj_petlje

		mov rax, rdi
		xor rdx, rdx
		div r10 # rax - x / 10  rdx - x % 10

		mov rdi, rax

		mov rax, rdx
		mov r11, rdx
		mul r11
		add rcx, rax

		jmp petlja
	kraj_petlje:
	
	mov rax, rcx

	leave
	ret
