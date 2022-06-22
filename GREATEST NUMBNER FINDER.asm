.model small
.stack 100h
.data 
    msg1 db "Enter First Number : $"
    msg2 db "Enter secound Number : $"
    msg3 db "Enter Third Number : $"
    MSG4 DB "GREATEST NUMBER IS : $"
    var1 db ?
    var2 db ?
    var3 db ?
    line db 0ah,0dh,"$"
.code

MAIN PROC
    
    MOV DX,@DATA
    MOV DS,DX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV VAR1,AL 
    
    LEA DX,LINE
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV VAR2,AL
    
    LEA DX,LINE
    MOV AH,9
    INT 21H
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV VAR3,AL 
    
    LEA DX,LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE
    MOV AH,9
    INT 21H
    
    LEA DX,MSG4
    MOV AH,9
    INT 21H
    
      START:
           MOV BL,VAR1
           
            CMP BL,VAR2
            JG NEXT
            JMP NEXT3
            NEXT:
            CMP BL,VAR3
            JG FINAL 
            JMP NEXT2
            FINAL:
            
            MOV DL,BL
            MOV AH,2
            INT 21H
            JMP END
            
            NEXT2: 
            
            MOV DL,VAR3
            MOV AH,2
            INT 21H 
            JMP END
            
            NEXT3:
            
            MOV BL,VAR2
            CMP BL,VAR3
            JG NEXT4
            JMP NEXTL
            
            NEXT4:
            
            MOV DL,VAR2
            MOV AH,2
            INT 21H 
            JMP END
           
            NEXTL:
            
            MOV DL,VAR3
            MOV AH,2
            INT 21H 
            JMP END
            
            END:
MAIN ENDP
END MAIN