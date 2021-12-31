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

