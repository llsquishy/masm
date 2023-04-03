.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
x1 SDWORD 5
x2 SDWORD 2
x3 SDWORD 7
x4 SDWORD 6
.code
;x1 < x2 > x3 < x4
main proc

mov eax, x4
cmp eax, x3
jge End43
mov ebx, x3
mov x3, eax
mov x4, ebx
End43:

mov eax, x2
cmp eax, x1
jge End21
mov ebx, x1
mov x1, eax
mov x2, ebx
End21:

mov eax, x2
cmp eax, x3
jge End23
mov ebx, x3
mov x3, eax
mov x2, ebx
End23:

INVOKE ExitProcess,0
main ENDP
END main
 
