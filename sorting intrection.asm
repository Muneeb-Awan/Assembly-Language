.model tiny
.data
msg1 db "Enter Elements in Array : $"
msg2 db "Elements after sorting: $"
line db 10,13,"$"
nums  db 10 dup("$")
count equ 9                         

.code
mov ax,@data
mov ds,ax
.startup
        lea dx,msg1
        mov ah,9
        int 21h
        mov cx,10 
        mov si,0  
        
        input:
        
        mov ah,1
        int 21h
        mov [nums+si],al
        inc si
        loop input
    
    mov dx, count
    oloop:
        mov cx, count
        lea si, nums

        iloop:
            mov al, [si]                 
            cmp al, [si+1]
            jl common                      
            xchg al, [si+1]
            mov [si], al     

            common:
                INC si
                loop iloop

        dec dx
        jnz oloop 
        
        lea dx,line
        mov ah,9
        int 21h
        lea dx,msg2
        mov ah,9
        int 21h
        
        mov cx,10 
        mov si,0
        print:
        mov dl,[nums+si]
        mov ah,2
        int 21h
        inc si
        loop print
        
        

.exit
end