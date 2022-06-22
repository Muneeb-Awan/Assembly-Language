.model small
.stack 100h
.data
    msg db "Enter a Number : $"
    line db 0ah,0dh,"$"
    number db ?
    number2 db ?
    count db ?
    COUNT2 DB 0
.code
    main proc
        
        mov DX,@data
        mov DS,DX
        
        LEA DX,msg
        MOV AH,9
        INT 21H
        
        MOV AH,1
        INT 21H
        MOV NUMBER,AL
        MOV NUMBER2,AL
        SUB NUMBER2,48
        MOV AL,0
        
        MOV COUNT,48
        MOV COUNT2,0
        
        MOV CX,10
             START:
                LEA DX,LINE
                MOV AH,9
                INT 21H
                
                MOV BL,0
                MOV DL,NUMBER
                MOV AH,2
                INT 21H
                MOV DL,"X"
                MOV AH,2
                INT 21H 
                MOV DL,COUNT
                MOV AH,2
                INT 21H
                MOV DL,"="
                MOV AH,2
                INT 21H 
                
                    MOV AL,NUMBER2        
                    MUL COUNT2
                    ;; ADD AX,48
                    AAM
                    
                    MOV BH,AH
                    MOV BL,AL
                    MOV DL,BH
                    ADD DL,48
                    MOV AH,2
                    INT 21H
                    
                    MOV DL,BL
                    ADD DL,48
                    MOV AH,2
                    INT 21H
                 
                    ;;MOV DX,AX
                    ;;MOV AH,2
                    ;;INT 21H 
                      
                
             INC COUNT 
             INC COUNT2
                
            LOOP START
        
        main endp
end main