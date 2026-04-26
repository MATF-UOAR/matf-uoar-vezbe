
.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits


.text
.global najveca_cifra
najveca_cifra:
	enter 0, 0

	mov r8d, 10
	mov r9d, 0
	
algoritam:
	cmp edi , 0
	je kraj

	mov eax, edi
	xor edx, edx
	div r8d

	cmp edx, r9d
	jb next
	
	mov r9d, edx
	
next:
	mov edi, eax
	jmp algoritam
kraj:
	mov eax, r9d
	leave
	ret
