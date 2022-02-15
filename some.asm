;8 bit addition
.model small
.stack 100h
.data
	n1 db 01h
	n2 db 98h
	sum dw ?
.code
main proc
    mov ax, @data
	mov ds, ax
	mov ah, 00 	;carry
	mov al, n1 	;al=56h
	add al, n2 	;al=56+98=eeh, cy=0
	jnc nocarry
	inc ah
nocarry:mov sum, ax

	mov ah, 4ch
	int 21h
	main endp
    end main
	