;; This is a Header file
;; Created by Muhammad Muneeb 
;; For Advanced Programming 
;; BS-IT G1 ,Govt Collage of Science.
;; Wahdat Road Lahore

INCLUDE EMU8086.INC


put_s macro p
	LEA DX,p
	MOV AH,9
	int 21h
endm


put_c macro p
	mov DL,p
	Mov ah,2
	int 21h
endm

	
get_c macro p
	mov ah,1
	int 21h
	mov p,al
endm
    
get_d macro p
    mov ah,1
	int 21h
	sub al,48
	mov p,al
endm

put_d macro p
    add p,48
	mov DL,p
	Mov ah,2
	int 21h
endm 

endl macro
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
endm 

introduce macro
    mov ah,9  
    mov al,32
    mov bl,0ah
    mov cx,11
    int 10h
    
    mov ah,2
    mov dl,"O"
    int 21h
    mov dl,"L"
    int 21h
    mov dl,"D"
    int 21h
    mov dl," "
    int 21h
    mov dl,"I"
    int 21h
    mov dl,"S"
    int 21h
    mov dl," "
    int 21h
    mov dl,"G"
    int 21h
    mov dl,"O"
    int 21h
    mov dl,"L"
    int 21h
    mov dl,"D"
    int 21h
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov dl,"W"
    int 21h
    mov dl,"E"
    int 21h
    mov dl,"L"
    int 21h
    mov dl,"C"
    int 21h
    mov dl,"O"
    int 21h
    mov dl,"M"
    int 21h
    mov dl,"E"
    int 21h
    mov dl," "
    int 21h
    mov dl,"T"
    int 21h
    mov dl,"O"
    int 21h
    mov dl," "
    int 21h 

    
    mov dl,"A"
    int 21h
    mov dl,"S"
    int 21h
    mov dl,"S"
    int 21h
    mov dl,"E"
    int 21h
    mov dl,"M"
    int 21h
    mov dl,"B"
    int 21h
    mov dl,"L"
    int 21h
    mov dl,"Y"
    int 21h 
    
    MOV AH,2
     
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
   
    
    MOV CX,10
    H32:
    MOV DL," "
    MOV AH,2
    INT 21H
    LOOP H32
    
    PRINTN "YOU CANT RELY ON A SCHOOL TO TEACH YOU WHAT"
    MOV CX,10
    H44:
    MOV DL," "
    MOV AH,2
    INT 21H
    LOOP H44
    PRINTN "YOU BELIEVE YOU SHOULD KNOW, YOU HAVE TO TAKE"
    MOV CX,10
    H98:
    MOV DL," "
    MOV AH,2
    INT 21H
    LOOP H98
    PRINTN "THE RESPONSIBILITY,..."
    MOV AH,2
     
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    
    PRINT "                       "
    
    MOV AH,2
    
    mov dl,"R"
    int 21h
    mov dl,"E"
    int 21h
    mov dl,"G"
    int 21h
    mov dl,"."
    int 21h
    mov dl," "
    int 21h
    
    mov ah,9  
    mov al,32
    mov bl,0Bh
    mov cx,16
    int 10h
    
    MOV AH,2
    
    mov dl,"M"
    int 21h
    mov dl,"U"
    int 21h
    mov dl,"H"
    int 21h
    mov dl,"A"
    int 21h
    mov dl,"M"
    int 21h
    mov dl,"M"
    int 21h 
    mov dl,"A"
    int 21h
    mov dl,"D"
    int 21h
    mov dl," "
    int 21h
    mov dl,"M"
    int 21h
    mov dl,"U"
    int 21h
    mov dl,"N"
    int 21h
    mov dl,"E"
    int 21h
    mov dl,"E"
    int 21h
    mov dl,"B"
    int 21h
    mov dl," "
    int 21h
    
    mov ah,9  
    mov al,3
    mov bl,0Ch
    mov cx,1
    int 10h
    
    MOV AH,2
     
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    PRINT "              529 BS-IT G_1 GOVT. COLLEGE OF SCIENECE. "
    mov dl,10
    int 21h
    mov dl,13
    int 21h
endm
    
    
NEW_LINE MACRO
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
ENDM


 





