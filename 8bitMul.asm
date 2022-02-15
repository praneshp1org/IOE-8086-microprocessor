.model small
.stack 100h

.data
n1 db 57h
n2 db 49h
nm dw ?

.code
main proc
mov ax, @data
mov ds, ax

mov ah, 00
mov al, n1
mul n2
mov nm, ax

mov ax, 4c00h
int 21h
main endp
end main