.model small
.stack 100h

.data 
s1 db "Enter a number : $"
s2 db "The Entered number is : $"

.code
main proc
    mov ax,@data
    mov ds,ax;
    
    mov ah,9
    lea dx,s1
    int 21h
    
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h
    
    
    mov ah,9
    lea dx,s2
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main