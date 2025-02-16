org 0x7C00              ;Endereco em que a BIOS comeca a ler o codigo
bits 16                 ;Arquitetura do bootloader (so 16 bits)

jmp short main          ;Pular  para main apos enter que se trata de fat
nop                     ;Terceiro byte nulo obrigatorio

;bpb_OEM:    dq "MSWIN4.1"   ;Identificador OEM
;bpb_bps:    dw 512          ;Bytes por setor
;bpb_spc:    db 1            ;Setores por cluster
;bpb_nrs:    dw 1            ;Numero de setores reservador pela  BIOS
;bpb_fat:    db 2            ;Numero de FAT`s no dispositivo
;bpb_nre:    db 1            ;Numero de root entries


main:
    xor ax, ax          ;Zerando o ax
    ;mov ds, ax         ;Recomendado zerar, mas nao precisa
    ;mov es, ax         ;Recomendado zerar, mas nao precisa
    ;mov ss, ax         ;Recomendado zerar, mas nao precisa
    mov sp, 0x7C00      ;Stackpointer ao inicio
    mov si, msg         ;Movendo mensagem ao si
    call printborder    ;Chamando funcao de printar na tela
    jmp $               ;Loop infinito

printborder:
    push si             ;Guardando os enderecos no stack
    push ax             ;Guardando os enderecos no stack

.loop:
    lodsb               ;Load string byte para ax
    or al,al            ;Verificando se al=0=NULL CHAR
    jz .done            ;Se for, acaba de printar e vai para .done
    mov ah, 0x0e        ;ax=(ah)(al)=0x(0e)(char) -> 0x0e = Display character
    int 0x10            ;Interrupt da bios para video service
    jmp .loop           ;Pula pro loop

.done:
    pop ax              ;Recuperando os enderecos do stack
    pop si              ;Recuperando os enderecos do stack
    ret                 ;Retornando ao main

msg: db 0x07,0x07,0x07    ;0x07 = Codigo ascii para os beeps

times 510-($-$$) db 0           ;Zerando tudo por 510-(tudo compilado ate agora) bytes restantes
dw 0AA55h                       ;Mostrando fim do bootloader