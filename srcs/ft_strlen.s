; | input
; rdi = first arg (str)
; | output
; ret rax

global _ft_strlen

segment .text
_ft_strlen:
    push rsi
    xor rax, rax
    mov rsi, rdi
    .next_iter:
        cmp [rsi + rax], byte 0
        je .close
        inc rax
        jmp .next_iter
    .close:
        pop rsi
        ret