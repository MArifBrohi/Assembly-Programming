.MODEL SMALL
.STACK 100H
.DATA

    VAR DB 1,2,3 
    VAR1 DB '       $'
    
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA SI , VAR
    
    
    MOV CX,3
    MOV AH,2 
    
    MOV BL,49
    START2: 
    
    MOV DL,[SI] 
    ADD DL,48 
    INT 21H
    
    MOV AH,2
    MOV DL,VAR1
    INT 21H
    
    MOV AX,[SI] 
    MUL AX 
    MOV DX,AX
    ADD DX,48
    MOV AH,2
    INT 21H
    
    
    MOV DL,10
    MOV AH,2
    INT 21H
    
    MOV DL,13
    MOV AH,2
    INT 21H
    
    INC SI 
    INC BL
    
    LOOP START2
    
     
   
 
                       
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN
    
