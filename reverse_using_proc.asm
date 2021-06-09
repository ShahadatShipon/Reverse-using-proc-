.model small
.stack 100h

.code 

procCreate proc
        
    popp:
        
        pop DX
        int 21h
        LOOP popp
    
procCreate endp 

main proc
    
    mov cx,0
    
    pushh:
        mov ah,1
        int 21h
        mov bl,al
        
        CMP bl,013
        JMP print
        
        push BX
        INC CX
        JMP pushh
        
     print : 
        mov ah,2
        mov dl,0AH
        int 21h
        mov dl,0DH
        int 21h
     
        CALL procCreate
        
     exit: 
        mov ah,4ch
        int 21h
        
     main endp
     
end main
        