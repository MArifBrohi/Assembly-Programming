.MODEL SMALL
.STACK 100H
.DATA

    VAR DB 1,2,3
    
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA SI , VAR
    
    MOV CX,3
    MOV AH,2
    START:
    
    
    MOV AH,2
    MOV DL,[VAR] 
    ADD DL,48
    INT 21H
    
       MOV DL,10
    
    MOV AH,2

    INT 21H
    
    MOV DL,13
    MOV AH,2
    INT 21H
    INC VAR
    
    LOOP START 
   
 
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN
    
