INCLUDE Irvine32.inc
includelib \masm32\lib\user32.lib

.data

msg1:    db      "1-Add",0dh,0ah,"2-Multiply",0dh,0ah,"3-Subtract",0dh,0ah,"4-Divide", 0Dh,0Ah, '$' 
msg2:    db      0dh,0ah,"Enter First Number : $"
msg3:    db      0dh,0ah,"Enter Second Number : $"
msg4:    db      0dh,0ah,"Choice Error $" 
msg5:    db      0dh,0ah,"Result : $" 
msg6:    db      0dh,0ah ,'thank you for using the calculator! press any key... ', 0Dh,0Ah, '$'


.code
start:  
        mov ah, 9
        mov dx, offset msg1 
        int 21h
        mov ah, 0                       
        int 16h  
        cmp al, 31h 
        je Add
        cmp al, 32h
        je Multiply
        cmp al, 33h
        je Subtract
        cmp al, 34h
        je Divide
        mov ah, 9
        mov dx, offset msg4
        int 21h
        mov ah, 0
        int 16h
        jmp start
 Add:
 
 
 Multiply:
 
 
 Subtract:
 
 
 
 Divide:
 
