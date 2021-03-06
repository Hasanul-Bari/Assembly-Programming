.model small
.stack 100H

.code
main proc
    mov cx,48  
    
    mov ah,1
    
    
    while:
        int 21h
        cmp al,0DH
        je print
               
        inc cx
        jmp while
        
    print:
        mov ah,2    
        mov dl,0Dh
        int 21h
        mov dl,0Ah
        int 21h
        mov dx,cx
        int 21h
        
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    