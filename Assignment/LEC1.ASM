dosseg
.MODEL MEDIUM
.DATA
         num1  dw 1,2,3
        result  dw 0
.CODE
.STACK 100h
MAIN PROC
mov ax,@DATA
mov dx,ax
        mov ax,0
        mov bx,num1
        mov cx,0
    outerloop:
        add ax,[bx]
        add bx,2
        sub cx,1
      jnz outerloop
       mov [result],ax
       mov dx,[result]
       mov ax,2
       int 21h
       mov ah,4ch
       int 21h
      MAIN ENDP
     END MAIN
