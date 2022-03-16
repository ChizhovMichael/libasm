; input
; rdi - s1, rsi - s2
; output
; rax = diff

global _ft_strcmp

section .text
_ft_strcmp:
    push rcx
    xor rax, rax
    xor rbx, rbx
    xor rcx, rcx
    .next_iter:
        mov al, byte [rdi + rcx]
        mov bl, byte [rsi + rcx]
        cmp al, byte 0
        je .close
        cmp bl, byte 0
        je .close
        cmp al, bl
        jne .close
        inc rcx
        jmp .next_iter 
    .close:
        pop rcx
        sub rax, rbx
        ret