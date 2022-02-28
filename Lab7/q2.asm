title to display something
.model small
.stack 100h
.data
str db 'String to be displayed$'
len dw $-str
.code
main proc far
mov ax, @data
mov ds, ax
mov cx, len 
mov di, 00h
l: mov dl, str[di]
mov ah, 06h
int 21h
inc di
loop l


mov ah, 4ch
int 21h
main endp
end main