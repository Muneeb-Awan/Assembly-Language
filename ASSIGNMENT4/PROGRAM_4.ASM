INCLUDE MUNEEB.INC
.MODEL SMALL
.STACK 100H
.DATA
TEMP_CX DW ?
ARR DB 100 DUP ('$')
ALPHABETS DB "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
DIGITS DB "1234567890"
VOWELS DB "AEIOUaeiou"
CONSON DB "BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz"
OTHERS DB "~!@#$%^&*()_+-=[]{};'\:|<>?,./"
COUNT DW 0
COUNT_DIGIT DB 0
COUNT_ALPHA DB 0
COUNT_SPACE DB 0
COUNT_VOWEL DB 0
COUNT_CONSO DB 0
COUNT_OTHER DB 0

RD1 DB ?
RD2 DB ?
RD3 DB ?

.CODE
MOV DX,@DATA
MOV DS,DX

    MOV SI,0
    L1:
        GET_C ARR[SI]
        CMP ARR[SI],"P"
        JE NEXT
        
        CMP ARR[SI],"p"
        JE NEXT
        
        INC COUNT
        INC SI
        
        LOOP L1
        
        NEXT:
        
        NEW_LINE
        PRINT "CALCULATING RESULTS PLEASE WAIT....."
        NEW_LINE
        
        CMP COUNT,0
        JE DISPLAY
        
        ;;ALPHABETS_CHECK
        
        
        
        MOV CX,COUNT
        MOV SI,0
        ALPHA_1:
            MOV TEMP_CX,CX
            
            
            MOV CX,52
            MOV DI,0
            ALPHA_2:
             MOV BL,ARR[SI]
             CMP BL,ALPHABETS[DI]
             JE YES_ALPHA
             BACK_1:
             INC DI
             LOOP ALPHA_2
             
             MOV CX,TEMP_CX
             INC SI
             LOOP ALPHA_1
             
             ;; ALPHABETS_CHECK_END
             
             ;;DIGITS_CHECK
        
        
        
        MOV CX,COUNT
        MOV SI,0
        DIGIT_1:
            MOV TEMP_CX,CX
            
            
            MOV CX,10
            MOV DI,0
            DIGIT_2:
             MOV BL,ARR[SI]
             CMP BL,DIGITS[DI]
             JE YES_DIGIT
             BACK_2:
             INC DI
             LOOP DIGIT_2
             
             MOV CX,TEMP_CX
             INC SI
             LOOP DIGIT_1
             
             ;; DIGITS_CHECK_END
             
             ;;SPACE_CHECK
        
        
        
        MOV CX,COUNT
        MOV SI,0
        SPACE_1:
             CMP ARR[SI],32
             JE YES_SPACE
             BACK_3:
             INC SI
             LOOP SPACE_1
             
             ;; SPACE_CHECK_END
             
             ;;VOWEL_CHECK
        
        
        
        MOV CX,COUNT
        MOV SI,0
        VOWEL_1:
            MOV TEMP_CX,CX
            
            
            MOV CX,10
            MOV DI,0
            VOWEL_2:
             MOV BL,ARR[SI]
             CMP BL,VOWELS[DI]
             JE YES_VOWEL
             BACK_4:
             INC DI
             LOOP VOWEL_2
             
             MOV CX,TEMP_CX
             INC SI
             LOOP VOWEL_1
             
             ;; VOWEL_CHECK_END
             
             ;;CONSONENTS_CHECK
        
        
        
        MOV CX,COUNT
        MOV SI,0
        CONSO_1:
            MOV TEMP_CX,CX
            
            
            MOV CX,42
            MOV DI,0
            CONSO_2:
             MOV BL,ARR[SI]
             CMP BL,CONSON[DI]
             JE YES_CONSO
             BACK_5:
             INC DI
             LOOP CONSO_2
             
             MOV CX,TEMP_CX
             INC SI
             LOOP CONSO_1
             
             ;; ALPHABETS_CHECK_END
             
             ;;OTHERS_CHECK
        
        
        
        MOV CX,COUNT
        MOV SI,0
        OTHER_1:
            MOV TEMP_CX,CX
            
            
            MOV CX,29
            MOV DI,0
            OTHER_2:
             MOV BL,ARR[SI]
             CMP BL,OTHERS[DI]
             JE YES_OTHER
             BACK_6:
             INC DI
             LOOP OTHER_2
             
             MOV CX,TEMP_CX
             INC SI
             LOOP OTHER_1
             
             ;; OTHERS_CHECK_END
             
             
             JMP DISPLAY
             
            
             
             YES_ALPHA:
             INC COUNT_ALPHA
             JMP BACK_1
             
             YES_DIGIT:
             INC COUNT_DIGIT
             JMP BACK_2
             
             YES_SPACE:
             INC COUNT_SPACE
             JMP BACK_3
             
             YES_VOWEL:
             INC COUNT_VOWEL
             JMP BACK_4
             
             YES_CONSO:
             INC COUNT_CONSO
             JMP BACK_5 
             
             YES_OTHER:
             INC COUNT_OTHER
             JMP BACK_6
             
             DISPLAY:
             
             NEW_LINE
             
             XOR AX,AX
             
             PRINT "TOTAL ALPHABETS ARE :"
             
             MOV AL,COUNT_ALPHA
             AAM
             MOV RD3,AL
             MOV AL,AH
             AAM
             MOV RD2,AL
             MOV RD1,AH
             
             PUT_D RD1
             PUT_D RD2
             PUT_D RD3 
             
             NEW_LINE
             XOR AX,AX
             
             PRINT "TOTAL DIGITS ARE :"
             
             MOV AL,COUNT_DIGIT
             AAM
             MOV RD3,AL
             MOV AL,AH
             AAM
             MOV RD2,AL
             MOV RD1,AH
             
             PUT_D RD1
             PUT_D RD2
             PUT_D RD3
             
             NEW_LINE
             XOR AX,AX
             
             PRINT "TOTAL SPACES ARE :"
             
             MOV AL,COUNT_SPACE
             AAM
             MOV RD3,AL
             MOV AL,AH
             AAM
             MOV RD2,AL
             MOV RD1,AH
             
             PUT_D RD1
             PUT_D RD2
             PUT_D RD3
             
             NEW_LINE
             XOR AX,AX
             
             PRINT "TOTAL VOWELS ARE :"
             
             MOV AL,COUNT_VOWEL
             AAM
             MOV RD3,AL
             MOV AL,AH
             AAM
             MOV RD2,AL
             MOV RD1,AH
             
             PUT_D RD1
             PUT_D RD2
             PUT_D RD3
             
             NEW_LINE
             XOR AX,AX
             
             PRINT "TOTAL CONSONENTS ARE :"
             
             MOV AL,COUNT_CONSO
             AAM
             MOV RD3,AL
             MOV AL,AH
             AAM
             MOV RD2,AL
             MOV RD1,AH
             
             PUT_D RD1
             PUT_D RD2
             PUT_D RD3
             
             NEW_LINE
             XOR AX,AX
             
             PRINT "TOTAL OTHER CHARECTERS ARE :"
             
             MOV AL,COUNT_OTHER
             AAM
             MOV RD3,AL
             MOV AL,AH
             AAM
             MOV RD2,AL
             MOV RD1,AH
             
             PUT_D RD1
             PUT_D RD2
             PUT_D RD3