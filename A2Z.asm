.model small
.stack 100h
.data
.code
main proc 
mov cl, 26
mov dl, 65
myLoop:
mov ah, 02
int 21h

mov bl, dl
mov dl, 10
mov ah, 02
int 21h

mov dl, 13
mov ah, 02
int 21h

mov dl, bl
inc dl
loop myLoop

mov ah, 4ch
int 21h
main endp
end main

