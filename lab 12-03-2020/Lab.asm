.model small
.stack 100h


.code

main proc
    mov ah,1
    int 21h
    mov bl,al
    
    
    
    cmp bl,'A'
    
    jge l1
    jmp l2  
    
    
    l1:
    
    sub bl,17 
    
    mov ah,2
    mov dl,'1'
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h  
    
    jmp exit
    
    
    
    
    
    l2:

    sub bl,48  

    mov ah,2
    mov dl,al
    int 21h 
    
    jmp exit
           
           
           
    exit:
    mov ah,4ch
    int 21h
    main endp
end main





