;length of string
DATA SEGMENT
STR1 DB 'STUDENT BOX OFFICE$'
LENGTH DB ?
DATA ENDS


CODE SEGMENT
ASSUME CS : CODE, DS : DATA
start:MOV AX, DATA
MOV DS, AX
MOV AL, ?$?
MOV CX, 00H
MOV SI, OFFSET STR1
BACK : CMP AL, [SI]
JE GO
INC CL
INC SI
JMP BACK
GO : MOV LENGTH, CL
HLT
CODE ENDS
END start