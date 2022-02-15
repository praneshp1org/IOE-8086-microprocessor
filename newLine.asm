.model small
.stack 100h
.data
msg1 db "Hello$"
msg2 db "World$"
.code
main proc
mov ax, @data
mov ds, ax
mov dx, offset msg1

mov ah, 09; displays msg1
int 21h

mov dx, 10; line feed
mov ah, 2
int 21h

mov dx, 13 ;carriage return
mov ah, 2
int 21h

mov dx, offset msg2
mov ah, 09
int 21h

mov ah, 4ch
int 21



main endp
end main