.model small
.stack 100h
.data 
msg1 db "small vowels are :  $"
msg2 db "Capital vowels are :  $"
svowels db 97,44,101,44,105,44,111,44,117,"$"
cvowels db 65,44,69,44,73,44,79,44,85,"$"
line db 10,13,"$"
.code

mov dx,@data
mov ds,dx
    start:
        ;print msg 1
        lea dx,msg2
        mov ah,9
        int 21h
        ;output 1
        lea dx,cvowels
        mov ah,9
        int 21h
        ;line break
        lea dx,line
        mov ah,9
        int 21h
        ;print msg 2
        lea dx,msg1
        mov ah,9
        int 21h
        ;output 2
        lea dx,svowels
        mov ah,9
        int 21h
    end:



