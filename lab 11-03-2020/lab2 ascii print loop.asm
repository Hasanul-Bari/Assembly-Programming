Title PGM6_1.asm

.model small
.stack 100h

.code

main proc
     
    mov ah,2
    mov cx,256
    mov dl,0
    
    loop:         ; label dewar jnno erkm colon dei
    int 21h
    inc dl
    ;dec cx
    
    jnz loop       ;jump not zero...  if(cx!=0)
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
