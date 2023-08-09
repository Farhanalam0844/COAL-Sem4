dosseg
.MODEL SMALL
.CODE
.DATA
MAIN PROC
mov Ah,'F'
mov dh,Ah
mov Ah,2
int 21h
mov Ah,4ch
;END MAIN
