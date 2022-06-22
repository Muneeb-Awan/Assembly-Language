mynumber1 db ?
mynumber2 db ?

mov ah,01h
int 21h
sub al, 30h ;<- ASCII to value 

mov bl, 0Ah 
mul bl ;<- multiply al with 10

mov mynumber1, al ;<- mynumber1 now stores the tens (i.e. if you entered 8 it's now 80)

mov ah,01h
int 21h 
sub al, 30h ; <- ASCII to value, al now stores the ones

add mynumber1, al ;<- now your two-digit number is completely in mynumber1