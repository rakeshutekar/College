;reverse
DATA SEGMENT
    STR1 DB 'HELLO'
   LEN EQU $-STR1
   STR2 DB 20 DUP(0)
DATA ENDS
CODE SEGMENT
   ASSUME CS:CODE,DS:DATA,ES:DATA
   START: MOV AX,DATA
          MOV DS,AX
          MOV ES,AX
          LEA SI,STR1
          LEA DI,STR2+LEN-1
          MOV CX,LEN
      UP: CLD
          LODSB
          STD
          STOSB
          LOOP UP
          MOV AH,4CH
          INT 21H
CODE ENDS
END START