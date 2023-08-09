dosseg
.MODEL SMALL
.STACK 100h
.DATA
.CODE
MAIN PROC
mov cx,26
mov dx,97
L1:
        mov ah,2
        int 21h
        inc dx

loop L1
mov ah,4ch
int 21h
MAIN ENDP
END MAIN
