; input
; rdi = str
; output
; error and rax = -1 || size
global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_strcpy
extern ___error

section .text
_ft_strdup:
    push rbx
    xor rbx, rbx    
    call _ft_strlen ; rax = length
    mov rbx, rdi
    mov rdi, rax ; 
    call _malloc ; по возвращении rax указывает на нашу недавно выделенную память
    cmp rax, 0
    je .error
    mov rdi, rax
    mov rsi, rbx
    call _ft_strcpy ; copy rsi to rdi
    pop rbx
    ret
    .error: 
        push r10    ; пушим  r10,  в него сохраним errno
        xor r10, r10 ;  обнуляем r10
        mov r10, rax ;  сохраняем эрно
        call ___error ; вызываем коды ошибок
        mov [rax], r10 ; устанавливаем указатель на код ошибки
        mov rax, 0
        pop r10 ; получаем обратно r10
        ret