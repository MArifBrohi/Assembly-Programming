.model small 
.stack 100h
.data

   
.code

main proc
    mov ah,1
    int 21h
    
    mov cl,al
    mov ax,1
    sub cl,48
    
    mov ch,0 
    
      
        
        
       
    
   
    
    start_loop:
        
        
        mul cx
        
        
         
        
        
        
     loop start_loop 
      
      mov dx,ax
      
      add dx,48
      mov ah,2
     int 21h
     
     mov ah,4ch
     int 21h
        
        
main endp

end main
        
        
        
         
