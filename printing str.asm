.model small
.stack 100h

.data
s db "My name is Hasanul Bari $"

.code

main proc
    
   mov ax,@data
   mov ds,ax
   
   mov ah,9          ; string print er jnno
   lea dx,s
   int 21h 
   
    
   exit:
   mov ah,4ch
   int 21h
   main endp
end main