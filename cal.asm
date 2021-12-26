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

