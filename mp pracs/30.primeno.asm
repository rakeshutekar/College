DATA SEGMENT
A DB 04
B DB ?
DATA ENDS
CODE SEGMENT
ASSUME DS:DATA,CS:CODE
START:	MOV AX,DATA
		MOV DS,AX
		MOV AX,00
		MOV AL,A
		MOV CL,02
		DIV CL
		MOV B,AL
		MOV AH,00
		MOV CL,00
L1:		INC CL
		MOV AX,0000
		MOV AL,A
		DIV CL
		CMP AH,00
		JNZ L2
		INC CH
L2:		CMP CL,B
		JNE L1
		CMP CH,01
		JNE L3
		MOV DH,A
		MOV DL,00
		JMP L4
L3:		MOV DL,A
		MOV DH,00
L4:		MOV AH,4CH
		INT 03H
CODE ENDS
END START