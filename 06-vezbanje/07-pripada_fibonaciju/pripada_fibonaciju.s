.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits

.text
.global pripada_fibonaciju
pripada_fibonaciju:
	enter 0, 0

	mov ecx, 2
	mov r8d, 0
	mov r9d, 1

	cmp edi, r8d
	je nula

	cmp edi, r9d
	je jedan

	
petlja:
	cmp edi, r9d
	jl nije
	
	xor r10d, r10d
	add r10d, r8d
	add r10d, r9d

	cmp r10d, edi
	jne next

	mov eax, ecx
	jmp kraj

next:
	mov r8d, r9d
	mov r9d, r10d
	inc ecx
	jmp petlja
nula:
	mov eax, 0
	jmp kraj
jedan:
	mov eax, 1
	jmp kraj

nije:
	mov eax, -1
kraj:
	leave
	ret
