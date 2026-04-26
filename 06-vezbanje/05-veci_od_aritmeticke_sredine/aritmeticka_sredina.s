.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits


.text
.global aritmeticka_sredina
aritmeticka_sredina:
	enter 0, 0

	mov ecx, 0
	xor eax, eax
petlja:
	cmp ecx, esi
	je kraj

	mov r8d, [rdi + 4*rcx]
	add eax, r8d

	inc ecx
	jmp petlja

kraj:
	xor edx, edx
	div esi
	leave
	ret
