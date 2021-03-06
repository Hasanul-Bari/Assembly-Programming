.model small
.stack 100H

.data
first DB ?
last DB ? 
msg DB "Enter a line of text$"

.code
main proc
    mov AX,@data
    mov DS,AX  
    
    mov first,91
    mov last,64
    
    lea DX,msg
    mov ah,9
    int 21h      
    
    mov ah,1
    
    while: 
        int 21h
        cmp al,0DH
        je break      
        
        cmp al,'A'
        jl endofloop
        cmp al,'Z'
        jg endofloop 
        
        cmp al,first
        jge checklast 
        
        mov first,al  
        
        checklast:
        
        cmp al,last
        jle endofloop
        
        mov last,al 
        
        jmp while    
        
        
        endofloop:  
        jmp while
        
        
    break:  
    mov ah,2
    mov dl,0Dh
    int 21h
    mov dl,0Ah    
    int 21h
   
    mov dl,first  
    int 21h 
    
    
    
    mov ah,2
    mov dl,0Dh
    int 21h
    mov dl,0Ah 
    int 21h
  
    mov dl,last  
    int 21h
    
    
        
        
       
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    