;printing hello world in assembly language 8086
.model small
.stack 100h
.data
text db "Hello World!$"
.code
main proc
mov ax, @data
mov ds, ax

mov dx, offset text
; for displaying string, the service no is 9h/9
mov ah, 9
int 21h

mov ah, 4ch
int 21h
main endp
end main
