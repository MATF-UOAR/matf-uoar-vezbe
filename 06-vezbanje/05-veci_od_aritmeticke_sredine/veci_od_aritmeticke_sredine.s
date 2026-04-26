.intel_syntax noprefix
.section .note.GNU-stack,"",@progbits


.text

# aritmeticka_sredina:
# 	enter 0, 0

# 	mov ecx, 0
# 	xor eax, eax
# petlja:
# 	cmp ecx, esi
# 	je kraj_fje

# 	mov r8d, [rdi + 4*rcx]
# 	add eax, r8d

# 	inc ecx
# 	jmp petlja

# kraj_fje:
# 	xor edx, edx
# 	div esi
# 	leave
# 	ret




.global veci_od_aritmeticke_sredine

veci_od_aritmeticke_sredine:
	enter 0, 0

	call aritmeticka_sredina
	mov r8d, eax

	mov ecx, 0
for_petlja:
	cmp ecx, esi
	je kraj

	mov r9d, [rdi + 4*rcx]
	cmp r9d, r8d
	jbe next

	mov eax, r9d
	mul r9d

	mov  [rdi + 4*rcx], eax
	
next:
	inc ecx
	jmp for_petlja
kraj:
	leave
	ret
