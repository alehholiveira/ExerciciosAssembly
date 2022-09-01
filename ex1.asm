.MODEL SMALL
.DATA
    msg DB 'Bem vindo ao primeiro exercicio', 13, 10, '$'
.CODE
     
    main proc
        MOV AX, @DATA
        MOV DS, AX                  ;INCIALIZAZAO DE DS
        MOV CL, 10                  
        salta:                      ;CONTROLE DE REPETICAO
        MOV AH, 9                   ;FUNCAO DE ESCRITA DE STRING 9  
        MOV DX, OFFSET msg          ;ENDERECO INCIAL DO STRING 
        INT 21H
        DEC CL                      ;TIRA 1 DE CADA REPETICAO
        JNZ salta                   ;IMPEDE DE REPETIR NOVAMENTE 
        MOV AH, 4Ch                 ;EXIT 
        INT 21H
    main endp
END main
    