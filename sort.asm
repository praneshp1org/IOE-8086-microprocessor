.model small
.stack 100h
.data
array db 79, 4, 37, 13, 56, 63, 50, 44, 23, 2, '$'
.code
main proc far
mov ax, @data
mov ds, ax

next: mov si, offset array
mov bl, 0
mov cx, 9
again: mov al, [si]
inc si
cmp al, [si]
jc down
mov dl, [si]
mov [si], al
dec si
mov [si], dl
inc si
mov bl, 01

down: loop again
dec bl
jz next
mov si, offset array
mov cl, 0ah



mov ax, 4c00h
int 21h
main endp
end main