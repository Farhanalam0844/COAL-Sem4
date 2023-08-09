dosseg
.MODEL small
.data
    random_range  db  100     ; The range of random numbers (0-99)
    iteration    qu 10      ; Number of iterations
    MAIN PROC:
        push bp
        mov bp, sp
        
        mov cx, iteration   ; Initialize iteration counter

    generate_random_numbers:
        call generate_random_number
        push ax            ; Save the generated random number
        push format_output  ; Push the format string
        call printf         ; Call printf to display the random number
        add sp, 8          ; Clean up the stack
        
        loop generate_random_numbers

        mov sp, bp
        pop bp
        ret

    generate_random_number:
        push bp
        mov bp, sp

        mov ax, 0          ; Clear ax
        mov ebx, 0xFFFFFFFF ; Set EBX to maximum value
        
        xor dx, dx        ; Clear dx
        mov cx, random_range ; Load the range
        add cx, 1          ; Add 1 to the range
        
        div cx             ; Divide EBX:dx by the range
        
        mov ax, dx        ; Store the remainder (random number) in ax

        mov sp, bp
        pop bp
        ret

section .data
    format_output db "%d ", 0

