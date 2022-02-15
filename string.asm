.model small
.stack 100h
.data
text db "Hello, world!$"
.code
main proc
mov ax, @data
mov ds, ax

mov dx, offset text
mov ah, 9
int 21h
mov ah, 4ch
int 21h
main endp
end main
