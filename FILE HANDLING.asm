;;CLOSE A FILE   
MOV AH,3EH
MOV DX,HANDLE
INT 21H

;;OPENING A NEW FILE

MOV AH,3CH
MOV DX,OFFSET NAME
MOV CL,1  ;;MODE
INT 21H
MOV HANDLE,AX


;;OPENING AN EXISTING FILE

MOV AH,3DH
MOV DX,OFFSET (FNAME)
MOV AL,MODE ;; 1= WRITE 0=READ
INT 21H
MOV HANDLE,AX


;;WRITING TO FILE  (REMOVING EXISTING DATA)

MOV AH,40H
MOV BX,HANDLE
MOV CX,25      ;;SIZE
MOV DX,OFFSET (MSG)


;;POINTERS
  

MOV AH,42H
MOV BX,HANDLE
XOR CX,CX
XOR DX,DX
MOV AL,2
INBT 21H    ;; 0 START 2 END OF FILE

;;READING A FILE

MOV AH,3FH
MOV BX,HANDLE
MOV DX,OFFESET BUFFER
MOV CX,10 ;;BYTES TO READ 
INT 21H
 

;;SERVICE ROUTINES FOR FILE HANDLINGS
;;

;;3Ch 	Create or truncate file 	2.0+
;;3Dh 	Open file 	2.0+
;;3Eh 	Close file 	2.0+
;;3Fh 	Read file or device 	2.0+
;;40h 	Write file or device 	2.0+
;;41h 	Delete file 	2.0+
;;42h 	Move file pointer 	2.0+
;;43h 	Get or set file attributes 	2.0+
;;4Eh 	Find first file 	2.0+
;;4Fh 	Find next file  

