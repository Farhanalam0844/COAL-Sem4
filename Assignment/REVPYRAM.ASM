dosseg
.model small
.stack 100h
.data
.code
main proc

mov bx, 5
mov cx ,1
L3:
 PUSH bx
 mov cx, bx
 L4:
  mov dx,'*'
  mov ah, 2
  int 21h

 Loop L4

   mov dx, 10
  mov ah, 2
  int 21h

  mov dx, 13
  mov ah, 2
  int 21h



 dec bx
 POP cx

Loop L3

mov ah, 4ch
int 21h

main endp
end main
