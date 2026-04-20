.intel_syntax noprefix
.section .note.GNU-stack, "", @progbits

.bss
.align 4
poslednji_id: .zero 4

.text

.global sledeci_id
# unsigned sledeci_id()
# eax                 -
sledeci_id:
    enter 0, 0

    add dword ptr [rip + poslednji_id], 1
    mov eax, dword ptr [rip + poslednji_id]

    leave
    ret
