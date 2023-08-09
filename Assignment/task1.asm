dosseg
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    mov dx,97
    mov cx,25
  outerloop:
        mov ah,2
        int 21h 
        inc dx
        sub cx,1
       jnz outerloop
    int 21h
    mov ah,4ch
    MAIN ENDP
    END MAIN    