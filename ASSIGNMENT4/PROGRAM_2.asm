INCLUDE MUNEEB.INC
.MODEL SMALL
.STACK 100H
.DATA
TEMP_CX DW ?
ARR DB 20 DUP (0)

EVEN DB 0,2,4,6,8

ODD  DB 1,3,5,7,9

SUM DB 0

SUM_EVEN DB 0
SUM_ODD  DB 0

RD1 DB 0
RD2 DB 0
RD3 DB 0


.CODE
MOV DX,@DATA
MOV DS,DX

    MOV CX,20
    MOV SI,0
    L1:
        GET_D ARR[SI]
        INC SI
        LOOP L1
        
        MOV CX,20
        MOV SI,0
        L2:
        MOV BL,ARR[SI]
        ADD SUM,BL 
        INC SI
        LOOP L2
        
        NEW_LINE
        PRINT "CALCULATING RESULTS PLEASE WAIT....."
        NEW_LINE
        
        ;;EVEN SIDE
        
        MOV CX,20
        MOV SI,0
        L3:
            MOV TEMP_CX,CX
            
            
            MOV CX,5
            MOV DI,0
            L4:
             MOV BL,ARR[SI]
             CMP BL,EVEN[DI]
             JE YES_EVEN
             BACK_1:
             INC DI
             LOOP L4
             
             MOV CX,TEMP_CX
             INC SI
             LOOP L3
             
             ;;ODD SIDE
             
             MOV CX,20
             MOV SI,0
        L5:
            MOV TEMP_CX,CX
            
            
            MOV CX,5
            MOV DI,0
            L6:
             MOV BL,ARR[SI]
             CMP BL,ODD[DI]
             JE YES_ODD
             BACK_2:
             INC DI
             LOOP L6
             
             MOV CX,TEMP_CX
             INC SI
             LOOP L5
             
             
             JMP DISPLAY
             
             YES_EVEN:
             MOV BL,ARR[SI]
             ADD SUM_EVEN,BL
             JMP BACK_1  
             
             YES_ODD:
             MOV BL,ARR[SI]
             ADD SUM_ODD,BL
             JMP BACK_2
             
             DISPLAY:
             
             MOV AL,SUM
             AAM
             MOV RD3,AL
             MOV AL,AH
             XOR AH,AH
             AAM
             MOV RD2,AL
             MOV RD1,AH
             
             PRINT "SUM OF ALL ENTRED DIGITS : "
             PUT_D RD1
             PUT_D RD2
             PUT_D RD3
             
             NEW_LINE
             
             PRINT "SUM OF EVEN NUMBERS:"
             
             MOV AL,SUM_EVEN
             AAM
             MOV RD3,AL
             MOV AL,AH
             XOR AH,AH
             AAM
             MOV RD2,AL
             MOV RD1,AH
             
             PUT_D RD1
             PUT_D RD2
             PUT_D RD3
             
             NEW_LINE
             
             PRINT "SUM OF ODD NUMBERS:"
             
             MOV AL,SUM_ODD
             AAM
             MOV RD3,AL
             MOV AL,AH
             XOR AH,AH
             AAM
             MOV RD2,AL
             MOV RD1,AH
             
             PUT_D RD1
             PUT_D RD2
             PUT_D RD3
             
             
              
             
             
         
        
      
        
        
        
