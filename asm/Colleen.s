.section .data
    message: .asciz "Hello, World!\n"

.section .text
    .globl _start

_start:
    # Write syscall (sys_write)
    movq $1, %rax         # syscall: write (1)
    movq $1, %rdi         # file descriptor: stdout (1)
    movq $message, %rsi   # buffer: adresse du message
    movq $14, %rdx        # taille du message
    syscall               # appel système

    # Exit syscall (sys_exit)
    movq $60, %rax        # syscall: exit (60)
    xorq %rdi, %rdi       # code de retour: 0
    syscall               # appel système
