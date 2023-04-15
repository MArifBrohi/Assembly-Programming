.model small 
.stack 100h
.data

   msg1 db 'Multiplication of two numbers: $',10,13
.code

main proc
    
      MOV AX,@DATA
 MOV DS,AX
  
  

    
    
     mov ax,3
     mov cx,2
     
     mul cx 
     mov bx,ax
     
     mov ah,9
     lea dx,msg1
     int 21h
     
     mov dx,bx 
     add dx,48
     mov ah,2
     int 21h
    
      
        
        
   
     
     mov ah,4ch
     int 21h
        
        
main endp

end main
        
        
        
         
