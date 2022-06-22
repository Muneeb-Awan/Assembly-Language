include emu8086.inc
ORG 100h



PRINT 'Hello World!' 
GOTOXY 10, 5
PUTC 65
PUTC 'B'
mov dx, msg
mov ah, 09h
int 21h
mov ah, 4ch
int 21h
msg: db 'Hello World!',0ah,0ah,'This is my',0ah,0dh,'first program',0ah,0dh,'using Assembly$'

RET
END

