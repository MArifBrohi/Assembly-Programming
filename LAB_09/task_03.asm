.MODEL SMALL
.STACK 100H
.DATA
      
    VAR1 DB 'ENTER FOUR VALUES: $',10,13   
    VAR2 DB 'IS ODD: $',10,13  
    VAR3 DB 'IS EVEN: $',10,13
    VAR DB 4 dup(?)
    
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA SI , VAR
    
    
    MOV CX,4 
    
    MOV AH,9 
    
    LEA DX ,VAR1  
    
    INT 21H
   
    START1:
      
    MOV AH,1
    INT 21H
  
    MOV [SI] , AL
    
    
  
    
    
    INC SI
    
    LOOP START1
     
    MOV AH,2
    MOV DL,10
    INT 21H
    
    MOV AH,2
    MOV DL,13
    INT 21H
    
    LEA SI , VAR
    
    
    
   
    
    
   ; MOV AH,9 
    
   ; LEA DX ,VAR1  
    
   ; INT 21H
   MOV bl,2
    
    MOV CX,4
    
    START2: 
   
    MOV al,[SI] 
    mov ah,0
    
    DIV BL
    
    mov bl,ah
    
    INC SI
    
    CMP bl,0
    JE BLOCK1
    
    LOOP START2
    
    
    BLOCK1:
        
    MOV AH,9 
    
    LEA DX ,VAR3  
    
    INT 21H
    
    MOV AH,2 
    MOV DL,BL
    INT 21H
    
    JMP EXIT
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN
    
