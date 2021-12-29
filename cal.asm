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

;................................................
; function name : mul_fa
;................................................
mov multiple_res,1                   ;multiple_res=1
xor esi ,esi                         ; it make esi=0  (xor if 2 is equal result is zero )
xor edi, edi                         ;it make edi=0  
xor ecx, ecx                         ;it make ecx=0  
lea edx, s_temporary2                ; move the offset address of s_temporary2 to edx

L1:
      mov bl, [s_temporary1 + esi]
      CMP bl,0                        ; if bl!=0 continue 
      JE End_Cont                     ; if bl=0 jump to End_Cont
      CMP bl,s_multiple               ;if bl!=s_multiple continue
      JE MUL_Cont                     ;if bl=s_multiple jump to MUL_Cont
      CMP bl, s_division              ;if bl!=s_division continue
      JE DIV_Cont                     ;if bl=s_division jump to DIV_Cont
      mov [s_temporary2 + edi], bl
	inc ecx
	
Inc_lbl :
         inc esi                       ;esi=esi+1
         inc edi                       ;edi=edi+1
         JMP L1                        ; return to L1


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
