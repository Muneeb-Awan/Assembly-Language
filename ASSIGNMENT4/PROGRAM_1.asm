INCLUDE MUNEEB.INC
.MODEL SMALL
.STACK 100H
.DATA

ARR DB 5 DUP (0)

SUM DB ?
RD1 DB ?
RD2 DB ?

.CODE

MOV DX,@DATA
MOV DS,DX
         
         PRINTN "ENTER DATA IN ARRAY:"
         
    MOV CX,5
    MOV SI,0 

    START:
        GET_D ARR[SI]
        
        MOV BL,ARR[SI]
        
        ADD SUM,BL
        
        INC SI
        
        LOOP START 
        
        NEW_LINE
        
        PRINTN "DATA IN DECENDING ORDER :"
        
        MOV CX,5
        MOV SI,4
        
        L1:
            PUT_D ARR[SI]
            
            DEC SI
            
            LOOP L1
            
        XOR AX,AX    
            
        MOV AL,SUM
        AAM
        
        MOV RD1,AH
        MOV RD2,AL
        
        NEW_LINE
        PRINT "SUM OF ALL ENTRED DIGITS IS :"
        
        PUT_D RD1
        PUT_D RD2
           
        
        
        
        
       




