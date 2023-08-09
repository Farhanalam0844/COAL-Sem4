.model small
.stack 100h
.data
output db "No : $"
randomNum db 0
.code
main proc
mov ax, @data
mov ds, ax
mov cx, 10
l1:
mov dx, offset output
mov ah, 9h
int 21h

call generateRandom

mov ah, 2h
mov dl, randomNum
add dl, '0'
int 21h

loop l1 ; Corrected loop instruction

mov ah, 4ch
int 21h
main endp

generateRandom proc
call delay
mov ah, 0h
int 1ah

mov ax, dx
mov dx, 0
mov bx, 100
div bx
add dl, 30h
mov randomNum, dl
ret
generateRandom endp

delay proc
mov cx, 1
startDelay:
cmp cx, 30000
je endDelay
inc cx
jmp startDelay
endDelay:
ret
delay endp
end main
