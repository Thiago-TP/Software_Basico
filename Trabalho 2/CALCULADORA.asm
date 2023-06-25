global  user_choice, user_choice_size
; seção de variáveis
section .bss
    user_name           resb    20  ; name do usuário pode ter até 20 letras ascii
    is_32bit            resb    1   ; byte flag de 32 bits
    user_choice         resb    1   ; opção de operação do usuário (byte entre 1 e 7)


; seção de dados
section .data   ; apenas strings podem ser globais
    user_name_size      dd  20      ; número de bytes no nome do usuário
    is_32bit_size       dd  1       ; número de bytes na flag de 32 bits
    user_choice_size    dd  2       ; número de bytes na opção de operação

    pede_nome           db  "Bem vindo. Digite seu nome: "
    pede_nome_size      equ $-pede_nome

    hola                db  "Hola, "
    hola_size           equ $-hola
    bem_vindo           db  ", bem-vindo ao programa de CALC IA-32.", 10    ; 10 é o \n
    bem_vindo_size      equ $-bem_vindo

    qual_precision      db  "Vai trabalhar com 16 ou 32 bits? (digite 0 para 16, e 1 para 32): "
    qual_precision_size equ $-qual_precision

    menu                db      10, 10, 
    db  "ESCOLHA UMA OPÇÃO:",   10, 
    db  "-1: SOMA",             10
    db  "-2: SUBTRACAO",        10
    db  "-3: MULTIPLICACAO",    10
    db  "-4: DIVISAO",          10
    db  "-5: EXPONENCIACAO",    10
    db  "-6: MOD",              10
    db  "-7: SAIR",             10, 10
    menu_size           equ $-menu  

    qual_o_N1           db  "Digite o primeiro numero: ", 10
    qual_o_N2           db  "Digite o segundo numero: ", 10
    qual_o_N1_size      equ $-qual_o_N1
    qual_o_N2_size      equ $-qual_o_N2

    ocorreu_OF          db  "OCORREU OVERFLOW", 10
    ocorreu_OF_size     equ $-ocorreu_OF


; seção de códigos
extern  soma, subtracao, multiplicacao, divisao, exponenciacao, mod
extern  ask_name, read_name, welcome, ask_precision, read_precision, show_menu, read_op, execute_op 
section .text

global _start
_start:        
    call    ask_name
    call    read_name
    call    welcome

    call    ask_precision
    call    read_precision

    repeat:
        call    show_menu
        call    read_op
        call    execute_op          ; no momento apenas fecha o programa
    
    jmp     repeat


execute_op: 
    enter   0, 0
    
    cmp     byte [user_choice], '1'
    je      some 
    
    cmp     byte [user_choice], '2'
    je      subtraia 
    
    cmp     byte [user_choice], '3'
    je      multiplique 
    
    cmp     byte [user_choice], '4'
    je      divida 
    
    cmp     byte [user_choice], '5'
    je      exponencie  
    
    cmp     byte [user_choice], '6'
    je      calc_resto 

    ; fim do programa
    mov     eax, 1    
    mov     ebx, 0
    int     80h

    some:           call    soma 
                    jmp     op_done
    
    subtraia:       call    subtracao
                    jmp     op_done
    
    multiplique:    call    multiplicacao
                    jmp     op_done
    
    divida:         call    divisao
                    jmp     op_done
    
    exponencie:     call    exponenciacao
                    jmp     op_done
    
    calc_resto:     call    mod 

    op_done:
    leave 
    ret 

collect_numbers:
    enter   0, 0

    leave 
    ret

%include "IO_functions.asm"         ; arquivo temporário para deixar a main limpa