.model small
.stack 100h
.data 
   ARR DB 20 DUP(?)
.CODE
    MAIN PROC
    
    MOV CX,20
    MOV SI,0
    
    START:
    
    MOV AH,1
    INT 21H
    MOV ARR[SI],AL
    
    INC SI    
    
    LOOP START 
    
    MOV CX,20
    MOV SI,0 
    
    PRINT:
      
      MOV DL,ARR[SI]
      MOV AH,2
      INT 21H
      
      INC SI    
      
      LOOP PRINT 
        
    
       
    MAIN ENDP