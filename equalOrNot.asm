.model small
.stack 100h
.data
msg1 db "Numbers are equal $"
msg2 db "Numbers are not equal $"
.code
main proc far
mov ax, @data
mov ds, ax
mov dl, '3' ; this isthe stored number
; If 2 numbers are equal or not
;service number for reading a character from user
mov ah, 01
int 21h
; the number typed by user is stored in the al
cmp al, dl
je l1
mov dx, offset msg2 ; if numbers are not equal
mov ah, 09
int 21h

mov ah, 4ch
int 21h


l1: mov dx, offset msg1 ;If numbers are equal, display msg1
; for displaying the string
mov ah, 09 ; for string display
int 21h


mov ah, 4ch
int 21h
main endp
end main