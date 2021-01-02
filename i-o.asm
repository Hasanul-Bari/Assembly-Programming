.model small
.stack 100h
.code

main proc
    mov ah,1
    int 21h
    mov bl,al    ;input
               
     
    mov ah,2
    mov dl,0Ah    ; newline er jnno
    int 21h
    mov dl,0Dh    ; carriage return kre
    int 21h          
               
               
    ;mov ah,2    ;print krar jnno lage
    mov dl,bl
    int 21h       ;output
    
    
    exit:
    mov ah,4ch
    int 21h        
    main endp

end main