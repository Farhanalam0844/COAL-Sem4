dosseg
.MODEL SMALL
.DATA
.CODE
.STACK 100h
MAIN PROC
        mov cx,10
        mov dx,48
      L1:
      mov ah,2
      int 21h
      add dx,1
      Loop L1
   mov ah,4ch
   int 21h
   MAIN ENDP
   END MAIN
