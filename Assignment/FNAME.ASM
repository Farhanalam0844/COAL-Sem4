dosseg
.MODEL small
.DATA
.CODE
.STACK 100h
MAIN PROC
        mov dx,'F'
        mov ah,2
        int 21h
        mov dx,'A'
        mov ah,2
        int 21h
        mov dx,'R'
        mov ah,2
        int 21h
        mov dx,'H'
        mov ah,2
        int 21h
        mov dx,'A'
        mov ah,2
        int 21h
        mov dx,'N'
        mov ah,2
        int 21h
        mov ah,4ch
        int 21h
        MAIN ENDP
        END MAIN
