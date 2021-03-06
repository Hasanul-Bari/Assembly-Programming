.model small
.stack 100H

.data
    CR EQU 0DH
    LF EQU 0AH
    
msg1 DB "Enter a lowercase letter : $"
msg2 DB CR,LF,"Uppercase letter is : "
char DB ?,'$'    

.code

main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov char,al         
    sub char,32
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main


