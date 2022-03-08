.model small
.stack
.data
num1 db 5
num2 db 1
tab db 10 dup (?)

.code
main proc far
mov ax, @data
mov ds, ax

mov bx, 0
mov cx, 10
l1: mov al, num1
mul num2
mov tab[bx], al
inc bx
inc num2
loop l1
mov ah, 4ch
int 21h




main endp
end main