dosseg
.MODEL SMALL
.CODE
.DATA
.STACK 100h
MAIN PROC
        mov ah,1
     int 21h
        mov dl,al
        mov ah,2
        int 21h
     mov ah,4ch
     int 21h

    MAIN ENDP
.CODE
  END MAIN
