.686
.model flat,stdcall
.stack 100h
.data
X dw 3
Y dw 0
Z dw 12 
M dw ?
.code
ExitProcess PROTO STDCALL :DWORD
Start:
mov dx,0
mov ax,y
mov bx,2
div bx
mov cx,ax
mov ax,x
mov dx,z
not dx
mul dx
or cx,ax
mov ax,x
mov bx,y
not bx
mul bx
add cx,ax
mov M,cx
exit:
Invoke ExitProcess,M
End Start