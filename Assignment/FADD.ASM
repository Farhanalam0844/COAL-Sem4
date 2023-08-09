dosseg
.MODEL SMALL
.DATA
.CODE
MAIN PROC
  mov cl,7
  mov bl,8
  add bl,cl
  mov dl,bl
  ;add dl,'0'
  mov ah,2
  int 21h
    MAIN ENDP
    END MAIN
