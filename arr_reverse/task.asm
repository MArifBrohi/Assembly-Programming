.MODEL SMALL
.STACK 100H
.DATA

    VAR DB 4 dup(?)
    
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA SI , VAR
    
    
    MOV CX,4
   
    START1:
      
    MOV AH,1
    INT 21H
  
    MOV [SI] , AL
    
    
  
    
    
    INC si
    
    LOOP START1
     
     
    LEA SI , VAR
    
    
    MOV CX,4
    MOV AH,2 
    ADD SI, 3
   
    START2: 
    
    MOV DL,[SI]
    INT 21H
    
    DEC SI
    
    LOOP START2
    
     
   
 
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN
    
