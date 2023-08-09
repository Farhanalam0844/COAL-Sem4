dosseg
.model small
.stack 100h
.code
main proc

mov cx, 5

main_loop:

mov ah, 1
int 21h

push ax

dec cx

jnz main_loop

mov cx, 5
pop_loop:

pop ax

; Print the value.
mov dl, al

mov ah, 02h
int 21h

dec cx

; Check if the counter is not zero.
jnz pop_loop

; Exit the program.
mov ah, 04ch
int 21h

main endp

end main