.model small
.stack 100H     

.data
a DB ?


.code 

main proc
    
    mov ax,@data
    mov ds,ax   
    
    mov ah,1
    int 21h
    mov a,al
    sub a,48
    
    
    int 21h
    sub al,48
    
    mul a
    aam
    mov bx,ax 
    
    mov ah,2
    
    
    mov dl,bh
    add dl,48
    int 21h
    
    mov dl,bl  
    add dl,48
    int 21h
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main