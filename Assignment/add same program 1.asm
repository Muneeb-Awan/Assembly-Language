.model small
.stack 100h
.data
line db 10,13,"$"
msg db "Enter a Number :$"
msg1 db "Result is : $"
result db ?
.code
mov dx,@data
mov ds,dx
start:
    ;Print First MSG
    lea dx,msg
    mov ah,9
    int 21h
    ;Claculatue and store
    mov ah,1
    int 21h
    mov dl,al
    add al,dl
    sub al,48
    mov result,al
    ;break line
    lea dx,line
    mov ah,9
    int 21h
    ;show 2nd message
    lea dx,msg1
    mov ah,9
    int 21h
    ;show result
    mov dl,result
    mov ah,2
    int 21h
END: