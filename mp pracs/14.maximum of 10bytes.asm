data segment
STRING1 DB 08h,14h,05h,0Fh,09h,01h,20h,05h,03h,07h
res db ?
data ends
code segment
assume cs:code, ds:data
start: mov ax, data
mov ds, ax
mov cx, 0ah
mov bl, 00h
LEA SI, STRING1
up:
mov al, [SI]
cmp al, bl
jc nxt
mov bl, al
nxt:
inc si
dec cx
jnz up
 
mov res,bl
int 3
code ends
end start