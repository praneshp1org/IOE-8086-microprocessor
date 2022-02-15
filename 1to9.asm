.model small
.stack 100h
.data
.code
main proc

mov cx, 10
 mov dx, 48

l1:
mov ah, 02
int 21h

loop l1
main endp
end main