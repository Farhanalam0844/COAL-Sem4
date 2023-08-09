dosseg
.MODEL SMALL
.DATA
    var1 db 'Hello$'
    var2 db 'World!$'
.CODE
MAIN PROC
mov ax,@DATA
mov ds,ax
    mov dx, offset var1
    mov ah,9
    int 21h
   mov dx,10
   mov ah,2
   int 21h
    mov dx,offset var2
    mov ah,9
    int 21h
    MAIN ENDP
END MAIN
