.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
atoi PROTO C strptr:DWORD
include irvine32.inc

.data

A_l=100                                                         ;Array length
string_equ BYTE A_l+1 DUP(?), 0                                 ; string input equation
s_temp1 BYTE A_l+1 DUP(?), 0                                    ; temporary use 
s_temp2 BYTE A_l+1 DUP(?), 0
s_add BYTE '+'                                                  ; creat a byte memory loction and store char+
s_sub BYTE '-'
s_mul BYTE '*'
s_div BYTE '/'
r_add BYTE '+'
r_mul BYTE '*'
add_result DWORD 0                                              ; creat a double word memory loction and set 0 in it
mul_result DWORD 1
parse_result DWORD 0 


.code
       
 
