.model small
.stack 100h
.data
msg db "Enter an Upper case char : $"
msg1 db "Lower case of the same is :$"
line db 10,13,"$"
var db ?
.code
mov dx,@data
mov ds,dx            
    start:
    ;print first msg
    LEA Dx,msg
    mov ah,9
    int 21h
    ;take input
    mov ah,1
    int 21h
    mov var,al
    ;break line
    LEA Dx,line
    mov ah,9
    int 21h    
    ;print 2nd msg
    LEA Dx,msg1
    mov ah,9
    int 21h 
    ;output
    add var,32
    mov dl,var
    mov ah,2
    int 21h
    end:
