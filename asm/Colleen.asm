section .data
    msg db 'section .data', 10, '    msg db ', 34, 'section .data', 34, ', 10, ', 34, '    msg db ', 34, 34, 'section .data', 34, 34, ', 10, ', 34, '    code db ', 34, 34, 10
    code db 'section .text', 10, 'global _start', 10, '_start:', 10, '    mov eax, 4', 10, '    mov ebx, 1', 10, '    mov ecx, msg', 10, '    mov edx, msglen', 10, '    int 0x80', 10, '    mov eax, 4', 10, '    mov ebx, 1', 10, '    mov ecx, code', 10, '    mov edx, codelen', 10, '    int 0x80', 10, '    mov eax, 1', 10, '    xor ebx, ebx', 10, '    int 0x80', 10
    msglen equ $ - msg
    codelen equ $ - code

section .text
global _start
_start:
    mov eax, 4          ; syscall write
    mov ebx, 1          ; stdout
    mov ecx, msg        ; adresse du message
    mov edx, msglen     ; longueur du message
    int 0x80           ; appel système

    mov eax, 4          ; syscall write
    mov ebx, 1          ; stdout
    mov ecx, code       ; adresse du code
    mov edx, codelen    ; longueur du code
    int 0x80           ; appel système

    mov eax, 1          ; syscall exit
    xor ebx, ebx       ; code de retour 0
    int 0x80           ; appel système
