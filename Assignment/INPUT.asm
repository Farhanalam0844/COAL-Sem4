dosseg
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    mov ah,1
    int 21h
    mov dx,al
    mov ah,2
    int 21h
    mov ah,4ch
    MAIN ENDP
    END MAIN
