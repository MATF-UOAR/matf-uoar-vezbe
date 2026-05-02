.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits


.text
.global zameni_najvecu

zameni_najvecu:
	enter 16, 0

	mov dword ptr [rbp - 4], edi
	mov dword ptr [rbp - 8], esi
	call najveca_cifra

	mov edi, dword ptr [rbp - 4]
	mov esi, dword ptr [rbp - 8]
	
	mov r8d, 1
	mov r9d, eax
	mov r10d, 10
	mov r11d, 0
	
for_petlja:
	cmp edi, 0
	je kraj

	xor edx, edx
	mov eax, edi

	div r10d

	mov dword ptr [rbp - 12], eax
	cmp edx, r9d
	je zameni

	mov eax, edx
	jmp next
zameni:
	mov eax, esi

next:
	mul r8d
	add r11d, eax
	
	mov eax, r8d
	mul r10d

	mov r8d, eax
	mov edi, dword ptr [rbp - 12]
	jmp for_petlja
kraj:
	mov eax, r11d
	leave
	ret
