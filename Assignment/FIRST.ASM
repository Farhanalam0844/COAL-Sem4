.model small
.stack 100h
.data
    numbers db 5, 6, 7, 8, 9
    num_length equ $ - numbers
    
.code
main proc
        
    mov ax, @data
    mov ds, ax
    
    mov si, offset numbers
    
    ; Add 2 to the first three numbers
    mov cx, 3
    add_loop:
        add byte ptr [si], 2
        inc si
        loop add_loop
    
    ; Subtract 3 from the last two numbers
    mov cx, 2
    sub_loop:
        sub byte ptr [si], 3
        inc si
        loop sub_loop
    
    ; Display the updated numbers
    mov si, offset numbers
    mov cx, num_length
    display_loop:
        mov dl, [si]
        add dl, 30h ; Convert the number to ASCII
        mov ah, 02h ; BIOS display character function
        int 21h
        
        inc si
        loop display_loop
    
    mov ah, 4Ch ; DOS program termination function
    int 21h
main endp

end main
