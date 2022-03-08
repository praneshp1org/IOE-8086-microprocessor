.model small
.stack
.data
str db "HelloWorld$"
.code
main proc
mov ax, @data
mov ds, ax

mov cx, 07
mov si, offset str
mov ax, 7

loop1:
mov bx, [si]
push bx
inc si
loop loop1

mov cx, 7
loop2:
pop dx
mov ah, 02h
int 21h
loop loop2



mov ah, 4ch
int 21h
main endp
end main
