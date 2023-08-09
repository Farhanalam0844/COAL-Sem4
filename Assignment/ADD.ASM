dosseg
.MODEL SMALL
.DATA
.CODE
.STACK 100h
MAIN PROC
        mov bl,2
        mov cl,4
        add bl,cl
        add bl,30h
        mov dl,bl
       ; mov dl,30h
        mov ah,2
        int 21h
        mov ah,4ch
        int 21h
     MAIN ENDP
   END MAIN
