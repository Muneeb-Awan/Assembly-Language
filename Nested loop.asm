.model small
.data 
line db 0ah,0dh,"$" 
var dw 1
.stack 100h
.code

main proc 
    
    mov dx,@data
    mov ds,dx
    
    mov cx,6
    start:      
    mov bx,cx
    mov cx,var
    start_again:
    
    
    mov dl,"*"
    mov ah,2
    int 21h
    loop start_again
     
    mov cx,bx
    
    lea dx,line
    mov ah,9
    int 21h 
    inc var
    
    loop start
    
    main endp
end main

