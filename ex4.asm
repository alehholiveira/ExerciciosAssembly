.model SMALL

.code

    main proc
    
    
    MOV AH, 02
    MOV DL, 65          ;MOVENDO A LETRA A PARA DL
    VOLTA1:             ;LOOP DE A ATE M
    INT 21H             ;PRINTANDO O CONTEUDO QUE EST? EM DL
    MOV BL, AL          ;A FUNCAO AH02, ELA RETORNA AL, ENT?O MOVE-SE O CONTEUDO DE AL PARA BL PARA SALVA-LO, E DEPOIS RETORNAR A DL, QUE ? A ENTRADA DA AH02 (DEVIDO A CHAMAR A FUNCAO AH02 PARA PULAR LINHA)
    MOV AH, 02          
    MOV DL, 10          ;PULAR LINHA 
    INT 21H
    MOV DL, BL          ;RETONAR O CONTEUDO DE AL PARA DL, PARA CONTINUAR O PROCESSO REPETITIVO
    INC DL              ;INCRIMENTANDO DL, PARA IMPRIMIR O PROXIMO CONTEUDO DA TABELA ASCII
    CMP DL, 78          ;COMPARAR O CONTEUDO DE DL COM 91, CARECTER DEPOIS DA LETRA Z
    JNZ VOLTA1          ;CONTROLE DO LOOP
    
    
    MOV AH, 01         ; ENTER
    INT 21H
    
    MOV AH, 02  
    VOLTA2:            ;LOOP DE N ATE Z
    INT 21H
    MOV BL, AL
    MOV AH, 02
    MOV DL, 10
    INT 21H
    MOV DL, BL
    INC DL
    CMP DL, 91
    JNZ VOLTA2
    
    MOV AH, 01         ; ENTER
    INT 21H
    
    MOV AH, 02
    MOV DL, 97
    VOLTA3:             ;LOOP DE a ATE m
    INT 21H
    MOV BL, AL
    MOV AH, 02
    MOV DL, 10
    INT 21H
    MOV DL, BL
    INC DL
    CMP DL, 110
    JNZ VOLTA3
    
    MOV AH, 01         ; ENTER
    INT 21H
    
    MOV AH, 02
    VOLTA4:            ;LOOP DE n ATE z
    INT 21H
    MOV BL, AL
    MOV AH, 02
    MOV DL, 10
    INT 21H
    MOV DL, BL
    INC DL
    CMP DL, 123
    JNZ VOLTA4
    
    MOV AH, 01         ; ENTER
    INT 21H
    
    MOV AH, 02
    MOV DL, 48
    VOLTA5:            ;LOOP DE 0 A 9
    INT 21H
    MOV BL, AL
    MOV AH, 02
    MOV DL, 10
    INT 21H
    MOV DL, BL
    INC DL
    CMP DL, 58
    JNZ VOLTA5
    
    
    MOV AH,4Ch          ;exit
    INT 21h
    
    MAIN ENDP
END MAIN