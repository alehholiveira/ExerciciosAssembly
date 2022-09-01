.model small
.DATA
    STRI DB 5,0,'?????'
    DB '$'
.CODE 
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        MOV AH, 0AH         ;funcao para ler a string     
        MOV DX,OFFSET STRI  ;guarda o endere?o da stri
        INT 21H
        
        MOV AH,02
        MOV DL, 10         ;pular linha(enter no codigo asci)
        INT 21H
        
        MOV AH,09               ;funcao para imprimir a string
        MOV DX, OFFSET STRI
        ADD DX,2                ;adiciona 2 ao DX, para evitar imprimir o lixo antes (5,0)
        INT 21H
        
        MOV AH, 4CH             ;exit
        INT 21H
     main endp
     end main