; input
; rdi = fd, rsi = buff, rdx = size
; output
; error and rax = -1 || size

global _ft_write

extern ___error

section .text
_ft_write:
    mov rax, 0x2000004
    syscall
    jc .error
    ret
    .error:
        push r10    ; пушим  r10,  в него сохраним errno
        xor r10, r10 ;  обнуляем r10
        mov r10, rax ;  сохраняем эрно
        call ___error ; вызываем коды ошибок
        mov [rax], r10 ; устанавливаем указатель на код ошибки
        mov rax, -1
        pop r10 ; получаем обратно r10
        ret