.model small
.stack 100h

.data
    array db 10, 20, 30, 40, 50
    array_size equ 5
    sum db ?

.code
    main proc
        mov ax, @data
        mov ds, ax

        mov cx, array_size   ; Set loop counter to array size
        mov al, 0            ; Initialize sum to 0

        mov si, 0            ; Set source index to 0 (start of array)

    sum_loop:
        add al, [array+si]   ; Add the value at [array+si] to AL
        inc si               ; Increment source index
        loop sum_loop        ; Repeat until CX reaches 0

        mov sum, al          ; Store the sum in the 'sum' variable

        ; Display the sum
        mov ah, 09h
        mov dx, offset sum
        int 21h

        mov ah, 4Ch
        int 21h
    main endp

end main
