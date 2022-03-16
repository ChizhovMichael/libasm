; | input
; rdi = first arg (dest)
; rsi = second arg (src)
; | output
; copy rsi to rdi and ret rax

global _ft_strcpy

section .text
_ft_strcpy:
	push rbx
    xor rax, rax
    xor rbx, rbx
    .next_iter:
        mov bl, byte [rsi + rax]
        mov byte [rdi + rax], bl
        cmp bl, byte 0
        je .close
        inc rax
        jmp .next_iter
    .close:
        pop rbx
        mov rax, rdi
        ret