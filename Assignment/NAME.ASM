dosseg
.MODEL SMALL
.DATA
.CODE
MAIN PROC


mov bl,'F'
mov dl,bl
mov ah,2
int 21h
mov bl,'A'
mov dl,bl
mov ah,2
int 21h
mov bl,'R'
mov dl,bl
mov ah,2
int 21h
mov bl,'H'
mov dl,bl
mov ah,2
int 21h
        mov bl,'A'
        mov dl,bl
        mov ah,2
        int 21h

        mov bl,'N'
        mov dl,bl
        mov ah,2
        int 21h

mov ah,4ch
int 21h
Main endp
End main
