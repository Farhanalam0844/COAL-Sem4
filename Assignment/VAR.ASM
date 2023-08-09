dosseg
.MODEL SMALL
.STACK 100h
.DATA
        VAR1 db 'FARHAN$'
        VAR2 db 'farhan$'
.CODE
MAIN PROC
        mov ax,@DATA
        mov ds,ax
        mov dx,offset VAR1
        mov ah,9
        int 21h
        mov dx,offset VAR2
        mov ah,9
        int 21h
     MAIN ENDP
    END MAIN
