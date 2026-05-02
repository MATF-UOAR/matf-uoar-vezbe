.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits




.text
.global kvadriraj_negativni

kvadriraj_negativni:
	enter 0, 0

	mov ecx, 0

for_petlja:
	cmp ecx, esi
	je kraj

	mov r8d, [rdi + 4*rcx]

	cmp r8d, 0
	jge next


	mov eax, r8d
	mul r8d
	
	mov [rdi + 4*rcx], eax
next:
	inc ecx
	jmp for_petlja
kraj:
	leave
	ret
