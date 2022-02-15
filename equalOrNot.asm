.model small
.stack 100h
.data
msg1 db "Numbers are equal!$"
msg2 db "Numbers are not equal!$"
.code
main proc
mov ax, @data
mov ds, ax
mov dl, '3'

mov ah, 01
int 21h

cmp al, dl
je l1
mov dx, offset msg2
mov ah, 09
int 21h
mov ah, 4ch
int 21h

l1:
mov dx, offset msg1
mov ah, 09
int 21h



mov ah, 4ch
int 21h
main endp
end main