.model small
.stack 100h
.data
KEY DB 3 DUP(0)
MSG DB 150 DUP("$")
LINE DB 10,13,'$'
COUNT DW 0
yoha db "Encrypted Message==> $" 
yohb db "Enter the Message==> $"
FUN DB 1
.code
    MOV DX,@DATA
    MOV DS,DX
    lea dx,yohb
    mov ah,9
    int 21h
    MOV CX,150
    MOV SI,0
    START:
    MOV AH,1
    INT 21H
    CMP AL,13
    JE NEXT
    MOV MSG[SI],AL
    INC SI
    INC COUNT
    LOOP START
    NEXT: 
      
    MOV CX,COUNT
    MOV SI,0 
    ENCRYPT:
    XOR MSG[SI],9
    ADD MSG[SI],6
    SUB MSG[SI],8
    MOV BL,FUN
    ADD MSG[SI],BL
    INC SI
    INC FUN
    LOOP ENCRYPT 
    LEA DX,LINE
    MOV AH,9
    INT 21H
    lea dx,yoha
    mov ah,9
    int 21h
    MOV CX,COUNT
    MOV SI,0
    PRINT:  
    MOV DL,MSG[SI]
    MOV AH,2
    INT 21H
    INC SI
    LOOP PRINT