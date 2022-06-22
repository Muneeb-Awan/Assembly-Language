.model small
.stack 100h
.data
string DB 10000 dup("$")
msg1 db "Enter string:$"
msg2 db "String you entered was: $"
line db 10,13,"$"
len dw lengthof msg1
.code 
    mov ah,09
    mov al,32
    mov bl,0ah
    int 10h 
    
mov dx,@data
mov ds,dx
Lea dx,msg1
mov ah,9
int 21h  

        

mov cx,1000
mov si,0
    mov ah,09
    mov al,32
    mov bl,04h
    int 10h
start:
    mov ah,1
    int 21h
    cmp al,13
    je out1
    mov string[si],al
    inc si
    loop start
    out1:
    lea dx,line
    mov ah,9
    int 21h
    mov ah,09
    mov al,32
    mov bl,08h
    int 10h
    lea dx,line
    mov ah,9
    int 21h
    lea dx,msg2
    mov ah,9
    int 21h
    lea dx,string
    mov ah,9
    int 21h
    end:
