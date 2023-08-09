dosseg
.MODEL SMALL
.DATA
        first DB 'FIRST'
        second DB 'SECOND'
.CODE
.STACK 100h
MAIN PROC
      ;  mov dx, @DATA
       ; mov dx,ax
        mov dl,offset first
        mov ah,2
        int 21h
        mov ah,4ch
        int 21h
     MAIN ENDP
     END MAIN
