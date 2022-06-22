.model small
.stack 100h
.data
msg1 db "Enter a Number : $"
msg2 db "1's compliment is : $"
line db 10,13,"$"
.code
mov dx,@data
mov ds,dx
    START:  
         ;Print msg
         lea dx,msg1
         mov ah,9
         int 21h
         ;input
         mov ah,1
         int 21h
         mov bl,al
         NOT bx
         ;breal line 
         lea dx,line
         mov ah,9
         int 21h
         ;print msg 2
         lea dx,msg2
         mov ah,9
         int 21h
         ;output
         mov dx,bx
         mov ah,2
         int 21h
    END:         