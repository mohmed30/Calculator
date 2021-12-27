INCLUDE Irvine32.inc
includelib \masm32\lib\user32.lib

.data

x_l=100                                                         ;Array length
string_equ BYTE A_l+1 DUP(?), 0                                 ; string input equation
s_temporary1 BYTE A_l+1 DUP(?), 0                                    ; temporary use 
s_temporary2 BYTE A_l+1 DUP(?), 0
s_addition BYTE '+'                                                  ; creat a byte memory loction and store char+
s_submission BYTE '-'
s_multiple BYTE '*'
s_division BYTE '/'
r_addition BYTE '+'
r_multiple BYTE '*'
addition_res DWORD 0                                              ; creat a double word memory loction and set 0 in it
multiple_res DWORD 1
parse_res DWORD 0 

.code

;..................................................
;function name : resetstemporary1 
;description : it reset all values in array 
;for using it again 
;...................................................
resetstemporary1 PROC
mov eax, 0
L1:
cmp eax, A_l + 1                                                                    ;if eax > A_l + 1
JG Finish 
MOV[s_temporary1 + eax], 0
inc eax
JMP L1
Finish :
ret
resetstemporary1 ENDP

;.........................................
;function name : resetstemporary2
;it reset all values in array 
;for using it again 
;.........................................
resetstemporary2 PROC
mov eax, 0
L1 :
	cmp eax, A_l + 1           
	JG Finish                               ; jump if eax greater than  A_1+1 
	MOV[s_temporary2 + eax], 0
	inc eax
	JMP L1
	Finish :
ret
resetstemporary2 ENDP
END main                                       ; end all program , end this task 
